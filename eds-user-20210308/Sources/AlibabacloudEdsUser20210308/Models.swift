import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class GroupResources : Tea.TeaModel {
    public var region: String?

    public var resourceId: String?

    public var resourceType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
    }
}

public class ThirdApp : Tea.TeaModel {
    public class OidcSsoConfig : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public var authorizationEndpoint: String?

            public var discoveryEndpoint: String?

            public var guestAuthorizationEndpoint: String?

            public var issuer: String?

            public var jwksEndpoint: String?

            public var logoutEndpoint: String?

            public var revokeEndpoint: String?

            public var tokenEndpoint: String?

            public var userinfoEndpoint: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.authorizationEndpoint != nil {
                    map["AuthorizationEndpoint"] = self.authorizationEndpoint!
                }
                if self.discoveryEndpoint != nil {
                    map["DiscoveryEndpoint"] = self.discoveryEndpoint!
                }
                if self.guestAuthorizationEndpoint != nil {
                    map["GuestAuthorizationEndpoint"] = self.guestAuthorizationEndpoint!
                }
                if self.issuer != nil {
                    map["Issuer"] = self.issuer!
                }
                if self.jwksEndpoint != nil {
                    map["JwksEndpoint"] = self.jwksEndpoint!
                }
                if self.logoutEndpoint != nil {
                    map["LogoutEndpoint"] = self.logoutEndpoint!
                }
                if self.revokeEndpoint != nil {
                    map["RevokeEndpoint"] = self.revokeEndpoint!
                }
                if self.tokenEndpoint != nil {
                    map["TokenEndpoint"] = self.tokenEndpoint!
                }
                if self.userinfoEndpoint != nil {
                    map["UserinfoEndpoint"] = self.userinfoEndpoint!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AuthorizationEndpoint"] as? String {
                    self.authorizationEndpoint = value
                }
                if let value = dict["DiscoveryEndpoint"] as? String {
                    self.discoveryEndpoint = value
                }
                if let value = dict["GuestAuthorizationEndpoint"] as? String {
                    self.guestAuthorizationEndpoint = value
                }
                if let value = dict["Issuer"] as? String {
                    self.issuer = value
                }
                if let value = dict["JwksEndpoint"] as? String {
                    self.jwksEndpoint = value
                }
                if let value = dict["LogoutEndpoint"] as? String {
                    self.logoutEndpoint = value
                }
                if let value = dict["RevokeEndpoint"] as? String {
                    self.revokeEndpoint = value
                }
                if let value = dict["TokenEndpoint"] as? String {
                    self.tokenEndpoint = value
                }
                if let value = dict["UserinfoEndpoint"] as? String {
                    self.userinfoEndpoint = value
                }
            }
        }
        public var accessTokenEffectiveTime: Int32?

        public var codeEffectiveTime: Int32?

        public var enableAuthLogin: Bool?

        public var endpoints: ThirdApp.OidcSsoConfig.Endpoints?

        public var grantScopes: [String]?

        public var grantTypes: [String]?

        public var idTokenAlgorithmType: String?

        public var idTokenEffectiveTime: Int32?

        public var redirectUris: [String]?

        public var refreshTokenEffective: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.endpoints?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenEffectiveTime != nil {
                map["AccessTokenEffectiveTime"] = self.accessTokenEffectiveTime!
            }
            if self.codeEffectiveTime != nil {
                map["CodeEffectiveTime"] = self.codeEffectiveTime!
            }
            if self.enableAuthLogin != nil {
                map["EnableAuthLogin"] = self.enableAuthLogin!
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.grantScopes != nil {
                map["GrantScopes"] = self.grantScopes!
            }
            if self.grantTypes != nil {
                map["GrantTypes"] = self.grantTypes!
            }
            if self.idTokenAlgorithmType != nil {
                map["IdTokenAlgorithmType"] = self.idTokenAlgorithmType!
            }
            if self.idTokenEffectiveTime != nil {
                map["IdTokenEffectiveTime"] = self.idTokenEffectiveTime!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris!
            }
            if self.refreshTokenEffective != nil {
                map["RefreshTokenEffective"] = self.refreshTokenEffective!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenEffectiveTime"] as? Int32 {
                self.accessTokenEffectiveTime = value
            }
            if let value = dict["CodeEffectiveTime"] as? Int32 {
                self.codeEffectiveTime = value
            }
            if let value = dict["EnableAuthLogin"] as? Bool {
                self.enableAuthLogin = value
            }
            if let value = dict["Endpoints"] as? [String: Any?] {
                var model = ThirdApp.OidcSsoConfig.Endpoints()
                model.fromMap(value)
                self.endpoints = model
            }
            if let value = dict["GrantScopes"] as? [String] {
                self.grantScopes = value
            }
            if let value = dict["GrantTypes"] as? [String] {
                self.grantTypes = value
            }
            if let value = dict["IdTokenAlgorithmType"] as? String {
                self.idTokenAlgorithmType = value
            }
            if let value = dict["IdTokenEffectiveTime"] as? Int32 {
                self.idTokenEffectiveTime = value
            }
            if let value = dict["RedirectUris"] as? [String] {
                self.redirectUris = value
            }
            if let value = dict["RefreshTokenEffective"] as? Int32 {
                self.refreshTokenEffective = value
            }
        }
    }
    public class Secrets : Tea.TeaModel {
        public var enable: Bool?

        public var secret: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enable != nil {
                map["Enable"] = self.enable!
            }
            if self.secret != nil {
                map["Secret"] = self.secret!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Enable"] as? Bool {
                self.enable = value
            }
            if let value = dict["Secret"] as? String {
                self.secret = value
            }
        }
    }
    public var appKey: String?

    public var name: String?

    public var oidcSsoConfig: ThirdApp.OidcSsoConfig?

    public var secrets: [ThirdApp.Secrets]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.oidcSsoConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appKey != nil {
            map["AppKey"] = self.appKey!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.oidcSsoConfig != nil {
            map["OidcSsoConfig"] = self.oidcSsoConfig?.toMap()
        }
        if self.secrets != nil {
            var tmp : [Any] = []
            for k in self.secrets! {
                tmp.append(k.toMap())
            }
            map["Secrets"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppKey"] as? String {
            self.appKey = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OidcSsoConfig"] as? [String: Any?] {
            var model = ThirdApp.OidcSsoConfig()
            model.fromMap(value)
            self.oidcSsoConfig = model
        }
        if let value = dict["Secrets"] as? [Any?] {
            var tmp : [ThirdApp.Secrets] = []
            for v in value {
                if v != nil {
                    var model = ThirdApp.Secrets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.secrets = tmp
        }
    }
}

public class WaIdPermissions : Tea.TeaModel {
    public var code: String?

    public var isBasicChild: Bool?

    public var name: String?

    public var subPermissions: [WaIdPermissions]?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.isBasicChild != nil {
            map["IsBasicChild"] = self.isBasicChild!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.subPermissions != nil {
            var tmp : [Any] = []
            for k in self.subPermissions! {
                tmp.append(k.toMap())
            }
            map["SubPermissions"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["IsBasicChild"] as? Bool {
            self.isBasicChild = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["SubPermissions"] as? [Any?] {
            var tmp : [WaIdPermissions] = []
            for v in value {
                if v != nil {
                    var model = WaIdPermissions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subPermissions = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class BatchSetDesktopManagerRequest : Tea.TeaModel {
    public var isDesktopManager: String?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isDesktopManager != nil {
            map["IsDesktopManager"] = self.isDesktopManager!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsDesktopManager"] as? String {
            self.isDesktopManager = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class BatchSetDesktopManagerResponseBody : Tea.TeaModel {
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

public class BatchSetDesktopManagerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchSetDesktopManagerResponseBody?

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
            var model = BatchSetDesktopManagerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeUserPasswordRequest : Tea.TeaModel {
    public var endUserId: String?

    public var newPassword: String?

    public override init() {
        super.init()
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
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
    }
}

public class ChangeUserPasswordResponseBody : Tea.TeaModel {
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

public class ChangeUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeUserPasswordResponseBody?

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
            var model = ChangeUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckUsedPropertyRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
    }
}

public class CheckUsedPropertyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var useCount: Int64?

    public override init() {
        super.init()
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
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UseCount"] as? Int64 {
            self.useCount = value
        }
    }
}

public class CheckUsedPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUsedPropertyResponseBody?

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
            var model = CheckUsedPropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckUsedPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
        if let value = dict["PropertyValueId"] as? Int64 {
            self.propertyValueId = value
        }
    }
}

public class CheckUsedPropertyValueResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var useCount: Int64?

    public override init() {
        super.init()
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
        if self.useCount != nil {
            map["UseCount"] = self.useCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UseCount"] as? Int64 {
            self.useCount = value
        }
    }
}

public class CheckUsedPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckUsedPropertyValueResponseBody?

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
            var model = CheckUsedPropertyValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var bizType: String?

    public var description_: String?

    public var groupName: String?

    public var parentGroupId: String?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.parentGroupId != nil {
            map["ParentGroupId"] = self.parentGroupId!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["ParentGroupId"] as? String {
            self.parentGroupId = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public var groupId: String?

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
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGroupResponseBody?

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
            var model = CreateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOrgRequest : Tea.TeaModel {
    public var orgName: String?

    public var parentOrgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.parentOrgId != nil {
            map["ParentOrgId"] = self.parentOrgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ParentOrgId"] as? String {
            self.parentOrgId = value
        }
    }
}

public class CreateOrgResponseBody : Tea.TeaModel {
    public var orgId: String?

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
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrgResponseBody?

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
            var model = CreateOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePropertyRequest : Tea.TeaModel {
    public var propertyKey: String?

    public var propertyValues: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        if self.propertyValues != nil {
            map["PropertyValues"] = self.propertyValues!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyKey"] as? String {
            self.propertyKey = value
        }
        if let value = dict["PropertyValues"] as? [String] {
            self.propertyValues = value
        }
    }
}

public class CreatePropertyResponseBody : Tea.TeaModel {
    public class CreateResult : Tea.TeaModel {
        public class SavePropertyValueModel : Tea.TeaModel {
            public class FailedPropertyValues : Tea.TeaModel {
                public var errorCode: String?

                public var errorMessage: String?

                public var propertyId: Int64?

                public var propertyValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.propertyId != nil {
                        map["PropertyId"] = self.propertyId!
                    }
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["PropertyId"] as? Int64 {
                        self.propertyId = value
                    }
                    if let value = dict["PropertyValue"] as? String {
                        self.propertyValue = value
                    }
                }
            }
            public class SavePropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PropertyValue"] as? String {
                        self.propertyValue = value
                    }
                    if let value = dict["PropertyValueId"] as? Int64 {
                        self.propertyValueId = value
                    }
                }
            }
            public var failedPropertyValues: [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues]?

            public var savePropertyValues: [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedPropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.failedPropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["FailedPropertyValues"] = tmp
                }
                if self.savePropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.savePropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["SavePropertyValues"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailedPropertyValues"] as? [Any?] {
                    var tmp : [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.FailedPropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.failedPropertyValues = tmp
                }
                if let value = dict["SavePropertyValues"] as? [Any?] {
                    var tmp : [CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel.SavePropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.savePropertyValues = tmp
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var savePropertyValueModel: CreatePropertyResponseBody.CreateResult.SavePropertyValueModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.savePropertyValueModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.savePropertyValueModel != nil {
                map["SavePropertyValueModel"] = self.savePropertyValueModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyId"] as? Int64 {
                self.propertyId = value
            }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["SavePropertyValueModel"] as? [String: Any?] {
                var model = CreatePropertyResponseBody.CreateResult.SavePropertyValueModel()
                model.fromMap(value)
                self.savePropertyValueModel = model
            }
        }
    }
    public var createResult: CreatePropertyResponseBody.CreateResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.createResult != nil {
            map["CreateResult"] = self.createResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateResult"] as? [String: Any?] {
            var model = CreatePropertyResponseBody.CreateResult()
            model.fromMap(value)
            self.createResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePropertyResponseBody?

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
            var model = CreatePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceGroupRequest : Tea.TeaModel {
    public var isResourceGroupWithOfficeSite: Int64?

    public var platform: String?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isResourceGroupWithOfficeSite != nil {
            map["IsResourceGroupWithOfficeSite"] = self.isResourceGroupWithOfficeSite!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsResourceGroupWithOfficeSite"] as? Int64 {
            self.isResourceGroupWithOfficeSite = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ResourceGroupName"] as? String {
            self.resourceGroupName = value
        }
    }
}

public class CreateResourceGroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
    }
}

public class CreateResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceGroupResponseBody?

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
            var model = CreateResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUsersRequest : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var email: String?

        public var endUserId: String?

        public var groupIdList: [String]?

        public var orgId: String?

        public var ownerType: String?

        public var password: String?

        public var phone: String?

        public var realNickName: String?

        public var remark: String?

        public override init() {
            super.init()
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
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.groupIdList != nil {
                map["GroupIdList"] = self.groupIdList!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["GroupIdList"] as? [String] {
                self.groupIdList = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OwnerType"] as? String {
                self.ownerType = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["RealNickName"] as? String {
                self.realNickName = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
        }
    }
    public var autoLockTime: String?

    public var isLocalAdmin: Bool?

    public var password: String?

    public var passwordExpireDays: String?

    public var users: [CreateUsersRequest.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLockTime != nil {
            map["AutoLockTime"] = self.autoLockTime!
        }
        if self.isLocalAdmin != nil {
            map["IsLocalAdmin"] = self.isLocalAdmin!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordExpireDays != nil {
            map["PasswordExpireDays"] = self.passwordExpireDays!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoLockTime"] as? String {
            self.autoLockTime = value
        }
        if let value = dict["IsLocalAdmin"] as? Bool {
            self.isLocalAdmin = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["PasswordExpireDays"] as? String {
            self.passwordExpireDays = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [CreateUsersRequest.Users] = []
            for v in value {
                if v != nil {
                    var model = CreateUsersRequest.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class CreateUsersResponseBody : Tea.TeaModel {
    public class CreateResult : Tea.TeaModel {
        public class CreatedUsers : Tea.TeaModel {
            public var email: String?

            public var endUserId: String?

            public var phone: String?

            public var realNickName: String?

            public var remark: String?

            public override init() {
                super.init()
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
                    map["Email"] = self.email!
                }
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                if self.realNickName != nil {
                    map["RealNickName"] = self.realNickName!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
                if let value = dict["RealNickName"] as? String {
                    self.realNickName = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public class FailedUsers : Tea.TeaModel {
            public var email: String?

            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public var phone: String?

            public override init() {
                super.init()
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
                    map["Email"] = self.email!
                }
                if self.endUserId != nil {
                    map["EndUserId"] = self.endUserId!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                if self.phone != nil {
                    map["Phone"] = self.phone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
                if let value = dict["Phone"] as? String {
                    self.phone = value
                }
            }
        }
        public var createdUsers: [CreateUsersResponseBody.CreateResult.CreatedUsers]?

        public var failedUsers: [CreateUsersResponseBody.CreateResult.FailedUsers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createdUsers != nil {
                var tmp : [Any] = []
                for k in self.createdUsers! {
                    tmp.append(k.toMap())
                }
                map["CreatedUsers"] = tmp
            }
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreatedUsers"] as? [Any?] {
                var tmp : [CreateUsersResponseBody.CreateResult.CreatedUsers] = []
                for v in value {
                    if v != nil {
                        var model = CreateUsersResponseBody.CreateResult.CreatedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.createdUsers = tmp
            }
            if let value = dict["FailedUsers"] as? [Any?] {
                var tmp : [CreateUsersResponseBody.CreateResult.FailedUsers] = []
                for v in value {
                    if v != nil {
                        var model = CreateUsersResponseBody.CreateResult.FailedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedUsers = tmp
            }
        }
    }
    public var allSucceed: Bool?

    public var createResult: CreateUsersResponseBody.CreateResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.createResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allSucceed != nil {
            map["AllSucceed"] = self.allSucceed!
        }
        if self.createResult != nil {
            map["CreateResult"] = self.createResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllSucceed"] as? Bool {
            self.allSucceed = value
        }
        if let value = dict["CreateResult"] as? [String: Any?] {
            var model = CreateUsersResponseBody.CreateResult()
            model.fromMap(value)
            self.createResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUsersResponseBody?

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
            var model = CreateUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceGroupRequest : Tea.TeaModel {
    public var resourceGroupId: String?

    public var resourceGroupIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
    }
}

public class DeleteResourceGroupResponseBody : Tea.TeaModel {
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

public class DeleteResourceGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceGroupResponseBody?

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
            var model = DeleteResourceGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
        if let value = dict["PropertyValueId"] as? Int64 {
            self.propertyValueId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DeleteUserPropertyValueResponseBody : Tea.TeaModel {
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

public class DeleteUserPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPropertyValueResponseBody?

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
            var model = DeleteUserPropertyValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGroupUserRequest : Tea.TeaModel {
    public var bizType: String?

    public var filter: String?

    public var groupId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var solutionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
    }
}

public class DescribeGroupUserResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public var groupId: String?

        public var groupName: String?

        public var userCount: String?

        public override init() {
            super.init()
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
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["UserCount"] as? String {
                self.userCount = value
            }
        }
    }
    public class Users : Tea.TeaModel {
        public var address: String?

        public var avatar: String?

        public var email: String?

        public var endUserId: String?

        public var gmtCreated: String?

        public var gmtJoinGroup: String?

        public var jobNumber: String?

        public var nickName: String?

        public var phone: String?

        public var remark: String?

        public override init() {
            super.init()
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
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtJoinGroup != nil {
                map["GmtJoinGroup"] = self.gmtJoinGroup!
            }
            if self.jobNumber != nil {
                map["JobNumber"] = self.jobNumber!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Avatar"] as? String {
                self.avatar = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["GmtJoinGroup"] as? String {
                self.gmtJoinGroup = value
            }
            if let value = dict["JobNumber"] as? String {
                self.jobNumber = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
        }
    }
    public var groups: [DescribeGroupUserResponseBody.Groups]?

    public var nextToken: String?

    public var requestId: String?

    public var users: [DescribeGroupUserResponseBody.Users]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [DescribeGroupUserResponseBody.Groups] = []
            for v in value {
                if v != nil {
                    var model = DescribeGroupUserResponseBody.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [DescribeGroupUserResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = DescribeGroupUserResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class DescribeGroupUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupUserResponseBody?

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
            var model = DescribeGroupUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGroupsRequest : Tea.TeaModel {
    public var bizType: String?

    public var excludeAttachedLoginPolicyGroups: Bool?

    public var groupId: String?

    public var groupName: String?

    public var idpId: String?

    public var loginPolicyId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var solutionId: String?

    public var transferFileNeedApproval: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.excludeAttachedLoginPolicyGroups != nil {
            map["ExcludeAttachedLoginPolicyGroups"] = self.excludeAttachedLoginPolicyGroups!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.idpId != nil {
            map["IdpId"] = self.idpId!
        }
        if self.loginPolicyId != nil {
            map["LoginPolicyId"] = self.loginPolicyId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        if self.transferFileNeedApproval != nil {
            map["TransferFileNeedApproval"] = self.transferFileNeedApproval!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["ExcludeAttachedLoginPolicyGroups"] as? Bool {
            self.excludeAttachedLoginPolicyGroups = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IdpId"] as? String {
            self.idpId = value
        }
        if let value = dict["LoginPolicyId"] as? String {
            self.loginPolicyId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
        if let value = dict["TransferFileNeedApproval"] as? Bool {
            self.transferFileNeedApproval = value
        }
    }
}

public class DescribeGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class AttachedLoginPolicy : Tea.TeaModel {
            public var name: String?

            public var policyId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.policyId != nil {
                    map["PolicyId"] = self.policyId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["PolicyId"] as? String {
                    self.policyId = value
                }
            }
        }
        public var attachedLoginPolicy: DescribeGroupsResponseBody.Groups.AttachedLoginPolicy?

        public var authedResources: [String: String]?

        public var createTime: String?

        public var description_: String?

        public var groupId: String?

        public var groupName: String?

        public var transferFileNeedApproval: Bool?

        public var userCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.attachedLoginPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachedLoginPolicy != nil {
                map["AttachedLoginPolicy"] = self.attachedLoginPolicy?.toMap()
            }
            if self.authedResources != nil {
                map["AuthedResources"] = self.authedResources!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.transferFileNeedApproval != nil {
                map["TransferFileNeedApproval"] = self.transferFileNeedApproval!
            }
            if self.userCount != nil {
                map["UserCount"] = self.userCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachedLoginPolicy"] as? [String: Any?] {
                var model = DescribeGroupsResponseBody.Groups.AttachedLoginPolicy()
                model.fromMap(value)
                self.attachedLoginPolicy = model
            }
            if let value = dict["AuthedResources"] as? [String: String] {
                self.authedResources = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GroupId"] as? String {
                self.groupId = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
            if let value = dict["TransferFileNeedApproval"] as? Bool {
                self.transferFileNeedApproval = value
            }
            if let value = dict["UserCount"] as? Int32 {
                self.userCount = value
            }
        }
    }
    public var count: Int32?

    public var groups: [DescribeGroupsResponseBody.Groups]?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [DescribeGroupsResponseBody.Groups] = []
            for v in value {
                if v != nil {
                    var model = DescribeGroupsResponseBody.Groups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupsResponseBody?

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
            var model = DescribeGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMfaDevicesRequest : Tea.TeaModel {
    public var adDomain: String?

    public var endUserIds: [String]?

    public var filter: String?

    public var maxResults: Int64?

    public var nextToken: String?

    public var serialNumbers: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.serialNumbers != nil {
            map["SerialNumbers"] = self.serialNumbers!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SerialNumbers"] as? [String] {
            self.serialNumbers = value
        }
    }
}

public class DescribeMfaDevicesResponseBody : Tea.TeaModel {
    public class MfaDevices : Tea.TeaModel {
        public class AdUser : Tea.TeaModel {
            public var displayName: String?

            public var displayNameNew: String?

            public var endUser: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.displayNameNew != nil {
                    map["DisplayNameNew"] = self.displayNameNew!
                }
                if self.endUser != nil {
                    map["EndUser"] = self.endUser!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DisplayName"] as? String {
                    self.displayName = value
                }
                if let value = dict["DisplayNameNew"] as? String {
                    self.displayNameNew = value
                }
                if let value = dict["EndUser"] as? String {
                    self.endUser = value
                }
                if let value = dict["UserPrincipalName"] as? String {
                    self.userPrincipalName = value
                }
            }
        }
        public var adUser: DescribeMfaDevicesResponseBody.MfaDevices.AdUser?

        public var consecutiveFails: Int32?

        public var deviceType: String?

        public var email: String?

        public var endUserId: String?

        public var gmtEnabled: String?

        public var gmtUnlock: String?

        public var id: Int64?

        public var serialNumber: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.adUser?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.adUser != nil {
                map["AdUser"] = self.adUser?.toMap()
            }
            if self.consecutiveFails != nil {
                map["ConsecutiveFails"] = self.consecutiveFails!
            }
            if self.deviceType != nil {
                map["DeviceType"] = self.deviceType!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.gmtEnabled != nil {
                map["GmtEnabled"] = self.gmtEnabled!
            }
            if self.gmtUnlock != nil {
                map["GmtUnlock"] = self.gmtUnlock!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdUser"] as? [String: Any?] {
                var model = DescribeMfaDevicesResponseBody.MfaDevices.AdUser()
                model.fromMap(value)
                self.adUser = model
            }
            if let value = dict["ConsecutiveFails"] as? Int32 {
                self.consecutiveFails = value
            }
            if let value = dict["DeviceType"] as? String {
                self.deviceType = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["GmtEnabled"] as? String {
                self.gmtEnabled = value
            }
            if let value = dict["GmtUnlock"] as? String {
                self.gmtUnlock = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["SerialNumber"] as? String {
                self.serialNumber = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var mfaDevices: [DescribeMfaDevicesResponseBody.MfaDevices]?

    public var nextToken: String?

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
        if self.mfaDevices != nil {
            var tmp : [Any] = []
            for k in self.mfaDevices! {
                tmp.append(k.toMap())
            }
            map["MfaDevices"] = tmp
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MfaDevices"] as? [Any?] {
            var tmp : [DescribeMfaDevicesResponseBody.MfaDevices] = []
            for v in value {
                if v != nil {
                    var model = DescribeMfaDevicesResponseBody.MfaDevices()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mfaDevices = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeMfaDevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMfaDevicesResponseBody?

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
            var model = DescribeMfaDevicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOrgByLayerRequest : Tea.TeaModel {
    public var orgName: String?

    public var parentOrgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.parentOrgId != nil {
            map["ParentOrgId"] = self.parentOrgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ParentOrgId"] as? String {
            self.parentOrgId = value
        }
    }
}

public class DescribeOrgByLayerResponseBody : Tea.TeaModel {
    public class Orgs : Tea.TeaModel {
        public var orgId: String?

        public var orgName: String?

        public var parentOrgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgName != nil {
                map["OrgName"] = self.orgName!
            }
            if self.parentOrgId != nil {
                map["ParentOrgId"] = self.parentOrgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OrgName"] as? String {
                self.orgName = value
            }
            if let value = dict["ParentOrgId"] as? String {
                self.parentOrgId = value
            }
        }
    }
    public var orgs: [DescribeOrgByLayerResponseBody.Orgs]?

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
        if self.orgs != nil {
            var tmp : [Any] = []
            for k in self.orgs! {
                tmp.append(k.toMap())
            }
            map["Orgs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Orgs"] as? [Any?] {
            var tmp : [DescribeOrgByLayerResponseBody.Orgs] = []
            for v in value {
                if v != nil {
                    var model = DescribeOrgByLayerResponseBody.Orgs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orgs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeOrgByLayerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOrgByLayerResponseBody?

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
            var model = DescribeOrgByLayerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeOrgsRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var orgName: String?

    public var parentOrgId: String?

    public var showExtras: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.parentOrgId != nil {
            map["ParentOrgId"] = self.parentOrgId!
        }
        if self.showExtras != nil {
            map["ShowExtras"] = self.showExtras!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ParentOrgId"] as? String {
            self.parentOrgId = value
        }
        if let value = dict["ShowExtras"] as? [String: Any] {
            self.showExtras = value
        }
    }
}

public class DescribeOrgsShrinkRequest : Tea.TeaModel {
    public var maxResults: Int64?

    public var nextToken: String?

    public var orgName: String?

    public var parentOrgId: String?

    public var showExtrasShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        if self.parentOrgId != nil {
            map["ParentOrgId"] = self.parentOrgId!
        }
        if self.showExtrasShrink != nil {
            map["ShowExtras"] = self.showExtrasShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
        if let value = dict["ParentOrgId"] as? String {
            self.parentOrgId = value
        }
        if let value = dict["ShowExtras"] as? String {
            self.showExtrasShrink = value
        }
    }
}

public class DescribeOrgsResponseBody : Tea.TeaModel {
    public class Orgs : Tea.TeaModel {
        public var orgId: String?

        public var orgName: String?

        public var orgNamePath: String?

        public var parentOrgId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgName != nil {
                map["OrgName"] = self.orgName!
            }
            if self.orgNamePath != nil {
                map["OrgNamePath"] = self.orgNamePath!
            }
            if self.parentOrgId != nil {
                map["ParentOrgId"] = self.parentOrgId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["OrgName"] as? String {
                self.orgName = value
            }
            if let value = dict["OrgNamePath"] as? String {
                self.orgNamePath = value
            }
            if let value = dict["ParentOrgId"] as? String {
                self.parentOrgId = value
            }
        }
    }
    public var nextToken: String?

    public var orgs: [DescribeOrgsResponseBody.Orgs]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgs != nil {
            var tmp : [Any] = []
            for k in self.orgs! {
                tmp.append(k.toMap())
            }
            map["Orgs"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Orgs"] as? [Any?] {
            var tmp : [DescribeOrgsResponseBody.Orgs] = []
            for v in value {
                if v != nil {
                    var model = DescribeOrgsResponseBody.Orgs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.orgs = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeOrgsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeOrgsResponseBody?

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
            var model = DescribeOrgsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResourceGroupsRequest : Tea.TeaModel {
    public var needContainResourceGroupWithOfficeSite: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var platform: String?

    public var resourceGroupIds: [String]?

    public var resourceGroupName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.needContainResourceGroupWithOfficeSite != nil {
            map["NeedContainResourceGroupWithOfficeSite"] = self.needContainResourceGroupWithOfficeSite!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.resourceGroupIds != nil {
            map["ResourceGroupIds"] = self.resourceGroupIds!
        }
        if self.resourceGroupName != nil {
            map["ResourceGroupName"] = self.resourceGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NeedContainResourceGroupWithOfficeSite"] as? Int64 {
            self.needContainResourceGroupWithOfficeSite = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["ResourceGroupIds"] as? [String] {
            self.resourceGroupIds = value
        }
        if let value = dict["ResourceGroupName"] as? String {
            self.resourceGroupName = value
        }
    }
}

public class DescribeResourceGroupsResponseBody : Tea.TeaModel {
    public class ResourceGroup : Tea.TeaModel {
        public class AppRules : Tea.TeaModel {
            public var id: String?

            public var name: String?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Type"] as? Int32 {
                    self.type = value
                }
            }
        }
        public class Policies : Tea.TeaModel {
            public var id: String?

            public var isDefault: Bool?

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
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["IsDefault"] as? Bool {
                    self.isDefault = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Timers : Tea.TeaModel {
            public var bindStatus: String?

            public var id: String?

            public var name: String?

            public var timerStatus: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindStatus != nil {
                    map["BindStatus"] = self.bindStatus!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.timerStatus != nil {
                    map["TimerStatus"] = self.timerStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BindStatus"] as? String {
                    self.bindStatus = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["TimerStatus"] as? String {
                    self.timerStatus = value
                }
            }
        }
        public var appRules: [DescribeResourceGroupsResponseBody.ResourceGroup.AppRules]?

        public var authCount: String?

        public var createTime: String?

        public var policies: [DescribeResourceGroupsResponseBody.ResourceGroup.Policies]?

        public var resourceCount: String?

        public var resourceGroupId: String?

        public var resourceGroupName: String?

        public var timers: [DescribeResourceGroupsResponseBody.ResourceGroup.Timers]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appRules != nil {
                var tmp : [Any] = []
                for k in self.appRules! {
                    tmp.append(k.toMap())
                }
                map["AppRules"] = tmp
            }
            if self.authCount != nil {
                map["AuthCount"] = self.authCount!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.policies != nil {
                var tmp : [Any] = []
                for k in self.policies! {
                    tmp.append(k.toMap())
                }
                map["Policies"] = tmp
            }
            if self.resourceCount != nil {
                map["ResourceCount"] = self.resourceCount!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.resourceGroupName != nil {
                map["ResourceGroupName"] = self.resourceGroupName!
            }
            if self.timers != nil {
                var tmp : [Any] = []
                for k in self.timers! {
                    tmp.append(k.toMap())
                }
                map["Timers"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AppRules"] as? [Any?] {
                var tmp : [DescribeResourceGroupsResponseBody.ResourceGroup.AppRules] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceGroupsResponseBody.ResourceGroup.AppRules()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.appRules = tmp
            }
            if let value = dict["AuthCount"] as? String {
                self.authCount = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Policies"] as? [Any?] {
                var tmp : [DescribeResourceGroupsResponseBody.ResourceGroup.Policies] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceGroupsResponseBody.ResourceGroup.Policies()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.policies = tmp
            }
            if let value = dict["ResourceCount"] as? String {
                self.resourceCount = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["ResourceGroupName"] as? String {
                self.resourceGroupName = value
            }
            if let value = dict["Timers"] as? [Any?] {
                var tmp : [DescribeResourceGroupsResponseBody.ResourceGroup.Timers] = []
                for v in value {
                    if v != nil {
                        var model = DescribeResourceGroupsResponseBody.ResourceGroup.Timers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.timers = tmp
            }
        }
    }
    public var requestId: String?

    public var resourceGroup: [DescribeResourceGroupsResponseBody.ResourceGroup]?

    public var totalCount: String?

    public override init() {
        super.init()
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
        if self.resourceGroup != nil {
            var tmp : [Any] = []
            for k in self.resourceGroup! {
                tmp.append(k.toMap())
            }
            map["ResourceGroup"] = tmp
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroup"] as? [Any?] {
            var tmp : [DescribeResourceGroupsResponseBody.ResourceGroup] = []
            for v in value {
                if v != nil {
                    var model = DescribeResourceGroupsResponseBody.ResourceGroup()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resourceGroup = tmp
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeResourceGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceGroupsResponseBody?

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
            var model = DescribeResourceGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeUsersRequest : Tea.TeaModel {
    public var bizType: String?

    public var endUserIds: [String]?

    public var excludeEndUserIds: [String]?

    public var excludeGroupId: String?

    public var filter: String?

    public var filterWithAssignedResource: [String: String]?

    public var filterWithAssignedResources: [String: Bool]?

    public var groupId: String?

    public var isQueryAllSubOrgs: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orgId: String?

    public var showExtras: [String: Any]?

    public var solutionId: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.excludeGroupId != nil {
            map["ExcludeGroupId"] = self.excludeGroupId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.filterWithAssignedResource != nil {
            map["FilterWithAssignedResource"] = self.filterWithAssignedResource!
        }
        if self.filterWithAssignedResources != nil {
            map["FilterWithAssignedResources"] = self.filterWithAssignedResources!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.isQueryAllSubOrgs != nil {
            map["IsQueryAllSubOrgs"] = self.isQueryAllSubOrgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.showExtras != nil {
            map["ShowExtras"] = self.showExtras!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["ExcludeEndUserIds"] as? [String] {
            self.excludeEndUserIds = value
        }
        if let value = dict["ExcludeGroupId"] as? String {
            self.excludeGroupId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["FilterWithAssignedResource"] as? [String: String] {
            self.filterWithAssignedResource = value
        }
        if let value = dict["FilterWithAssignedResources"] as? [String: Bool] {
            self.filterWithAssignedResources = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IsQueryAllSubOrgs"] as? Bool {
            self.isQueryAllSubOrgs = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["ShowExtras"] as? [String: Any] {
            self.showExtras = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class DescribeUsersShrinkRequest : Tea.TeaModel {
    public var bizType: String?

    public var endUserIds: [String]?

    public var excludeEndUserIds: [String]?

    public var excludeGroupId: String?

    public var filter: String?

    public var filterWithAssignedResourceShrink: String?

    public var filterWithAssignedResourcesShrink: String?

    public var groupId: String?

    public var isQueryAllSubOrgs: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orgId: String?

    public var showExtrasShrink: String?

    public var solutionId: String?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.excludeGroupId != nil {
            map["ExcludeGroupId"] = self.excludeGroupId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.filterWithAssignedResourceShrink != nil {
            map["FilterWithAssignedResource"] = self.filterWithAssignedResourceShrink!
        }
        if self.filterWithAssignedResourcesShrink != nil {
            map["FilterWithAssignedResources"] = self.filterWithAssignedResourcesShrink!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.isQueryAllSubOrgs != nil {
            map["IsQueryAllSubOrgs"] = self.isQueryAllSubOrgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.showExtrasShrink != nil {
            map["ShowExtras"] = self.showExtrasShrink!
        }
        if self.solutionId != nil {
            map["SolutionId"] = self.solutionId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["ExcludeEndUserIds"] as? [String] {
            self.excludeEndUserIds = value
        }
        if let value = dict["ExcludeGroupId"] as? String {
            self.excludeGroupId = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["FilterWithAssignedResource"] as? String {
            self.filterWithAssignedResourceShrink = value
        }
        if let value = dict["FilterWithAssignedResources"] as? String {
            self.filterWithAssignedResourcesShrink = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["IsQueryAllSubOrgs"] as? Bool {
            self.isQueryAllSubOrgs = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["ShowExtras"] as? String {
            self.showExtrasShrink = value
        }
        if let value = dict["SolutionId"] as? String {
            self.solutionId = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class DescribeUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class Extras : Tea.TeaModel {
            public var assignedResourceCount: [String: Any]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.assignedResourceCount != nil {
                    map["AssignedResourceCount"] = self.assignedResourceCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AssignedResourceCount"] as? [String: Any] {
                    self.assignedResourceCount = value
                }
            }
        }
        public class Groups : Tea.TeaModel {
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
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
            }
        }
        public class Orgs : Tea.TeaModel {
            public var orgId: String?

            public var orgName: String?

            public var orgNamePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.orgName != nil {
                    map["OrgName"] = self.orgName!
                }
                if self.orgNamePath != nil {
                    map["OrgNamePath"] = self.orgNamePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OrgId"] as? String {
                    self.orgId = value
                }
                if let value = dict["OrgName"] as? String {
                    self.orgName = value
                }
                if let value = dict["OrgNamePath"] as? String {
                    self.orgNamePath = value
                }
            }
        }
        public class Properties : Tea.TeaModel {
            public var key: String?

            public var value: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Key"] as? String {
                    self.key = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var address: String?

        public var avatar: String?

        public var email: String?

        public var enableAdminAccess: Bool?

        public var endUserId: String?

        public var externalName: String?

        public var extras: DescribeUsersResponseBody.Users.Extras?

        public var groups: [DescribeUsersResponseBody.Users.Groups]?

        public var id: Int64?

        public var isTenantManager: Bool?

        public var jobNumber: String?

        public var nickName: String?

        public var orgId: String?

        public var orgs: [DescribeUsersResponseBody.Users.Orgs]?

        public var ownerType: String?

        public var passwordExpireDays: Int32?

        public var passwordExpireRestDays: Int32?

        public var phone: String?

        public var properties: [DescribeUsersResponseBody.Users.Properties]?

        public var realNickName: String?

        public var remark: String?

        public var status: Int64?

        public var wyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.extras?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.avatar != nil {
                map["Avatar"] = self.avatar!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.enableAdminAccess != nil {
                map["EnableAdminAccess"] = self.enableAdminAccess!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.externalName != nil {
                map["ExternalName"] = self.externalName!
            }
            if self.extras != nil {
                map["Extras"] = self.extras?.toMap()
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isTenantManager != nil {
                map["IsTenantManager"] = self.isTenantManager!
            }
            if self.jobNumber != nil {
                map["JobNumber"] = self.jobNumber!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.orgId != nil {
                map["OrgId"] = self.orgId!
            }
            if self.orgs != nil {
                var tmp : [Any] = []
                for k in self.orgs! {
                    tmp.append(k.toMap())
                }
                map["Orgs"] = tmp
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.passwordExpireDays != nil {
                map["PasswordExpireDays"] = self.passwordExpireDays!
            }
            if self.passwordExpireRestDays != nil {
                map["PasswordExpireRestDays"] = self.passwordExpireRestDays!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.properties != nil {
                var tmp : [Any] = []
                for k in self.properties! {
                    tmp.append(k.toMap())
                }
                map["Properties"] = tmp
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.wyId != nil {
                map["WyId"] = self.wyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Avatar"] as? String {
                self.avatar = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EnableAdminAccess"] as? Bool {
                self.enableAdminAccess = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["ExternalName"] as? String {
                self.externalName = value
            }
            if let value = dict["Extras"] as? [String: Any?] {
                var model = DescribeUsersResponseBody.Users.Extras()
                model.fromMap(value)
                self.extras = model
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [DescribeUsersResponseBody.Users.Groups] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUsersResponseBody.Users.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IsTenantManager"] as? Bool {
                self.isTenantManager = value
            }
            if let value = dict["JobNumber"] as? String {
                self.jobNumber = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["OrgId"] as? String {
                self.orgId = value
            }
            if let value = dict["Orgs"] as? [Any?] {
                var tmp : [DescribeUsersResponseBody.Users.Orgs] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUsersResponseBody.Users.Orgs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orgs = tmp
            }
            if let value = dict["OwnerType"] as? String {
                self.ownerType = value
            }
            if let value = dict["PasswordExpireDays"] as? Int32 {
                self.passwordExpireDays = value
            }
            if let value = dict["PasswordExpireRestDays"] as? Int32 {
                self.passwordExpireRestDays = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["Properties"] as? [Any?] {
                var tmp : [DescribeUsersResponseBody.Users.Properties] = []
                for v in value {
                    if v != nil {
                        var model = DescribeUsersResponseBody.Users.Properties()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.properties = tmp
            }
            if let value = dict["RealNickName"] as? String {
                self.realNickName = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["WyId"] as? String {
                self.wyId = value
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [DescribeUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [DescribeUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = DescribeUsersResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class DescribeUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUsersResponseBody?

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
            var model = DescribeUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FilterUsersRequest : Tea.TeaModel {
    public class OrderParam : Tea.TeaModel {
        public var orderField: String?

        public var orderType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderField != nil {
                map["OrderField"] = self.orderField!
            }
            if self.orderType != nil {
                map["OrderType"] = self.orderType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderField"] as? String {
                self.orderField = value
            }
            if let value = dict["OrderType"] as? String {
                self.orderType = value
            }
        }
    }
    public class PropertyFilterParam : Tea.TeaModel {
        public var propertyId: Int64?

        public var propertyValueIds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyValueIds != nil {
                map["PropertyValueIds"] = self.propertyValueIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyId"] as? Int64 {
                self.propertyId = value
            }
            if let value = dict["PropertyValueIds"] as? String {
                self.propertyValueIds = value
            }
        }
    }
    public class PropertyKeyValueFilterParam : Tea.TeaModel {
        public var propertyKey: String?

        public var propertyValues: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                map["PropertyValues"] = self.propertyValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["PropertyValues"] as? String {
                self.propertyValues = value
            }
        }
    }
    public var excludeEndUserIds: [String]?

    public var filter: String?

    public var includeDesktopCount: Bool?

    public var includeDesktopGroupCount: Bool?

    public var includeOrgInfo: Bool?

    public var includeSupportIdps: Bool?

    public var isQueryAllSubOrgs: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orderParam: FilterUsersRequest.OrderParam?

    public var orgId: String?

    public var ownerType: String?

    public var propertyFilterParam: [FilterUsersRequest.PropertyFilterParam]?

    public var propertyKeyValueFilterParam: [FilterUsersRequest.PropertyKeyValueFilterParam]?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.orderParam?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.includeDesktopCount != nil {
            map["IncludeDesktopCount"] = self.includeDesktopCount!
        }
        if self.includeDesktopGroupCount != nil {
            map["IncludeDesktopGroupCount"] = self.includeDesktopGroupCount!
        }
        if self.includeOrgInfo != nil {
            map["IncludeOrgInfo"] = self.includeOrgInfo!
        }
        if self.includeSupportIdps != nil {
            map["IncludeSupportIdps"] = self.includeSupportIdps!
        }
        if self.isQueryAllSubOrgs != nil {
            map["IsQueryAllSubOrgs"] = self.isQueryAllSubOrgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderParam != nil {
            map["OrderParam"] = self.orderParam?.toMap()
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.propertyFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyFilterParam"] = tmp
        }
        if self.propertyKeyValueFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyKeyValueFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyKeyValueFilterParam"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeEndUserIds"] as? [String] {
            self.excludeEndUserIds = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["IncludeDesktopCount"] as? Bool {
            self.includeDesktopCount = value
        }
        if let value = dict["IncludeDesktopGroupCount"] as? Bool {
            self.includeDesktopGroupCount = value
        }
        if let value = dict["IncludeOrgInfo"] as? Bool {
            self.includeOrgInfo = value
        }
        if let value = dict["IncludeSupportIdps"] as? Bool {
            self.includeSupportIdps = value
        }
        if let value = dict["IsQueryAllSubOrgs"] as? Bool {
            self.isQueryAllSubOrgs = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderParam"] as? [String: Any?] {
            var model = FilterUsersRequest.OrderParam()
            model.fromMap(value)
            self.orderParam = model
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["PropertyFilterParam"] as? [Any?] {
            var tmp : [FilterUsersRequest.PropertyFilterParam] = []
            for v in value {
                if v != nil {
                    var model = FilterUsersRequest.PropertyFilterParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyFilterParam = tmp
        }
        if let value = dict["PropertyKeyValueFilterParam"] as? [Any?] {
            var tmp : [FilterUsersRequest.PropertyKeyValueFilterParam] = []
            for v in value {
                if v != nil {
                    var model = FilterUsersRequest.PropertyKeyValueFilterParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyKeyValueFilterParam = tmp
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class FilterUsersShrinkRequest : Tea.TeaModel {
    public class PropertyFilterParam : Tea.TeaModel {
        public var propertyId: Int64?

        public var propertyValueIds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyValueIds != nil {
                map["PropertyValueIds"] = self.propertyValueIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyId"] as? Int64 {
                self.propertyId = value
            }
            if let value = dict["PropertyValueIds"] as? String {
                self.propertyValueIds = value
            }
        }
    }
    public class PropertyKeyValueFilterParam : Tea.TeaModel {
        public var propertyKey: String?

        public var propertyValues: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                map["PropertyValues"] = self.propertyValues!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["PropertyValues"] as? String {
                self.propertyValues = value
            }
        }
    }
    public var excludeEndUserIds: [String]?

    public var filter: String?

    public var includeDesktopCount: Bool?

    public var includeDesktopGroupCount: Bool?

    public var includeOrgInfo: Bool?

    public var includeSupportIdps: Bool?

    public var isQueryAllSubOrgs: Bool?

    public var maxResults: Int64?

    public var nextToken: String?

    public var orderParamShrink: String?

    public var orgId: String?

    public var ownerType: String?

    public var propertyFilterParam: [FilterUsersShrinkRequest.PropertyFilterParam]?

    public var propertyKeyValueFilterParam: [FilterUsersShrinkRequest.PropertyKeyValueFilterParam]?

    public var status: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeEndUserIds != nil {
            map["ExcludeEndUserIds"] = self.excludeEndUserIds!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.includeDesktopCount != nil {
            map["IncludeDesktopCount"] = self.includeDesktopCount!
        }
        if self.includeDesktopGroupCount != nil {
            map["IncludeDesktopGroupCount"] = self.includeDesktopGroupCount!
        }
        if self.includeOrgInfo != nil {
            map["IncludeOrgInfo"] = self.includeOrgInfo!
        }
        if self.includeSupportIdps != nil {
            map["IncludeSupportIdps"] = self.includeSupportIdps!
        }
        if self.isQueryAllSubOrgs != nil {
            map["IsQueryAllSubOrgs"] = self.isQueryAllSubOrgs!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.orderParamShrink != nil {
            map["OrderParam"] = self.orderParamShrink!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.ownerType != nil {
            map["OwnerType"] = self.ownerType!
        }
        if self.propertyFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyFilterParam"] = tmp
        }
        if self.propertyKeyValueFilterParam != nil {
            var tmp : [Any] = []
            for k in self.propertyKeyValueFilterParam! {
                tmp.append(k.toMap())
            }
            map["PropertyKeyValueFilterParam"] = tmp
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeEndUserIds"] as? [String] {
            self.excludeEndUserIds = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["IncludeDesktopCount"] as? Bool {
            self.includeDesktopCount = value
        }
        if let value = dict["IncludeDesktopGroupCount"] as? Bool {
            self.includeDesktopGroupCount = value
        }
        if let value = dict["IncludeOrgInfo"] as? Bool {
            self.includeOrgInfo = value
        }
        if let value = dict["IncludeSupportIdps"] as? Bool {
            self.includeSupportIdps = value
        }
        if let value = dict["IsQueryAllSubOrgs"] as? Bool {
            self.isQueryAllSubOrgs = value
        }
        if let value = dict["MaxResults"] as? Int64 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderParam"] as? String {
            self.orderParamShrink = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OwnerType"] as? String {
            self.ownerType = value
        }
        if let value = dict["PropertyFilterParam"] as? [Any?] {
            var tmp : [FilterUsersShrinkRequest.PropertyFilterParam] = []
            for v in value {
                if v != nil {
                    var model = FilterUsersShrinkRequest.PropertyFilterParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyFilterParam = tmp
        }
        if let value = dict["PropertyKeyValueFilterParam"] as? [Any?] {
            var tmp : [FilterUsersShrinkRequest.PropertyKeyValueFilterParam] = []
            for v in value {
                if v != nil {
                    var model = FilterUsersShrinkRequest.PropertyKeyValueFilterParam()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyKeyValueFilterParam = tmp
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
    }
}

public class FilterUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class ExternalInfo : Tea.TeaModel {
            public var externalName: String?

            public var jobNumber: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.externalName != nil {
                    map["ExternalName"] = self.externalName!
                }
                if self.jobNumber != nil {
                    map["JobNumber"] = self.jobNumber!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExternalName"] as? String {
                    self.externalName = value
                }
                if let value = dict["JobNumber"] as? String {
                    self.jobNumber = value
                }
            }
        }
        public class Groups : Tea.TeaModel {
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
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
            }
        }
        public class OrgList : Tea.TeaModel {
            public var orgId: String?

            public var orgName: String?

            public var orgNamePath: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.orgName != nil {
                    map["OrgName"] = self.orgName!
                }
                if self.orgNamePath != nil {
                    map["OrgNamePath"] = self.orgNamePath!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["OrgId"] as? String {
                    self.orgId = value
                }
                if let value = dict["OrgName"] as? String {
                    self.orgName = value
                }
                if let value = dict["OrgNamePath"] as? String {
                    self.orgNamePath = value
                }
            }
        }
        public class SupportLoginIdps : Tea.TeaModel {
            public var idpId: String?

            public var idpName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.idpId != nil {
                    map["IdpId"] = self.idpId!
                }
                if self.idpName != nil {
                    map["IdpName"] = self.idpName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["IdpId"] as? String {
                    self.idpId = value
                }
                if let value = dict["IdpName"] as? String {
                    self.idpName = value
                }
            }
        }
        public class UserSetPropertiesModels : Tea.TeaModel {
            public class PropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PropertyValue"] as? String {
                        self.propertyValue = value
                    }
                    if let value = dict["PropertyValueId"] as? Int64 {
                        self.propertyValueId = value
                    }
                }
            }
            public var propertyId: Int64?

            public var propertyKey: String?

            public var propertyType: Int32?

            public var propertyValues: [FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues]?

            public var userId: Int64?

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
                if self.propertyId != nil {
                    map["PropertyId"] = self.propertyId!
                }
                if self.propertyKey != nil {
                    map["PropertyKey"] = self.propertyKey!
                }
                if self.propertyType != nil {
                    map["PropertyType"] = self.propertyType!
                }
                if self.propertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.propertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["PropertyValues"] = tmp
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
                if let value = dict["PropertyId"] as? Int64 {
                    self.propertyId = value
                }
                if let value = dict["PropertyKey"] as? String {
                    self.propertyKey = value
                }
                if let value = dict["PropertyType"] as? Int32 {
                    self.propertyType = value
                }
                if let value = dict["PropertyValues"] as? [Any?] {
                    var tmp : [FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = FilterUsersResponseBody.Users.UserSetPropertiesModels.PropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.propertyValues = tmp
                }
                if let value = dict["UserId"] as? Int64 {
                    self.userId = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
                }
            }
        }
        public var autoLockTime: String?

        public var desktopCount: Int64?

        public var desktopGroupCount: Int64?

        public var email: String?

        public var enableAdminAccess: Bool?

        public var endUserId: String?

        public var externalInfo: FilterUsersResponseBody.Users.ExternalInfo?

        public var groups: [FilterUsersResponseBody.Users.Groups]?

        public var id: Int64?

        public var isTenantManager: Bool?

        public var orgList: [FilterUsersResponseBody.Users.OrgList]?

        public var ownerType: String?

        public var passwordExpireDays: Int32?

        public var passwordExpireRestDays: Int32?

        public var phone: String?

        public var realNickName: String?

        public var remark: String?

        public var status: Int64?

        public var supportLoginIdps: [FilterUsersResponseBody.Users.SupportLoginIdps]?

        public var userSetPropertiesModels: [FilterUsersResponseBody.Users.UserSetPropertiesModels]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.externalInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoLockTime != nil {
                map["AutoLockTime"] = self.autoLockTime!
            }
            if self.desktopCount != nil {
                map["DesktopCount"] = self.desktopCount!
            }
            if self.desktopGroupCount != nil {
                map["DesktopGroupCount"] = self.desktopGroupCount!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.enableAdminAccess != nil {
                map["EnableAdminAccess"] = self.enableAdminAccess!
            }
            if self.endUserId != nil {
                map["EndUserId"] = self.endUserId!
            }
            if self.externalInfo != nil {
                map["ExternalInfo"] = self.externalInfo?.toMap()
            }
            if self.groups != nil {
                var tmp : [Any] = []
                for k in self.groups! {
                    tmp.append(k.toMap())
                }
                map["Groups"] = tmp
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.isTenantManager != nil {
                map["IsTenantManager"] = self.isTenantManager!
            }
            if self.orgList != nil {
                var tmp : [Any] = []
                for k in self.orgList! {
                    tmp.append(k.toMap())
                }
                map["OrgList"] = tmp
            }
            if self.ownerType != nil {
                map["OwnerType"] = self.ownerType!
            }
            if self.passwordExpireDays != nil {
                map["PasswordExpireDays"] = self.passwordExpireDays!
            }
            if self.passwordExpireRestDays != nil {
                map["PasswordExpireRestDays"] = self.passwordExpireRestDays!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.realNickName != nil {
                map["RealNickName"] = self.realNickName!
            }
            if self.remark != nil {
                map["Remark"] = self.remark!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportLoginIdps != nil {
                var tmp : [Any] = []
                for k in self.supportLoginIdps! {
                    tmp.append(k.toMap())
                }
                map["SupportLoginIdps"] = tmp
            }
            if self.userSetPropertiesModels != nil {
                var tmp : [Any] = []
                for k in self.userSetPropertiesModels! {
                    tmp.append(k.toMap())
                }
                map["UserSetPropertiesModels"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AutoLockTime"] as? String {
                self.autoLockTime = value
            }
            if let value = dict["DesktopCount"] as? Int64 {
                self.desktopCount = value
            }
            if let value = dict["DesktopGroupCount"] as? Int64 {
                self.desktopGroupCount = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["EnableAdminAccess"] as? Bool {
                self.enableAdminAccess = value
            }
            if let value = dict["EndUserId"] as? String {
                self.endUserId = value
            }
            if let value = dict["ExternalInfo"] as? [String: Any?] {
                var model = FilterUsersResponseBody.Users.ExternalInfo()
                model.fromMap(value)
                self.externalInfo = model
            }
            if let value = dict["Groups"] as? [Any?] {
                var tmp : [FilterUsersResponseBody.Users.Groups] = []
                for v in value {
                    if v != nil {
                        var model = FilterUsersResponseBody.Users.Groups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.groups = tmp
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IsTenantManager"] as? Bool {
                self.isTenantManager = value
            }
            if let value = dict["OrgList"] as? [Any?] {
                var tmp : [FilterUsersResponseBody.Users.OrgList] = []
                for v in value {
                    if v != nil {
                        var model = FilterUsersResponseBody.Users.OrgList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orgList = tmp
            }
            if let value = dict["OwnerType"] as? String {
                self.ownerType = value
            }
            if let value = dict["PasswordExpireDays"] as? Int32 {
                self.passwordExpireDays = value
            }
            if let value = dict["PasswordExpireRestDays"] as? Int32 {
                self.passwordExpireRestDays = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["RealNickName"] as? String {
                self.realNickName = value
            }
            if let value = dict["Remark"] as? String {
                self.remark = value
            }
            if let value = dict["Status"] as? Int64 {
                self.status = value
            }
            if let value = dict["SupportLoginIdps"] as? [Any?] {
                var tmp : [FilterUsersResponseBody.Users.SupportLoginIdps] = []
                for v in value {
                    if v != nil {
                        var model = FilterUsersResponseBody.Users.SupportLoginIdps()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.supportLoginIdps = tmp
            }
            if let value = dict["UserSetPropertiesModels"] as? [Any?] {
                var tmp : [FilterUsersResponseBody.Users.UserSetPropertiesModels] = []
                for v in value {
                    if v != nil {
                        var model = FilterUsersResponseBody.Users.UserSetPropertiesModels()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userSetPropertiesModels = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var users: [FilterUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            var tmp : [Any] = []
            for k in self.users! {
                tmp.append(k.toMap())
            }
            map["Users"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Users"] as? [Any?] {
            var tmp : [FilterUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = FilterUsersResponseBody.Users()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.users = tmp
        }
    }
}

public class FilterUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FilterUsersResponseBody?

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
            var model = FilterUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetManagerInfoByAuthCodeRequest : Tea.TeaModel {
    public var authCode: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
    }
}

public class GetManagerInfoByAuthCodeResponseBody : Tea.TeaModel {
    public var orgId: String?

    public var phone: String?

    public var requestId: String?

    public var teamName: String?

    public var userName: String?

    public var waId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.teamName != nil {
            map["TeamName"] = self.teamName!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.waId != nil {
            map["WaId"] = self.waId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TeamName"] as? String {
            self.teamName = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["WaId"] as? Int64 {
            self.waId = value
        }
    }
}

public class GetManagerInfoByAuthCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetManagerInfoByAuthCodeResponseBody?

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
            var model = GetManagerInfoByAuthCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InitTenantAliasResponseBody : Tea.TeaModel {
    public class AliasInfo : Tea.TeaModel {
        public var aliasEditDisabledReason: String?

        public var aliasEditable: Bool?

        public var aliasSourceType: String?

        public var nextModifyTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasEditDisabledReason != nil {
                map["AliasEditDisabledReason"] = self.aliasEditDisabledReason!
            }
            if self.aliasEditable != nil {
                map["AliasEditable"] = self.aliasEditable!
            }
            if self.aliasSourceType != nil {
                map["AliasSourceType"] = self.aliasSourceType!
            }
            if self.nextModifyTime != nil {
                map["NextModifyTime"] = self.nextModifyTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasEditDisabledReason"] as? String {
                self.aliasEditDisabledReason = value
            }
            if let value = dict["AliasEditable"] as? Bool {
                self.aliasEditable = value
            }
            if let value = dict["AliasSourceType"] as? String {
                self.aliasSourceType = value
            }
            if let value = dict["NextModifyTime"] as? String {
                self.nextModifyTime = value
            }
        }
    }
    public var aliasInfo: InitTenantAliasResponseBody.AliasInfo?

    public var data: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.aliasInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasInfo != nil {
            map["AliasInfo"] = self.aliasInfo?.toMap()
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasInfo"] as? [String: Any?] {
            var model = InitTenantAliasResponseBody.AliasInfo()
            model.fromMap(value)
            self.aliasInfo = model
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class InitTenantAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitTenantAliasResponseBody?

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
            var model = InitTenantAliasResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPropertyResponseBody : Tea.TeaModel {
    public class Properties : Tea.TeaModel {
        public class PropertyValues : Tea.TeaModel {
            public var propertyValue: String?

            public var propertyValueId: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.propertyValue != nil {
                    map["PropertyValue"] = self.propertyValue!
                }
                if self.propertyValueId != nil {
                    map["PropertyValueId"] = self.propertyValueId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PropertyValue"] as? String {
                    self.propertyValue = value
                }
                if let value = dict["PropertyValueId"] as? Int64 {
                    self.propertyValueId = value
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var propertyValues: [ListPropertyResponseBody.Properties.PropertyValues]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.propertyValues != nil {
                var tmp : [Any] = []
                for k in self.propertyValues! {
                    tmp.append(k.toMap())
                }
                map["PropertyValues"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyId"] as? Int64 {
                self.propertyId = value
            }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["PropertyValues"] as? [Any?] {
                var tmp : [ListPropertyResponseBody.Properties.PropertyValues] = []
                for v in value {
                    if v != nil {
                        var model = ListPropertyResponseBody.Properties.PropertyValues()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.propertyValues = tmp
            }
        }
    }
    public var nextToken: String?

    public var properties: [ListPropertyResponseBody.Properties]?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.properties != nil {
            var tmp : [Any] = []
            for k in self.properties! {
                tmp.append(k.toMap())
            }
            map["Properties"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Properties"] as? [Any?] {
            var tmp : [ListPropertyResponseBody.Properties] = []
            for v in value {
                if v != nil {
                    var model = ListPropertyResponseBody.Properties()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.properties = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPropertyResponseBody?

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
            var model = ListPropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
    }
}

public class ListPropertyValueResponseBody : Tea.TeaModel {
    public class PropertyValueInfos : Tea.TeaModel {
        public var propertyValue: String?

        public var propertyValueId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyValue != nil {
                map["PropertyValue"] = self.propertyValue!
            }
            if self.propertyValueId != nil {
                map["PropertyValueId"] = self.propertyValueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyValue"] as? String {
                self.propertyValue = value
            }
            if let value = dict["PropertyValueId"] as? Int64 {
                self.propertyValueId = value
            }
        }
    }
    public var propertyValueInfos: [ListPropertyValueResponseBody.PropertyValueInfos]?

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
        if self.propertyValueInfos != nil {
            var tmp : [Any] = []
            for k in self.propertyValueInfos! {
                tmp.append(k.toMap())
            }
            map["PropertyValueInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyValueInfos"] as? [Any?] {
            var tmp : [ListPropertyValueResponseBody.PropertyValueInfos] = []
            for v in value {
                if v != nil {
                    var model = ListPropertyValueResponseBody.PropertyValueInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyValueInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPropertyValueResponseBody?

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
            var model = ListPropertyValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LockMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class LockMfaDeviceResponseBody : Tea.TeaModel {
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

public class LockMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockMfaDeviceResponseBody?

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
            var model = LockMfaDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LockUsersRequest : Tea.TeaModel {
    public var logoutSession: Bool?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logoutSession != nil {
            map["LogoutSession"] = self.logoutSession!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogoutSession"] as? Bool {
            self.logoutSession = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class LockUsersResponseBody : Tea.TeaModel {
    public class LockUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
            }
        }
        public var failedUsers: [LockUsersResponseBody.LockUsersResult.FailedUsers]?

        public var lockedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.lockedUsers != nil {
                map["LockedUsers"] = self.lockedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedUsers"] as? [Any?] {
                var tmp : [LockUsersResponseBody.LockUsersResult.FailedUsers] = []
                for v in value {
                    if v != nil {
                        var model = LockUsersResponseBody.LockUsersResult.FailedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedUsers = tmp
            }
            if let value = dict["LockedUsers"] as? [String] {
                self.lockedUsers = value
            }
        }
    }
    public var lockUsersResult: LockUsersResponseBody.LockUsersResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.lockUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lockUsersResult != nil {
            map["LockUsersResult"] = self.lockUsersResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LockUsersResult"] as? [String: Any?] {
            var model = LockUsersResponseBody.LockUsersResult()
            model.fromMap(value)
            self.lockUsersResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class LockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LockUsersResponseBody?

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
            var model = LockUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyGroupRequest : Tea.TeaModel {
    public var description_: String?

    public var groupId: String?

    public var newGroupName: String?

    public override init() {
        super.init()
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
            map["Description"] = self.description_!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        if self.newGroupName != nil {
            map["NewGroupName"] = self.newGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["NewGroupName"] as? String {
            self.newGroupName = value
        }
    }
}

public class ModifyGroupResponseBody : Tea.TeaModel {
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

public class ModifyGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGroupResponseBody?

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
            var model = ModifyGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyOrgRequest : Tea.TeaModel {
    public var orgId: String?

    public var orgName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        if self.orgName != nil {
            map["OrgName"] = self.orgName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
        if let value = dict["OrgName"] as? String {
            self.orgName = value
        }
    }
}

public class ModifyOrgResponseBody : Tea.TeaModel {
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

public class ModifyOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyOrgResponseBody?

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
            var model = ModifyOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyUserRequest : Tea.TeaModel {
    public var email: String?

    public var endUserId: String?

    public var phone: String?

    public override init() {
        super.init()
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
            map["Email"] = self.email!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
    }
}

public class ModifyUserResponseBody : Tea.TeaModel {
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

public class ModifyUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserResponseBody?

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
            var model = ModifyUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveOrgRequest : Tea.TeaModel {
    public var newParentOrgId: String?

    public var orgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newParentOrgId != nil {
            map["NewParentOrgId"] = self.newParentOrgId!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NewParentOrgId"] as? String {
            self.newParentOrgId = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
    }
}

public class MoveOrgResponseBody : Tea.TeaModel {
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

public class MoveOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveOrgResponseBody?

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
            var model = MoveOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MoveUserOrgRequest : Tea.TeaModel {
    public var endUserIds: [String]?

    public var orgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
    }
}

public class MoveUserOrgResponseBody : Tea.TeaModel {
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

public class MoveUserOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MoveUserOrgResponseBody?

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
            var model = MoveUserOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySyncStatusByAliUidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var corpId: String?

        public var gmtCreated: String?

        public var gmtModified: String?

        public var id: Int64?

        public var latestBeginTime: String?

        public var latestEndTime: String?

        public var latestSuccessTime: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.corpId != nil {
                map["CorpId"] = self.corpId!
            }
            if self.gmtCreated != nil {
                map["GmtCreated"] = self.gmtCreated!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.latestBeginTime != nil {
                map["LatestBeginTime"] = self.latestBeginTime!
            }
            if self.latestEndTime != nil {
                map["LatestEndTime"] = self.latestEndTime!
            }
            if self.latestSuccessTime != nil {
                map["LatestSuccessTime"] = self.latestSuccessTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["CorpId"] as? String {
                self.corpId = value
            }
            if let value = dict["GmtCreated"] as? String {
                self.gmtCreated = value
            }
            if let value = dict["GmtModified"] as? String {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["LatestBeginTime"] as? String {
                self.latestBeginTime = value
            }
            if let value = dict["LatestEndTime"] as? String {
                self.latestEndTime = value
            }
            if let value = dict["LatestSuccessTime"] as? String {
                self.latestSuccessTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var code: String?

    public var data: QuerySyncStatusByAliUidResponseBody.Data?

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
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = QuerySyncStatusByAliUidResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QuerySyncStatusByAliUidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySyncStatusByAliUidResponseBody?

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
            var model = QuerySyncStatusByAliUidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveGroupRequest : Tea.TeaModel {
    public var groupId: String?

    public var groupIds: [String]?

    public override init() {
        super.init()
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
        if self.groupIds != nil {
            map["GroupIds"] = self.groupIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
        if let value = dict["GroupIds"] as? [String] {
            self.groupIds = value
        }
    }
}

public class RemoveGroupResponseBody : Tea.TeaModel {
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

public class RemoveGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveGroupResponseBody?

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
            var model = RemoveGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class RemoveMfaDeviceResponseBody : Tea.TeaModel {
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

public class RemoveMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveMfaDeviceResponseBody?

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
            var model = RemoveMfaDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveOrgRequest : Tea.TeaModel {
    public var orgId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orgId != nil {
            map["OrgId"] = self.orgId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrgId"] as? String {
            self.orgId = value
        }
    }
}

public class RemoveOrgResponseBody : Tea.TeaModel {
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

public class RemoveOrgResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveOrgResponseBody?

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
            var model = RemoveOrgResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemovePropertyRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
    }
}

public class RemovePropertyResponseBody : Tea.TeaModel {
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

public class RemovePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemovePropertyResponseBody?

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
            var model = RemovePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveUsersRequest : Tea.TeaModel {
    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class RemoveUsersResponseBody : Tea.TeaModel {
    public class RemoveUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
            }
        }
        public var failedUsers: [RemoveUsersResponseBody.RemoveUsersResult.FailedUsers]?

        public var removedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.removedUsers != nil {
                map["RemovedUsers"] = self.removedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedUsers"] as? [Any?] {
                var tmp : [RemoveUsersResponseBody.RemoveUsersResult.FailedUsers] = []
                for v in value {
                    if v != nil {
                        var model = RemoveUsersResponseBody.RemoveUsersResult.FailedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedUsers = tmp
            }
            if let value = dict["RemovedUsers"] as? [String] {
                self.removedUsers = value
            }
        }
    }
    public var removeUsersResult: RemoveUsersResponseBody.RemoveUsersResult?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.removeUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.removeUsersResult != nil {
            map["RemoveUsersResult"] = self.removeUsersResult?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RemoveUsersResult"] as? [String: Any?] {
            var model = RemoveUsersResponseBody.RemoveUsersResult()
            model.fromMap(value)
            self.removeUsersResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RemoveUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUsersResponseBody?

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
            var model = RemoveUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetUserPasswordRequest : Tea.TeaModel {
    public var notifyType: Int32?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.notifyType != nil {
            map["NotifyType"] = self.notifyType!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NotifyType"] as? Int32 {
            self.notifyType = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class ResetUserPasswordResponseBody : Tea.TeaModel {
    public class ResetUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
            }
        }
        public var failedUsers: [ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers]?

        public var resetUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.resetUsers != nil {
                map["ResetUsers"] = self.resetUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedUsers"] as? [Any?] {
                var tmp : [ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers] = []
                for v in value {
                    if v != nil {
                        var model = ResetUserPasswordResponseBody.ResetUsersResult.FailedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedUsers = tmp
            }
            if let value = dict["ResetUsers"] as? [String] {
                self.resetUsers = value
            }
        }
    }
    public var requestId: String?

    public var resetUsersResult: ResetUserPasswordResponseBody.ResetUsersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.resetUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resetUsersResult != nil {
            map["ResetUsersResult"] = self.resetUsersResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResetUsersResult"] as? [String: Any?] {
            var model = ResetUserPasswordResponseBody.ResetUsersResult()
            model.fromMap(value)
            self.resetUsersResult = model
        }
    }
}

public class ResetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserPasswordResponseBody?

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
            var model = ResetUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetUserPropertyValueRequest : Tea.TeaModel {
    public var propertyId: Int64?

    public var propertyValueId: Int64?

    public var userId: Int64?

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
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyValueId != nil {
            map["PropertyValueId"] = self.propertyValueId!
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
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
        if let value = dict["PropertyValueId"] as? Int64 {
            self.propertyValueId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class SetUserPropertyValueResponseBody : Tea.TeaModel {
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

public class SetUserPropertyValueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserPropertyValueResponseBody?

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
            var model = SetUserPropertyValueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncAllEduInfoResponseBody : Tea.TeaModel {
    public var code: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.httpStatusCode != nil {
            map["HttpStatusCode"] = self.httpStatusCode!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["HttpStatusCode"] as? Int32 {
            self.httpStatusCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SyncAllEduInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncAllEduInfoResponseBody?

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
            var model = SyncAllEduInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnlockMfaDeviceRequest : Tea.TeaModel {
    public var adDomain: String?

    public var serialNumber: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["SerialNumber"] as? String {
            self.serialNumber = value
        }
    }
}

public class UnlockMfaDeviceResponseBody : Tea.TeaModel {
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

public class UnlockMfaDeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockMfaDeviceResponseBody?

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
            var model = UnlockMfaDeviceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnlockUsersRequest : Tea.TeaModel {
    public var autoLockTime: String?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoLockTime != nil {
            map["AutoLockTime"] = self.autoLockTime!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoLockTime"] as? String {
            self.autoLockTime = value
        }
        if let value = dict["Users"] as? [String] {
            self.users = value
        }
    }
}

public class UnlockUsersResponseBody : Tea.TeaModel {
    public class UnlockUsersResult : Tea.TeaModel {
        public class FailedUsers : Tea.TeaModel {
            public var endUserId: String?

            public var errorCode: String?

            public var errorMessage: String?

            public override init() {
                super.init()
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
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.errorMessage != nil {
                    map["ErrorMessage"] = self.errorMessage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EndUserId"] as? String {
                    self.endUserId = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["ErrorMessage"] as? String {
                    self.errorMessage = value
                }
            }
        }
        public var failedUsers: [UnlockUsersResponseBody.UnlockUsersResult.FailedUsers]?

        public var unlockedUsers: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedUsers != nil {
                var tmp : [Any] = []
                for k in self.failedUsers! {
                    tmp.append(k.toMap())
                }
                map["FailedUsers"] = tmp
            }
            if self.unlockedUsers != nil {
                map["UnlockedUsers"] = self.unlockedUsers!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FailedUsers"] as? [Any?] {
                var tmp : [UnlockUsersResponseBody.UnlockUsersResult.FailedUsers] = []
                for v in value {
                    if v != nil {
                        var model = UnlockUsersResponseBody.UnlockUsersResult.FailedUsers()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.failedUsers = tmp
            }
            if let value = dict["UnlockedUsers"] as? [String] {
                self.unlockedUsers = value
            }
        }
    }
    public var requestId: String?

    public var unlockUsersResult: UnlockUsersResponseBody.UnlockUsersResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.unlockUsersResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.unlockUsersResult != nil {
            map["UnlockUsersResult"] = self.unlockUsersResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UnlockUsersResult"] as? [String: Any?] {
            var model = UnlockUsersResponseBody.UnlockUsersResult()
            model.fromMap(value)
            self.unlockUsersResult = model
        }
    }
}

public class UnlockUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnlockUsersResponseBody?

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
            var model = UnlockUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePropertyRequest : Tea.TeaModel {
    public class PropertyValues : Tea.TeaModel {
        public var propertyValue: String?

        public var propertyValueId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyValue != nil {
                map["PropertyValue"] = self.propertyValue!
            }
            if self.propertyValueId != nil {
                map["PropertyValueId"] = self.propertyValueId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyValue"] as? String {
                self.propertyValue = value
            }
            if let value = dict["PropertyValueId"] as? Int64 {
                self.propertyValueId = value
            }
        }
    }
    public var propertyId: Int64?

    public var propertyKey: String?

    public var propertyValues: [UpdatePropertyRequest.PropertyValues]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.propertyId != nil {
            map["PropertyId"] = self.propertyId!
        }
        if self.propertyKey != nil {
            map["PropertyKey"] = self.propertyKey!
        }
        if self.propertyValues != nil {
            var tmp : [Any] = []
            for k in self.propertyValues! {
                tmp.append(k.toMap())
            }
            map["PropertyValues"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PropertyId"] as? Int64 {
            self.propertyId = value
        }
        if let value = dict["PropertyKey"] as? String {
            self.propertyKey = value
        }
        if let value = dict["PropertyValues"] as? [Any?] {
            var tmp : [UpdatePropertyRequest.PropertyValues] = []
            for v in value {
                if v != nil {
                    var model = UpdatePropertyRequest.PropertyValues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.propertyValues = tmp
        }
    }
}

public class UpdatePropertyResponseBody : Tea.TeaModel {
    public class UpdateResult : Tea.TeaModel {
        public class SavePropertyValueModel : Tea.TeaModel {
            public class FailedPropertyValues : Tea.TeaModel {
                public var errorCode: String?

                public var errorMessage: String?

                public var propertyId: Int64?

                public var propertyValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.errorCode != nil {
                        map["ErrorCode"] = self.errorCode!
                    }
                    if self.errorMessage != nil {
                        map["ErrorMessage"] = self.errorMessage!
                    }
                    if self.propertyId != nil {
                        map["PropertyId"] = self.propertyId!
                    }
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ErrorCode"] as? String {
                        self.errorCode = value
                    }
                    if let value = dict["ErrorMessage"] as? String {
                        self.errorMessage = value
                    }
                    if let value = dict["PropertyId"] as? Int64 {
                        self.propertyId = value
                    }
                    if let value = dict["PropertyValue"] as? String {
                        self.propertyValue = value
                    }
                }
            }
            public class SavePropertyValues : Tea.TeaModel {
                public var propertyValue: String?

                public var propertyValueId: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.propertyValue != nil {
                        map["PropertyValue"] = self.propertyValue!
                    }
                    if self.propertyValueId != nil {
                        map["PropertyValueId"] = self.propertyValueId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["PropertyValue"] as? String {
                        self.propertyValue = value
                    }
                    if let value = dict["PropertyValueId"] as? Int64 {
                        self.propertyValueId = value
                    }
                }
            }
            public var failedPropertyValues: [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues]?

            public var savePropertyValues: [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedPropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.failedPropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["FailedPropertyValues"] = tmp
                }
                if self.savePropertyValues != nil {
                    var tmp : [Any] = []
                    for k in self.savePropertyValues! {
                        tmp.append(k.toMap())
                    }
                    map["SavePropertyValues"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FailedPropertyValues"] as? [Any?] {
                    var tmp : [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.FailedPropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.failedPropertyValues = tmp
                }
                if let value = dict["SavePropertyValues"] as? [Any?] {
                    var tmp : [UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues] = []
                    for v in value {
                        if v != nil {
                            var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel.SavePropertyValues()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.savePropertyValues = tmp
                }
            }
        }
        public var propertyId: Int64?

        public var propertyKey: String?

        public var savePropertyValueModel: UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.savePropertyValueModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.propertyId != nil {
                map["PropertyId"] = self.propertyId!
            }
            if self.propertyKey != nil {
                map["PropertyKey"] = self.propertyKey!
            }
            if self.savePropertyValueModel != nil {
                map["SavePropertyValueModel"] = self.savePropertyValueModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PropertyId"] as? Int64 {
                self.propertyId = value
            }
            if let value = dict["PropertyKey"] as? String {
                self.propertyKey = value
            }
            if let value = dict["SavePropertyValueModel"] as? [String: Any?] {
                var model = UpdatePropertyResponseBody.UpdateResult.SavePropertyValueModel()
                model.fromMap(value)
                self.savePropertyValueModel = model
            }
        }
    }
    public var requestId: String?

    public var updateResult: UpdatePropertyResponseBody.UpdateResult?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.updateResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.updateResult != nil {
            map["UpdateResult"] = self.updateResult?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UpdateResult"] as? [String: Any?] {
            var model = UpdatePropertyResponseBody.UpdateResult()
            model.fromMap(value)
            self.updateResult = model
        }
    }
}

public class UpdatePropertyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePropertyResponseBody?

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
            var model = UpdatePropertyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UserBatchJoinGroupRequest : Tea.TeaModel {
    public var endUserIds: [String]?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
    }
}

public class UserBatchJoinGroupResponseBody : Tea.TeaModel {
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

public class UserBatchJoinGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UserBatchJoinGroupResponseBody?

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
            var model = UserBatchJoinGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UserBatchQuitGroupRequest : Tea.TeaModel {
    public var endUserIds: [String]?

    public var groupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endUserIds != nil {
            map["EndUserIds"] = self.endUserIds!
        }
        if self.groupId != nil {
            map["GroupId"] = self.groupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndUserIds"] as? [String] {
            self.endUserIds = value
        }
        if let value = dict["GroupId"] as? String {
            self.groupId = value
        }
    }
}

public class UserBatchQuitGroupResponseBody : Tea.TeaModel {
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

public class UserBatchQuitGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UserBatchQuitGroupResponseBody?

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
            var model = UserBatchQuitGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
