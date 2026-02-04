import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ExpireLoginTokenRequest : Tea.TeaModel {
    public var endUserId: String?

    public var loginToken: String?

    public var officeSiteId: String?

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
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ExpireLoginTokenResponseBody : Tea.TeaModel {
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

public class ExpireLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExpireLoginTokenResponseBody?

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
            var model = ExpireLoginTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAuthCodeRequest : Tea.TeaModel {
    public var autoCreateUser: Bool?

    public var endUserId: String?

    public var externalUserId: String?

    public var policy: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoCreateUser != nil {
            map["AutoCreateUser"] = self.autoCreateUser!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.externalUserId != nil {
            map["ExternalUserId"] = self.externalUserId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoCreateUser"] as? Bool {
            self.autoCreateUser = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["ExternalUserId"] as? String {
            self.externalUserId = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
    }
}

public class GetAuthCodeResponseBody : Tea.TeaModel {
    public class AuthModel : Tea.TeaModel {
        public var authCode: String?

        public var endUserId: String?

        public var expireTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.authCode != nil {
                map["AuthCode"] = self.authCode!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthCode"] as? String {
                self.authCode = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
        }
    }
    public var authModel: GetAuthCodeResponseBody.AuthModel?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authModel != nil {
            map["AuthModel"] = self.authModel?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthModel"] as? [String: Any?] {
            var model = GetAuthCodeResponseBody.AuthModel()
            model.fromMap(value)
            self.authModel = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAuthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthCodeResponseBody?

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
            var model = GetAuthCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStsTokenRequest : Tea.TeaModel {
    public var endUserId: String?

    public var expiration: Int64?

    public var externalId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.expiration != nil {
            map["Expiration"] = self.expiration!
        }
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["Expiration"] as? Int64 {
            self.expiration = value
        }
        if let value = dict["ExternalId"] as? String {
            self.externalId = value
        }
    }
}

public class GetStsTokenResponseBody : Tea.TeaModel {
    public class StsTokenModel : Tea.TeaModel {
        public var aliUid: Int64?

        public var sessionId: String?

        public var stsToken: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["StsToken"] as? String {
                self.stsToken = value
            }
            if let value = dict["TenantId"] as? Int64 {
                self.tenantId = value
            }
        }
    }
    public var requestId: String?

    public var stsTokenModel: GetStsTokenResponseBody.StsTokenModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stsTokenModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stsTokenModel != nil {
            map["StsTokenModel"] = self.stsTokenModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StsTokenModel"] as? [String: Any?] {
            var model = GetStsTokenResponseBody.StsTokenModel()
            model.fromMap(value)
            self.stsTokenModel = model
        }
    }
}

public class GetStsTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStsTokenResponseBody?

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
            var model = GetStsTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
