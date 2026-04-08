import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GenerateUserSessionTokenRequest : Tea.TeaModel {
    public var chatbotId: String?

    public var expireSecond: Int64?

    public var extraInfo: String?

    public var integrateId: String?

    public var userAvatar: String?

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
        if self.chatbotId != nil {
            map["ChatbotId"] = self.chatbotId!
        }
        if self.expireSecond != nil {
            map["ExpireSecond"] = self.expireSecond!
        }
        if self.extraInfo != nil {
            map["ExtraInfo"] = self.extraInfo!
        }
        if self.integrateId != nil {
            map["IntegrateId"] = self.integrateId!
        }
        if self.userAvatar != nil {
            map["UserAvatar"] = self.userAvatar!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChatbotId"] as? String {
            self.chatbotId = value
        }
        if let value = dict["ExpireSecond"] as? Int64 {
            self.expireSecond = value
        }
        if let value = dict["ExtraInfo"] as? String {
            self.extraInfo = value
        }
        if let value = dict["IntegrateId"] as? String {
            self.integrateId = value
        }
        if let value = dict["UserAvatar"] as? String {
            self.userAvatar = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class GenerateUserSessionTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var userSessionToken: String?

    public override init() {
        super.init()
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
        if self.userSessionToken != nil {
            map["UserSessionToken"] = self.userSessionToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserSessionToken"] as? String {
            self.userSessionToken = value
        }
    }
}

public class GenerateUserSessionTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateUserSessionTokenResponseBody?

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
            var model = GenerateUserSessionTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InvokeActionRequest : Tea.TeaModel {
    public class AuthConfig : Tea.TeaModel {
        public var type: String?

        public var value: Any?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Value"] as? Any {
                self.value = value
            }
        }
    }
    public var actionId: String?

    public var actionVersion: String?

    public var authConfig: InvokeActionRequest.AuthConfig?

    public var body: [String: Any]?

    public var connectorId: String?

    public var connectorVersion: String?

    public var headers: [String: String]?

    public var path: [String: String]?

    public var query: [String: String]?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionId != nil {
            map["ActionId"] = self.actionId!
        }
        if self.actionVersion != nil {
            map["ActionVersion"] = self.actionVersion!
        }
        if self.authConfig != nil {
            map["AuthConfig"] = self.authConfig?.toMap()
        }
        if self.body != nil {
            map["Body"] = self.body!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        if self.headers != nil {
            map["Headers"] = self.headers!
        }
        if self.path != nil {
            map["Path"] = self.path!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionId"] as? String {
            self.actionId = value
        }
        if let value = dict["ActionVersion"] as? String {
            self.actionVersion = value
        }
        if let value = dict["AuthConfig"] as? [String: Any?] {
            var model = InvokeActionRequest.AuthConfig()
            model.fromMap(value)
            self.authConfig = model
        }
        if let value = dict["Body"] as? [String: Any] {
            self.body = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
        if let value = dict["Headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["Path"] as? [String: String] {
            self.path = value
        }
        if let value = dict["Query"] as? [String: String] {
            self.query = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
    }
}

public class InvokeActionShrinkRequest : Tea.TeaModel {
    public var actionId: String?

    public var actionVersion: String?

    public var authConfigShrink: String?

    public var bodyShrink: String?

    public var connectorId: String?

    public var connectorVersion: String?

    public var headersShrink: String?

    public var pathShrink: String?

    public var queryShrink: String?

    public var stream: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionId != nil {
            map["ActionId"] = self.actionId!
        }
        if self.actionVersion != nil {
            map["ActionVersion"] = self.actionVersion!
        }
        if self.authConfigShrink != nil {
            map["AuthConfig"] = self.authConfigShrink!
        }
        if self.bodyShrink != nil {
            map["Body"] = self.bodyShrink!
        }
        if self.connectorId != nil {
            map["ConnectorId"] = self.connectorId!
        }
        if self.connectorVersion != nil {
            map["ConnectorVersion"] = self.connectorVersion!
        }
        if self.headersShrink != nil {
            map["Headers"] = self.headersShrink!
        }
        if self.pathShrink != nil {
            map["Path"] = self.pathShrink!
        }
        if self.queryShrink != nil {
            map["Query"] = self.queryShrink!
        }
        if self.stream != nil {
            map["Stream"] = self.stream!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionId"] as? String {
            self.actionId = value
        }
        if let value = dict["ActionVersion"] as? String {
            self.actionVersion = value
        }
        if let value = dict["AuthConfig"] as? String {
            self.authConfigShrink = value
        }
        if let value = dict["Body"] as? String {
            self.bodyShrink = value
        }
        if let value = dict["ConnectorId"] as? String {
            self.connectorId = value
        }
        if let value = dict["ConnectorVersion"] as? String {
            self.connectorVersion = value
        }
        if let value = dict["Headers"] as? String {
            self.headersShrink = value
        }
        if let value = dict["Path"] as? String {
            self.pathShrink = value
        }
        if let value = dict["Query"] as? String {
            self.queryShrink = value
        }
        if let value = dict["Stream"] as? Bool {
            self.stream = value
        }
    }
}

public class InvokeActionResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var errorMessage: String?

        public var output: Any?

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
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Output"] as? Any {
                self.output = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var requestId: String?

    public var result: InvokeActionResponseBody.Result?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = InvokeActionResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
    }
}

public class InvokeActionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeActionResponseBody?

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
            var model = InvokeActionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
