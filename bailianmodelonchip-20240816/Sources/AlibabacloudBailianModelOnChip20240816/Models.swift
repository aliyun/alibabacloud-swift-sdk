import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ActiveInteractionCreateRequest : Tea.TeaModel {
    public var image: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["image"] = self.image!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["image"] as? String {
            self.image = value
        }
    }
}

public class ActiveInteractionCreateResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var gesture: String?

        public var person: String?

        public var scene: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gesture != nil {
                map["gesture"] = self.gesture!
            }
            if self.person != nil {
                map["person"] = self.person!
            }
            if self.scene != nil {
                map["scene"] = self.scene!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["gesture"] as? String {
                self.gesture = value
            }
            if let value = dict["person"] as? String {
                self.person = value
            }
            if let value = dict["scene"] as? String {
                self.scene = value
            }
        }
    }
    public var code: String?

    public var data: ActiveInteractionCreateResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = ActiveInteractionCreateResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class ActiveInteractionCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ActiveInteractionCreateResponseBody?

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
            var model = ActiveInteractionCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeviceRegisterRequest : Tea.TeaModel {
    public var appId: String?

    public var nonce: String?

    public var requestTime: String?

    public var signature: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.nonce != nil {
            map["nonce"] = self.nonce!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["nonce"] as? String {
            self.nonce = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
        }
    }
}

public class DeviceRegisterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var deviceName: String?

        public var nonce: String?

        public var responseTime: String?

        public var signature: String?

        public override init() {
            super.init()
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
                map["appId"] = self.appId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.nonce != nil {
                map["nonce"] = self.nonce!
            }
            if self.responseTime != nil {
                map["responseTime"] = self.responseTime!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["nonce"] as? String {
                self.nonce = value
            }
            if let value = dict["responseTime"] as? String {
                self.responseTime = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
            }
        }
    }
    public var code: String?

    public var data: DeviceRegisterResponseBody.Data?

    public var httpStatusCode: Int32?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = DeviceRegisterResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? Bool {
            self.success = value
        }
    }
}

public class DeviceRegisterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeviceRegisterResponseBody?

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
            var model = DeviceRegisterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenRequest : Tea.TeaModel {
    public var appId: String?

    public var deviceName: String?

    public var nonce: String?

    public var requestTime: String?

    public var signature: String?

    public var tokenKey: String?

    public var tokenType: String?

    public override init() {
        super.init()
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
            map["appId"] = self.appId!
        }
        if self.deviceName != nil {
            map["deviceName"] = self.deviceName!
        }
        if self.nonce != nil {
            map["nonce"] = self.nonce!
        }
        if self.requestTime != nil {
            map["requestTime"] = self.requestTime!
        }
        if self.signature != nil {
            map["signature"] = self.signature!
        }
        if self.tokenKey != nil {
            map["tokenKey"] = self.tokenKey!
        }
        if self.tokenType != nil {
            map["tokenType"] = self.tokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["appId"] as? String {
            self.appId = value
        }
        if let value = dict["deviceName"] as? String {
            self.deviceName = value
        }
        if let value = dict["nonce"] as? String {
            self.nonce = value
        }
        if let value = dict["requestTime"] as? String {
            self.requestTime = value
        }
        if let value = dict["signature"] as? String {
            self.signature = value
        }
        if let value = dict["tokenKey"] as? String {
            self.tokenKey = value
        }
        if let value = dict["tokenType"] as? String {
            self.tokenType = value
        }
    }
}

public class GetTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var appId: String?

        public var deviceName: String?

        public var nonce: String?

        public var requestIp: String?

        public var responseTime: String?

        public var signature: String?

        public override init() {
            super.init()
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
                map["appId"] = self.appId!
            }
            if self.deviceName != nil {
                map["deviceName"] = self.deviceName!
            }
            if self.nonce != nil {
                map["nonce"] = self.nonce!
            }
            if self.requestIp != nil {
                map["requestIp"] = self.requestIp!
            }
            if self.responseTime != nil {
                map["responseTime"] = self.responseTime!
            }
            if self.signature != nil {
                map["signature"] = self.signature!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["appId"] as? String {
                self.appId = value
            }
            if let value = dict["deviceName"] as? String {
                self.deviceName = value
            }
            if let value = dict["nonce"] as? String {
                self.nonce = value
            }
            if let value = dict["requestIp"] as? String {
                self.requestIp = value
            }
            if let value = dict["responseTime"] as? String {
                self.responseTime = value
            }
            if let value = dict["signature"] as? String {
                self.signature = value
            }
        }
    }
    public var code: String?

    public var data: GetTokenResponseBody.Data?

    public var httpStatusCode: String?

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
            map["code"] = self.code!
        }
        if self.data != nil {
            map["data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["httpStatusCode"] = self.httpStatusCode!
        }
        if self.message != nil {
            map["message"] = self.message!
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
        if let value = dict["code"] as? String {
            self.code = value
        }
        if let value = dict["data"] as? [String: Any?] {
            var model = GetTokenResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["httpStatusCode"] as? String {
            self.httpStatusCode = value
        }
        if let value = dict["message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
        if let value = dict["success"] as? String {
            self.success = value
        }
    }
}

public class GetTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenResponseBody?

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
            var model = GetTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
