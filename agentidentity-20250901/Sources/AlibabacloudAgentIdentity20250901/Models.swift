import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AuthorizationRequest : Tea.TeaModel {
    public var endpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
    }
}

public class AuthorizationServerMetadata : Tea.TeaModel {
    public var authorizationRequest: AuthorizationRequest?

    public var issuer: String?

    public var PKCE: PKCE?

    public var tokenRequest: TokenReqeust?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authorizationRequest?.validate()
        try self.PKCE?.validate()
        try self.tokenRequest?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationRequest != nil {
            map["AuthorizationRequest"] = self.authorizationRequest?.toMap()
        }
        if self.issuer != nil {
            map["Issuer"] = self.issuer!
        }
        if self.PKCE != nil {
            map["PKCE"] = self.PKCE?.toMap()
        }
        if self.tokenRequest != nil {
            map["TokenRequest"] = self.tokenRequest?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationRequest"] as? [String: Any?] {
            var model = AuthorizationRequest()
            model.fromMap(value)
            self.authorizationRequest = model
        }
        if let value = dict["Issuer"] as? String {
            self.issuer = value
        }
        if let value = dict["PKCE"] as? [String: Any?] {
            var model = PKCE()
            model.fromMap(value)
            self.PKCE = model
        }
        if let value = dict["TokenRequest"] as? [String: Any?] {
            var model = TokenReqeust()
            model.fromMap(value)
            self.tokenRequest = model
        }
    }
}

public class CustomOAuth2ProviderConfig : Tea.TeaModel {
    public var clientId: String?

    public var clientSecret: String?

    public var OAuth2Discovery: OAuth2Discovery?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OAuth2Discovery?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientSecret != nil {
            map["ClientSecret"] = self.clientSecret!
        }
        if self.OAuth2Discovery != nil {
            map["OAuth2Discovery"] = self.OAuth2Discovery?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientSecret"] as? String {
            self.clientSecret = value
        }
        if let value = dict["OAuth2Discovery"] as? [String: Any?] {
            var model = OAuth2Discovery()
            model.fromMap(value)
            self.OAuth2Discovery = model
        }
    }
}

public class IncludedOAuth2ProviderConfig : Tea.TeaModel {
    public var authorizationEndpoint: String?

    public var clientId: String?

    public var clientSecret: String?

    public var tokenEndpoint: String?

    public override init() {
        super.init()
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
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientSecret != nil {
            map["ClientSecret"] = self.clientSecret!
        }
        if self.tokenEndpoint != nil {
            map["TokenEndpoint"] = self.tokenEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationEndpoint"] as? String {
            self.authorizationEndpoint = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientSecret"] as? String {
            self.clientSecret = value
        }
        if let value = dict["TokenEndpoint"] as? String {
            self.tokenEndpoint = value
        }
    }
}

public class OAuth2Discovery : Tea.TeaModel {
    public var authorizationServerMetadata: AuthorizationServerMetadata?

    public var discoveryURL: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authorizationServerMetadata?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authorizationServerMetadata != nil {
            map["AuthorizationServerMetadata"] = self.authorizationServerMetadata?.toMap()
        }
        if self.discoveryURL != nil {
            map["DiscoveryURL"] = self.discoveryURL!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthorizationServerMetadata"] as? [String: Any?] {
            var model = AuthorizationServerMetadata()
            model.fromMap(value)
            self.authorizationServerMetadata = model
        }
        if let value = dict["DiscoveryURL"] as? String {
            self.discoveryURL = value
        }
    }
}

public class OAuth2ProviderConfig : Tea.TeaModel {
    public var customOAuth2ProviderConfig: CustomOAuth2ProviderConfig?

    public var includedOAuth2ProviderConfig: IncludedOAuth2ProviderConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customOAuth2ProviderConfig?.validate()
        try self.includedOAuth2ProviderConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customOAuth2ProviderConfig != nil {
            map["CustomOAuth2ProviderConfig"] = self.customOAuth2ProviderConfig?.toMap()
        }
        if self.includedOAuth2ProviderConfig != nil {
            map["IncludedOAuth2ProviderConfig"] = self.includedOAuth2ProviderConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomOAuth2ProviderConfig"] as? [String: Any?] {
            var model = CustomOAuth2ProviderConfig()
            model.fromMap(value)
            self.customOAuth2ProviderConfig = model
        }
        if let value = dict["IncludedOAuth2ProviderConfig"] as? [String: Any?] {
            var model = IncludedOAuth2ProviderConfig()
            model.fromMap(value)
            self.includedOAuth2ProviderConfig = model
        }
    }
}

public class PKCE : Tea.TeaModel {
    public var enabled: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enabled != nil {
            map["Enabled"] = self.enabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Enabled"] as? Bool {
            self.enabled = value
        }
    }
}

public class TokenReqeust : Tea.TeaModel {
    public var endpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
    }
}

public class CreateAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKey: String?

    public var APIKeyCredentialProviderName: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.APIKeyCredentialProviderName != nil {
            map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
    }
}

public class CreateAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProvider : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.APIKeyCredentialProviderName != nil {
                map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["APIKeyCredentialProviderName"] as? String {
                self.APIKeyCredentialProviderName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
        }
    }
    public var APIKeyCredentialProvider: CreateAPIKeyCredentialProviderResponseBody.APIKeyCredentialProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.APIKeyCredentialProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKeyCredentialProvider != nil {
            map["APIKeyCredentialProvider"] = self.APIKeyCredentialProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProvider"] as? [String: Any?] {
            var model = CreateAPIKeyCredentialProviderResponseBody.APIKeyCredentialProvider()
            model.fromMap(value)
            self.APIKeyCredentialProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAPIKeyCredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAPIKeyCredentialProviderResponseBody?

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
            var model = CreateAPIKeyCredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateIdentityProviderRequest : Tea.TeaModel {
    public var allowedAudience: [String]?

    public var description_: String?

    public var discoveryURL: String?

    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedAudience != nil {
            map["AllowedAudience"] = self.allowedAudience!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.discoveryURL != nil {
            map["DiscoveryURL"] = self.discoveryURL!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedAudience"] as? [String] {
            self.allowedAudience = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DiscoveryURL"] as? String {
            self.discoveryURL = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class CreateIdentityProviderShrinkRequest : Tea.TeaModel {
    public var allowedAudienceShrink: String?

    public var description_: String?

    public var discoveryURL: String?

    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedAudienceShrink != nil {
            map["AllowedAudience"] = self.allowedAudienceShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.discoveryURL != nil {
            map["DiscoveryURL"] = self.discoveryURL!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedAudience"] as? String {
            self.allowedAudienceShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DiscoveryURL"] as? String {
            self.discoveryURL = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class CreateIdentityProviderResponseBody : Tea.TeaModel {
    public class IdentityProvider : Tea.TeaModel {
        public var allowedAudience: [String]?

        public var createTime: String?

        public var description_: String?

        public var discoveryURL: String?

        public var identityProviderArn: String?

        public var identityProviderName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedAudience != nil {
                map["AllowedAudience"] = self.allowedAudience!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.discoveryURL != nil {
                map["DiscoveryURL"] = self.discoveryURL!
            }
            if self.identityProviderArn != nil {
                map["IdentityProviderArn"] = self.identityProviderArn!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedAudience"] as? [String] {
                self.allowedAudience = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DiscoveryURL"] as? String {
                self.discoveryURL = value
            }
            if let value = dict["IdentityProviderArn"] as? String {
                self.identityProviderArn = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var identityProvider: CreateIdentityProviderResponseBody.IdentityProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.identityProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProvider != nil {
            map["IdentityProvider"] = self.identityProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProvider"] as? [String: Any?] {
            var model = CreateIdentityProviderResponseBody.IdentityProvider()
            model.fromMap(value)
            self.identityProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateIdentityProviderResponseBody?

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
            var model = CreateIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOAuth2CredentialProviderRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfig: OAuth2ProviderConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OAuth2ProviderConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackURL != nil {
            map["CallbackURL"] = self.callbackURL!
        }
        if self.credentialProviderVendor != nil {
            map["CredentialProviderVendor"] = self.credentialProviderVendor!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        if self.OAuth2ProviderConfig != nil {
            map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackURL"] as? String {
            self.callbackURL = value
        }
        if let value = dict["CredentialProviderVendor"] as? String {
            self.credentialProviderVendor = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["OAuth2ProviderConfig"] as? [String: Any?] {
            var model = OAuth2ProviderConfig()
            model.fromMap(value)
            self.OAuth2ProviderConfig = model
        }
    }
}

public class CreateOAuth2CredentialProviderShrinkRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackURL != nil {
            map["CallbackURL"] = self.callbackURL!
        }
        if self.credentialProviderVendor != nil {
            map["CredentialProviderVendor"] = self.credentialProviderVendor!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        if self.OAuth2ProviderConfigShrink != nil {
            map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackURL"] as? String {
            self.callbackURL = value
        }
        if let value = dict["CredentialProviderVendor"] as? String {
            self.credentialProviderVendor = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["OAuth2ProviderConfig"] as? String {
            self.OAuth2ProviderConfigShrink = value
        }
    }
}

public class CreateOAuth2CredentialProviderResponseBody : Tea.TeaModel {
    public class OAuth2CredentialProvider : Tea.TeaModel {
        public var callbackURL: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var credentialProviderVendor: String?

        public var description_: String?

        public var OAuth2CredentialProviderName: String?

        public var OAuth2ProviderConfig: OAuth2ProviderConfig?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.OAuth2ProviderConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackURL != nil {
                map["CallbackURL"] = self.callbackURL!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.credentialProviderVendor != nil {
                map["CredentialProviderVendor"] = self.credentialProviderVendor!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OAuth2CredentialProviderName != nil {
                map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
            }
            if self.OAuth2ProviderConfig != nil {
                map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfig?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallbackURL"] as? String {
                self.callbackURL = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["CredentialProviderVendor"] as? String {
                self.credentialProviderVendor = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OAuth2CredentialProviderName"] as? String {
                self.OAuth2CredentialProviderName = value
            }
            if let value = dict["OAuth2ProviderConfig"] as? [String: Any?] {
                var model = OAuth2ProviderConfig()
                model.fromMap(value)
                self.OAuth2ProviderConfig = model
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var OAuth2CredentialProvider: CreateOAuth2CredentialProviderResponseBody.OAuth2CredentialProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OAuth2CredentialProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OAuth2CredentialProvider != nil {
            map["OAuth2CredentialProvider"] = self.OAuth2CredentialProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProvider"] as? [String: Any?] {
            var model = CreateOAuth2CredentialProviderResponseBody.OAuth2CredentialProvider()
            model.fromMap(value)
            self.OAuth2CredentialProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateOAuth2CredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOAuth2CredentialProviderResponseBody?

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
            var model = CreateOAuth2CredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkloadIdentityRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLs: [String]?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedResourceOAuth2ReturnURLs != nil {
            map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? [String] {
            self.allowedResourceOAuth2ReturnURLs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class CreateWorkloadIdentityShrinkRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLsShrink: String?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedResourceOAuth2ReturnURLsShrink != nil {
            map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? String {
            self.allowedResourceOAuth2ReturnURLsShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class CreateWorkloadIdentityResponseBody : Tea.TeaModel {
    public class WorkloadIdentity : Tea.TeaModel {
        public var allowedResourceOAuth2ReturnURLs: [String]?

        public var createTime: String?

        public var description_: String?

        public var identityProviderName: String?

        public var roleArn: String?

        public var updateTime: String?

        public var workloadIdentityArn: String?

        public var workloadIdentityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedResourceOAuth2ReturnURLs != nil {
                map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLs!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.workloadIdentityArn != nil {
                map["WorkloadIdentityArn"] = self.workloadIdentityArn!
            }
            if self.workloadIdentityName != nil {
                map["WorkloadIdentityName"] = self.workloadIdentityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? [String] {
                self.allowedResourceOAuth2ReturnURLs = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["WorkloadIdentityArn"] as? String {
                self.workloadIdentityArn = value
            }
            if let value = dict["WorkloadIdentityName"] as? String {
                self.workloadIdentityName = value
            }
        }
    }
    public var requestId: String?

    public var workloadIdentity: CreateWorkloadIdentityResponseBody.WorkloadIdentity?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workloadIdentity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workloadIdentity != nil {
            map["WorkloadIdentity"] = self.workloadIdentity?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadIdentity"] as? [String: Any?] {
            var model = CreateWorkloadIdentityResponseBody.WorkloadIdentity()
            model.fromMap(value)
            self.workloadIdentity = model
        }
    }
}

public class CreateWorkloadIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkloadIdentityResponseBody?

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
            var model = CreateWorkloadIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKeyCredentialProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKeyCredentialProviderName != nil {
            map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
    }
}

public class DeleteAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
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

public class DeleteAPIKeyCredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAPIKeyCredentialProviderResponseBody?

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
            var model = DeleteAPIKeyCredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteIdentityProviderRequest : Tea.TeaModel {
    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class DeleteIdentityProviderResponseBody : Tea.TeaModel {
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

public class DeleteIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteIdentityProviderResponseBody?

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
            var model = DeleteIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteOAuth2CredentialProviderRequest : Tea.TeaModel {
    public var OAuth2CredentialProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
    }
}

public class DeleteOAuth2CredentialProviderResponseBody : Tea.TeaModel {
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

public class DeleteOAuth2CredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOAuth2CredentialProviderResponseBody?

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
            var model = DeleteOAuth2CredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWorkloadIdentityRequest : Tea.TeaModel {
    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class DeleteWorkloadIdentityResponseBody : Tea.TeaModel {
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

public class DeleteWorkloadIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkloadIdentityResponseBody?

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
            var model = DeleteWorkloadIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKeyCredentialProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKeyCredentialProviderName != nil {
            map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
    }
}

public class GetAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProvider : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.APIKeyCredentialProviderName != nil {
                map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["APIKeyCredentialProviderName"] as? String {
                self.APIKeyCredentialProviderName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var APIKeyCredentialProvider: GetAPIKeyCredentialProviderResponseBody.APIKeyCredentialProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.APIKeyCredentialProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKeyCredentialProvider != nil {
            map["APIKeyCredentialProvider"] = self.APIKeyCredentialProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProvider"] as? [String: Any?] {
            var model = GetAPIKeyCredentialProviderResponseBody.APIKeyCredentialProvider()
            model.fromMap(value)
            self.APIKeyCredentialProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAPIKeyCredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAPIKeyCredentialProviderResponseBody?

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
            var model = GetAPIKeyCredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentityProviderRequest : Tea.TeaModel {
    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class GetIdentityProviderResponseBody : Tea.TeaModel {
    public class IdentityProvider : Tea.TeaModel {
        public var allowedAudience: [String]?

        public var createTime: String?

        public var description_: String?

        public var discoveryURL: String?

        public var identityProviderArn: String?

        public var identityProviderName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedAudience != nil {
                map["AllowedAudience"] = self.allowedAudience!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.discoveryURL != nil {
                map["DiscoveryURL"] = self.discoveryURL!
            }
            if self.identityProviderArn != nil {
                map["IdentityProviderArn"] = self.identityProviderArn!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedAudience"] as? [String] {
                self.allowedAudience = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DiscoveryURL"] as? String {
                self.discoveryURL = value
            }
            if let value = dict["IdentityProviderArn"] as? String {
                self.identityProviderArn = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var identityProvider: GetIdentityProviderResponseBody.IdentityProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.identityProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProvider != nil {
            map["IdentityProvider"] = self.identityProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProvider"] as? [String: Any?] {
            var model = GetIdentityProviderResponseBody.IdentityProvider()
            model.fromMap(value)
            self.identityProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentityProviderResponseBody?

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
            var model = GetIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOAuth2CredentialProviderRequest : Tea.TeaModel {
    public var OAuth2CredentialProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
    }
}

public class GetOAuth2CredentialProviderResponseBody : Tea.TeaModel {
    public class OAuth2CredentialProvider : Tea.TeaModel {
        public var callbackURL: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var credentialProviderVendor: String?

        public var description_: String?

        public var OAuth2CredentialProviderName: String?

        public var OAuth2ProviderConfig: OAuth2ProviderConfig?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.OAuth2ProviderConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackURL != nil {
                map["CallbackURL"] = self.callbackURL!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.credentialProviderVendor != nil {
                map["CredentialProviderVendor"] = self.credentialProviderVendor!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OAuth2CredentialProviderName != nil {
                map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
            }
            if self.OAuth2ProviderConfig != nil {
                map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfig?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallbackURL"] as? String {
                self.callbackURL = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["CredentialProviderVendor"] as? String {
                self.credentialProviderVendor = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OAuth2CredentialProviderName"] as? String {
                self.OAuth2CredentialProviderName = value
            }
            if let value = dict["OAuth2ProviderConfig"] as? [String: Any?] {
                var model = OAuth2ProviderConfig()
                model.fromMap(value)
                self.OAuth2ProviderConfig = model
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var OAuth2CredentialProvider: GetOAuth2CredentialProviderResponseBody.OAuth2CredentialProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OAuth2CredentialProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OAuth2CredentialProvider != nil {
            map["OAuth2CredentialProvider"] = self.OAuth2CredentialProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProvider"] as? [String: Any?] {
            var model = GetOAuth2CredentialProviderResponseBody.OAuth2CredentialProvider()
            model.fromMap(value)
            self.OAuth2CredentialProvider = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetOAuth2CredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOAuth2CredentialProviderResponseBody?

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
            var model = GetOAuth2CredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkloadIdentityRequest : Tea.TeaModel {
    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class GetWorkloadIdentityResponseBody : Tea.TeaModel {
    public class WorkloadIdentity : Tea.TeaModel {
        public var allowedResourceOAuth2ReturnURLs: [String]?

        public var createTime: String?

        public var description_: String?

        public var identityProviderName: String?

        public var roleArn: String?

        public var updateTime: String?

        public var workloadIdentityArn: String?

        public var workloadIdentityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedResourceOAuth2ReturnURLs != nil {
                map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLs!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.workloadIdentityArn != nil {
                map["WorkloadIdentityArn"] = self.workloadIdentityArn!
            }
            if self.workloadIdentityName != nil {
                map["WorkloadIdentityName"] = self.workloadIdentityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? [String] {
                self.allowedResourceOAuth2ReturnURLs = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["WorkloadIdentityArn"] as? String {
                self.workloadIdentityArn = value
            }
            if let value = dict["WorkloadIdentityName"] as? String {
                self.workloadIdentityName = value
            }
        }
    }
    public var requestId: String?

    public var workloadIdentity: GetWorkloadIdentityResponseBody.WorkloadIdentity?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workloadIdentity?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workloadIdentity != nil {
            map["WorkloadIdentity"] = self.workloadIdentity?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadIdentity"] as? [String: Any?] {
            var model = GetWorkloadIdentityResponseBody.WorkloadIdentity()
            model.fromMap(value)
            self.workloadIdentity = model
        }
    }
}

public class GetWorkloadIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkloadIdentityResponseBody?

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
            var model = GetWorkloadIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAPIKeyCredentialProvidersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListAPIKeyCredentialProvidersResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProviders : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.APIKeyCredentialProviderName != nil {
                map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["APIKeyCredentialProviderName"] as? String {
                self.APIKeyCredentialProviderName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var APIKeyCredentialProviders: [ListAPIKeyCredentialProvidersResponseBody.APIKeyCredentialProviders]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKeyCredentialProviders != nil {
            var tmp : [Any] = []
            for k in self.APIKeyCredentialProviders! {
                tmp.append(k.toMap())
            }
            map["APIKeyCredentialProviders"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProviders"] as? [Any?] {
            var tmp : [ListAPIKeyCredentialProvidersResponseBody.APIKeyCredentialProviders] = []
            for v in value {
                if v != nil {
                    var model = ListAPIKeyCredentialProvidersResponseBody.APIKeyCredentialProviders()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.APIKeyCredentialProviders = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListAPIKeyCredentialProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAPIKeyCredentialProvidersResponseBody?

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
            var model = ListAPIKeyCredentialProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIdentityProvidersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListIdentityProvidersResponseBody : Tea.TeaModel {
    public class IdentityProviders : Tea.TeaModel {
        public var allowedAudience: [String]?

        public var createTime: String?

        public var description_: String?

        public var discoveryURL: String?

        public var identityProviderArn: String?

        public var identityProviderName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedAudience != nil {
                map["AllowedAudience"] = self.allowedAudience!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.discoveryURL != nil {
                map["DiscoveryURL"] = self.discoveryURL!
            }
            if self.identityProviderArn != nil {
                map["IdentityProviderArn"] = self.identityProviderArn!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedAudience"] as? [String] {
                self.allowedAudience = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DiscoveryURL"] as? String {
                self.discoveryURL = value
            }
            if let value = dict["IdentityProviderArn"] as? String {
                self.identityProviderArn = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var identityProviders: [ListIdentityProvidersResponseBody.IdentityProviders]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProviders != nil {
            var tmp : [Any] = []
            for k in self.identityProviders! {
                tmp.append(k.toMap())
            }
            map["IdentityProviders"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviders"] as? [Any?] {
            var tmp : [ListIdentityProvidersResponseBody.IdentityProviders] = []
            for v in value {
                if v != nil {
                    var model = ListIdentityProvidersResponseBody.IdentityProviders()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.identityProviders = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListIdentityProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdentityProvidersResponseBody?

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
            var model = ListIdentityProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListOAuth2CredentialProvidersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListOAuth2CredentialProvidersResponseBody : Tea.TeaModel {
    public class OAuth2CredentialProviders : Tea.TeaModel {
        public var callbackURL: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var credentialProviderVendor: String?

        public var description_: String?

        public var OAuth2CredentialProviderName: String?

        public var OAuth2ProviderConfig: OAuth2ProviderConfig?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.OAuth2ProviderConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.callbackURL != nil {
                map["CallbackURL"] = self.callbackURL!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.credentialProviderArn != nil {
                map["CredentialProviderArn"] = self.credentialProviderArn!
            }
            if self.credentialProviderVendor != nil {
                map["CredentialProviderVendor"] = self.credentialProviderVendor!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.OAuth2CredentialProviderName != nil {
                map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
            }
            if self.OAuth2ProviderConfig != nil {
                map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfig?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CallbackURL"] as? String {
                self.callbackURL = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["CredentialProviderArn"] as? String {
                self.credentialProviderArn = value
            }
            if let value = dict["CredentialProviderVendor"] as? String {
                self.credentialProviderVendor = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["OAuth2CredentialProviderName"] as? String {
                self.OAuth2CredentialProviderName = value
            }
            if let value = dict["OAuth2ProviderConfig"] as? [String: Any?] {
                var model = OAuth2ProviderConfig()
                model.fromMap(value)
                self.OAuth2ProviderConfig = model
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var OAuth2CredentialProviders: [ListOAuth2CredentialProvidersResponseBody.OAuth2CredentialProviders]?

    public var requestId: String?

    public var totalCount: Int32?

    public override init() {
        super.init()
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
        if self.OAuth2CredentialProviders != nil {
            var tmp : [Any] = []
            for k in self.OAuth2CredentialProviders! {
                tmp.append(k.toMap())
            }
            map["OAuth2CredentialProviders"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OAuth2CredentialProviders"] as? [Any?] {
            var tmp : [ListOAuth2CredentialProvidersResponseBody.OAuth2CredentialProviders] = []
            for v in value {
                if v != nil {
                    var model = ListOAuth2CredentialProvidersResponseBody.OAuth2CredentialProviders()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.OAuth2CredentialProviders = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListOAuth2CredentialProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOAuth2CredentialProvidersResponseBody?

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
            var model = ListOAuth2CredentialProvidersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListWorkloadIdentitiesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListWorkloadIdentitiesResponseBody : Tea.TeaModel {
    public class WorkloadIdentities : Tea.TeaModel {
        public var allowedResourceOAuth2ReturnURLs: [String]?

        public var createTime: String?

        public var description_: String?

        public var identityProviderName: String?

        public var roleArn: String?

        public var updateTime: String?

        public var workloadIdentityArn: String?

        public var workloadIdentityName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowedResourceOAuth2ReturnURLs != nil {
                map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLs!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.identityProviderName != nil {
                map["IdentityProviderName"] = self.identityProviderName!
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.workloadIdentityArn != nil {
                map["WorkloadIdentityArn"] = self.workloadIdentityArn!
            }
            if self.workloadIdentityName != nil {
                map["WorkloadIdentityName"] = self.workloadIdentityName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? [String] {
                self.allowedResourceOAuth2ReturnURLs = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IdentityProviderName"] as? String {
                self.identityProviderName = value
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["WorkloadIdentityArn"] as? String {
                self.workloadIdentityArn = value
            }
            if let value = dict["WorkloadIdentityName"] as? String {
                self.workloadIdentityName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var workloadIdentities: [ListWorkloadIdentitiesResponseBody.WorkloadIdentities]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workloadIdentities != nil {
            var tmp : [Any] = []
            for k in self.workloadIdentities! {
                tmp.append(k.toMap())
            }
            map["WorkloadIdentities"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["WorkloadIdentities"] as? [Any?] {
            var tmp : [ListWorkloadIdentitiesResponseBody.WorkloadIdentities] = []
            for v in value {
                if v != nil {
                    var model = ListWorkloadIdentitiesResponseBody.WorkloadIdentities()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.workloadIdentities = tmp
        }
    }
}

public class ListWorkloadIdentitiesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListWorkloadIdentitiesResponseBody?

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
            var model = ListWorkloadIdentitiesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKey: String?

    public var APIKeyCredentialProviderName: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.APIKeyCredentialProviderName != nil {
            map["APIKeyCredentialProviderName"] = self.APIKeyCredentialProviderName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
    }
}

public class UpdateAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
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

public class UpdateAPIKeyCredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAPIKeyCredentialProviderResponseBody?

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
            var model = UpdateAPIKeyCredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateIdentityProviderRequest : Tea.TeaModel {
    public var allowedAudience: [String]?

    public var description_: String?

    public var discoveryURL: String?

    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedAudience != nil {
            map["AllowedAudience"] = self.allowedAudience!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.discoveryURL != nil {
            map["DiscoveryURL"] = self.discoveryURL!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedAudience"] as? [String] {
            self.allowedAudience = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DiscoveryURL"] as? String {
            self.discoveryURL = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class UpdateIdentityProviderShrinkRequest : Tea.TeaModel {
    public var allowedAudienceShrink: String?

    public var description_: String?

    public var discoveryURL: String?

    public var identityProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedAudienceShrink != nil {
            map["AllowedAudience"] = self.allowedAudienceShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.discoveryURL != nil {
            map["DiscoveryURL"] = self.discoveryURL!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedAudience"] as? String {
            self.allowedAudienceShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DiscoveryURL"] as? String {
            self.discoveryURL = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
    }
}

public class UpdateIdentityProviderResponseBody : Tea.TeaModel {
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

public class UpdateIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateIdentityProviderResponseBody?

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
            var model = UpdateIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOAuth2CredentialProviderRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfig: OAuth2ProviderConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OAuth2ProviderConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackURL != nil {
            map["CallbackURL"] = self.callbackURL!
        }
        if self.credentialProviderVendor != nil {
            map["CredentialProviderVendor"] = self.credentialProviderVendor!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        if self.OAuth2ProviderConfig != nil {
            map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackURL"] as? String {
            self.callbackURL = value
        }
        if let value = dict["CredentialProviderVendor"] as? String {
            self.credentialProviderVendor = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["OAuth2ProviderConfig"] as? [String: Any?] {
            var model = OAuth2ProviderConfig()
            model.fromMap(value)
            self.OAuth2ProviderConfig = model
        }
    }
}

public class UpdateOAuth2CredentialProviderShrinkRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfigShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callbackURL != nil {
            map["CallbackURL"] = self.callbackURL!
        }
        if self.credentialProviderVendor != nil {
            map["CredentialProviderVendor"] = self.credentialProviderVendor!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.OAuth2CredentialProviderName != nil {
            map["OAuth2CredentialProviderName"] = self.OAuth2CredentialProviderName!
        }
        if self.OAuth2ProviderConfigShrink != nil {
            map["OAuth2ProviderConfig"] = self.OAuth2ProviderConfigShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CallbackURL"] as? String {
            self.callbackURL = value
        }
        if let value = dict["CredentialProviderVendor"] as? String {
            self.credentialProviderVendor = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["OAuth2ProviderConfig"] as? String {
            self.OAuth2ProviderConfigShrink = value
        }
    }
}

public class UpdateOAuth2CredentialProviderResponseBody : Tea.TeaModel {
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

public class UpdateOAuth2CredentialProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOAuth2CredentialProviderResponseBody?

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
            var model = UpdateOAuth2CredentialProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWorkloadIdentityRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLs: [String]?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedResourceOAuth2ReturnURLs != nil {
            map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLs!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? [String] {
            self.allowedResourceOAuth2ReturnURLs = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class UpdateWorkloadIdentityShrinkRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLsShrink: String?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var workloadIdentityName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedResourceOAuth2ReturnURLsShrink != nil {
            map["AllowedResourceOAuth2ReturnURLs"] = self.allowedResourceOAuth2ReturnURLsShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.identityProviderName != nil {
            map["IdentityProviderName"] = self.identityProviderName!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowedResourceOAuth2ReturnURLs"] as? String {
            self.allowedResourceOAuth2ReturnURLsShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["IdentityProviderName"] as? String {
            self.identityProviderName = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class UpdateWorkloadIdentityResponseBody : Tea.TeaModel {
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

public class UpdateWorkloadIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWorkloadIdentityResponseBody?

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
            var model = UpdateWorkloadIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
