import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CancelVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: CancelVideoTaskRequest.App?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = CancelVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class CancelVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class CancelVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var failReason: String?

        public var isCancel: Bool?

        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failReason != nil {
                map["FailReason"] = self.failReason!
            }
            if self.isCancel != nil {
                map["IsCancel"] = self.isCancel!
            }
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                self.failReason = dict["FailReason"] as! String
            }
            if dict.keys.contains("IsCancel") && dict["IsCancel"] != nil {
                self.isCancel = dict["IsCancel"] as! Bool
            }
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: CancelVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CancelVideoTaskResponseBody.Data()
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

public class CancelVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CancelVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClientAuthRequest : Tea.TeaModel {
    public var appId: String?

    public var deviceId: String?

    public var deviceInfo: String?

    public var deviceType: String?

    public var license: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.deviceId != nil {
            map["DeviceId"] = self.deviceId!
        }
        if self.deviceInfo != nil {
            map["DeviceInfo"] = self.deviceInfo!
        }
        if self.deviceType != nil {
            map["DeviceType"] = self.deviceType!
        }
        if self.license != nil {
            map["License"] = self.license!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("DeviceId") && dict["DeviceId"] != nil {
            self.deviceId = dict["DeviceId"] as! String
        }
        if dict.keys.contains("DeviceInfo") && dict["DeviceInfo"] != nil {
            self.deviceInfo = dict["DeviceInfo"] as! String
        }
        if dict.keys.contains("DeviceType") && dict["DeviceType"] != nil {
            self.deviceType = dict["DeviceType"] as! String
        }
        if dict.keys.contains("License") && dict["License"] != nil {
            self.license = dict["License"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class ClientAuthResponseBody : Tea.TeaModel {
    public var code: String?

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
    }
}

public class ClientAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClientAuthResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ClientAuthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ClientStartRequest : Tea.TeaModel {
    public var appId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class ClientStartResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var imToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imToken != nil {
                map["ImToken"] = self.imToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImToken") && dict["ImToken"] != nil {
                self.imToken = dict["ImToken"] as! String
            }
        }
    }
    public var code: String?

    public var data: ClientStartResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = ClientStartResponseBody.Data()
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

public class ClientStartResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClientStartResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ClientStartResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloseTimedResetOperateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class CloseTimedResetOperateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var tenantId: Int64?

        public override init() {
            super.init()
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
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: CloseTimedResetOperateResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CloseTimedResetOperateResponseBody.Data()
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

public class CloseTimedResetOperateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseTimedResetOperateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CloseTimedResetOperateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Create2dAvatarRequest : Tea.TeaModel {
    public var callback: Bool?

    public var description_: String?

    public var image: String?

    public var name: String?

    public var orientation: Int32?

    public var portrait: String?

    public var tenantId: Int64?

    public var transparent: Bool?

    public var video: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orientation != nil {
            map["Orientation"] = self.orientation!
        }
        if self.portrait != nil {
            map["Portrait"] = self.portrait!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.transparent != nil {
            map["Transparent"] = self.transparent!
        }
        if self.video != nil {
            map["Video"] = self.video!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Orientation") && dict["Orientation"] != nil {
            self.orientation = dict["Orientation"] as! Int32
        }
        if dict.keys.contains("Portrait") && dict["Portrait"] != nil {
            self.portrait = dict["Portrait"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Transparent") && dict["Transparent"] != nil {
            self.transparent = dict["Transparent"] as! Bool
        }
        if dict.keys.contains("Video") && dict["Video"] != nil {
            self.video = dict["Video"] as! String
        }
    }
}

public class Create2dAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
        }
    }
    public var code: String?

    public var data: Create2dAvatarResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = Create2dAvatarResponseBody.Data()
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

public class Create2dAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Create2dAvatarResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Create2dAvatarResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAvatarRequest : Tea.TeaModel {
    public var code: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class DeleteAvatarResponseBody : Tea.TeaModel {
    public var code: String?

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
    }
}

public class DeleteAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAvatarResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteAvatarResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DuplexDecisionRequest : Tea.TeaModel {
    public class DialogContext : Tea.TeaModel {
        public class Histories : Tea.TeaModel {
            public var robot: String?

            public var user: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.robot != nil {
                    map["Robot"] = self.robot!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Robot") && dict["Robot"] != nil {
                    self.robot = dict["Robot"] as! String
                }
                if dict.keys.contains("User") && dict["User"] != nil {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var curUtteranceIdx: Int32?

        public var histories: [DuplexDecisionRequest.DialogContext.Histories]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.curUtteranceIdx != nil {
                map["CurUtteranceIdx"] = self.curUtteranceIdx!
            }
            if self.histories != nil {
                var tmp : [Any] = []
                for k in self.histories! {
                    tmp.append(k.toMap())
                }
                map["Histories"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CurUtteranceIdx") && dict["CurUtteranceIdx"] != nil {
                self.curUtteranceIdx = dict["CurUtteranceIdx"] as! Int32
            }
            if dict.keys.contains("Histories") && dict["Histories"] != nil {
                var tmp : [DuplexDecisionRequest.DialogContext.Histories] = []
                for v in dict["Histories"] as! [Any] {
                    var model = DuplexDecisionRequest.DialogContext.Histories()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.histories = tmp
            }
        }
    }
    public var appId: String?

    public var bizRequestId: String?

    public var callTime: Int32?

    public var customKeywords: [String]?

    public var dialogContext: DuplexDecisionRequest.DialogContext?

    public var dialogStatus: String?

    public var interruptType: Int32?

    public var sessionId: String?

    public var tenantId: Int64?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dialogContext?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bizRequestId != nil {
            map["BizRequestId"] = self.bizRequestId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.customKeywords != nil {
            map["CustomKeywords"] = self.customKeywords!
        }
        if self.dialogContext != nil {
            map["DialogContext"] = self.dialogContext?.toMap()
        }
        if self.dialogStatus != nil {
            map["DialogStatus"] = self.dialogStatus!
        }
        if self.interruptType != nil {
            map["InterruptType"] = self.interruptType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BizRequestId") && dict["BizRequestId"] != nil {
            self.bizRequestId = dict["BizRequestId"] as! String
        }
        if dict.keys.contains("CallTime") && dict["CallTime"] != nil {
            self.callTime = dict["CallTime"] as! Int32
        }
        if dict.keys.contains("CustomKeywords") && dict["CustomKeywords"] != nil {
            self.customKeywords = dict["CustomKeywords"] as! [String]
        }
        if dict.keys.contains("DialogContext") && dict["DialogContext"] != nil {
            var model = DuplexDecisionRequest.DialogContext()
            model.fromMap(dict["DialogContext"] as! [String: Any])
            self.dialogContext = model
        }
        if dict.keys.contains("DialogStatus") && dict["DialogStatus"] != nil {
            self.dialogStatus = dict["DialogStatus"] as! String
        }
        if dict.keys.contains("InterruptType") && dict["InterruptType"] != nil {
            self.interruptType = dict["InterruptType"] as! Int32
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
    }
}

public class DuplexDecisionShrinkRequest : Tea.TeaModel {
    public var appId: String?

    public var bizRequestId: String?

    public var callTime: Int32?

    public var customKeywordsShrink: String?

    public var dialogContextShrink: String?

    public var dialogStatus: String?

    public var interruptType: Int32?

    public var sessionId: String?

    public var tenantId: Int64?

    public var text: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.bizRequestId != nil {
            map["BizRequestId"] = self.bizRequestId!
        }
        if self.callTime != nil {
            map["CallTime"] = self.callTime!
        }
        if self.customKeywordsShrink != nil {
            map["CustomKeywords"] = self.customKeywordsShrink!
        }
        if self.dialogContextShrink != nil {
            map["DialogContext"] = self.dialogContextShrink!
        }
        if self.dialogStatus != nil {
            map["DialogStatus"] = self.dialogStatus!
        }
        if self.interruptType != nil {
            map["InterruptType"] = self.interruptType!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("BizRequestId") && dict["BizRequestId"] != nil {
            self.bizRequestId = dict["BizRequestId"] as! String
        }
        if dict.keys.contains("CallTime") && dict["CallTime"] != nil {
            self.callTime = dict["CallTime"] as! Int32
        }
        if dict.keys.contains("CustomKeywords") && dict["CustomKeywords"] != nil {
            self.customKeywordsShrink = dict["CustomKeywords"] as! String
        }
        if dict.keys.contains("DialogContext") && dict["DialogContext"] != nil {
            self.dialogContextShrink = dict["DialogContext"] as! String
        }
        if dict.keys.contains("DialogStatus") && dict["DialogStatus"] != nil {
            self.dialogStatus = dict["DialogStatus"] as! String
        }
        if dict.keys.contains("InterruptType") && dict["InterruptType"] != nil {
            self.interruptType = dict["InterruptType"] as! Int32
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
    }
}

public class DuplexDecisionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var actionType: String?

        public var grabType: String?

        public var outputText: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.actionType != nil {
                map["ActionType"] = self.actionType!
            }
            if self.grabType != nil {
                map["GrabType"] = self.grabType!
            }
            if self.outputText != nil {
                map["OutputText"] = self.outputText!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActionType") && dict["ActionType"] != nil {
                self.actionType = dict["ActionType"] as! String
            }
            if dict.keys.contains("GrabType") && dict["GrabType"] != nil {
                self.grabType = dict["GrabType"] as! String
            }
            if dict.keys.contains("OutputText") && dict["OutputText"] != nil {
                self.outputText = dict["OutputText"] as! String
            }
        }
    }
    public var code: String?

    public var data: DuplexDecisionResponseBody.Data?

    public var message: String?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DuplexDecisionResponseBody.Data()
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
            self.success = dict["Success"] as! String
        }
    }
}

public class DuplexDecisionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DuplexDecisionResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DuplexDecisionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVideoTaskInfoRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: GetVideoTaskInfoRequest.App?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = GetVideoTaskInfoRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class GetVideoTaskInfoShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var taskUuid: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class GetVideoTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class TaskResult : Tea.TeaModel {
            public var alphaUrl: String?

            public var attachmentUrl: String?

            public var failCode: String?

            public var failReason: String?

            public var previewPic: String?

            public var subtitlesUrl: String?

            public var videoDuration: Int32?

            public var videoUrl: String?

            public var wordSubtitlesUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.alphaUrl != nil {
                    map["AlphaUrl"] = self.alphaUrl!
                }
                if self.attachmentUrl != nil {
                    map["AttachmentUrl"] = self.attachmentUrl!
                }
                if self.failCode != nil {
                    map["FailCode"] = self.failCode!
                }
                if self.failReason != nil {
                    map["FailReason"] = self.failReason!
                }
                if self.previewPic != nil {
                    map["PreviewPic"] = self.previewPic!
                }
                if self.subtitlesUrl != nil {
                    map["SubtitlesUrl"] = self.subtitlesUrl!
                }
                if self.videoDuration != nil {
                    map["VideoDuration"] = self.videoDuration!
                }
                if self.videoUrl != nil {
                    map["VideoUrl"] = self.videoUrl!
                }
                if self.wordSubtitlesUrl != nil {
                    map["WordSubtitlesUrl"] = self.wordSubtitlesUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AlphaUrl") && dict["AlphaUrl"] != nil {
                    self.alphaUrl = dict["AlphaUrl"] as! String
                }
                if dict.keys.contains("AttachmentUrl") && dict["AttachmentUrl"] != nil {
                    self.attachmentUrl = dict["AttachmentUrl"] as! String
                }
                if dict.keys.contains("FailCode") && dict["FailCode"] != nil {
                    self.failCode = dict["FailCode"] as! String
                }
                if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                    self.failReason = dict["FailReason"] as! String
                }
                if dict.keys.contains("PreviewPic") && dict["PreviewPic"] != nil {
                    self.previewPic = dict["PreviewPic"] as! String
                }
                if dict.keys.contains("SubtitlesUrl") && dict["SubtitlesUrl"] != nil {
                    self.subtitlesUrl = dict["SubtitlesUrl"] as! String
                }
                if dict.keys.contains("VideoDuration") && dict["VideoDuration"] != nil {
                    self.videoDuration = dict["VideoDuration"] as! Int32
                }
                if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                    self.videoUrl = dict["VideoUrl"] as! String
                }
                if dict.keys.contains("WordSubtitlesUrl") && dict["WordSubtitlesUrl"] != nil {
                    self.wordSubtitlesUrl = dict["WordSubtitlesUrl"] as! String
                }
            }
        }
        public var process: String?

        public var status: String?

        public var taskResult: GetVideoTaskInfoResponseBody.Data.TaskResult?

        public var taskUuid: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.taskResult?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.process != nil {
                map["Process"] = self.process!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskResult != nil {
                map["TaskResult"] = self.taskResult?.toMap()
            }
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Process") && dict["Process"] != nil {
                self.process = dict["Process"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                var model = GetVideoTaskInfoResponseBody.Data.TaskResult()
                model.fromMap(dict["TaskResult"] as! [String: Any])
                self.taskResult = model
            }
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var code: String?

    public var data: GetVideoTaskInfoResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = GetVideoTaskInfoResponseBody.Data()
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

public class GetVideoTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVideoTaskInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetVideoTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class LicenseAuthRequest : Tea.TeaModel {
    public var appId: String?

    public var license: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.license != nil {
            map["License"] = self.license!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("License") && dict["License"] != nil {
            self.license = dict["License"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class LicenseAuthResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: LicenseAuthResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = LicenseAuthResponseBody.Data()
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

public class LicenseAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LicenseAuthResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = LicenseAuthResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAvatarRequest : Tea.TeaModel {
    public var code: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SupportedResolutions : Tea.TeaModel {
            public class Offline : Tea.TeaModel {
                public var desc: String?

                public var height: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Desc") && dict["Desc"] != nil {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public class Online : Tea.TeaModel {
                public var desc: String?

                public var height: Int32?

                public var width: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.desc != nil {
                        map["Desc"] = self.desc!
                    }
                    if self.height != nil {
                        map["Height"] = self.height!
                    }
                    if self.width != nil {
                        map["Width"] = self.width!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Desc") && dict["Desc"] != nil {
                        self.desc = dict["Desc"] as! String
                    }
                    if dict.keys.contains("Height") && dict["Height"] != nil {
                        self.height = dict["Height"] as! Int32
                    }
                    if dict.keys.contains("Width") && dict["Width"] != nil {
                        self.width = dict["Width"] as! Int32
                    }
                }
            }
            public var offline: [QueryAvatarResponseBody.Data.SupportedResolutions.Offline]?

            public var online: [QueryAvatarResponseBody.Data.SupportedResolutions.Online]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.offline != nil {
                    var tmp : [Any] = []
                    for k in self.offline! {
                        tmp.append(k.toMap())
                    }
                    map["Offline"] = tmp
                }
                if self.online != nil {
                    var tmp : [Any] = []
                    for k in self.online! {
                        tmp.append(k.toMap())
                    }
                    map["Online"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Offline") && dict["Offline"] != nil {
                    var tmp : [QueryAvatarResponseBody.Data.SupportedResolutions.Offline] = []
                    for v in dict["Offline"] as! [Any] {
                        var model = QueryAvatarResponseBody.Data.SupportedResolutions.Offline()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.offline = tmp
                }
                if dict.keys.contains("Online") && dict["Online"] != nil {
                    var tmp : [QueryAvatarResponseBody.Data.SupportedResolutions.Online] = []
                    for v in dict["Online"] as! [Any] {
                        var model = QueryAvatarResponseBody.Data.SupportedResolutions.Online()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.online = tmp
                }
            }
        }
        public var allLocateImages: [String: Any]?

        public var avatarType: String?

        public var description_: String?

        public var image: String?

        public var makeFailReason: String?

        public var makeStage: String?

        public var makeStatus: String?

        public var modelType: String?

        public var name: String?

        public var portrait: String?

        public var supportedResolutions: QueryAvatarResponseBody.Data.SupportedResolutions?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.supportedResolutions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allLocateImages != nil {
                map["AllLocateImages"] = self.allLocateImages!
            }
            if self.avatarType != nil {
                map["AvatarType"] = self.avatarType!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.image != nil {
                map["Image"] = self.image!
            }
            if self.makeFailReason != nil {
                map["MakeFailReason"] = self.makeFailReason!
            }
            if self.makeStage != nil {
                map["MakeStage"] = self.makeStage!
            }
            if self.makeStatus != nil {
                map["MakeStatus"] = self.makeStatus!
            }
            if self.modelType != nil {
                map["ModelType"] = self.modelType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.portrait != nil {
                map["Portrait"] = self.portrait!
            }
            if self.supportedResolutions != nil {
                map["SupportedResolutions"] = self.supportedResolutions?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllLocateImages") && dict["AllLocateImages"] != nil {
                self.allLocateImages = dict["AllLocateImages"] as! [String: Any]
            }
            if dict.keys.contains("AvatarType") && dict["AvatarType"] != nil {
                self.avatarType = dict["AvatarType"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Image") && dict["Image"] != nil {
                self.image = dict["Image"] as! String
            }
            if dict.keys.contains("MakeFailReason") && dict["MakeFailReason"] != nil {
                self.makeFailReason = dict["MakeFailReason"] as! String
            }
            if dict.keys.contains("MakeStage") && dict["MakeStage"] != nil {
                self.makeStage = dict["MakeStage"] as! String
            }
            if dict.keys.contains("MakeStatus") && dict["MakeStatus"] != nil {
                self.makeStatus = dict["MakeStatus"] as! String
            }
            if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                self.modelType = dict["ModelType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Portrait") && dict["Portrait"] != nil {
                self.portrait = dict["Portrait"] as! String
            }
            if dict.keys.contains("SupportedResolutions") && dict["SupportedResolutions"] != nil {
                var model = QueryAvatarResponseBody.Data.SupportedResolutions()
                model.fromMap(dict["SupportedResolutions"] as! [String: Any])
                self.supportedResolutions = model
            }
        }
    }
    public var code: String?

    public var data: QueryAvatarResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryAvatarResponseBody.Data()
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

public class QueryAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvatarResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAvatarResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryAvatarListRequest : Tea.TeaModel {
    public var modelType: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.modelType != nil {
            map["ModelType"] = self.modelType!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
            self.modelType = dict["ModelType"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryAvatarListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class SupportedResolutions : Tea.TeaModel {
                public class Offline : Tea.TeaModel {
                    public var desc: String?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.desc != nil {
                            map["Desc"] = self.desc!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Desc") && dict["Desc"] != nil {
                            self.desc = dict["Desc"] as! String
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public class Online : Tea.TeaModel {
                    public var desc: String?

                    public var height: Int32?

                    public var width: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.desc != nil {
                            map["Desc"] = self.desc!
                        }
                        if self.height != nil {
                            map["Height"] = self.height!
                        }
                        if self.width != nil {
                            map["Width"] = self.width!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Desc") && dict["Desc"] != nil {
                            self.desc = dict["Desc"] as! String
                        }
                        if dict.keys.contains("Height") && dict["Height"] != nil {
                            self.height = dict["Height"] as! Int32
                        }
                        if dict.keys.contains("Width") && dict["Width"] != nil {
                            self.width = dict["Width"] as! Int32
                        }
                    }
                }
                public var offline: [QueryAvatarListResponseBody.Data.List.SupportedResolutions.Offline]?

                public var online: [QueryAvatarListResponseBody.Data.List.SupportedResolutions.Online]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.offline != nil {
                        var tmp : [Any] = []
                        for k in self.offline! {
                            tmp.append(k.toMap())
                        }
                        map["Offline"] = tmp
                    }
                    if self.online != nil {
                        var tmp : [Any] = []
                        for k in self.online! {
                            tmp.append(k.toMap())
                        }
                        map["Online"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Offline") && dict["Offline"] != nil {
                        var tmp : [QueryAvatarListResponseBody.Data.List.SupportedResolutions.Offline] = []
                        for v in dict["Offline"] as! [Any] {
                            var model = QueryAvatarListResponseBody.Data.List.SupportedResolutions.Offline()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.offline = tmp
                    }
                    if dict.keys.contains("Online") && dict["Online"] != nil {
                        var tmp : [QueryAvatarListResponseBody.Data.List.SupportedResolutions.Online] = []
                        for v in dict["Online"] as! [Any] {
                            var model = QueryAvatarListResponseBody.Data.List.SupportedResolutions.Online()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.online = tmp
                    }
                }
            }
            public var avatarType: String?

            public var code: String?

            public var description_: String?

            public var image: String?

            public var makeFailReason: String?

            public var makeStage: String?

            public var makeStatus: String?

            public var modelType: String?

            public var name: String?

            public var portrait: String?

            public var supportedResolutions: QueryAvatarListResponseBody.Data.List.SupportedResolutions?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.supportedResolutions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avatarType != nil {
                    map["AvatarType"] = self.avatarType!
                }
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.image != nil {
                    map["Image"] = self.image!
                }
                if self.makeFailReason != nil {
                    map["MakeFailReason"] = self.makeFailReason!
                }
                if self.makeStage != nil {
                    map["MakeStage"] = self.makeStage!
                }
                if self.makeStatus != nil {
                    map["MakeStatus"] = self.makeStatus!
                }
                if self.modelType != nil {
                    map["ModelType"] = self.modelType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.portrait != nil {
                    map["Portrait"] = self.portrait!
                }
                if self.supportedResolutions != nil {
                    map["SupportedResolutions"] = self.supportedResolutions?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvatarType") && dict["AvatarType"] != nil {
                    self.avatarType = dict["AvatarType"] as! String
                }
                if dict.keys.contains("Code") && dict["Code"] != nil {
                    self.code = dict["Code"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Image") && dict["Image"] != nil {
                    self.image = dict["Image"] as! String
                }
                if dict.keys.contains("MakeFailReason") && dict["MakeFailReason"] != nil {
                    self.makeFailReason = dict["MakeFailReason"] as! String
                }
                if dict.keys.contains("MakeStage") && dict["MakeStage"] != nil {
                    self.makeStage = dict["MakeStage"] as! String
                }
                if dict.keys.contains("MakeStatus") && dict["MakeStatus"] != nil {
                    self.makeStatus = dict["MakeStatus"] as! String
                }
                if dict.keys.contains("ModelType") && dict["ModelType"] != nil {
                    self.modelType = dict["ModelType"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Portrait") && dict["Portrait"] != nil {
                    self.portrait = dict["Portrait"] as! String
                }
                if dict.keys.contains("SupportedResolutions") && dict["SupportedResolutions"] != nil {
                    var model = QueryAvatarListResponseBody.Data.List.SupportedResolutions()
                    model.fromMap(dict["SupportedResolutions"] as! [String: Any])
                    self.supportedResolutions = model
                }
            }
        }
        public var list: [QueryAvatarListResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

        public var totalCount: Int32?

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
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
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
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryAvatarListResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryAvatarListResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int32
            }
            if dict.keys.contains("TotalPage") && dict["TotalPage"] != nil {
                self.totalPage = dict["TotalPage"] as! Int32
            }
        }
    }
    public var code: String?

    public var data: QueryAvatarListResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryAvatarListResponseBody.Data()
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

public class QueryAvatarListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAvatarListResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryAvatarListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryRunningInstanceRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: QueryRunningInstanceRequest.App?

    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = QueryRunningInstanceRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryRunningInstanceShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryRunningInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channel : Tea.TeaModel {
            public var appId: String?

            public var channelId: String?

            public var expiredTime: String?

            public var gslb: [String]?

            public var nonce: String?

            public var token: String?

            public var type: String?

            public var userId: String?

            public var userInfoInChannel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gslb != nil {
                    map["Gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userInfoInChannel != nil {
                    map["UserInfoInChannel"] = self.userInfoInChannel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Gslb") && dict["Gslb"] != nil {
                    self.gslb = dict["Gslb"] as! [String]
                }
                if dict.keys.contains("Nonce") && dict["Nonce"] != nil {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Token") && dict["Token"] != nil {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserInfoInChannel") && dict["UserInfoInChannel"] != nil {
                    self.userInfoInChannel = dict["UserInfoInChannel"] as! String
                }
            }
        }
        public class User : Tea.TeaModel {
            public var userId: String?

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
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var channel: QueryRunningInstanceResponseBody.Data.Channel?

        public var sessionId: String?

        public var token: String?

        public var user: QueryRunningInstanceResponseBody.Data.User?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channel?.validate()
            try self.user?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["Channel"] = self.channel?.toMap()
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            if self.user != nil {
                map["User"] = self.user?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Channel") && dict["Channel"] != nil {
                var model = QueryRunningInstanceResponseBody.Data.Channel()
                model.fromMap(dict["Channel"] as! [String: Any])
                self.channel = model
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
            if dict.keys.contains("User") && dict["User"] != nil {
                var model = QueryRunningInstanceResponseBody.Data.User()
                model.fromMap(dict["User"] as! [String: Any])
                self.user = model
            }
        }
    }
    public var code: String?

    public var data: [QueryRunningInstanceResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [QueryRunningInstanceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = QueryRunningInstanceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
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

public class QueryRunningInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryRunningInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryRunningInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryTimedResetOperateStatusRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class QueryTimedResetOperateStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var status: Int64?

        public var statusStr: String?

        public var tenantId: String?

        public override init() {
            super.init()
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.statusStr != nil {
                map["StatusStr"] = self.statusStr!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int64
            }
            if dict.keys.contains("StatusStr") && dict["StatusStr"] != nil {
                self.statusStr = dict["StatusStr"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var code: String?

    public var data: QueryTimedResetOperateStatusResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryTimedResetOperateStatusResponseBody.Data()
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

public class QueryTimedResetOperateStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryTimedResetOperateStatusResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryTimedResetOperateStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryVideoTaskInfoRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: QueryVideoTaskInfoRequest.App?

    public var orderById: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var taskUuid: String?

    public var tenantId: Int64?

    public var title: String?

    public var type: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.orderById != nil {
            map["OrderById"] = self.orderById!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = QueryVideoTaskInfoRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("OrderById") && dict["OrderById"] != nil {
            self.orderById = dict["OrderById"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class QueryVideoTaskInfoShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var orderById: String?

    public var pageNo: Int32?

    public var pageSize: Int32?

    public var status: Int32?

    public var taskUuid: String?

    public var tenantId: Int64?

    public var title: String?

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
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.orderById != nil {
            map["OrderById"] = self.orderById!
        }
        if self.pageNo != nil {
            map["PageNo"] = self.pageNo!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskUuid != nil {
            map["TaskUuid"] = self.taskUuid!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("OrderById") && dict["OrderById"] != nil {
            self.orderById = dict["OrderById"] as! String
        }
        if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
            self.pageNo = dict["PageNo"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
        if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
            self.taskUuid = dict["TaskUuid"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! Int32
        }
    }
}

public class QueryVideoTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class TaskResult : Tea.TeaModel {
                public var alphaUrl: String?

                public var attachmentUrl: String?

                public var failCode: String?

                public var failReason: String?

                public var previewPic: String?

                public var subtitlesUrl: String?

                public var videoDuration: Int32?

                public var videoUrl: String?

                public var wordSubtitlesUrl: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.alphaUrl != nil {
                        map["AlphaUrl"] = self.alphaUrl!
                    }
                    if self.attachmentUrl != nil {
                        map["AttachmentUrl"] = self.attachmentUrl!
                    }
                    if self.failCode != nil {
                        map["FailCode"] = self.failCode!
                    }
                    if self.failReason != nil {
                        map["FailReason"] = self.failReason!
                    }
                    if self.previewPic != nil {
                        map["PreviewPic"] = self.previewPic!
                    }
                    if self.subtitlesUrl != nil {
                        map["SubtitlesUrl"] = self.subtitlesUrl!
                    }
                    if self.videoDuration != nil {
                        map["VideoDuration"] = self.videoDuration!
                    }
                    if self.videoUrl != nil {
                        map["VideoUrl"] = self.videoUrl!
                    }
                    if self.wordSubtitlesUrl != nil {
                        map["WordSubtitlesUrl"] = self.wordSubtitlesUrl!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AlphaUrl") && dict["AlphaUrl"] != nil {
                        self.alphaUrl = dict["AlphaUrl"] as! String
                    }
                    if dict.keys.contains("AttachmentUrl") && dict["AttachmentUrl"] != nil {
                        self.attachmentUrl = dict["AttachmentUrl"] as! String
                    }
                    if dict.keys.contains("FailCode") && dict["FailCode"] != nil {
                        self.failCode = dict["FailCode"] as! String
                    }
                    if dict.keys.contains("FailReason") && dict["FailReason"] != nil {
                        self.failReason = dict["FailReason"] as! String
                    }
                    if dict.keys.contains("PreviewPic") && dict["PreviewPic"] != nil {
                        self.previewPic = dict["PreviewPic"] as! String
                    }
                    if dict.keys.contains("SubtitlesUrl") && dict["SubtitlesUrl"] != nil {
                        self.subtitlesUrl = dict["SubtitlesUrl"] as! String
                    }
                    if dict.keys.contains("VideoDuration") && dict["VideoDuration"] != nil {
                        self.videoDuration = dict["VideoDuration"] as! Int32
                    }
                    if dict.keys.contains("VideoUrl") && dict["VideoUrl"] != nil {
                        self.videoUrl = dict["VideoUrl"] as! String
                    }
                    if dict.keys.contains("WordSubtitlesUrl") && dict["WordSubtitlesUrl"] != nil {
                        self.wordSubtitlesUrl = dict["WordSubtitlesUrl"] as! String
                    }
                }
            }
            public var status: Int32?

            public var taskResult: QueryVideoTaskInfoResponseBody.Data.List.TaskResult?

            public var taskUuid: String?

            public var title: String?

            public var type: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.taskResult?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.taskResult != nil {
                    map["TaskResult"] = self.taskResult?.toMap()
                }
                if self.taskUuid != nil {
                    map["TaskUuid"] = self.taskUuid!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
                }
                if dict.keys.contains("TaskResult") && dict["TaskResult"] != nil {
                    var model = QueryVideoTaskInfoResponseBody.Data.List.TaskResult()
                    model.fromMap(dict["TaskResult"] as! [String: Any])
                    self.taskResult = model
                }
                if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                    self.taskUuid = dict["TaskUuid"] as! String
                }
                if dict.keys.contains("Title") && dict["Title"] != nil {
                    self.title = dict["Title"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! Int32
                }
            }
        }
        public var list: [QueryVideoTaskInfoResponseBody.Data.List]?

        public var pageNo: Int32?

        public var pageSize: Int32?

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
            if self.pageNo != nil {
                map["PageNo"] = self.pageNo!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [QueryVideoTaskInfoResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = QueryVideoTaskInfoResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.list = tmp
            }
            if dict.keys.contains("PageNo") && dict["PageNo"] != nil {
                self.pageNo = dict["PageNo"] as! Int32
            }
            if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
                self.totalCount = dict["TotalCount"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: QueryVideoTaskInfoResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = QueryVideoTaskInfoResponseBody.Data()
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

public class QueryVideoTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryVideoTaskInfoResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = QueryVideoTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Render3dAvatarRequest : Tea.TeaModel {
    public var appId: String?

    public var code: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") && dict["AppId"] != nil {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class Render3dAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var renderData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.renderData != nil {
                map["RenderData"] = self.renderData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RenderData") && dict["RenderData"] != nil {
                self.renderData = dict["RenderData"] as! String
            }
        }
    }
    public var code: String?

    public var data: Render3dAvatarResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = Render3dAvatarResponseBody.Data()
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

public class Render3dAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Render3dAvatarResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Render3dAvatarResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendCommandRequest : Tea.TeaModel {
    public var code: String?

    public var content: [String: Any]?

    public var feedback: Bool?

    public var sessionId: String?

    public var tenantId: Int64?

    public var uniqueCode: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.uniqueCode != nil {
            map["UniqueCode"] = self.uniqueCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.content = dict["Content"] as! [String: Any]
        }
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
            self.uniqueCode = dict["UniqueCode"] as! String
        }
    }
}

public class SendCommandShrinkRequest : Tea.TeaModel {
    public var code: String?

    public var contentShrink: String?

    public var feedback: Bool?

    public var sessionId: String?

    public var tenantId: Int64?

    public var uniqueCode: String?

    public override init() {
        super.init()
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
        if self.contentShrink != nil {
            map["Content"] = self.contentShrink!
        }
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.uniqueCode != nil {
            map["UniqueCode"] = self.uniqueCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Content") && dict["Content"] != nil {
            self.contentShrink = dict["Content"] as! String
        }
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
            self.uniqueCode = dict["UniqueCode"] as! String
        }
    }
}

public class SendCommandResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sessionId: String?

        public var uniqueCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.uniqueCode != nil {
                map["UniqueCode"] = self.uniqueCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
                self.uniqueCode = dict["UniqueCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendCommandResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SendCommandResponseBody.Data()
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

public class SendCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendCommandResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendMessageRequest : Tea.TeaModel {
    public class StreamExtension : Tea.TeaModel {
        public var index: Int32?

        public var isStream: Bool?

        public var position: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.isStream != nil {
                map["IsStream"] = self.isStream!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("IsStream") && dict["IsStream"] != nil {
                self.isStream = dict["IsStream"] as! Bool
            }
            if dict.keys.contains("Position") && dict["Position"] != nil {
                self.position = dict["Position"] as! String
            }
        }
    }
    public class TextRequest : Tea.TeaModel {
        public var commandType: String?

        public var id: String?

        public var speechText: String?

        public var interrupt: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commandType != nil {
                map["CommandType"] = self.commandType!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.speechText != nil {
                map["SpeechText"] = self.speechText!
            }
            if self.interrupt != nil {
                map["interrupt"] = self.interrupt!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommandType") && dict["CommandType"] != nil {
                self.commandType = dict["CommandType"] as! String
            }
            if dict.keys.contains("Id") && dict["Id"] != nil {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("SpeechText") && dict["SpeechText"] != nil {
                self.speechText = dict["SpeechText"] as! String
            }
            if dict.keys.contains("interrupt") && dict["interrupt"] != nil {
                self.interrupt = dict["interrupt"] as! Bool
            }
        }
    }
    public class VAMLRequest : Tea.TeaModel {
        public var code: String?

        public var vaml: String?

        public override init() {
            super.init()
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
            if self.vaml != nil {
                map["Vaml"] = self.vaml!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("Vaml") && dict["Vaml"] != nil {
                self.vaml = dict["Vaml"] as! String
            }
        }
    }
    public var feedback: Bool?

    public var sessionId: String?

    public var streamExtension: SendMessageRequest.StreamExtension?

    public var tenantId: Int64?

    public var textRequest: SendMessageRequest.TextRequest?

    public var VAMLRequest: SendMessageRequest.VAMLRequest?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.streamExtension?.validate()
        try self.textRequest?.validate()
        try self.VAMLRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.streamExtension != nil {
            map["StreamExtension"] = self.streamExtension?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.textRequest != nil {
            map["TextRequest"] = self.textRequest?.toMap()
        }
        if self.VAMLRequest != nil {
            map["VAMLRequest"] = self.VAMLRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("StreamExtension") && dict["StreamExtension"] != nil {
            var model = SendMessageRequest.StreamExtension()
            model.fromMap(dict["StreamExtension"] as! [String: Any])
            self.streamExtension = model
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TextRequest") && dict["TextRequest"] != nil {
            var model = SendMessageRequest.TextRequest()
            model.fromMap(dict["TextRequest"] as! [String: Any])
            self.textRequest = model
        }
        if dict.keys.contains("VAMLRequest") && dict["VAMLRequest"] != nil {
            var model = SendMessageRequest.VAMLRequest()
            model.fromMap(dict["VAMLRequest"] as! [String: Any])
            self.VAMLRequest = model
        }
    }
}

public class SendMessageShrinkRequest : Tea.TeaModel {
    public var feedback: Bool?

    public var sessionId: String?

    public var streamExtensionShrink: String?

    public var tenantId: Int64?

    public var textRequestShrink: String?

    public var VAMLRequestShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.streamExtensionShrink != nil {
            map["StreamExtension"] = self.streamExtensionShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.textRequestShrink != nil {
            map["TextRequest"] = self.textRequestShrink!
        }
        if self.VAMLRequestShrink != nil {
            map["VAMLRequest"] = self.VAMLRequestShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("StreamExtension") && dict["StreamExtension"] != nil {
            self.streamExtensionShrink = dict["StreamExtension"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TextRequest") && dict["TextRequest"] != nil {
            self.textRequestShrink = dict["TextRequest"] as! String
        }
        if dict.keys.contains("VAMLRequest") && dict["VAMLRequest"] != nil {
            self.VAMLRequestShrink = dict["VAMLRequest"] as! String
        }
    }
}

public class SendMessageResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var requestId: String?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendMessageResponseBody.Data?

    public var message: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SendMessageResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

public class SendTextRequest : Tea.TeaModel {
    public class StreamExtension : Tea.TeaModel {
        public var index: Int32?

        public var isStream: Bool?

        public var position: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.isStream != nil {
                map["IsStream"] = self.isStream!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("IsStream") && dict["IsStream"] != nil {
                self.isStream = dict["IsStream"] as! Bool
            }
            if dict.keys.contains("Position") && dict["Position"] != nil {
                self.position = dict["Position"] as! String
            }
        }
    }
    public var feedback: Bool?

    public var interrupt: Bool?

    public var sessionId: String?

    public var streamExtension: SendTextRequest.StreamExtension?

    public var tenantId: Int64?

    public var text: String?

    public var uniqueCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.streamExtension?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.streamExtension != nil {
            map["StreamExtension"] = self.streamExtension?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.uniqueCode != nil {
            map["UniqueCode"] = self.uniqueCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("StreamExtension") && dict["StreamExtension"] != nil {
            var model = SendTextRequest.StreamExtension()
            model.fromMap(dict["StreamExtension"] as! [String: Any])
            self.streamExtension = model
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
            self.uniqueCode = dict["UniqueCode"] as! String
        }
    }
}

public class SendTextShrinkRequest : Tea.TeaModel {
    public var feedback: Bool?

    public var interrupt: Bool?

    public var sessionId: String?

    public var streamExtensionShrink: String?

    public var tenantId: Int64?

    public var text: String?

    public var uniqueCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.feedback != nil {
            map["Feedback"] = self.feedback!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.streamExtensionShrink != nil {
            map["StreamExtension"] = self.streamExtensionShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.uniqueCode != nil {
            map["UniqueCode"] = self.uniqueCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Feedback") && dict["Feedback"] != nil {
            self.feedback = dict["Feedback"] as! Bool
        }
        if dict.keys.contains("Interrupt") && dict["Interrupt"] != nil {
            self.interrupt = dict["Interrupt"] as! Bool
        }
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("StreamExtension") && dict["StreamExtension"] != nil {
            self.streamExtensionShrink = dict["StreamExtension"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
            self.uniqueCode = dict["UniqueCode"] as! String
        }
    }
}

public class SendTextResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sessionId: String?

        public var uniqueCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.uniqueCode != nil {
                map["UniqueCode"] = self.uniqueCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
                self.uniqueCode = dict["UniqueCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendTextResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SendTextResponseBody.Data()
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

public class SendTextResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendTextResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendTextResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SendVamlRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: Int64?

    public var vaml: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.vaml != nil {
            map["Vaml"] = self.vaml!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Vaml") && dict["Vaml"] != nil {
            self.vaml = dict["Vaml"] as! String
        }
    }
}

public class SendVamlResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var sessionId: String?

        public var uniqueCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.uniqueCode != nil {
                map["UniqueCode"] = self.uniqueCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("UniqueCode") && dict["UniqueCode"] != nil {
                self.uniqueCode = dict["UniqueCode"] as! String
            }
        }
    }
    public var code: String?

    public var data: SendVamlResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SendVamlResponseBody.Data()
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

public class SendVamlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SendVamlResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SendVamlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartInstanceRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class Channel : Tea.TeaModel {
        public var reqConfig: [String: Any]?

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
            if self.reqConfig != nil {
                map["ReqConfig"] = self.reqConfig!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReqConfig") && dict["ReqConfig"] != nil {
                self.reqConfig = dict["ReqConfig"] as! [String: Any]
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
        }
    }
    public class CommandRequest : Tea.TeaModel {
        public var alphaSwitch: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaSwitch != nil {
                map["AlphaSwitch"] = self.alphaSwitch!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaSwitch") && dict["AlphaSwitch"] != nil {
                self.alphaSwitch = dict["AlphaSwitch"] as! Bool
            }
        }
    }
    public class User : Tea.TeaModel {
        public var userId: String?

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
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserId") && dict["UserId"] != nil {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var app: StartInstanceRequest.App?

    public var channel: StartInstanceRequest.Channel?

    public var commandRequest: StartInstanceRequest.CommandRequest?

    public var tenantId: Int64?

    public var user: StartInstanceRequest.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.channel?.validate()
        try self.commandRequest?.validate()
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.channel != nil {
            map["Channel"] = self.channel?.toMap()
        }
        if self.commandRequest != nil {
            map["CommandRequest"] = self.commandRequest?.toMap()
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = StartInstanceRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Channel") && dict["Channel"] != nil {
            var model = StartInstanceRequest.Channel()
            model.fromMap(dict["Channel"] as! [String: Any])
            self.channel = model
        }
        if dict.keys.contains("CommandRequest") && dict["CommandRequest"] != nil {
            var model = StartInstanceRequest.CommandRequest()
            model.fromMap(dict["CommandRequest"] as! [String: Any])
            self.commandRequest = model
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            var model = StartInstanceRequest.User()
            model.fromMap(dict["User"] as! [String: Any])
            self.user = model
        }
    }
}

public class StartInstanceShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var channelShrink: String?

    public var commandRequestShrink: String?

    public var tenantId: Int64?

    public var userShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.channelShrink != nil {
            map["Channel"] = self.channelShrink!
        }
        if self.commandRequestShrink != nil {
            map["CommandRequest"] = self.commandRequestShrink!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Channel") && dict["Channel"] != nil {
            self.channelShrink = dict["Channel"] as! String
        }
        if dict.keys.contains("CommandRequest") && dict["CommandRequest"] != nil {
            self.commandRequestShrink = dict["CommandRequest"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("User") && dict["User"] != nil {
            self.userShrink = dict["User"] as! String
        }
    }
}

public class StartInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Channel : Tea.TeaModel {
            public var appId: String?

            public var channelId: String?

            public var expiredTime: String?

            public var gslb: [String]?

            public var nonce: String?

            public var token: String?

            public var type: String?

            public var userId: String?

            public var userInfoInChannel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.channelId != nil {
                    map["ChannelId"] = self.channelId!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.gslb != nil {
                    map["Gslb"] = self.gslb!
                }
                if self.nonce != nil {
                    map["Nonce"] = self.nonce!
                }
                if self.token != nil {
                    map["Token"] = self.token!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userInfoInChannel != nil {
                    map["UserInfoInChannel"] = self.userInfoInChannel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") && dict["AppId"] != nil {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("ChannelId") && dict["ChannelId"] != nil {
                    self.channelId = dict["ChannelId"] as! String
                }
                if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("Gslb") && dict["Gslb"] != nil {
                    self.gslb = dict["Gslb"] as! [String]
                }
                if dict.keys.contains("Nonce") && dict["Nonce"] != nil {
                    self.nonce = dict["Nonce"] as! String
                }
                if dict.keys.contains("Token") && dict["Token"] != nil {
                    self.token = dict["Token"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserInfoInChannel") && dict["UserInfoInChannel"] != nil {
                    self.userInfoInChannel = dict["UserInfoInChannel"] as! String
                }
            }
        }
        public var channel: StartInstanceResponseBody.Data.Channel?

        public var requestId: String?

        public var sessionId: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.channel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.channel != nil {
                map["Channel"] = self.channel?.toMap()
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.token != nil {
                map["Token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Channel") && dict["Channel"] != nil {
                var model = StartInstanceResponseBody.Data.Channel()
                model.fromMap(dict["Channel"] as! [String: Any])
                self.channel = model
            }
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
            if dict.keys.contains("Token") && dict["Token"] != nil {
                self.token = dict["Token"] as! String
            }
        }
    }
    public var code: String?

    public var data: StartInstanceResponseBody.Data?

    public var message: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StartInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StartInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartInstanceResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartTimedResetOperateRequest : Tea.TeaModel {
    public var instanceId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
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
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class StartTimedResetOperateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceId: String?

        public var tenantId: Int64?

        public override init() {
            super.init()
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
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
                self.tenantId = dict["TenantId"] as! Int64
            }
        }
    }
    public var code: String?

    public var data: StartTimedResetOperateResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StartTimedResetOperateResponseBody.Data()
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

public class StartTimedResetOperateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartTimedResetOperateResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartTimedResetOperateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopInstanceRequest : Tea.TeaModel {
    public var sessionId: String?

    public var tenantId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
    }
}

public class StopInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var requestId: String?

        public var sessionId: String?

        public override init() {
            super.init()
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
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("SessionId") && dict["SessionId"] != nil {
                self.sessionId = dict["SessionId"] as! String
            }
        }
    }
    public var code: String?

    public var data: StopInstanceResponseBody.Data?

    public var message: String?

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
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = StopInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") && dict["Message"] != nil {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StopInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAudioTo2DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class AvatarInfo : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var alphaFormat: Int32?

        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var resolution: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaFormat != nil {
                map["AlphaFormat"] = self.alphaFormat!
            }
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaFormat") && dict["AlphaFormat"] != nil {
                self.alphaFormat = dict["AlphaFormat"] as! Int32
            }
            if dict.keys.contains("BackgroundImageUrl") && dict["BackgroundImageUrl"] != nil {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") && dict["IsAlpha"] != nil {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! Int32
            }
        }
    }
    public var app: SubmitAudioTo2DAvatarVideoTaskRequest.App?

    public var avatarInfo: SubmitAudioTo2DAvatarVideoTaskRequest.AvatarInfo?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var url: String?

    public var videoInfo: SubmitAudioTo2DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.avatarInfo?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.avatarInfo != nil {
            map["AvatarInfo"] = self.avatarInfo?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = SubmitAudioTo2DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            var model = SubmitAudioTo2DAvatarVideoTaskRequest.AvatarInfo()
            model.fromMap(dict["AvatarInfo"] as! [String: Any])
            self.avatarInfo = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            var model = SubmitAudioTo2DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitAudioTo2DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var avatarInfoShrink: String?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var url: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.avatarInfoShrink != nil {
            map["AvatarInfo"] = self.avatarInfoShrink!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            self.avatarInfoShrink = dict["AvatarInfo"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitAudioTo2DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitAudioTo2DAvatarVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitAudioTo2DAvatarVideoTaskResponseBody.Data()
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

public class SubmitAudioTo2DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAudioTo2DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitAudioTo2DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAudioTo3DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class AvatarInfo : Tea.TeaModel {
        public var angle: Int32?

        public var code: String?

        public var industryCode: String?

        public var locate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.industryCode != nil {
                map["IndustryCode"] = self.industryCode!
            }
            if self.locate != nil {
                map["Locate"] = self.locate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Angle") && dict["Angle"] != nil {
                self.angle = dict["Angle"] as! Int32
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("IndustryCode") && dict["IndustryCode"] != nil {
                self.industryCode = dict["IndustryCode"] as! String
            }
            if dict.keys.contains("Locate") && dict["Locate"] != nil {
                self.locate = dict["Locate"] as! Int32
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var alphaFormat: Int32?

        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var resolution: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaFormat != nil {
                map["AlphaFormat"] = self.alphaFormat!
            }
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaFormat") && dict["AlphaFormat"] != nil {
                self.alphaFormat = dict["AlphaFormat"] as! Int32
            }
            if dict.keys.contains("BackgroundImageUrl") && dict["BackgroundImageUrl"] != nil {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") && dict["IsAlpha"] != nil {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! Int32
            }
        }
    }
    public var app: SubmitAudioTo3DAvatarVideoTaskRequest.App?

    public var avatarInfo: SubmitAudioTo3DAvatarVideoTaskRequest.AvatarInfo?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var url: String?

    public var videoInfo: SubmitAudioTo3DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.avatarInfo?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.avatarInfo != nil {
            map["AvatarInfo"] = self.avatarInfo?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = SubmitAudioTo3DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            var model = SubmitAudioTo3DAvatarVideoTaskRequest.AvatarInfo()
            model.fromMap(dict["AvatarInfo"] as! [String: Any])
            self.avatarInfo = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            var model = SubmitAudioTo3DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitAudioTo3DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var avatarInfoShrink: String?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var url: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.avatarInfoShrink != nil {
            map["AvatarInfo"] = self.avatarInfoShrink!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.url != nil {
            map["Url"] = self.url!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            self.avatarInfoShrink = dict["AvatarInfo"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("Url") && dict["Url"] != nil {
            self.url = dict["Url"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitAudioTo3DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitAudioTo3DAvatarVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitAudioTo3DAvatarVideoTaskResponseBody.Data()
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

public class SubmitAudioTo3DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAudioTo3DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitAudioTo3DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public var app: SubmitAvatarVideoTaskRequest.App?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var videoParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoParams != nil {
            map["VideoParams"] = self.videoParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = SubmitAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoParams") && dict["VideoParams"] != nil {
            self.videoParams = dict["VideoParams"] as! String
        }
    }
}

public class SubmitAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var title: String?

    public var videoParams: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoParams != nil {
            map["VideoParams"] = self.videoParams!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoParams") && dict["VideoParams"] != nil {
            self.videoParams = dict["VideoParams"] as! String
        }
    }
}

public class SubmitAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitAvatarVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitAvatarVideoTaskResponseBody.Data()
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

public class SubmitAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class AudioInfo : Tea.TeaModel {
        public var pitchRate: Int32?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PitchRate") && dict["PitchRate"] != nil {
                self.pitchRate = dict["PitchRate"] as! Int32
            }
            if dict.keys.contains("SpeechRate") && dict["SpeechRate"] != nil {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
            if dict.keys.contains("Voice") && dict["Voice"] != nil {
                self.voice = dict["Voice"] as! String
            }
            if dict.keys.contains("Volume") && dict["Volume"] != nil {
                self.volume = dict["Volume"] as! Int32
            }
        }
    }
    public class AvatarInfo : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var alphaFormat: Int32?

        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var isSubtitles: Bool?

        public var resolution: Int32?

        public var subtitleEmbedded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaFormat != nil {
                map["AlphaFormat"] = self.alphaFormat!
            }
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.isSubtitles != nil {
                map["IsSubtitles"] = self.isSubtitles!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.subtitleEmbedded != nil {
                map["SubtitleEmbedded"] = self.subtitleEmbedded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaFormat") && dict["AlphaFormat"] != nil {
                self.alphaFormat = dict["AlphaFormat"] as! Int32
            }
            if dict.keys.contains("BackgroundImageUrl") && dict["BackgroundImageUrl"] != nil {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") && dict["IsAlpha"] != nil {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("IsSubtitles") && dict["IsSubtitles"] != nil {
                self.isSubtitles = dict["IsSubtitles"] as! Bool
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! Int32
            }
            if dict.keys.contains("SubtitleEmbedded") && dict["SubtitleEmbedded"] != nil {
                self.subtitleEmbedded = dict["SubtitleEmbedded"] as! Bool
            }
        }
    }
    public var app: SubmitTextTo2DAvatarVideoTaskRequest.App?

    public var audioInfo: SubmitTextTo2DAvatarVideoTaskRequest.AudioInfo?

    public var avatarInfo: SubmitTextTo2DAvatarVideoTaskRequest.AvatarInfo?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfo: SubmitTextTo2DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.audioInfo?.validate()
        try self.avatarInfo?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.audioInfo != nil {
            map["AudioInfo"] = self.audioInfo?.toMap()
        }
        if self.avatarInfo != nil {
            map["AvatarInfo"] = self.avatarInfo?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("AudioInfo") && dict["AudioInfo"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.AudioInfo()
            model.fromMap(dict["AudioInfo"] as! [String: Any])
            self.audioInfo = model
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.AvatarInfo()
            model.fromMap(dict["AvatarInfo"] as! [String: Any])
            self.avatarInfo = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var audioInfoShrink: String?

    public var avatarInfoShrink: String?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.audioInfoShrink != nil {
            map["AudioInfo"] = self.audioInfoShrink!
        }
        if self.avatarInfoShrink != nil {
            map["AvatarInfo"] = self.avatarInfoShrink!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("AudioInfo") && dict["AudioInfo"] != nil {
            self.audioInfoShrink = dict["AudioInfo"] as! String
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            self.avatarInfoShrink = dict["AvatarInfo"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitTextTo2DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTextTo2DAvatarVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskResponseBody.Data()
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

public class SubmitTextTo2DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTextTo2DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitTextTo2DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskRequest : Tea.TeaModel {
    public class App : Tea.TeaModel {
        public var appId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") && dict["AppId"] != nil {
                self.appId = dict["AppId"] as! String
            }
        }
    }
    public class AudioInfo : Tea.TeaModel {
        public var pitchRate: Int32?

        public var speechRate: Int32?

        public var voice: String?

        public var volume: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.pitchRate != nil {
                map["PitchRate"] = self.pitchRate!
            }
            if self.speechRate != nil {
                map["SpeechRate"] = self.speechRate!
            }
            if self.voice != nil {
                map["Voice"] = self.voice!
            }
            if self.volume != nil {
                map["Volume"] = self.volume!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PitchRate") && dict["PitchRate"] != nil {
                self.pitchRate = dict["PitchRate"] as! Int32
            }
            if dict.keys.contains("SpeechRate") && dict["SpeechRate"] != nil {
                self.speechRate = dict["SpeechRate"] as! Int32
            }
            if dict.keys.contains("Voice") && dict["Voice"] != nil {
                self.voice = dict["Voice"] as! String
            }
            if dict.keys.contains("Volume") && dict["Volume"] != nil {
                self.volume = dict["Volume"] as! Int32
            }
        }
    }
    public class AvatarInfo : Tea.TeaModel {
        public var angle: Int32?

        public var code: String?

        public var industryCode: String?

        public var locate: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.angle != nil {
                map["Angle"] = self.angle!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.industryCode != nil {
                map["IndustryCode"] = self.industryCode!
            }
            if self.locate != nil {
                map["Locate"] = self.locate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Angle") && dict["Angle"] != nil {
                self.angle = dict["Angle"] as! Int32
            }
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("IndustryCode") && dict["IndustryCode"] != nil {
                self.industryCode = dict["IndustryCode"] as! String
            }
            if dict.keys.contains("Locate") && dict["Locate"] != nil {
                self.locate = dict["Locate"] as! Int32
            }
        }
    }
    public class VideoInfo : Tea.TeaModel {
        public var alphaFormat: Int32?

        public var backgroundImageUrl: String?

        public var isAlpha: Bool?

        public var isSubtitles: Bool?

        public var resolution: Int32?

        public var subtitleEmbedded: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alphaFormat != nil {
                map["AlphaFormat"] = self.alphaFormat!
            }
            if self.backgroundImageUrl != nil {
                map["BackgroundImageUrl"] = self.backgroundImageUrl!
            }
            if self.isAlpha != nil {
                map["IsAlpha"] = self.isAlpha!
            }
            if self.isSubtitles != nil {
                map["IsSubtitles"] = self.isSubtitles!
            }
            if self.resolution != nil {
                map["Resolution"] = self.resolution!
            }
            if self.subtitleEmbedded != nil {
                map["SubtitleEmbedded"] = self.subtitleEmbedded!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AlphaFormat") && dict["AlphaFormat"] != nil {
                self.alphaFormat = dict["AlphaFormat"] as! Int32
            }
            if dict.keys.contains("BackgroundImageUrl") && dict["BackgroundImageUrl"] != nil {
                self.backgroundImageUrl = dict["BackgroundImageUrl"] as! String
            }
            if dict.keys.contains("IsAlpha") && dict["IsAlpha"] != nil {
                self.isAlpha = dict["IsAlpha"] as! Bool
            }
            if dict.keys.contains("IsSubtitles") && dict["IsSubtitles"] != nil {
                self.isSubtitles = dict["IsSubtitles"] as! Bool
            }
            if dict.keys.contains("Resolution") && dict["Resolution"] != nil {
                self.resolution = dict["Resolution"] as! Int32
            }
            if dict.keys.contains("SubtitleEmbedded") && dict["SubtitleEmbedded"] != nil {
                self.subtitleEmbedded = dict["SubtitleEmbedded"] as! Bool
            }
        }
    }
    public var app: SubmitTextTo3DAvatarVideoTaskRequest.App?

    public var audioInfo: SubmitTextTo3DAvatarVideoTaskRequest.AudioInfo?

    public var avatarInfo: SubmitTextTo3DAvatarVideoTaskRequest.AvatarInfo?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfo: SubmitTextTo3DAvatarVideoTaskRequest.VideoInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.app?.validate()
        try self.audioInfo?.validate()
        try self.avatarInfo?.validate()
        try self.videoInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.app != nil {
            map["App"] = self.app?.toMap()
        }
        if self.audioInfo != nil {
            map["AudioInfo"] = self.audioInfo?.toMap()
        }
        if self.avatarInfo != nil {
            map["AvatarInfo"] = self.avatarInfo?.toMap()
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfo != nil {
            map["VideoInfo"] = self.videoInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.App()
            model.fromMap(dict["App"] as! [String: Any])
            self.app = model
        }
        if dict.keys.contains("AudioInfo") && dict["AudioInfo"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.AudioInfo()
            model.fromMap(dict["AudioInfo"] as! [String: Any])
            self.audioInfo = model
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.AvatarInfo()
            model.fromMap(dict["AvatarInfo"] as! [String: Any])
            self.avatarInfo = model
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskRequest.VideoInfo()
            model.fromMap(dict["VideoInfo"] as! [String: Any])
            self.videoInfo = model
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskShrinkRequest : Tea.TeaModel {
    public var appShrink: String?

    public var audioInfoShrink: String?

    public var avatarInfoShrink: String?

    public var callback: Bool?

    public var callbackParams: String?

    public var extParams: String?

    public var tenantId: Int64?

    public var text: String?

    public var title: String?

    public var videoInfoShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appShrink != nil {
            map["App"] = self.appShrink!
        }
        if self.audioInfoShrink != nil {
            map["AudioInfo"] = self.audioInfoShrink!
        }
        if self.avatarInfoShrink != nil {
            map["AvatarInfo"] = self.avatarInfoShrink!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.callbackParams != nil {
            map["CallbackParams"] = self.callbackParams!
        }
        if self.extParams != nil {
            map["ExtParams"] = self.extParams!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.text != nil {
            map["Text"] = self.text!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.videoInfoShrink != nil {
            map["VideoInfo"] = self.videoInfoShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("App") && dict["App"] != nil {
            self.appShrink = dict["App"] as! String
        }
        if dict.keys.contains("AudioInfo") && dict["AudioInfo"] != nil {
            self.audioInfoShrink = dict["AudioInfo"] as! String
        }
        if dict.keys.contains("AvatarInfo") && dict["AvatarInfo"] != nil {
            self.avatarInfoShrink = dict["AvatarInfo"] as! String
        }
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("CallbackParams") && dict["CallbackParams"] != nil {
            self.callbackParams = dict["CallbackParams"] as! String
        }
        if dict.keys.contains("ExtParams") && dict["ExtParams"] != nil {
            self.extParams = dict["ExtParams"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Text") && dict["Text"] != nil {
            self.text = dict["Text"] as! String
        }
        if dict.keys.contains("Title") && dict["Title"] != nil {
            self.title = dict["Title"] as! String
        }
        if dict.keys.contains("VideoInfo") && dict["VideoInfo"] != nil {
            self.videoInfoShrink = dict["VideoInfo"] as! String
        }
    }
}

public class SubmitTextTo3DAvatarVideoTaskResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var taskUuid: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.taskUuid != nil {
                map["TaskUuid"] = self.taskUuid!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TaskUuid") && dict["TaskUuid"] != nil {
                self.taskUuid = dict["TaskUuid"] as! String
            }
        }
    }
    public var code: String?

    public var data: SubmitTextTo3DAvatarVideoTaskResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskResponseBody.Data()
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

public class SubmitTextTo3DAvatarVideoTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitTextTo3DAvatarVideoTaskResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitTextTo3DAvatarVideoTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class Update2dAvatarRequest : Tea.TeaModel {
    public var callback: Bool?

    public var code: String?

    public var description_: String?

    public var image: String?

    public var name: String?

    public var orientation: Int32?

    public var portrait: String?

    public var tenantId: Int64?

    public var transparent: Bool?

    public var video: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.orientation != nil {
            map["Orientation"] = self.orientation!
        }
        if self.portrait != nil {
            map["Portrait"] = self.portrait!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.transparent != nil {
            map["Transparent"] = self.transparent!
        }
        if self.video != nil {
            map["Video"] = self.video!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Callback") && dict["Callback"] != nil {
            self.callback = dict["Callback"] as! Bool
        }
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Image") && dict["Image"] != nil {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Orientation") && dict["Orientation"] != nil {
            self.orientation = dict["Orientation"] as! Int32
        }
        if dict.keys.contains("Portrait") && dict["Portrait"] != nil {
            self.portrait = dict["Portrait"] as! String
        }
        if dict.keys.contains("TenantId") && dict["TenantId"] != nil {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("Transparent") && dict["Transparent"] != nil {
            self.transparent = dict["Transparent"] as! Bool
        }
        if dict.keys.contains("Video") && dict["Video"] != nil {
            self.video = dict["Video"] as! String
        }
    }
}

public class Update2dAvatarResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Code") && dict["Code"] != nil {
                self.code = dict["Code"] as! String
            }
        }
    }
    public var code: String?

    public var data: Update2dAvatarResponseBody.Data?

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
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = Update2dAvatarResponseBody.Data()
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

public class Update2dAvatarResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Update2dAvatarResponseBody?

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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = Update2dAvatarResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
