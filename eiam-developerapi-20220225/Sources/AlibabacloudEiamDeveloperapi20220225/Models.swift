import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserToOrganizationalUnitsHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class AddUserToOrganizationalUnitsRequest : Tea.TeaModel {
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
        if dict.keys.contains("organizationalUnitIds") && dict["organizationalUnitIds"] != nil {
            self.organizationalUnitIds = dict["organizationalUnitIds"] as! [String]
        }
    }
}

public class AddUserToOrganizationalUnitsResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("organizationalUnitExternalId") && dict["organizationalUnitExternalId"] != nil {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitName") && dict["organizationalUnitName"] != nil {
            self.organizationalUnitName = dict["organizationalUnitName"] as! String
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
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
        if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
            if dict.keys.contains("fieldName") && dict["fieldName"] != nil {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") && dict["fieldValue"] != nil {
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
            if dict.keys.contains("passwordForcedUpdateStatus") && dict["passwordForcedUpdateStatus"] != nil {
                self.passwordForcedUpdateStatus = dict["passwordForcedUpdateStatus"] as! String
            }
            if dict.keys.contains("passwordInitializationPolicyPriority") && dict["passwordInitializationPolicyPriority"] != nil {
                self.passwordInitializationPolicyPriority = dict["passwordInitializationPolicyPriority"] as! String
            }
            if dict.keys.contains("passwordInitializationType") && dict["passwordInitializationType"] != nil {
                self.passwordInitializationType = dict["passwordInitializationType"] as! String
            }
            if dict.keys.contains("userNotificationChannels") && dict["userNotificationChannels"] != nil {
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
        if dict.keys.contains("customFields") && dict["customFields"] != nil {
            var tmp : [CreateUserRequest.CustomFields] = []
            for v in dict["customFields"] as! [Any] {
                var model = CreateUserRequest.CustomFields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customFields = tmp
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") && dict["email"] != nil {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") && dict["emailVerified"] != nil {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("passwordInitializationConfig") && dict["passwordInitializationConfig"] != nil {
            var model = CreateUserRequest.PasswordInitializationConfig()
            model.fromMap(dict["passwordInitializationConfig"] as! [String: Any])
            self.passwordInitializationConfig = model
        }
        if dict.keys.contains("phoneNumber") && dict["phoneNumber"] != nil {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") && dict["phoneNumberVerified"] != nil {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") && dict["phoneRegion"] != nil {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("primaryOrganizationalUnitId") && dict["primaryOrganizationalUnitId"] != nil {
            self.primaryOrganizationalUnitId = dict["primaryOrganizationalUnitId"] as! String
        }
        if dict.keys.contains("userExternalId") && dict["userExternalId"] != nil {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("userId") && dict["userId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("scope") && dict["scope"] != nil {
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
        if dict.keys.contains("device_code") && dict["device_code"] != nil {
            self.deviceCode = dict["device_code"] as! String
        }
        if dict.keys.contains("expires_at") && dict["expires_at"] != nil {
            self.expiresAt = dict["expires_at"] as! Int64
        }
        if dict.keys.contains("expires_in") && dict["expires_in"] != nil {
            self.expiresIn = dict["expires_in"] as! Int64
        }
        if dict.keys.contains("interval") && dict["interval"] != nil {
            self.interval = dict["interval"] as! Int64
        }
        if dict.keys.contains("user_code") && dict["user_code"] != nil {
            self.userCode = dict["user_code"] as! String
        }
        if dict.keys.contains("verification_uri") && dict["verification_uri"] != nil {
            self.verificationUri = dict["verification_uri"] as! String
        }
        if dict.keys.contains("verification_uri_complete") && dict["verification_uri_complete"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("client_id") && dict["client_id"] != nil {
            self.clientId = dict["client_id"] as! String
        }
        if dict.keys.contains("client_secret") && dict["client_secret"] != nil {
            self.clientSecret = dict["client_secret"] as! String
        }
        if dict.keys.contains("code") && dict["code"] != nil {
            self.code = dict["code"] as! String
        }
        if dict.keys.contains("code_verifier") && dict["code_verifier"] != nil {
            self.codeVerifier = dict["code_verifier"] as! String
        }
        if dict.keys.contains("device_code") && dict["device_code"] != nil {
            self.deviceCode = dict["device_code"] as! String
        }
        if dict.keys.contains("exclusive_tag") && dict["exclusive_tag"] != nil {
            self.exclusiveTag = dict["exclusive_tag"] as! String
        }
        if dict.keys.contains("grant_type") && dict["grant_type"] != nil {
            self.grantType = dict["grant_type"] as! String
        }
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("redirect_uri") && dict["redirect_uri"] != nil {
            self.redirectUri = dict["redirect_uri"] as! String
        }
        if dict.keys.contains("refresh_token") && dict["refresh_token"] != nil {
            self.refreshToken = dict["refresh_token"] as! String
        }
        if dict.keys.contains("scope") && dict["scope"] != nil {
            self.scope = dict["scope"] as! String
        }
        if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("access_token") && dict["access_token"] != nil {
            self.accessToken = dict["access_token"] as! String
        }
        if dict.keys.contains("expires_at") && dict["expires_at"] != nil {
            self.expiresAt = dict["expires_at"] as! Int64
        }
        if dict.keys.contains("expires_in") && dict["expires_in"] != nil {
            self.expiresIn = dict["expires_in"] as! Int64
        }
        if dict.keys.contains("id_token") && dict["id_token"] != nil {
            self.idToken = dict["id_token"] as! String
        }
        if dict.keys.contains("refresh_token") && dict["refresh_token"] != nil {
            self.refreshToken = dict["refresh_token"] as! String
        }
        if dict.keys.contains("token_type") && dict["token_type"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("organizationalUnitIds") && dict["organizationalUnitIds"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("createTime") && dict["createTime"] != nil {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("organizationalUnitExternalId") && dict["organizationalUnitExternalId"] != nil {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
        if dict.keys.contains("organizationalUnitName") && dict["organizationalUnitName"] != nil {
            self.organizationalUnitName = dict["organizationalUnitName"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceId") && dict["organizationalUnitSourceId"] != nil {
            self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceType") && dict["organizationalUnitSourceType"] != nil {
            self.organizationalUnitSourceType = dict["organizationalUnitSourceType"] as! String
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
            self.parentId = dict["parentId"] as! String
        }
        if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("organizationalUnitExternalId") && dict["organizationalUnitExternalId"] != nil {
            self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceId") && dict["organizationalUnitSourceId"] != nil {
            self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
        }
        if dict.keys.contains("organizationalUnitSourceType") && dict["organizationalUnitSourceType"] != nil {
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
        if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
            if dict.keys.contains("fieldName") && dict["fieldName"] != nil {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") && dict["fieldValue"] != nil {
                self.fieldValue = dict["fieldValue"] as! String
            }
        }
    }
    public class Groups : Tea.TeaModel {
        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public override init() {
            super.init()
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
            if self.groupId != nil {
                map["groupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["groupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("groupId") && dict["groupId"] != nil {
                self.groupId = dict["groupId"] as! String
            }
            if dict.keys.contains("groupName") && dict["groupName"] != nil {
                self.groupName = dict["groupName"] as! String
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
            if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
                self.organizationalUnitId = dict["organizationalUnitId"] as! String
            }
            if dict.keys.contains("organizationalUnitName") && dict["organizationalUnitName"] != nil {
                self.organizationalUnitName = dict["organizationalUnitName"] as! String
            }
            if dict.keys.contains("primary") && dict["primary"] != nil {
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

    public var groups: [GetUserResponseBody.Groups]?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["groups"] = tmp
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
        if dict.keys.contains("accountExpireTime") && dict["accountExpireTime"] != nil {
            self.accountExpireTime = dict["accountExpireTime"] as! Int64
        }
        if dict.keys.contains("createTime") && dict["createTime"] != nil {
            self.createTime = dict["createTime"] as! Int64
        }
        if dict.keys.contains("customFields") && dict["customFields"] != nil {
            var tmp : [GetUserResponseBody.CustomFields] = []
            for v in dict["customFields"] as! [Any] {
                var model = GetUserResponseBody.CustomFields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customFields = tmp
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") && dict["email"] != nil {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") && dict["emailVerified"] != nil {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("groups") && dict["groups"] != nil {
            var tmp : [GetUserResponseBody.Groups] = []
            for v in dict["groups"] as! [Any] {
                var model = GetUserResponseBody.Groups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
        }
        if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
            self.instanceId = dict["instanceId"] as! String
        }
        if dict.keys.contains("lockExpireTime") && dict["lockExpireTime"] != nil {
            self.lockExpireTime = dict["lockExpireTime"] as! Int64
        }
        if dict.keys.contains("organizationalUnits") && dict["organizationalUnits"] != nil {
            var tmp : [GetUserResponseBody.OrganizationalUnits] = []
            for v in dict["organizationalUnits"] as! [Any] {
                var model = GetUserResponseBody.OrganizationalUnits()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.organizationalUnits = tmp
        }
        if dict.keys.contains("passwordSet") && dict["passwordSet"] != nil {
            self.passwordSet = dict["passwordSet"] as! Bool
        }
        if dict.keys.contains("phoneNumber") && dict["phoneNumber"] != nil {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") && dict["phoneNumberVerified"] != nil {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") && dict["phoneRegion"] != nil {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("primaryOrganizationalUnitId") && dict["primaryOrganizationalUnitId"] != nil {
            self.primaryOrganizationalUnitId = dict["primaryOrganizationalUnitId"] as! String
        }
        if dict.keys.contains("registerTime") && dict["registerTime"] != nil {
            self.registerTime = dict["registerTime"] as! Int64
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
            self.updateTime = dict["updateTime"] as! Int64
        }
        if dict.keys.contains("userExternalId") && dict["userExternalId"] != nil {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("userId") && dict["userId"] != nil {
            self.userId = dict["userId"] as! String
        }
        if dict.keys.contains("userSourceId") && dict["userSourceId"] != nil {
            self.userSourceId = dict["userSourceId"] as! String
        }
        if dict.keys.contains("userSourceType") && dict["userSourceType"] != nil {
            self.userSourceType = dict["userSourceType"] as! String
        }
        if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("email") && dict["email"] != nil {
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
        if dict.keys.contains("userId") && dict["userId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("phoneNumber") && dict["phoneNumber"] != nil {
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
        if dict.keys.contains("userId") && dict["userId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("userExternalId") && dict["userExternalId"] != nil {
            self.userExternalId = dict["userExternalId"] as! String
        }
        if dict.keys.contains("userSourceId") && dict["userSourceId"] != nil {
            self.userSourceId = dict["userSourceId"] as! String
        }
        if dict.keys.contains("userSourceType") && dict["userSourceType"] != nil {
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
        if dict.keys.contains("userId") && dict["userId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("userId") && dict["userId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("parentIds") && dict["parentIds"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! Int32
        }
        if dict.keys.contains("parentId") && dict["parentId"] != nil {
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
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("organizationalUnitExternalId") && dict["organizationalUnitExternalId"] != nil {
                self.organizationalUnitExternalId = dict["organizationalUnitExternalId"] as! String
            }
            if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
                self.organizationalUnitId = dict["organizationalUnitId"] as! String
            }
            if dict.keys.contains("organizationalUnitName") && dict["organizationalUnitName"] != nil {
                self.organizationalUnitName = dict["organizationalUnitName"] as! String
            }
            if dict.keys.contains("organizationalUnitSourceId") && dict["organizationalUnitSourceId"] != nil {
                self.organizationalUnitSourceId = dict["organizationalUnitSourceId"] as! String
            }
            if dict.keys.contains("organizationalUnitSourceType") && dict["organizationalUnitSourceType"] != nil {
                self.organizationalUnitSourceType = dict["organizationalUnitSourceType"] as! String
            }
            if dict.keys.contains("parentId") && dict["parentId"] != nil {
                self.parentId = dict["parentId"] as! String
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
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
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListOrganizationalUnitsResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListOrganizationalUnitsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! Int32
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
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
            if dict.keys.contains("accountExpireTime") && dict["accountExpireTime"] != nil {
                self.accountExpireTime = dict["accountExpireTime"] as! Int64
            }
            if dict.keys.contains("createTime") && dict["createTime"] != nil {
                self.createTime = dict["createTime"] as! Int64
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("displayName") && dict["displayName"] != nil {
                self.displayName = dict["displayName"] as! String
            }
            if dict.keys.contains("email") && dict["email"] != nil {
                self.email = dict["email"] as! String
            }
            if dict.keys.contains("emailVerified") && dict["emailVerified"] != nil {
                self.emailVerified = dict["emailVerified"] as! Bool
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("lockExpireTime") && dict["lockExpireTime"] != nil {
                self.lockExpireTime = dict["lockExpireTime"] as! Int64
            }
            if dict.keys.contains("passwordSet") && dict["passwordSet"] != nil {
                self.passwordSet = dict["passwordSet"] as! Bool
            }
            if dict.keys.contains("phoneNumber") && dict["phoneNumber"] != nil {
                self.phoneNumber = dict["phoneNumber"] as! String
            }
            if dict.keys.contains("phoneNumberVerified") && dict["phoneNumberVerified"] != nil {
                self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
            }
            if dict.keys.contains("phoneRegion") && dict["phoneRegion"] != nil {
                self.phoneRegion = dict["phoneRegion"] as! String
            }
            if dict.keys.contains("registerTime") && dict["registerTime"] != nil {
                self.registerTime = dict["registerTime"] as! Int64
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("updateTime") && dict["updateTime"] != nil {
                self.updateTime = dict["updateTime"] as! Int64
            }
            if dict.keys.contains("userExternalId") && dict["userExternalId"] != nil {
                self.userExternalId = dict["userExternalId"] as! String
            }
            if dict.keys.contains("userId") && dict["userId"] != nil {
                self.userId = dict["userId"] as! String
            }
            if dict.keys.contains("userSourceId") && dict["userSourceId"] != nil {
                self.userSourceId = dict["userSourceId"] as! String
            }
            if dict.keys.contains("userSourceType") && dict["userSourceType"] != nil {
                self.userSourceType = dict["userSourceType"] as! String
            }
            if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("data") && dict["data"] != nil {
            var tmp : [ListUsersResponseBody.Data] = []
            for v in dict["data"] as! [Any] {
                var model = ListUsersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("totalCount") && dict["totalCount"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
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
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("organizationalUnitName") && dict["organizationalUnitName"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class PatchUserRequest : Tea.TeaModel {
    public class CustomFields : Tea.TeaModel {
        public var fieldName: String?

        public var fieldValue: String?

        public var operation: String?

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
            if self.operation != nil {
                map["operation"] = self.operation!
            }
            if self.operator_ != nil {
                map["operator"] = self.operator_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("fieldName") && dict["fieldName"] != nil {
                self.fieldName = dict["fieldName"] as! String
            }
            if dict.keys.contains("fieldValue") && dict["fieldValue"] != nil {
                self.fieldValue = dict["fieldValue"] as! String
            }
            if dict.keys.contains("operation") && dict["operation"] != nil {
                self.operation = dict["operation"] as! String
            }
            if dict.keys.contains("operator") && dict["operator"] != nil {
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
        if dict.keys.contains("customFields") && dict["customFields"] != nil {
            var tmp : [PatchUserRequest.CustomFields] = []
            for v in dict["customFields"] as! [Any] {
                var model = PatchUserRequest.CustomFields()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customFields = tmp
        }
        if dict.keys.contains("displayName") && dict["displayName"] != nil {
            self.displayName = dict["displayName"] as! String
        }
        if dict.keys.contains("email") && dict["email"] != nil {
            self.email = dict["email"] as! String
        }
        if dict.keys.contains("emailVerified") && dict["emailVerified"] != nil {
            self.emailVerified = dict["emailVerified"] as! Bool
        }
        if dict.keys.contains("phoneNumber") && dict["phoneNumber"] != nil {
            self.phoneNumber = dict["phoneNumber"] as! String
        }
        if dict.keys.contains("phoneNumberVerified") && dict["phoneNumberVerified"] != nil {
            self.phoneNumberVerified = dict["phoneNumberVerified"] as! Bool
        }
        if dict.keys.contains("phoneRegion") && dict["phoneRegion"] != nil {
            self.phoneRegion = dict["phoneRegion"] as! String
        }
        if dict.keys.contains("username") && dict["username"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

public class RemoveUserFromOrganizationalUnitsHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class RemoveUserFromOrganizationalUnitsRequest : Tea.TeaModel {
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
        if dict.keys.contains("organizationalUnitIds") && dict["organizationalUnitIds"] != nil {
            self.organizationalUnitIds = dict["organizationalUnitIds"] as! [String]
        }
    }
}

public class RemoveUserFromOrganizationalUnitsResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
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
        if dict.keys.contains("client_id") && dict["client_id"] != nil {
            self.clientId = dict["client_id"] as! String
        }
        if dict.keys.contains("client_secret") && dict["client_secret"] != nil {
            self.clientSecret = dict["client_secret"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("token_type_hint") && dict["token_type_hint"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class SetUserPrimaryOrganizationalUnitHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class SetUserPrimaryOrganizationalUnitRequest : Tea.TeaModel {
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
        if dict.keys.contains("organizationalUnitId") && dict["organizationalUnitId"] != nil {
            self.organizationalUnitId = dict["organizationalUnitId"] as! String
        }
    }
}

public class SetUserPrimaryOrganizationalUnitResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}

public class UpdateUserPasswordHeaders : Tea.TeaModel {
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
        if dict.keys.contains("commonHeaders") && dict["commonHeaders"] != nil {
            self.commonHeaders = dict["commonHeaders"] as! [String: String]
        }
        if dict.keys.contains("Authorization") && dict["Authorization"] != nil {
            self.authorization = dict["Authorization"] as! String
        }
    }
}

public class UpdateUserPasswordRequest : Tea.TeaModel {
    public var password: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.password != nil {
            map["password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
    }
}

public class UpdateUserPasswordResponse : Tea.TeaModel {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
    }
}
