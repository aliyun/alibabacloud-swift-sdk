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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
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
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ActiveDeviceCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddCustomAuthConnectBlackRequest : Tea.TeaModel {
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class AddCustomAuthConnectBlackResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class AddCustomAuthConnectBlackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomAuthConnectBlackResponseBody?

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
            var model = AddCustomAuthConnectBlackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddCustomAuthIdentityRequest : Tea.TeaModel {
    public var clientId: String?

    public var identityType: String?

    public var instanceId: String?

    public var secret: String?

    public var signMode: String?

    public var username: String?

    public override init() {
        super.init()
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
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secret != nil {
            map["Secret"] = self.secret!
        }
        if self.signMode != nil {
            map["SignMode"] = self.signMode!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Secret") && dict["Secret"] != nil {
            self.secret = dict["Secret"] as! String
        }
        if dict.keys.contains("SignMode") && dict["SignMode"] != nil {
            self.signMode = dict["SignMode"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class AddCustomAuthIdentityResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class AddCustomAuthIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomAuthIdentityResponseBody?

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
            var model = AddCustomAuthIdentityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddCustomAuthPermissionRequest : Tea.TeaModel {
    public var effect: String?

    public var identity: String?

    public var identityType: String?

    public var instanceId: String?

    public var permitAction: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effect != nil {
            map["Effect"] = self.effect!
        }
        if self.identity != nil {
            map["Identity"] = self.identity!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.permitAction != nil {
            map["PermitAction"] = self.permitAction!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Effect") && dict["Effect"] != nil {
            self.effect = dict["Effect"] as! String
        }
        if dict.keys.contains("Identity") && dict["Identity"] != nil {
            self.identity = dict["Identity"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PermitAction") && dict["PermitAction"] != nil {
            self.permitAction = dict["PermitAction"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class AddCustomAuthPermissionResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class AddCustomAuthPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomAuthPermissionResponseBody?

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
            var model = AddCustomAuthPermissionResponseBody()
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
        if dict.keys.contains("Actions") && dict["Actions"] != nil {
            self.actions = dict["Actions"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Resources") && dict["Resources"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientIdList") && dict["ClientIdList"] != nil {
            self.clientIdList = dict["ClientIdList"] as! [String]
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("OnlineStatus") && dict["OnlineStatus"] != nil {
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
        if dict.keys.contains("OnlineStatusList") && dict["OnlineStatusList"] != nil {
            var tmp : [BatchQuerySessionByClientIdsResponseBody.OnlineStatusList] = []
            for v in dict["OnlineStatusList"] as! [Any] {
                var model = BatchQuerySessionByClientIdsResponseBody.OnlineStatusList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.onlineStatusList = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteCaCertificateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomAuthConnectBlackRequest : Tea.TeaModel {
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteCustomAuthConnectBlackResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class DeleteCustomAuthConnectBlackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomAuthConnectBlackResponseBody?

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
            var model = DeleteCustomAuthConnectBlackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomAuthIdentityRequest : Tea.TeaModel {
    public var clientId: String?

    public var identityType: String?

    public var instanceId: String?

    public var username: String?

    public override init() {
        super.init()
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
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class DeleteCustomAuthIdentityResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class DeleteCustomAuthIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomAuthIdentityResponseBody?

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
            var model = DeleteCustomAuthIdentityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteCustomAuthPermissionRequest : Tea.TeaModel {
    public var identity: String?

    public var identityType: String?

    public var instanceId: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identity != nil {
            map["Identity"] = self.identity!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identity") && dict["Identity"] != nil {
            self.identity = dict["Identity"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class DeleteCustomAuthPermissionResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class DeleteCustomAuthPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomAuthPermissionResponseBody?

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
            var model = DeleteCustomAuthPermissionResponseBody()
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
        if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
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
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
            if dict.keys.contains("CaContent") && dict["CaContent"] != nil {
                self.caContent = dict["CaContent"] as! String
            }
            if dict.keys.contains("CaName") && dict["CaName"] != nil {
                self.caName = dict["CaName"] as! String
            }
            if dict.keys.contains("RegistrationCode") && dict["RegistrationCode"] != nil {
                self.registrationCode = dict["RegistrationCode"] as! String
            }
            if dict.keys.contains("Sn") && dict["Sn"] != nil {
                self.sn = dict["Sn"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ValidBegin") && dict["ValidBegin"] != nil {
                self.validBegin = dict["ValidBegin"] as! String
            }
            if dict.keys.contains("ValidEnd") && dict["ValidEnd"] != nil {
                self.validEnd = dict["ValidEnd"] as! String
            }
            if dict.keys.contains("VerificationContent") && dict["VerificationContent"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetCaCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
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
            if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
                self.caSn = dict["CaSn"] as! String
            }
            if dict.keys.contains("DeviceContent") && dict["DeviceContent"] != nil {
                self.deviceContent = dict["DeviceContent"] as! String
            }
            if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                self.deviceName = dict["DeviceName"] as! String
            }
            if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
                self.deviceSn = dict["DeviceSn"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("ValidBegin") && dict["ValidBegin"] != nil {
                self.validBegin = dict["ValidBegin"] as! String
            }
            if dict.keys.contains("ValidEnd") && dict["ValidEnd"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetDeviceCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") && dict["DeviceAccessKeyId"] != nil {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") && dict["DeviceAccessKeySecret"] != nil {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
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
        if dict.keys.contains("DeviceCredential") && dict["DeviceCredential"] != nil {
            var model = GetDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
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
        if dict.keys.contains("RegisterCode") && dict["RegisterCode"] != nil {
            self.registerCode = dict["RegisterCode"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
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
        if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
            self.deviceSn = dict["DeviceSn"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
                if dict.keys.contains("CaContent") && dict["CaContent"] != nil {
                    self.caContent = dict["CaContent"] as! String
                }
                if dict.keys.contains("CaName") && dict["CaName"] != nil {
                    self.caName = dict["CaName"] as! String
                }
                if dict.keys.contains("RegistrationCode") && dict["RegistrationCode"] != nil {
                    self.registrationCode = dict["RegistrationCode"] as! String
                }
                if dict.keys.contains("Sn") && dict["Sn"] != nil {
                    self.sn = dict["Sn"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") && dict["ValidBegin"] != nil {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") && dict["ValidEnd"] != nil {
                    self.validEnd = dict["ValidEnd"] as! String
                }
                if dict.keys.contains("VerificationContent") && dict["VerificationContent"] != nil {
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
            if dict.keys.contains("CaCertificateVOS") && dict["CaCertificateVOS"] != nil {
                var tmp : [ListCaCertificateResponseBody.Data.CaCertificateVOS] = []
                for v in dict["CaCertificateVOS"] as! [Any] {
                    var model = ListCaCertificateResponseBody.Data.CaCertificateVOS()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.caCertificateVOS = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListCaCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
                if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
                    self.caSn = dict["CaSn"] as! String
                }
                if dict.keys.contains("DeviceContent") && dict["DeviceContent"] != nil {
                    self.deviceContent = dict["DeviceContent"] as! String
                }
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
                    self.deviceSn = dict["DeviceSn"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") && dict["ValidBegin"] != nil {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") && dict["ValidEnd"] != nil {
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
            if dict.keys.contains("DeviceCertificateVOS") && dict["DeviceCertificateVOS"] != nil {
                var tmp : [ListDeviceCertificateResponseBody.Data.DeviceCertificateVOS] = []
                for v in dict["DeviceCertificateVOS"] as! [Any] {
                    var model = ListDeviceCertificateResponseBody.Data.DeviceCertificateVOS()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceCertificateVOS = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDeviceCertificateResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
            self.caSn = dict["CaSn"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
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
                if dict.keys.contains("CaSn") && dict["CaSn"] != nil {
                    self.caSn = dict["CaSn"] as! String
                }
                if dict.keys.contains("DeviceContent") && dict["DeviceContent"] != nil {
                    self.deviceContent = dict["DeviceContent"] as! String
                }
                if dict.keys.contains("DeviceName") && dict["DeviceName"] != nil {
                    self.deviceName = dict["DeviceName"] as! String
                }
                if dict.keys.contains("DeviceSn") && dict["DeviceSn"] != nil {
                    self.deviceSn = dict["DeviceSn"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("ValidBegin") && dict["ValidBegin"] != nil {
                    self.validBegin = dict["ValidBegin"] as! String
                }
                if dict.keys.contains("ValidEnd") && dict["ValidEnd"] != nil {
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
            if dict.keys.contains("DeviceCertificateVOS") && dict["DeviceCertificateVOS"] != nil {
                var tmp : [ListDeviceCertificateByCaSnResponseBody.Data.DeviceCertificateVOS] = []
                for v in dict["DeviceCertificateVOS"] as! [Any] {
                    var model = ListDeviceCertificateByCaSnResponseBody.Data.DeviceCertificateVOS()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.deviceCertificateVOS = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ListDeviceCertificateByCaSnResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDeviceCertificateByCaSnResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDeviceCredentialClientIdRequest : Tea.TeaModel {
    public var groupId: String?

    public var instanceId: String?

    public var nextToken: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
            self.groupId = dict["GroupId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
    }
}

public class ListDeviceCredentialClientIdResponseBody : Tea.TeaModel {
    public class DeviceCredentialClientIdList : Tea.TeaModel {
        public var clientIdList: [String]?

        public var nextToken: String?

        public var pageNo: String?

        public var pageSize: String?

        public var total: String?

        public override init() {
            super.init()
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
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
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
            if dict.keys.contains("ClientIdList") && dict["ClientIdList"] != nil {
                self.clientIdList = dict["ClientIdList"] as! [String]
            }
            if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! String
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! String
            }
            if dict.keys.contains("Total") && dict["Total"] != nil {
                self.total = dict["Total"] as! String
            }
        }
    }
    public var deviceCredentialClientIdList: ListDeviceCredentialClientIdResponseBody.DeviceCredentialClientIdList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deviceCredentialClientIdList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCredentialClientIdList != nil {
            map["DeviceCredentialClientIdList"] = self.deviceCredentialClientIdList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeviceCredentialClientIdList") && dict["DeviceCredentialClientIdList"] != nil {
            var model = ListDeviceCredentialClientIdResponseBody.DeviceCredentialClientIdList()
            model.fromMap(dict["DeviceCredentialClientIdList"] as! [String: Any])
            self.deviceCredentialClientIdList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListDeviceCredentialClientIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDeviceCredentialClientIdResponseBody?

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
            var model = ListDeviceCredentialClientIdResponseBody()
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("GroupId") && dict["GroupId"] != nil {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("IndependentNaming") && dict["IndependentNaming"] != nil {
                self.independentNaming = dict["IndependentNaming"] as! Bool
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
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
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [ListGroupIdResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListGroupIdResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListGroupIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCustomAuthConnectBlackRequest : Tea.TeaModel {
    public var clientId: String?

    public var instanceId: String?

    public var nextToken: String?

    public var size: Int32?

    public override init() {
        super.init()
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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
    }
}

public class QueryCustomAuthConnectBlackResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public var clientId: String?

            public var effect: String?

            public var permitAction: String?

            public override init() {
                super.init()
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
                if self.effect != nil {
                    map["Effect"] = self.effect!
                }
                if self.permitAction != nil {
                    map["PermitAction"] = self.permitAction!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("Effect") && dict["Effect"] != nil {
                    self.effect = dict["Effect"] as! String
                }
                if dict.keys.contains("PermitAction") && dict["PermitAction"] != nil {
                    self.permitAction = dict["PermitAction"] as! String
                }
            }
        }
        public var nextToken: String?

        public var results: [QueryCustomAuthConnectBlackResponseBody.Data.Results]?

        public override init() {
            super.init()
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
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("Results") && dict["Results"] != nil {
                var tmp : [QueryCustomAuthConnectBlackResponseBody.Data.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = QueryCustomAuthConnectBlackResponseBody.Data.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
        }
    }
    public var code: Int32?

    public var data: QueryCustomAuthConnectBlackResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryCustomAuthConnectBlackResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
    }
}

public class QueryCustomAuthConnectBlackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomAuthConnectBlackResponseBody?

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
            var model = QueryCustomAuthConnectBlackResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCustomAuthIdentityRequest : Tea.TeaModel {
    public var clientId: String?

    public var identityType: String?

    public var instanceId: String?

    public var nextToken: String?

    public var size: Int32?

    public var username: String?

    public override init() {
        super.init()
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
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class QueryCustomAuthIdentityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public var clientId: String?

            public var identityType: String?

            public var secret: String?

            public var signMode: String?

            public var username: String?

            public override init() {
                super.init()
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
                if self.identityType != nil {
                    map["IdentityType"] = self.identityType!
                }
                if self.secret != nil {
                    map["Secret"] = self.secret!
                }
                if self.signMode != nil {
                    map["SignMode"] = self.signMode!
                }
                if self.username != nil {
                    map["Username"] = self.username!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                    self.clientId = dict["ClientId"] as! String
                }
                if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
                    self.identityType = dict["IdentityType"] as! String
                }
                if dict.keys.contains("Secret") && dict["Secret"] != nil {
                    self.secret = dict["Secret"] as! String
                }
                if dict.keys.contains("SignMode") && dict["SignMode"] != nil {
                    self.signMode = dict["SignMode"] as! String
                }
                if dict.keys.contains("Username") && dict["Username"] != nil {
                    self.username = dict["Username"] as! String
                }
            }
        }
        public var nextToken: String?

        public var results: [QueryCustomAuthIdentityResponseBody.Data.Results]?

        public override init() {
            super.init()
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
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("Results") && dict["Results"] != nil {
                var tmp : [QueryCustomAuthIdentityResponseBody.Data.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = QueryCustomAuthIdentityResponseBody.Data.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
        }
    }
    public var code: Int32?

    public var data: QueryCustomAuthIdentityResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryCustomAuthIdentityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
    }
}

public class QueryCustomAuthIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomAuthIdentityResponseBody?

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
            var model = QueryCustomAuthIdentityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryCustomAuthPermissionRequest : Tea.TeaModel {
    public var identity: String?

    public var identityType: String?

    public var instanceId: String?

    public var nextToken: String?

    public var size: Int32?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identity != nil {
            map["Identity"] = self.identity!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Identity") && dict["Identity"] != nil {
            self.identity = dict["Identity"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("Size") && dict["Size"] != nil {
            self.size = dict["Size"] as! Int32
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class QueryCustomAuthPermissionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Results : Tea.TeaModel {
            public var effect: String?

            public var identity: String?

            public var identityType: String?

            public var permitAction: String?

            public var topic: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.effect != nil {
                    map["Effect"] = self.effect!
                }
                if self.identity != nil {
                    map["Identity"] = self.identity!
                }
                if self.identityType != nil {
                    map["IdentityType"] = self.identityType!
                }
                if self.permitAction != nil {
                    map["PermitAction"] = self.permitAction!
                }
                if self.topic != nil {
                    map["Topic"] = self.topic!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Effect") && dict["Effect"] != nil {
                    self.effect = dict["Effect"] as! String
                }
                if dict.keys.contains("Identity") && dict["Identity"] != nil {
                    self.identity = dict["Identity"] as! String
                }
                if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
                    self.identityType = dict["IdentityType"] as! String
                }
                if dict.keys.contains("PermitAction") && dict["PermitAction"] != nil {
                    self.permitAction = dict["PermitAction"] as! String
                }
                if dict.keys.contains("Topic") && dict["Topic"] != nil {
                    self.topic = dict["Topic"] as! String
                }
            }
        }
        public var nextToken: String?

        public var results: [QueryCustomAuthPermissionResponseBody.Data.Results]?

        public override init() {
            super.init()
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
            if self.results != nil {
                var tmp : [Any] = []
                for k in self.results! {
                    tmp.append(k.toMap())
                }
                map["Results"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
                self.nextToken = dict["NextToken"] as! String
            }
            if dict.keys.contains("Results") && dict["Results"] != nil {
                var tmp : [QueryCustomAuthPermissionResponseBody.Data.Results] = []
                for v in dict["Results"] as! [Any] {
                    var model = QueryCustomAuthPermissionResponseBody.Data.Results()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.results = tmp
            }
        }
    }
    public var code: Int32?

    public var data: QueryCustomAuthPermissionResponseBody.Data?

    public var message: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryCustomAuthPermissionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
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
    }
}

public class QueryCustomAuthPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomAuthPermissionResponseBody?

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
            var model = QueryCustomAuthPermissionResponseBody()
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
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") && dict["MqttRegionId"] != nil {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
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
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") && dict["ActionInfo"] != nil {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                self.channelId = dict["ChannelId"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DeviceInfoList") && dict["DeviceInfoList"] != nil {
            var tmp : [QueryMqttTraceDeviceResponseBody.DeviceInfoList] = []
            for v in dict["DeviceInfoList"] as! [Any] {
                var model = QueryMqttTraceDeviceResponseBody.DeviceInfoList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.deviceInfoList = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") && dict["MqttRegionId"] != nil {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
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
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") && dict["ActionInfo"] != nil {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("MessageOfClientList") && dict["MessageOfClientList"] != nil {
            var tmp : [QueryMqttTraceMessageOfClientResponseBody.MessageOfClientList] = []
            for v in dict["MessageOfClientList"] as! [Any] {
                var model = QueryMqttTraceMessageOfClientResponseBody.MessageOfClientList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messageOfClientList = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") && dict["MqttRegionId"] != nil {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
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
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") && dict["ActionInfo"] != nil {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
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
        if dict.keys.contains("MessageTraceLists") && dict["MessageTraceLists"] != nil {
            var tmp : [QueryMqttTraceMessagePublishResponseBody.MessageTraceLists] = []
            for v in dict["MessageTraceLists"] as! [Any] {
                var model = QueryMqttTraceMessagePublishResponseBody.MessageTraceLists()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messageTraceLists = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("BeginTime") && dict["BeginTime"] != nil {
            self.beginTime = dict["BeginTime"] as! Int64
        }
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttRegionId") && dict["MqttRegionId"] != nil {
            self.mqttRegionId = dict["MqttRegionId"] as! String
        }
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Reverse") && dict["Reverse"] != nil {
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
            if dict.keys.contains("Action") && dict["Action"] != nil {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ActionCode") && dict["ActionCode"] != nil {
                self.actionCode = dict["ActionCode"] as! String
            }
            if dict.keys.contains("ActionInfo") && dict["ActionInfo"] != nil {
                self.actionInfo = dict["ActionInfo"] as! String
            }
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
                self.msgId = dict["MsgId"] as! String
            }
            if dict.keys.contains("Time") && dict["Time"] != nil {
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
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("MessageTraceLists") && dict["MessageTraceLists"] != nil {
            var tmp : [QueryMqttTraceMessageSubscribeResponseBody.MessageTraceLists] = []
            for v in dict["MessageTraceLists"] as! [Any] {
                var model = QueryMqttTraceMessageSubscribeResponseBody.MessageTraceLists()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.messageTraceLists = tmp
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("OnlineStatus") && dict["OnlineStatus"] != nil {
            self.onlineStatus = dict["OnlineStatus"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TokenStatus") && dict["TokenStatus"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") && dict["DeviceAccessKeyId"] != nil {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") && dict["DeviceAccessKeySecret"] != nil {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
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
        if dict.keys.contains("DeviceCredential") && dict["DeviceCredential"] != nil {
            var model = RefreshDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("CaContent") && dict["CaContent"] != nil {
            self.caContent = dict["CaContent"] as! String
        }
        if dict.keys.contains("CaName") && dict["CaName"] != nil {
            self.caName = dict["CaName"] as! String
        }
        if dict.keys.contains("MqttInstanceId") && dict["MqttInstanceId"] != nil {
            self.mqttInstanceId = dict["MqttInstanceId"] as! String
        }
        if dict.keys.contains("VerificationContent") && dict["VerificationContent"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Sn") && dict["Sn"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
            if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
                self.clientId = dict["ClientId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("DeviceAccessKeyId") && dict["DeviceAccessKeyId"] != nil {
                self.deviceAccessKeyId = dict["DeviceAccessKeyId"] as! String
            }
            if dict.keys.contains("DeviceAccessKeySecret") && dict["DeviceAccessKeySecret"] != nil {
                self.deviceAccessKeySecret = dict["DeviceAccessKeySecret"] as! String
            }
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("UpdateTime") && dict["UpdateTime"] != nil {
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
        if dict.keys.contains("DeviceCredential") && dict["DeviceCredential"] != nil {
            var model = RegisterDeviceCredentialResponseBody.DeviceCredential()
            model.fromMap(dict["DeviceCredential"] as! [String: Any])
            self.deviceCredential = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Token") && dict["Token"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MqttTopic") && dict["MqttTopic"] != nil {
            self.mqttTopic = dict["MqttTopic"] as! String
        }
        if dict.keys.contains("Payload") && dict["Payload"] != nil {
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
        if dict.keys.contains("MsgId") && dict["MsgId"] != nil {
            self.msgId = dict["MsgId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnRegisterDeviceCredentialResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomAuthIdentityRequest : Tea.TeaModel {
    public var clientId: String?

    public var identityType: String?

    public var instanceId: String?

    public var secret: String?

    public var signMode: String?

    public var username: String?

    public override init() {
        super.init()
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
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.secret != nil {
            map["Secret"] = self.secret!
        }
        if self.signMode != nil {
            map["SignMode"] = self.signMode!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") && dict["ClientId"] != nil {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Secret") && dict["Secret"] != nil {
            self.secret = dict["Secret"] as! String
        }
        if dict.keys.contains("SignMode") && dict["SignMode"] != nil {
            self.signMode = dict["SignMode"] as! String
        }
        if dict.keys.contains("Username") && dict["Username"] != nil {
            self.username = dict["Username"] as! String
        }
    }
}

public class UpdateCustomAuthIdentityResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class UpdateCustomAuthIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomAuthIdentityResponseBody?

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
            var model = UpdateCustomAuthIdentityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateCustomAuthPermissionRequest : Tea.TeaModel {
    public var effect: String?

    public var identity: String?

    public var identityType: String?

    public var instanceId: String?

    public var permitAction: String?

    public var topic: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.effect != nil {
            map["Effect"] = self.effect!
        }
        if self.identity != nil {
            map["Identity"] = self.identity!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.permitAction != nil {
            map["PermitAction"] = self.permitAction!
        }
        if self.topic != nil {
            map["Topic"] = self.topic!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Effect") && dict["Effect"] != nil {
            self.effect = dict["Effect"] as! String
        }
        if dict.keys.contains("Identity") && dict["Identity"] != nil {
            self.identity = dict["Identity"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PermitAction") && dict["PermitAction"] != nil {
            self.permitAction = dict["PermitAction"] as! String
        }
        if dict.keys.contains("Topic") && dict["Topic"] != nil {
            self.topic = dict["Topic"] as! String
        }
    }
}

public class UpdateCustomAuthPermissionResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var message: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
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
    }
}

public class UpdateCustomAuthPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomAuthPermissionResponseBody?

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
            var model = UpdateCustomAuthPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
