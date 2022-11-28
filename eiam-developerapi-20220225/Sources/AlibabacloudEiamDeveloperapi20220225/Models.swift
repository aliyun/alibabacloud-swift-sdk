import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateOrganizationalUnitHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class CreateOrganizationalUnitRequest : Tea.TeaModel {
    public var description_: String?

    public var organizationalUnitExternalId: String?

    public var organizationalUnitName: String?

    public var parentId: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.organizationalUnitExternalId != nil {
            map["organizationalUnitExternalId"] = self.organizationalUnitExternalId!
        }
        if self.organizationalUnitName != nil {
            map["organizationalUnitName"] = self.organizationalUnitName!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("organizationalUnitExternalId") {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitName") {
            self.organizationalUnitName = dict["organizationalUnitName"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
    }
}

public class CreateOrganizationalUnitResponseBody : Tea.TeaModel {
    public var organizationalUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnitId != nil {
            map["organizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("organizationalUnitId") {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
    }
}

public class CreateOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrganizationalUnitResponseBody?

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
            var model = CreateOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["fieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["fieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldName") {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") {
                self.fieldValue = dict["fieldValue"] as! String
            }
        }
    }
    public class PasswordInitializationConfig : Tea.TeaModel {
        public var passwordForcedUpdateStatus: String?

        public var passwordInitializationPolicyPriority: String?

        public var passwordInitializationType: String?

        public var userNotificationChannels: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.passwordForcedUpdateStatus != nil {
                map["passwordForcedUpdateStatus"] = self.passwordForcedUpdateStatus!
            }
            if self.passwordInitializationPolicyPriority != nil {
                map["passwordInitializationPolicyPriority"] = self.passwordInitializationPolicyPriority!
            }
            if self.passwordInitializationType != nil {
                map["passwordInitializationType"] = self.passwordInitializationType!
            }
            if self.userNotificationChannels != nil {
                map["userNotificationChannels"] = self.userNotificationChannels!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("passwordForcedUpdateStatus") {
                self.passwordForcedUpdateStatus = dict["passwordForcedUpdateStatus"] as! String
            }
            if dict.keys.contains("passwordInitializationPolicyPriority") {
                self.passwordInitializationPolicyPriority = dict["passwordInitializationPolicyPriority"] as! String
            }
            if dict.keys.contains("passwordInitializationType") {
                self.passwordInitializationType = dict["passwordInitializationType"] as! String
            }
            if dict.keys.contains("userNotificationChannels") {
                self.userNotificationChannels = dict["userNotificationChannels"] as! [String]
            }
        }
    }
    public var customFields: [CreateUserRequest.CustomFields]?

    public var description_: String?

    public var displayName: String?

    public var email: String?

    public var emailVerified: Bool?

    public var password: String?

    public var passwordInitializationConfig: CreateUserRequest.PasswordInitializationConfig?

    public var phoneNumber: String?

    public var phoneNumberVerified: Bool?

    public var phoneRegion: String?

    public var primaryOrganizationalUnitId: String?

    public var userExternalId: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordInitializationConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customFields != nil {
            var tmp : [Any] = []
            for k in self.customFields! {
                tmp.append(k.toMap())
            }
            map["customFields"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.emailVerified != nil {
            map["emailVerified"] = self.emailVerified!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.passwordInitializationConfig != nil {
            map["passwordInitializationConfig"] = self.passwordInitializationConfig?.toMap()
        }
        if self.phoneNumber != nil {
            map["phoneNumber"] = self.phoneNumber!
        }
        if self.phoneNumberVerified != nil {
            map["phoneNumberVerified"] = self.phoneNumberVerified!
        }
        if self.phoneRegion != nil {
            map["phoneRegion"] = self.phoneRegion!
        }
        if self.primaryOrganizationalUnitId != nil {
            map["primaryOrganizationalUnitId"] = self.primaryOrganizationalUnitId!
        }
        if self.userExternalId != nil {
            map["userExternalId"] = self.userExternalId!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customFields") {
            self.customFields = dict["customFields"] as! [CreateUserRequest.CustomFields]
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("passwordInitializationConfig") {
            var model = CreateUserRequest.PasswordInitializationConfig()
            model.fromMap(dict["passwordInitializationConfig"] as! [String: Any])
            self.passwordInitializationConfig = model
        }
        if dict.keys.contains("phoneNumber") {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("primaryOrganizationalUnitId") {
            self.primaryOrganizationalUnitId = dict["primaryOrganizationalUnitId"] as! String
        }
        if dict.keys.contains("userExternalId") {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
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
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class CreateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserResponseBody?

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
            var model = CreateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOrganizationalUnitHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class DeleteOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeleteUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DisableUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class DisableUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class EnableUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class EnableUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class GenerateDeviceCodeRequest : Tea.TeaModel {
    public var scope: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
    }
}

public class GenerateDeviceCodeResponseBody : Tea.TeaModel {
    public var deviceCode: String?

    public var expiresAt: Int64?

    public var expiresIn: Int64?

    public var interval: Int64?

    public var userCode: String?

    public var verificationUri: String?

    public var verificationUriComplete: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceCode != nil {
            map["device_code"] = self.deviceCode!
        }
        if self.expiresAt != nil {
            map["expires_at"] = self.expiresAt!
        }
        if self.expiresIn != nil {
            map["expires_in"] = self.expiresIn!
        }
        if self.interval != nil {
            map["interval"] = self.interval!
        }
        if self.userCode != nil {
            map["user_code"] = self.userCode!
        }
        if self.verificationUri != nil {
            map["verification_uri"] = self.verificationUri!
        }
        if self.verificationUriComplete != nil {
            map["verification_uri_complete"] = self.verificationUriComplete!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("device_code") {
            self.deviceCode = dict["device_code"] as! String
        }
        if dict.keys.contains("expires_at") {
            self.expiresAt = dict["expires_at"] as! Int64
        }
        if dict.keys.contains("expires_in") {
            self.expiresIn = dict["expires_in"] as! Int64
        }
        if dict.keys.contains("interval") {
            self.interval = dict["interval"] as! Int64
        }
        if dict.keys.contains("user_code") {
            self.userCode = dict["user_code"] as! String
        }
        if dict.keys.contains("verification_uri") {
            self.verificationUri = dict["verification_uri"] as! String
        }
        if dict.keys.contains("verification_uri_complete") {
            self.verificationUriComplete = dict["verification_uri_complete"] as! String
        }
    }
}

public class GenerateDeviceCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateDeviceCodeResponseBody?

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
            var model = GenerateDeviceCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientSecret: String?

    public var code: String?

    public var codeVerifier: String?

    public var deviceCode: String?

    public var exclusiveTag: String?

    public var grantType: String?

    public var password: String?

    public var redirectUri: String?

    public var refreshToken: String?

    public var scope: String?

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
            map["client_id"] = self.clientId!
        }
        if self.clientSecret != nil {
            map["client_secret"] = self.clientSecret!
        }
        if self.code != nil {
            map["code"] = self.code!
        }
        if self.codeVerifier != nil {
            map["code_verifier"] = self.codeVerifier!
        }
        if self.deviceCode != nil {
            map["device_code"] = self.deviceCode!
        }
        if self.exclusiveTag != nil {
            map["exclusive_tag"] = self.exclusiveTag!
        }
        if self.grantType != nil {
            map["grant_type"] = self.grantType!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.redirectUri != nil {
            map["redirect_uri"] = self.redirectUri!
        }
        if self.refreshToken != nil {
            map["refresh_token"] = self.refreshToken!
        }
        if self.scope != nil {
            map["scope"] = self.scope!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("client_id") {
            self.clientId = dict["client_id"] as! String
        }
        if dict.keys.contains("client_secret") {
            self.clientSecret = dict["client_secret"] as! String
        }
        if dict.keys.contains("code") {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("code_verifier") {
            self.codeVerifier = dict["code_verifier"] as! String
        }
        if dict.keys.contains("device_code") {
            self.deviceCode = dict["device_code"] as! String
        }
        if dict.keys.contains("exclusive_tag") {
            self.exclusiveTag = dict["exclusive_tag"] as! String
        }
        if dict.keys.contains("grant_type") {
            self.grantType = dict["grant_type"] as! String
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("redirect_uri") {
            self.redirectUri = dict["redirect_uri"] as! String
        }
        if dict.keys.contains("refresh_token") {
            self.refreshToken = dict["refresh_token"] as! String
        }
        if dict.keys.contains("scope") {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class GenerateTokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var expiresAt: Int64?

    public var expiresIn: Int64?

    public var idToken: String?

    public var refreshToken: String?

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
        if self.accessToken != nil {
            map["access_token"] = self.accessToken!
        }
        if self.expiresAt != nil {
            map["expires_at"] = self.expiresAt!
        }
        if self.expiresIn != nil {
            map["expires_in"] = self.expiresIn!
        }
        if self.idToken != nil {
            map["id_token"] = self.idToken!
        }
        if self.refreshToken != nil {
            map["refresh_token"] = self.refreshToken!
        }
        if self.tokenType != nil {
            map["token_type"] = self.tokenType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("access_token") {
            self.accessToken = dict["access_token"] as! String
        }
        if dict.keys.contains("expires_at") {
            self.expiresAt = dict["expires_at"] as! Int64
        }
        if dict.keys.contains("expires_in") {
            self.expiresIn = dict["expires_in"] as! Int64
        }
        if dict.keys.contains("id_token") {
            self.idToken = dict["id_token"] as! String
        }
        if dict.keys.contains("refresh_token") {
            self.refreshToken = dict["refresh_token"] as! String
        }
        if dict.keys.contains("token_type") {
            self.tokenType = dict["token_type"] as! String
        }
    }
}

public class GenerateTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateTokenResponseBody?

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
            var model = GenerateTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationProvisioningScopeHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetApplicationProvisioningScopeResponseBody : Tea.TeaModel {
    public var organizationalUnitIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnitIds != nil {
            map["organizationalUnitIds"] = self.organizationalUnitIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("organizationalUnitIds") {
            self.organizationalUnitIds = dict["organizationalUnitIds"] as! [String]
        }
    }
}

public class GetApplicationProvisioningScopeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationProvisioningScopeResponseBody?

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
            var model = GetApplicationProvisioningScopeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationalUnitHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetOrganizationalUnitResponseBody : Tea.TeaModel {
    public var createTime: Int64?

    public var description_: String?

    public var instanceId: String?

    public var organizationalUnitExternalId: String?

    public var organizationalUnitId: String?

    public var organizationalUnitName: String?

    public var organizationalUnitSourceId: String?

    public var organizationalUnitSourceType: String?

    public var parentId: String?

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
            map["createTime"] = self.createTime!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.organizationalUnitExternalId != nil {
            map["organizationalUnitExternalId"] = self.organizationalUnitExternalId!
        }
        if self.organizationalUnitId != nil {
            map["organizationalUnitId"] = self.organizationalUnitId!
        }
        if self.organizationalUnitName != nil {
            map["organizationalUnitName"] = self.organizationalUnitName!
        }
        if self.organizationalUnitSourceId != nil {
            map["organizationalUnitSourceId"] = self.organizationalUnitSourceId!
        }
        if self.organizationalUnitSourceType != nil {
            map["organizationalUnitSourceType"] = self.organizationalUnitSourceType!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("organizationalUnitExternalId") {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitId") {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
        if dict.keys.contains("organizationalUnitName") {
            self.organizationalUnitName = dict["organizationalUnitName"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceId") {
            self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceType") {
            self.organizationalUnitSourceType = dict["organizationalUnitSourceType"] as! String
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! Int64
        }
    }
}

public class GetOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationalUnitResponseBody?

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
            var model = GetOrganizationalUnitResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOrganizationalUnitIdByExternalIdHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetOrganizationalUnitIdByExternalIdRequest : Tea.TeaModel {
    public var organizationalUnitExternalId: String?

    public var organizationalUnitSourceId: String?

    public var organizationalUnitSourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnitExternalId != nil {
            map["organizationalUnitExternalId"] = self.organizationalUnitExternalId!
        }
        if self.organizationalUnitSourceId != nil {
            map["organizationalUnitSourceId"] = self.organizationalUnitSourceId!
        }
        if self.organizationalUnitSourceType != nil {
            map["organizationalUnitSourceType"] = self.organizationalUnitSourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("organizationalUnitExternalId") {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceId") {
            self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceType") {
            self.organizationalUnitSourceType = dict["organizationalUnitSourceType"] as! String
        }
    }
}

public class GetOrganizationalUnitIdByExternalIdResponseBody : Tea.TeaModel {
    public var organizationalUnitId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.organizationalUnitId != nil {
            map["organizationalUnitId"] = self.organizationalUnitId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("organizationalUnitId") {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
    }
}

public class GetOrganizationalUnitIdByExternalIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOrganizationalUnitIdByExternalIdResponseBody?

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
            var model = GetOrganizationalUnitIdByExternalIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["fieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["fieldValue"] = self.fieldValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldName") {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") {
                self.fieldValue = dict["fieldValue"] as! String
            }
        }
    }
    public class OrganizationalUnits : Tea.TeaModel {
        public var organizationalUnitId: String?

        public var organizationalUnitName: String?

        public var primary: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.organizationalUnitId != nil {
                map["organizationalUnitId"] = self.organizationalUnitId!
            }
            if self.organizationalUnitName != nil {
                map["organizationalUnitName"] = self.organizationalUnitName!
            }
            if self.primary != nil {
                map["primary"] = self.primary!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("organizationalUnitId") {
                self.organizationalUnitId = dict["organizationalUnitId"] as! String
            }
            if dict.keys.contains("organizationalUnitName") {
                self.organizationalUnitName = dict["organizationalUnitName"] as! String
            }
            if dict.keys.contains("primary") {
                self.primary = dict["primary"] as! Bool
            }
        }
    }
    public var accountExpireTime: Int64?

    public var createTime: Int64?

    public var customFields: [GetUserResponseBody.CustomFields]?

    public var description_: String?

    public var displayName: String?

    public var email: String?

    public var emailVerified: Bool?

    public var instanceId: String?

    public var lockExpireTime: Int64?

    public var organizationalUnits: [GetUserResponseBody.OrganizationalUnits]?

    public var passwordSet: Bool?

    public var phoneNumber: String?

    public var phoneNumberVerified: Bool?

    public var phoneRegion: String?

    public var primaryOrganizationalUnitId: String?

    public var registerTime: Int64?

    public var status: String?

    public var updateTime: Int64?

    public var userExternalId: String?

    public var userId: String?

    public var userSourceId: String?

    public var userSourceType: String?

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
        if self.accountExpireTime != nil {
            map["accountExpireTime"] = self.accountExpireTime!
        }
        if self.createTime != nil {
            map["createTime"] = self.createTime!
        }
        if self.customFields != nil {
            var tmp : [Any] = []
            for k in self.customFields! {
                tmp.append(k.toMap())
            }
            map["customFields"] = tmp
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.emailVerified != nil {
            map["emailVerified"] = self.emailVerified!
        }
        if self.instanceId != nil {
            map["instanceId"] = self.instanceId!
        }
        if self.lockExpireTime != nil {
            map["lockExpireTime"] = self.lockExpireTime!
        }
        if self.organizationalUnits != nil {
            var tmp : [Any] = []
            for k in self.organizationalUnits! {
                tmp.append(k.toMap())
            }
            map["organizationalUnits"] = tmp
        }
        if self.passwordSet != nil {
            map["passwordSet"] = self.passwordSet!
        }
        if self.phoneNumber != nil {
            map["phoneNumber"] = self.phoneNumber!
        }
        if self.phoneNumberVerified != nil {
            map["phoneNumberVerified"] = self.phoneNumberVerified!
        }
        if self.phoneRegion != nil {
            map["phoneRegion"] = self.phoneRegion!
        }
        if self.primaryOrganizationalUnitId != nil {
            map["primaryOrganizationalUnitId"] = self.primaryOrganizationalUnitId!
        }
        if self.registerTime != nil {
            map["registerTime"] = self.registerTime!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.updateTime != nil {
            map["updateTime"] = self.updateTime!
        }
        if self.userExternalId != nil {
            map["userExternalId"] = self.userExternalId!
        }
        if self.userId != nil {
            map["userId"] = self.userId!
        }
        if self.userSourceId != nil {
            map["userSourceId"] = self.userSourceId!
        }
        if self.userSourceType != nil {
            map["userSourceType"] = self.userSourceType!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("accountExpireTime") {
            self.accountExpireTime = dict["accountExpireTime"] as! Int64
        }
        if dict.keys.contains("createTime") {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("customFields") {
            self.customFields = dict["customFields"] as! [GetUserResponseBody.CustomFields]
        }
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("instanceId") {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("lockExpireTime") {
            self.lockExpireTime = dict["lockExpireTime"] as! Int64
        }
        if dict.keys.contains("organizationalUnits") {
            self.organizationalUnits = dict["organizationalUnits"] as! [GetUserResponseBody.OrganizationalUnits]
        }
        if dict.keys.contains("passwordSet") {
            self.passwordSet = dict["passwordSet"] as! Bool
        }
        if dict.keys.contains("phoneNumber") {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("primaryOrganizationalUnitId") {
            self.primaryOrganizationalUnitId = dict["primaryOrganizationalUnitId"] as! String
        }
        if dict.keys.contains("registerTime") {
            self.registerTime = dict["registerTime"] as! Int64
        }
        if dict.keys.contains("status") {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("updateTime") {
            self.updateTime = dict["updateTime"] as! Int64
        }
        if dict.keys.contains("userExternalId") {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("userSourceId") {
            self.userSourceId = dict["userSourceId"] as! String
        }
        if dict.keys.contains("userSourceType") {
            self.userSourceType = dict["userSourceType"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class GetUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserResponseBody?

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
            var model = GetUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserIdByEmailHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserIdByEmailRequest : Tea.TeaModel {
    public var email: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.email != nil {
            map["email"] = self.email!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("email") {
            self.email = dict["email"] as! String
        }
    }
}

public class GetUserIdByEmailResponseBody : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
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
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetUserIdByEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserIdByEmailResponseBody?

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
            var model = GetUserIdByEmailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserIdByPhoneNumberHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserIdByPhoneNumberRequest : Tea.TeaModel {
    public var phoneNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.phoneNumber != nil {
            map["phoneNumber"] = self.phoneNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("phoneNumber") {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
    }
}

public class GetUserIdByPhoneNumberResponseBody : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
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
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetUserIdByPhoneNumberResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserIdByPhoneNumberResponseBody?

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
            var model = GetUserIdByPhoneNumberResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserIdByUserExternalIdHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserIdByUserExternalIdRequest : Tea.TeaModel {
    public var userExternalId: String?

    public var userSourceId: String?

    public var userSourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userExternalId != nil {
            map["userExternalId"] = self.userExternalId!
        }
        if self.userSourceId != nil {
            map["userSourceId"] = self.userSourceId!
        }
        if self.userSourceType != nil {
            map["userSourceType"] = self.userSourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userExternalId") {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("userSourceId") {
            self.userSourceId = dict["userSourceId"] as! String
        }
        if dict.keys.contains("userSourceType") {
            self.userSourceType = dict["userSourceType"] as! String
        }
    }
}

public class GetUserIdByUserExternalIdResponseBody : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
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
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetUserIdByUserExternalIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserIdByUserExternalIdResponseBody?

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
            var model = GetUserIdByUserExternalIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserIdByUsernameHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserIdByUsernameRequest : Tea.TeaModel {
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
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class GetUserIdByUsernameResponseBody : Tea.TeaModel {
    public var userId: String?

    public override init() {
        super.init()
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
            map["userId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("userId") {
            self.userId = dict["userId"] as! String
        }
    }
}

public class GetUserIdByUsernameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserIdByUsernameResponseBody?

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
            var model = GetUserIdByUsernameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserInfoHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class GetUserInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class ListOrganizationalUnitParentIdsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class ListOrganizationalUnitParentIdsResponseBody : Tea.TeaModel {
    public var parentIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.parentIds != nil {
            map["parentIds"] = self.parentIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("parentIds") {
            self.parentIds = dict["parentIds"] as! [String]
        }
    }
}

public class ListOrganizationalUnitParentIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationalUnitParentIdsResponseBody?

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
            var model = ListOrganizationalUnitParentIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrganizationalUnitsHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class ListOrganizationalUnitsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentId: String?

    public override init() {
        super.init()
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
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.parentId != nil {
            map["parentId"] = self.parentId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("parentId") {
            self.parentId = dict["parentId"] as! String
        }
    }
}

public class ListOrganizationalUnitsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: Int64?

        public var description_: String?

        public var instanceId: String?

        public var organizationalUnitExternalId: String?

        public var organizationalUnitId: String?

        public var organizationalUnitName: String?

        public var organizationalUnitSourceId: String?

        public var organizationalUnitSourceType: String?

        public var parentId: String?

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
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.organizationalUnitExternalId != nil {
                map["organizationalUnitExternalId"] = self.organizationalUnitExternalId!
            }
            if self.organizationalUnitId != nil {
                map["organizationalUnitId"] = self.organizationalUnitId!
            }
            if self.organizationalUnitName != nil {
                map["organizationalUnitName"] = self.organizationalUnitName!
            }
            if self.organizationalUnitSourceId != nil {
                map["organizationalUnitSourceId"] = self.organizationalUnitSourceId!
            }
            if self.organizationalUnitSourceType != nil {
                map["organizationalUnitSourceType"] = self.organizationalUnitSourceType!
            }
            if self.parentId != nil {
                map["parentId"] = self.parentId!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("organizationalUnitExternalId") {
                self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
            }
            if dict.keys.contains("organizationalUnitId") {
                self.organizationalUnitId = dict["organizationalUnitId"] as! String
            }
            if dict.keys.contains("organizationalUnitName") {
                self.organizationalUnitName = dict["organizationalUnitName"] as! String
            }
            if dict.keys.contains("organizationalUnitSourceId") {
                self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
            }
            if dict.keys.contains("organizationalUnitSourceType") {
                self.organizationalUnitSourceType = dict["organizationalUnitSourceType"] as! String
            }
            if dict.keys.contains("parentId") {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
        }
    }
    public var data: [ListOrganizationalUnitsResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [ListOrganizationalUnitsResponseBody.Data]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListOrganizationalUnitsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrganizationalUnitsResponseBody?

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
            var model = ListOrganizationalUnitsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var organizationalUnitId: String?

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
        if self.organizationalUnitId != nil {
            map["organizationalUnitId"] = self.organizationalUnitId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("organizationalUnitId") {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
        if dict.keys.contains("pageNumber") {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") {
            self.pageSize = dict["pageSize"] as! Int32
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountExpireTime: Int64?

        public var createTime: Int64?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var emailVerified: Bool?

        public var instanceId: String?

        public var lockExpireTime: Int64?

        public var passwordSet: Bool?

        public var phoneNumber: String?

        public var phoneNumberVerified: Bool?

        public var phoneRegion: String?

        public var registerTime: Int64?

        public var status: String?

        public var updateTime: Int64?

        public var userExternalId: String?

        public var userId: String?

        public var userSourceId: String?

        public var userSourceType: String?

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
            if self.accountExpireTime != nil {
                map["accountExpireTime"] = self.accountExpireTime!
            }
            if self.createTime != nil {
                map["createTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.displayName != nil {
                map["displayName"] = self.displayName!
            }
            if self.email != nil {
                map["email"] = self.email!
            }
            if self.emailVerified != nil {
                map["emailVerified"] = self.emailVerified!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.lockExpireTime != nil {
                map["lockExpireTime"] = self.lockExpireTime!
            }
            if self.passwordSet != nil {
                map["passwordSet"] = self.passwordSet!
            }
            if self.phoneNumber != nil {
                map["phoneNumber"] = self.phoneNumber!
            }
            if self.phoneNumberVerified != nil {
                map["phoneNumberVerified"] = self.phoneNumberVerified!
            }
            if self.phoneRegion != nil {
                map["phoneRegion"] = self.phoneRegion!
            }
            if self.registerTime != nil {
                map["registerTime"] = self.registerTime!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.updateTime != nil {
                map["updateTime"] = self.updateTime!
            }
            if self.userExternalId != nil {
                map["userExternalId"] = self.userExternalId!
            }
            if self.userId != nil {
                map["userId"] = self.userId!
            }
            if self.userSourceId != nil {
                map["userSourceId"] = self.userSourceId!
            }
            if self.userSourceType != nil {
                map["userSourceType"] = self.userSourceType!
            }
            if self.username != nil {
                map["username"] = self.username!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("accountExpireTime") {
                self.accountExpireTime = dict["accountExpireTime"] as! Int64
            }
            if dict.keys.contains("createTime") {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("description") {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("displayName") {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("email") {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("emailVerified") {
                self.emailVerified = dict["emailVerified"] as! Bool
            }
            if dict.keys.contains("instanceId") {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockExpireTime") {
                self.lockExpireTime = dict["lockExpireTime"] as! Int64
            }
            if dict.keys.contains("passwordSet") {
                self.passwordSet = dict["passwordSet"] as! Bool
            }
            if dict.keys.contains("phoneNumber") {
                self.phoneNumber = dict["phoneNumber"] as! String
            }
            if dict.keys.contains("phoneNumberVerified") {
                self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
            }
            if dict.keys.contains("phoneRegion") {
                self.phoneRegion = dict["phoneRegion"] as! String
            }
            if dict.keys.contains("registerTime") {
                self.registerTime = dict["registerTime"] as! Int64
            }
            if dict.keys.contains("status") {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") {
                self.updateTime = dict["updateTime"] as! Int64
            }
            if dict.keys.contains("userExternalId") {
                self.userExternalId = dict["userExternalId"] as! String
            }
            if dict.keys.contains("userId") {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userSourceId") {
                self.userSourceId = dict["userSourceId"] as! String
            }
            if dict.keys.contains("userSourceType") {
                self.userSourceType = dict["userSourceType"] as! String
            }
            if dict.keys.contains("username") {
                self.username = dict["username"] as! String
            }
        }
    }
    public var data: [ListUsersResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["data"] = tmp
        }
        if self.totalCount != nil {
            map["totalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("data") {
            self.data = dict["data"] as! [ListUsersResponseBody.Data]
        }
        if dict.keys.contains("totalCount") {
            self.totalCount = dict["totalCount"] as! Int64
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

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
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PatchOrganizationalUnitHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class PatchOrganizationalUnitRequest : Tea.TeaModel {
    public var description_: String?

    public var organizationalUnitName: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.organizationalUnitName != nil {
            map["organizationalUnitName"] = self.organizationalUnitName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("organizationalUnitName") {
            self.organizationalUnitName = dict["organizationalUnitName"] as! String
        }
    }
}

public class PatchOrganizationalUnitResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class PatchUserHeaders : Tea.TeaModel {
    public var commonHeaders: [String: String]?

    public var authorization: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commonHeaders != nil {
            map["commonHeaders"] = self.commonHeaders!
        }
        if self.authorization != nil {
            map["Authorization"] = self.authorization!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("commonHeaders") {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class PatchUserRequest : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public var operator_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.fieldName != nil {
                map["fieldName"] = self.fieldName!
            }
            if self.fieldValue != nil {
                map["fieldValue"] = self.fieldValue!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldName") {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") {
                self.fieldValue = dict["fieldValue"] as! String
            }
            if dict.keys.contains("operator") {
                self.operator_ = dict["operator"] as! String
            }
        }
    }
    public var customFields: [PatchUserRequest.CustomFields]?

    public var displayName: String?

    public var email: String?

    public var emailVerified: Bool?

    public var phoneNumber: String?

    public var phoneNumberVerified: Bool?

    public var phoneRegion: String?

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
        if self.customFields != nil {
            var tmp : [Any] = []
            for k in self.customFields! {
                tmp.append(k.toMap())
            }
            map["customFields"] = tmp
        }
        if self.displayName != nil {
            map["displayName"] = self.displayName!
        }
        if self.email != nil {
            map["email"] = self.email!
        }
        if self.emailVerified != nil {
            map["emailVerified"] = self.emailVerified!
        }
        if self.phoneNumber != nil {
            map["phoneNumber"] = self.phoneNumber!
        }
        if self.phoneNumberVerified != nil {
            map["phoneNumberVerified"] = self.phoneNumberVerified!
        }
        if self.phoneRegion != nil {
            map["phoneRegion"] = self.phoneRegion!
        }
        if self.username != nil {
            map["username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customFields") {
            self.customFields = dict["customFields"] as! [PatchUserRequest.CustomFields]
        }
        if dict.keys.contains("displayName") {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("phoneNumber") {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("username") {
            self.username = dict["username"] as! String
        }
    }
}

public class PatchUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class RevokeTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientSecret: String?

    public var token: String?

    public var tokenTypeHint: String?

    public override init() {
        super.init()
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
            map["client_id"] = self.clientId!
        }
        if self.clientSecret != nil {
            map["client_secret"] = self.clientSecret!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.tokenTypeHint != nil {
            map["token_type_hint"] = self.tokenTypeHint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("client_id") {
            self.clientId = dict["client_id"] as! String
        }
        if dict.keys.contains("client_secret") {
            self.clientSecret = dict["client_secret"] as! String
        }
        if dict.keys.contains("token") {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("token_type_hint") {
            self.tokenTypeHint = dict["token_type_hint"] as! String
        }
    }
}

public class RevokeTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}
