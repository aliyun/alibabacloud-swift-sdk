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

public class Definition : Tea.TeaModel {
    public class Cedar : Tea.TeaModel {
        public var statement: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.statement != nil {
                map["Statement"] = self.statement!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Statement"] as? String {
                self.statement = value
            }
        }
    }
    public var cedar: Definition.Cedar?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.cedar?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cedar != nil {
            map["Cedar"] = self.cedar?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Cedar"] as? [String: Any?] {
            var model = Definition.Cedar()
            model.fromMap(value)
            self.cedar = model
        }
    }
}

public class EncryptionConfig : Tea.TeaModel {
    public var keyType: String?

    public var kmsKeyArn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keyType != nil {
            map["KeyType"] = self.keyType!
        }
        if self.kmsKeyArn != nil {
            map["KmsKeyArn"] = self.kmsKeyArn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KeyType"] as? String {
            self.keyType = value
        }
        if let value = dict["KmsKeyArn"] as? String {
            self.kmsKeyArn = value
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

public class AddSAMLIdentityProviderCertificateRequest : Tea.TeaModel {
    public var userPoolName: String?

    public var x509Certificate: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        if self.x509Certificate != nil {
            map["X509Certificate"] = self.x509Certificate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
        if let value = dict["X509Certificate"] as? String {
            self.x509Certificate = value
        }
    }
}

public class AddSAMLIdentityProviderCertificateResponseBody : Tea.TeaModel {
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

public class AddSAMLIdentityProviderCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSAMLIdentityProviderCertificateResponseBody?

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
            var model = AddSAMLIdentityProviderCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachPolicySetToGatewayRequest : Tea.TeaModel {
    public var enforcementMode: String?

    public var gatewayArn: String?

    public var gatewayType: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enforcementMode != nil {
            map["EnforcementMode"] = self.enforcementMode!
        }
        if self.gatewayArn != nil {
            map["GatewayArn"] = self.gatewayArn!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnforcementMode"] as? String {
            self.enforcementMode = value
        }
        if let value = dict["GatewayArn"] as? String {
            self.gatewayArn = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class AttachPolicySetToGatewayResponseBody : Tea.TeaModel {
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

public class AttachPolicySetToGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachPolicySetToGatewayResponseBody?

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
            var model = AttachPolicySetToGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKey: String?

    public var APIKeyCredentialProviderName: String?

    public var description_: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class CreateAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProvider : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public var tokenVaultName: String?

        public override init() {
            super.init()
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
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class CreateClientSecretRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateClientSecretResponseBody : Tea.TeaModel {
    public class ClientSecret : Tea.TeaModel {
        public var clientId: String?

        public var clientName: String?

        public var clientSecretId: String?

        public var clientSecretValue: String?

        public var createTime: String?

        public var userPoolName: String?

        public override init() {
            super.init()
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
            if self.clientName != nil {
                map["ClientName"] = self.clientName!
            }
            if self.clientSecretId != nil {
                map["ClientSecretId"] = self.clientSecretId!
            }
            if self.clientSecretValue != nil {
                map["ClientSecretValue"] = self.clientSecretValue!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientName"] as? String {
                self.clientName = value
            }
            if let value = dict["ClientSecretId"] as? String {
                self.clientSecretId = value
            }
            if let value = dict["ClientSecretValue"] as? String {
                self.clientSecretValue = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var clientSecret: CreateClientSecretResponseBody.ClientSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clientSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientSecret != nil {
            map["ClientSecret"] = self.clientSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientSecret"] as? [String: Any?] {
            var model = CreateClientSecretResponseBody.ClientSecret()
            model.fromMap(value)
            self.clientSecret = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClientSecretResponseBody?

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
            var model = CreateClientSecretResponseBody()
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

    public var OAuthType: String?

    public var tokenVaultName: String?

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
        if self.OAuthType != nil {
            map["OAuthType"] = self.OAuthType!
        }
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["OAuthType"] as? String {
            self.OAuthType = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class CreateOAuth2CredentialProviderShrinkRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfigShrink: String?

    public var OAuthType: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.OAuthType != nil {
            map["OAuthType"] = self.OAuthType!
        }
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["OAuthType"] as? String {
            self.OAuthType = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

        public var OAuthType: String?

        public var tokenVaultName: String?

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
            if self.OAuthType != nil {
                map["OAuthType"] = self.OAuthType!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["OAuthType"] as? String {
                self.OAuthType = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class CreatePolicyRequest : Tea.TeaModel {
    public var definition: Definition?

    public var description_: String?

    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.definition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definition != nil {
            map["Definition"] = self.definition?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? [String: Any?] {
            var model = Definition()
            model.fromMap(value)
            self.definition = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class CreatePolicyShrinkRequest : Tea.TeaModel {
    public var definitionShrink: String?

    public var description_: String?

    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definitionShrink != nil {
            map["Definition"] = self.definitionShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definitionShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class CreatePolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var createTime: String?

        public var definition: Definition?

        public var description_: String?

        public var policyArn: String?

        public var policyName: String?

        public var policySetName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.definition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.definition != nil {
                map["Definition"] = self.definition?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyArn != nil {
                map["PolicyArn"] = self.policyArn!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Definition"] as? [String: Any?] {
                var model = Definition()
                model.fromMap(value)
                self.definition = model
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyArn"] as? String {
                self.policyArn = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
        }
    }
    public var policy: CreatePolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = CreatePolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicyResponseBody?

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
            var model = CreatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreatePolicySetRequest : Tea.TeaModel {
    public var description_: String?

    public var policySetName: String?

    public override init() {
        super.init()
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
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class CreatePolicySetResponseBody : Tea.TeaModel {
    public class PolicySet : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var policySetArn: String?

        public var policySetName: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policySetArn != nil {
                map["PolicySetArn"] = self.policySetArn!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicySetArn"] as? String {
                self.policySetArn = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
        }
    }
    public var policySet: CreatePolicySetResponseBody.PolicySet?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policySet?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policySet != nil {
            map["PolicySet"] = self.policySet?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicySet"] as? [String: Any?] {
            var model = CreatePolicySetResponseBody.PolicySet()
            model.fromMap(value)
            self.policySet = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreatePolicySetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreatePolicySetResponseBody?

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
            var model = CreatePolicySetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleRequest : Tea.TeaModel {
    public var description_: String?

    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var roleId: String?

        public var roleName: String?

        public var type: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var role: CreateRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = CreateRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class CreateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleResponseBody?

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
            var model = CreateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRoleAssignmentRequest : Tea.TeaModel {
    public var principalName: String?

    public var principalType: String?

    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateRoleAssignmentResponseBody : Tea.TeaModel {
    public class RoleAssignment : Tea.TeaModel {
        public var createTime: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var roleId: String?

        public var roleName: String?

        public var userPoolId: String?

        public override init() {
            super.init()
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
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
        }
    }
    public var requestId: String?

    public var roleAssignment: CreateRoleAssignmentResponseBody.RoleAssignment?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.roleAssignment?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleAssignment != nil {
            map["RoleAssignment"] = self.roleAssignment?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleAssignment"] as? [String: Any?] {
            var model = CreateRoleAssignmentResponseBody.RoleAssignment()
            model.fromMap(value)
            self.roleAssignment = model
        }
    }
}

public class CreateRoleAssignmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRoleAssignmentResponseBody?

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
            var model = CreateRoleAssignmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateTokenVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptionConfig: EncryptionConfig?

    public var roleArn: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.encryptionConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.encryptionConfig != nil {
            map["EncryptionConfig"] = self.encryptionConfig?.toMap()
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptionConfig"] as? [String: Any?] {
            var model = EncryptionConfig()
            model.fromMap(value)
            self.encryptionConfig = model
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class CreateTokenVaultShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var encryptionConfigShrink: String?

    public var roleArn: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.encryptionConfigShrink != nil {
            map["EncryptionConfig"] = self.encryptionConfigShrink!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["EncryptionConfig"] as? String {
            self.encryptionConfigShrink = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class CreateTokenVaultResponseBody : Tea.TeaModel {
    public class TokenVault : Tea.TeaModel {
        public class EncryptionConfig : Tea.TeaModel {
            public var keyType: String?

            public var kmsKeyArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keyType != nil {
                    map["KeyType"] = self.keyType!
                }
                if self.kmsKeyArn != nil {
                    map["KmsKeyArn"] = self.kmsKeyArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KeyType"] as? String {
                    self.keyType = value
                }
                if let value = dict["KmsKeyArn"] as? String {
                    self.kmsKeyArn = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var encryptionConfig: CreateTokenVaultResponseBody.TokenVault.EncryptionConfig?

        public var roleArn: String?

        public var tokenVaultArn: String?

        public var tokenVaultName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryptionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encryptionConfig != nil {
                map["EncryptionConfig"] = self.encryptionConfig?.toMap()
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.tokenVaultArn != nil {
                map["TokenVaultArn"] = self.tokenVaultArn!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EncryptionConfig"] as? [String: Any?] {
                var model = CreateTokenVaultResponseBody.TokenVault.EncryptionConfig()
                model.fromMap(value)
                self.encryptionConfig = model
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["TokenVaultArn"] as? String {
                self.tokenVaultArn = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
            }
        }
    }
    public var requestId: String?

    public var tokenVault: CreateTokenVaultResponseBody.TokenVault?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tokenVault?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenVault != nil {
            map["TokenVault"] = self.tokenVault?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TokenVault"] as? [String: Any?] {
            var model = CreateTokenVaultResponseBody.TokenVault()
            model.fromMap(value)
            self.tokenVault = model
        }
    }
}

public class CreateTokenVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTokenVaultResponseBody?

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
            var model = CreateTokenVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var email: String?

    public var status: String?

    public var userName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var status: String?

        public var type: String?

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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
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
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var requestId: String?

    public var user: CreateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = CreateUserResponseBody.User()
            model.fromMap(value)
            self.user = model
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
            var model = CreateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserPoolRequest : Tea.TeaModel {
    public var description_: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateUserPoolResponseBody : Tea.TeaModel {
    public class UserPool : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var sourcePlatform: String?

        public var updateTime: String?

        public var userPoolId: String?

        public var userPoolName: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var requestId: String?

    public var userPool: CreateUserPoolResponseBody.UserPool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userPool?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userPool != nil {
            map["UserPool"] = self.userPool?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserPool"] as? [String: Any?] {
            var model = CreateUserPoolResponseBody.UserPool()
            model.fromMap(value)
            self.userPool = model
        }
    }
}

public class CreateUserPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserPoolResponseBody?

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
            var model = CreateUserPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUserPoolClientRequest : Tea.TeaModel {
    public var accessTokenValidity: String?

    public var clientName: String?

    public var enforcePKCE: Bool?

    public var redirectURIs: [String]?

    public var refreshTokenValidity: String?

    public var secretRequired: Bool?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenValidity != nil {
            map["AccessTokenValidity"] = self.accessTokenValidity!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.enforcePKCE != nil {
            map["EnforcePKCE"] = self.enforcePKCE!
        }
        if self.redirectURIs != nil {
            map["RedirectURIs"] = self.redirectURIs!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenValidity"] as? String {
            self.accessTokenValidity = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["EnforcePKCE"] as? Bool {
            self.enforcePKCE = value
        }
        if let value = dict["RedirectURIs"] as? [String] {
            self.redirectURIs = value
        }
        if let value = dict["RefreshTokenValidity"] as? String {
            self.refreshTokenValidity = value
        }
        if let value = dict["SecretRequired"] as? Bool {
            self.secretRequired = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateUserPoolClientShrinkRequest : Tea.TeaModel {
    public var accessTokenValidity: String?

    public var clientName: String?

    public var enforcePKCE: Bool?

    public var redirectURIsShrink: String?

    public var refreshTokenValidity: String?

    public var secretRequired: Bool?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenValidity != nil {
            map["AccessTokenValidity"] = self.accessTokenValidity!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.enforcePKCE != nil {
            map["EnforcePKCE"] = self.enforcePKCE!
        }
        if self.redirectURIsShrink != nil {
            map["RedirectURIs"] = self.redirectURIsShrink!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenValidity"] as? String {
            self.accessTokenValidity = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["EnforcePKCE"] as? Bool {
            self.enforcePKCE = value
        }
        if let value = dict["RedirectURIs"] as? String {
            self.redirectURIsShrink = value
        }
        if let value = dict["RefreshTokenValidity"] as? String {
            self.refreshTokenValidity = value
        }
        if let value = dict["SecretRequired"] as? Bool {
            self.secretRequired = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class CreateUserPoolClientResponseBody : Tea.TeaModel {
    public class Client : Tea.TeaModel {
        public class ClientScopes : Tea.TeaModel {
            public var description_: String?

            public var scopeName: String?

            public override init() {
                super.init()
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
                if self.scopeName != nil {
                    map["ScopeName"] = self.scopeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ScopeName"] as? String {
                    self.scopeName = value
                }
            }
        }
        public var accessTokenValidity: String?

        public var clientId: String?

        public var clientName: String?

        public var clientScopes: [CreateUserPoolClientResponseBody.Client.ClientScopes]?

        public var clientType: String?

        public var createTime: String?

        public var enforcePKCE: Bool?

        public var redirectURIs: [String]?

        public var refreshTokenValidity: String?

        public var secretRequired: Bool?

        public var updateTime: String?

        public var userPoolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientName != nil {
                map["ClientName"] = self.clientName!
            }
            if self.clientScopes != nil {
                var tmp : [Any] = []
                for k in self.clientScopes! {
                    tmp.append(k.toMap())
                }
                map["ClientScopes"] = tmp
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enforcePKCE != nil {
                map["EnforcePKCE"] = self.enforcePKCE!
            }
            if self.redirectURIs != nil {
                map["RedirectURIs"] = self.redirectURIs!
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? String {
                self.accessTokenValidity = value
            }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientName"] as? String {
                self.clientName = value
            }
            if let value = dict["ClientScopes"] as? [Any?] {
                var tmp : [CreateUserPoolClientResponseBody.Client.ClientScopes] = []
                for v in value {
                    if v != nil {
                        var model = CreateUserPoolClientResponseBody.Client.ClientScopes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clientScopes = tmp
            }
            if let value = dict["ClientType"] as? String {
                self.clientType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnforcePKCE"] as? Bool {
                self.enforcePKCE = value
            }
            if let value = dict["RedirectURIs"] as? [String] {
                self.redirectURIs = value
            }
            if let value = dict["RefreshTokenValidity"] as? String {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var client: CreateUserPoolClientResponseBody.Client?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.client?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.client != nil {
            map["Client"] = self.client?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Client"] as? [String: Any?] {
            var model = CreateUserPoolClientResponseBody.Client()
            model.fromMap(value)
            self.client = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateUserPoolClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserPoolClientResponseBody?

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
            var model = CreateUserPoolClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkloadIdentityRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLs: [String]?

    public var createRAMRole: Bool?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var sessionBindingEnabled: Bool?

    public var sourceAgentArn: String?

    public var sourcePlatform: String?

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
        if self.createRAMRole != nil {
            map["CreateRAMRole"] = self.createRAMRole!
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
        if self.sessionBindingEnabled != nil {
            map["SessionBindingEnabled"] = self.sessionBindingEnabled!
        }
        if self.sourceAgentArn != nil {
            map["SourceAgentArn"] = self.sourceAgentArn!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
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
        if let value = dict["CreateRAMRole"] as? Bool {
            self.createRAMRole = value
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
        if let value = dict["SessionBindingEnabled"] as? Bool {
            self.sessionBindingEnabled = value
        }
        if let value = dict["SourceAgentArn"] as? String {
            self.sourceAgentArn = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class CreateWorkloadIdentityShrinkRequest : Tea.TeaModel {
    public var allowedResourceOAuth2ReturnURLsShrink: String?

    public var createRAMRole: Bool?

    public var description_: String?

    public var identityProviderName: String?

    public var roleArn: String?

    public var sessionBindingEnabled: Bool?

    public var sourceAgentArn: String?

    public var sourcePlatform: String?

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
        if self.createRAMRole != nil {
            map["CreateRAMRole"] = self.createRAMRole!
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
        if self.sessionBindingEnabled != nil {
            map["SessionBindingEnabled"] = self.sessionBindingEnabled!
        }
        if self.sourceAgentArn != nil {
            map["SourceAgentArn"] = self.sourceAgentArn!
        }
        if self.sourcePlatform != nil {
            map["SourcePlatform"] = self.sourcePlatform!
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
        if let value = dict["CreateRAMRole"] as? Bool {
            self.createRAMRole = value
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
        if let value = dict["SessionBindingEnabled"] as? Bool {
            self.sessionBindingEnabled = value
        }
        if let value = dict["SourceAgentArn"] as? String {
            self.sourceAgentArn = value
        }
        if let value = dict["SourcePlatform"] as? String {
            self.sourcePlatform = value
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

        public var sessionBindingEnabled: Bool?

        public var sourceAgentArn: String?

        public var sourcePlatform: String?

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
            if self.sessionBindingEnabled != nil {
                map["SessionBindingEnabled"] = self.sessionBindingEnabled!
            }
            if self.sourceAgentArn != nil {
                map["SourceAgentArn"] = self.sourceAgentArn!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
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
            if let value = dict["SessionBindingEnabled"] as? Bool {
                self.sessionBindingEnabled = value
            }
            if let value = dict["SourceAgentArn"] as? String {
                self.sourceAgentArn = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
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

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

public class DeleteClientSecretRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientName: String?

    public var clientSecretId: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.clientSecretId != nil {
            map["ClientSecretId"] = self.clientSecretId!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["ClientSecretId"] as? String {
            self.clientSecretId = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteClientSecretResponseBody : Tea.TeaModel {
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

public class DeleteClientSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClientSecretResponseBody?

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
            var model = DeleteClientSecretResponseBody()
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

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

public class DeletePolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class DeletePolicyResponseBody : Tea.TeaModel {
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

public class DeletePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyResponseBody?

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
            var model = DeletePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeletePolicySetRequest : Tea.TeaModel {
    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class DeletePolicySetResponseBody : Tea.TeaModel {
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

public class DeletePolicySetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicySetResponseBody?

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
            var model = DeletePolicySetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteRoleResponseBody : Tea.TeaModel {
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

public class DeleteRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoleResponseBody?

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
            var model = DeleteRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteRoleAssignmentRequest : Tea.TeaModel {
    public var principalName: String?

    public var principalType: String?

    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteRoleAssignmentResponseBody : Tea.TeaModel {
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

public class DeleteRoleAssignmentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteRoleAssignmentResponseBody?

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
            var model = DeleteRoleAssignmentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteSAMLIdentityProviderCertificateRequest : Tea.TeaModel {
    public var certificateId: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.certificateId != nil {
            map["CertificateId"] = self.certificateId!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CertificateId"] as? String {
            self.certificateId = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteSAMLIdentityProviderCertificateResponseBody : Tea.TeaModel {
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

public class DeleteSAMLIdentityProviderCertificateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSAMLIdentityProviderCertificateResponseBody?

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
            var model = DeleteSAMLIdentityProviderCertificateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteTokenVaultRequest : Tea.TeaModel {
    public var tokenVaultName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class DeleteTokenVaultResponseBody : Tea.TeaModel {
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

public class DeleteTokenVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteTokenVaultResponseBody?

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
            var model = DeleteTokenVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var userName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteUserResponseBody : Tea.TeaModel {
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

public class DeleteUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserResponseBody?

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
            var model = DeleteUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserPoolRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteUserPoolResponseBody : Tea.TeaModel {
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

public class DeleteUserPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPoolResponseBody?

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
            var model = DeleteUserPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserPoolClientRequest : Tea.TeaModel {
    public var clientName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class DeleteUserPoolClientResponseBody : Tea.TeaModel {
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

public class DeleteUserPoolClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserPoolClientResponseBody?

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
            var model = DeleteUserPoolClientResponseBody()
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

public class DetachPolicySetFromGatewayRequest : Tea.TeaModel {
    public var gatewayArn: String?

    public var gatewayType: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayArn != nil {
            map["GatewayArn"] = self.gatewayArn!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayArn"] as? String {
            self.gatewayArn = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class DetachPolicySetFromGatewayResponseBody : Tea.TeaModel {
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

public class DetachPolicySetFromGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachPolicySetFromGatewayResponseBody?

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
            var model = DetachPolicySetFromGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKeyCredentialProviderName: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKeyCredentialProviderName"] as? String {
            self.APIKeyCredentialProviderName = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class GetAPIKeyCredentialProviderResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProvider : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public var tokenVaultName: String?

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
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class GetGatewayPolicyConfigRequest : Tea.TeaModel {
    public var gatewayArn: String?

    public var gatewayType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayArn != nil {
            map["GatewayArn"] = self.gatewayArn!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayArn"] as? String {
            self.gatewayArn = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
    }
}

public class GetGatewayPolicyConfigResponseBody : Tea.TeaModel {
    public class GatewayPolicyConfig : Tea.TeaModel {
        public var enforcementMode: String?

        public var policySetArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enforcementMode != nil {
                map["EnforcementMode"] = self.enforcementMode!
            }
            if self.policySetArn != nil {
                map["PolicySetArn"] = self.policySetArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnforcementMode"] as? String {
                self.enforcementMode = value
            }
            if let value = dict["PolicySetArn"] as? String {
                self.policySetArn = value
            }
        }
    }
    public var gatewayPolicyConfig: GetGatewayPolicyConfigResponseBody.GatewayPolicyConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayPolicyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayPolicyConfig != nil {
            map["GatewayPolicyConfig"] = self.gatewayPolicyConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayPolicyConfig"] as? [String: Any?] {
            var model = GetGatewayPolicyConfigResponseBody.GatewayPolicyConfig()
            model.fromMap(value)
            self.gatewayPolicyConfig = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetGatewayPolicyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGatewayPolicyConfigResponseBody?

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
            var model = GetGatewayPolicyConfigResponseBody()
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

public class GetLoginPreferenceRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetLoginPreferenceResponseBody : Tea.TeaModel {
    public class LoginPreference : Tea.TeaModel {
        public var enablePasswordLogin: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enablePasswordLogin != nil {
                map["EnablePasswordLogin"] = self.enablePasswordLogin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnablePasswordLogin"] as? Bool {
                self.enablePasswordLogin = value
            }
        }
    }
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttempts: Int64?

        public var maxPasswordAge: Int64?

        public var maxPasswordLength: Int32?

        public var minPasswordLength: Int32?

        public var passwordNotContainUserName: Bool?

        public var requireLowerCaseChars: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUpperCaseChars: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hardExpire != nil {
                map["HardExpire"] = self.hardExpire!
            }
            if self.maxLoginAttempts != nil {
                map["MaxLoginAttempts"] = self.maxLoginAttempts!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.maxPasswordLength != nil {
                map["MaxPasswordLength"] = self.maxPasswordLength!
            }
            if self.minPasswordLength != nil {
                map["MinPasswordLength"] = self.minPasswordLength!
            }
            if self.passwordNotContainUserName != nil {
                map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
            }
            if self.requireLowerCaseChars != nil {
                map["RequireLowerCaseChars"] = self.requireLowerCaseChars!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUpperCaseChars != nil {
                map["RequireUpperCaseChars"] = self.requireUpperCaseChars!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["HardExpire"] as? Bool {
                self.hardExpire = value
            }
            if let value = dict["MaxLoginAttempts"] as? Int64 {
                self.maxLoginAttempts = value
            }
            if let value = dict["MaxPasswordAge"] as? Int64 {
                self.maxPasswordAge = value
            }
            if let value = dict["MaxPasswordLength"] as? Int32 {
                self.maxPasswordLength = value
            }
            if let value = dict["MinPasswordLength"] as? Int32 {
                self.minPasswordLength = value
            }
            if let value = dict["PasswordNotContainUserName"] as? Bool {
                self.passwordNotContainUserName = value
            }
            if let value = dict["RequireLowerCaseChars"] as? Bool {
                self.requireLowerCaseChars = value
            }
            if let value = dict["RequireNumbers"] as? Bool {
                self.requireNumbers = value
            }
            if let value = dict["RequireSymbols"] as? Bool {
                self.requireSymbols = value
            }
            if let value = dict["RequireUpperCaseChars"] as? Bool {
                self.requireUpperCaseChars = value
            }
        }
    }
    public var loginPreference: GetLoginPreferenceResponseBody.LoginPreference?

    public var passwordPolicy: GetLoginPreferenceResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginPreference?.validate()
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginPreference != nil {
            map["LoginPreference"] = self.loginPreference?.toMap()
        }
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginPreference"] as? [String: Any?] {
            var model = GetLoginPreferenceResponseBody.LoginPreference()
            model.fromMap(value)
            self.loginPreference = model
        }
        if let value = dict["PasswordPolicy"] as? [String: Any?] {
            var model = GetLoginPreferenceResponseBody.PasswordPolicy()
            model.fromMap(value)
            self.passwordPolicy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetLoginPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginPreferenceResponseBody?

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
            var model = GetLoginPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetOAuth2CredentialProviderRequest : Tea.TeaModel {
    public var OAuth2CredentialProviderName: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OAuth2CredentialProviderName"] as? String {
            self.OAuth2CredentialProviderName = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

        public var OAuthType: String?

        public var tokenVaultName: String?

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
            if self.OAuthType != nil {
                map["OAuthType"] = self.OAuthType!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["OAuthType"] as? String {
                self.OAuthType = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class GetPolicyRequest : Tea.TeaModel {
    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class GetPolicyResponseBody : Tea.TeaModel {
    public class Policy : Tea.TeaModel {
        public var createTime: String?

        public var definition: Definition?

        public var description_: String?

        public var policyArn: String?

        public var policyName: String?

        public var policySetName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.definition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.definition != nil {
                map["Definition"] = self.definition?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyArn != nil {
                map["PolicyArn"] = self.policyArn!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Definition"] as? [String: Any?] {
                var model = Definition()
                model.fromMap(value)
                self.definition = model
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyArn"] as? String {
                self.policyArn = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var policy: GetPolicyResponseBody.Policy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policy != nil {
            map["Policy"] = self.policy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Policy"] as? [String: Any?] {
            var model = GetPolicyResponseBody.Policy()
            model.fromMap(value)
            self.policy = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicyResponseBody?

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
            var model = GetPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetPolicySetRequest : Tea.TeaModel {
    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class GetPolicySetResponseBody : Tea.TeaModel {
    public class PolicySet : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var policySetArn: String?

        public var policySetName: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policySetArn != nil {
                map["PolicySetArn"] = self.policySetArn!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicySetArn"] as? String {
                self.policySetArn = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var policySet: GetPolicySetResponseBody.PolicySet?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.policySet?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.policySet != nil {
            map["PolicySet"] = self.policySet?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PolicySet"] as? [String: Any?] {
            var model = GetPolicySetResponseBody.PolicySet()
            model.fromMap(value)
            self.policySet = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetPolicySetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPolicySetResponseBody?

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
            var model = GetPolicySetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetRoleRequest : Tea.TeaModel {
    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetRoleResponseBody : Tea.TeaModel {
    public class Role : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var roleId: String?

        public var roleName: String?

        public var type: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var role: GetRoleResponseBody.Role?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.role?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.role != nil {
            map["Role"] = self.role?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Role"] as? [String: Any?] {
            var model = GetRoleResponseBody.Role()
            model.fromMap(value)
            self.role = model
        }
    }
}

public class GetRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRoleResponseBody?

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
            var model = GetRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSAMLIdentityProviderRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SSOIdentityProviderConfiguration : Tea.TeaModel {
        public class X509Certificates : Tea.TeaModel {
            public var certificateId: String?

            public var x509Certificate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificateId != nil {
                    map["CertificateId"] = self.certificateId!
                }
                if self.x509Certificate != nil {
                    map["X509Certificate"] = self.x509Certificate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertificateId"] as? String {
                    self.certificateId = value
                }
                if let value = dict["X509Certificate"] as? String {
                    self.x509Certificate = value
                }
            }
        }
        public var entityId: String?

        public var JITProvisionStatus: String?

        public var JITUpdateStatus: String?

        public var loginURL: String?

        public var SAMLBindingType: String?

        public var SSOStatus: String?

        public var x509Certificates: [GetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.JITProvisionStatus != nil {
                map["JITProvisionStatus"] = self.JITProvisionStatus!
            }
            if self.JITUpdateStatus != nil {
                map["JITUpdateStatus"] = self.JITUpdateStatus!
            }
            if self.loginURL != nil {
                map["LoginURL"] = self.loginURL!
            }
            if self.SAMLBindingType != nil {
                map["SAMLBindingType"] = self.SAMLBindingType!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            if self.x509Certificates != nil {
                var tmp : [Any] = []
                for k in self.x509Certificates! {
                    tmp.append(k.toMap())
                }
                map["X509Certificates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["JITProvisionStatus"] as? String {
                self.JITProvisionStatus = value
            }
            if let value = dict["JITUpdateStatus"] as? String {
                self.JITUpdateStatus = value
            }
            if let value = dict["LoginURL"] as? String {
                self.loginURL = value
            }
            if let value = dict["SAMLBindingType"] as? String {
                self.SAMLBindingType = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
            if let value = dict["X509Certificates"] as? [Any?] {
                var tmp : [GetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates] = []
                for v in value {
                    if v != nil {
                        var model = GetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.x509Certificates = tmp
            }
        }
    }
    public var requestId: String?

    public var SSOIdentityProviderConfiguration: GetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SSOIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SSOIdentityProviderConfiguration != nil {
            map["SSOIdentityProviderConfiguration"] = self.SSOIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SSOIdentityProviderConfiguration"] as? [String: Any?] {
            var model = GetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration()
            model.fromMap(value)
            self.SSOIdentityProviderConfiguration = model
        }
    }
}

public class GetSAMLIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSAMLIdentityProviderResponseBody?

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
            var model = GetSAMLIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSAMLServiceProviderInfoRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetSAMLServiceProviderInfoResponseBody : Tea.TeaModel {
    public class SAMLServiceProviderInfo : Tea.TeaModel {
        public var ACSURL: String?

        public var entityId: String?

        public var SPMetadataDocument: String?

        public var userPoolId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ACSURL != nil {
                map["ACSURL"] = self.ACSURL!
            }
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.SPMetadataDocument != nil {
                map["SPMetadataDocument"] = self.SPMetadataDocument!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ACSURL"] as? String {
                self.ACSURL = value
            }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["SPMetadataDocument"] as? String {
                self.SPMetadataDocument = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
        }
    }
    public var requestId: String?

    public var SAMLServiceProviderInfo: GetSAMLServiceProviderInfoResponseBody.SAMLServiceProviderInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLServiceProviderInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLServiceProviderInfo != nil {
            map["SAMLServiceProviderInfo"] = self.SAMLServiceProviderInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLServiceProviderInfo"] as? [String: Any?] {
            var model = GetSAMLServiceProviderInfoResponseBody.SAMLServiceProviderInfo()
            model.fromMap(value)
            self.SAMLServiceProviderInfo = model
        }
    }
}

public class GetSAMLServiceProviderInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSAMLServiceProviderInfoResponseBody?

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
            var model = GetSAMLServiceProviderInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetSpecificIdentityProviderRequest : Tea.TeaModel {
    public var identityProviderType: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetSpecificIdentityProviderResponseBody : Tea.TeaModel {
    public class SpecificIdentityProviderConfiguration : Tea.TeaModel {
        public var IDPMetadata: String?

        public var identityProviderType: String?

        public var SSOStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IDPMetadata != nil {
                map["IDPMetadata"] = self.IDPMetadata!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IDPMetadata"] as? String {
                self.IDPMetadata = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
        }
    }
    public var requestId: String?

    public var specificIdentityProviderConfiguration: GetSpecificIdentityProviderResponseBody.SpecificIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.specificIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specificIdentityProviderConfiguration != nil {
            map["SpecificIdentityProviderConfiguration"] = self.specificIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpecificIdentityProviderConfiguration"] as? [String: Any?] {
            var model = GetSpecificIdentityProviderResponseBody.SpecificIdentityProviderConfiguration()
            model.fromMap(value)
            self.specificIdentityProviderConfiguration = model
        }
    }
}

public class GetSpecificIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSpecificIdentityProviderResponseBody?

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
            var model = GetSpecificIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetTokenVaultRequest : Tea.TeaModel {
    public var tokenVaultName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class GetTokenVaultResponseBody : Tea.TeaModel {
    public class TokenVault : Tea.TeaModel {
        public class EncryptionConfig : Tea.TeaModel {
            public var keyType: String?

            public var kmsKeyArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keyType != nil {
                    map["KeyType"] = self.keyType!
                }
                if self.kmsKeyArn != nil {
                    map["KmsKeyArn"] = self.kmsKeyArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KeyType"] as? String {
                    self.keyType = value
                }
                if let value = dict["KmsKeyArn"] as? String {
                    self.kmsKeyArn = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var encryptionConfig: GetTokenVaultResponseBody.TokenVault.EncryptionConfig?

        public var roleArn: String?

        public var tokenVaultArn: String?

        public var tokenVaultName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryptionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encryptionConfig != nil {
                map["EncryptionConfig"] = self.encryptionConfig?.toMap()
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.tokenVaultArn != nil {
                map["TokenVaultArn"] = self.tokenVaultArn!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EncryptionConfig"] as? [String: Any?] {
                var model = GetTokenVaultResponseBody.TokenVault.EncryptionConfig()
                model.fromMap(value)
                self.encryptionConfig = model
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["TokenVaultArn"] as? String {
                self.tokenVaultArn = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var requestId: String?

    public var tokenVault: GetTokenVaultResponseBody.TokenVault?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tokenVault?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenVault != nil {
            map["TokenVault"] = self.tokenVault?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TokenVault"] as? [String: Any?] {
            var model = GetTokenVaultResponseBody.TokenVault()
            model.fromMap(value)
            self.tokenVault = model
        }
    }
}

public class GetTokenVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetTokenVaultResponseBody?

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
            var model = GetTokenVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var userId: String?

    public var userName: String?

    public var userPoolId: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolId != nil {
            map["UserPoolId"] = self.userPoolId!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserPoolId"] as? String {
            self.userPoolId = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var requestId: String?

    public var user: GetUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = GetUserResponseBody.User()
            model.fromMap(value)
            self.user = model
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
            var model = GetUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserPoolRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetUserPoolResponseBody : Tea.TeaModel {
    public class UserPool : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var sourcePlatform: String?

        public var updateTime: String?

        public var userPoolId: String?

        public var userPoolName: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var requestId: String?

    public var userPool: GetUserPoolResponseBody.UserPool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userPool?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userPool != nil {
            map["UserPool"] = self.userPool?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserPool"] as? [String: Any?] {
            var model = GetUserPoolResponseBody.UserPool()
            model.fromMap(value)
            self.userPool = model
        }
    }
}

public class GetUserPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserPoolResponseBody?

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
            var model = GetUserPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserPoolClientRequest : Tea.TeaModel {
    public var clientName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetUserPoolClientResponseBody : Tea.TeaModel {
    public class Client : Tea.TeaModel {
        public class ClientScopes : Tea.TeaModel {
            public var description_: String?

            public var scopeName: String?

            public override init() {
                super.init()
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
                if self.scopeName != nil {
                    map["ScopeName"] = self.scopeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ScopeName"] as? String {
                    self.scopeName = value
                }
            }
        }
        public var accessTokenValidity: String?

        public var clientId: String?

        public var clientName: String?

        public var clientScopes: [GetUserPoolClientResponseBody.Client.ClientScopes]?

        public var clientType: String?

        public var createTime: String?

        public var enforcePKCE: Bool?

        public var redirectURIs: [String]?

        public var refreshTokenValidity: String?

        public var secretRequired: Bool?

        public var updateTime: String?

        public var userPoolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientName != nil {
                map["ClientName"] = self.clientName!
            }
            if self.clientScopes != nil {
                var tmp : [Any] = []
                for k in self.clientScopes! {
                    tmp.append(k.toMap())
                }
                map["ClientScopes"] = tmp
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enforcePKCE != nil {
                map["EnforcePKCE"] = self.enforcePKCE!
            }
            if self.redirectURIs != nil {
                map["RedirectURIs"] = self.redirectURIs!
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? String {
                self.accessTokenValidity = value
            }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientName"] as? String {
                self.clientName = value
            }
            if let value = dict["ClientScopes"] as? [Any?] {
                var tmp : [GetUserPoolClientResponseBody.Client.ClientScopes] = []
                for v in value {
                    if v != nil {
                        var model = GetUserPoolClientResponseBody.Client.ClientScopes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clientScopes = tmp
            }
            if let value = dict["ClientType"] as? String {
                self.clientType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnforcePKCE"] as? Bool {
                self.enforcePKCE = value
            }
            if let value = dict["RedirectURIs"] as? [String] {
                self.redirectURIs = value
            }
            if let value = dict["RefreshTokenValidity"] as? String {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var client: GetUserPoolClientResponseBody.Client?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.client?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.client != nil {
            map["Client"] = self.client?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Client"] as? [String: Any?] {
            var model = GetUserPoolClientResponseBody.Client()
            model.fromMap(value)
            self.client = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetUserPoolClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserPoolClientResponseBody?

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
            var model = GetUserPoolClientResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserPoolSyncJobRequest : Tea.TeaModel {
    public var synchronizationJobId: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SynchronizationJobId"] as? String {
            self.synchronizationJobId = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class GetUserPoolSyncJobResponseBody : Tea.TeaModel {
    public class SynchronizationJob : Tea.TeaModel {
        public class JobSummary : Tea.TeaModel {
            public var created: String?

            public var deleted: String?

            public var same: String?

            public var updated: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.created != nil {
                    map["Created"] = self.created!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.same != nil {
                    map["Same"] = self.same!
                }
                if self.updated != nil {
                    map["Updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Created"] as? String {
                    self.created = value
                }
                if let value = dict["Deleted"] as? String {
                    self.deleted = value
                }
                if let value = dict["Same"] as? String {
                    self.same = value
                }
                if let value = dict["Updated"] as? String {
                    self.updated = value
                }
            }
        }
        public var endTime: String?

        public var errorMessage: String?

        public var identityProviderType: String?

        public var jobSummary: GetUserPoolSyncJobResponseBody.SynchronizationJob.JobSummary?

        public var startTime: String?

        public var status: String?

        public var synchronizationJobId: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobSummary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.jobSummary != nil {
                map["JobSummary"] = self.jobSummary?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.synchronizationJobId != nil {
                map["SynchronizationJobId"] = self.synchronizationJobId!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["JobSummary"] as? [String: Any?] {
                var model = GetUserPoolSyncJobResponseBody.SynchronizationJob.JobSummary()
                model.fromMap(value)
                self.jobSummary = model
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SynchronizationJobId"] as? String {
                self.synchronizationJobId = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
        }
    }
    public var requestId: String?

    public var synchronizationJob: GetUserPoolSyncJobResponseBody.SynchronizationJob?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.synchronizationJob?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationJob != nil {
            map["SynchronizationJob"] = self.synchronizationJob?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SynchronizationJob"] as? [String: Any?] {
            var model = GetUserPoolSyncJobResponseBody.SynchronizationJob()
            model.fromMap(value)
            self.synchronizationJob = model
        }
    }
}

public class GetUserPoolSyncJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserPoolSyncJobResponseBody?

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
            var model = GetUserPoolSyncJobResponseBody()
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

        public var sessionBindingEnabled: Bool?

        public var sourceAgentArn: String?

        public var sourcePlatform: String?

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
            if self.sessionBindingEnabled != nil {
                map["SessionBindingEnabled"] = self.sessionBindingEnabled!
            }
            if self.sourceAgentArn != nil {
                map["SourceAgentArn"] = self.sourceAgentArn!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
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
            if let value = dict["SessionBindingEnabled"] as? Bool {
                self.sessionBindingEnabled = value
            }
            if let value = dict["SourceAgentArn"] as? String {
                self.sourceAgentArn = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
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

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class ListAPIKeyCredentialProvidersResponseBody : Tea.TeaModel {
    public class APIKeyCredentialProviders : Tea.TeaModel {
        public var APIKeyCredentialProviderName: String?

        public var createTime: String?

        public var credentialProviderArn: String?

        public var description_: String?

        public var tokenVaultName: String?

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
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class ListClientSecretsRequest : Tea.TeaModel {
    public var clientName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListClientSecretsResponseBody : Tea.TeaModel {
    public class ClientSecrets : Tea.TeaModel {
        public var clientId: String?

        public var clientName: String?

        public var clientSecretId: String?

        public var createTime: String?

        public var userPoolName: String?

        public override init() {
            super.init()
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
            if self.clientName != nil {
                map["ClientName"] = self.clientName!
            }
            if self.clientSecretId != nil {
                map["ClientSecretId"] = self.clientSecretId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientName"] as? String {
                self.clientName = value
            }
            if let value = dict["ClientSecretId"] as? String {
                self.clientSecretId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var clientSecrets: [ListClientSecretsResponseBody.ClientSecrets]?

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
        if self.clientSecrets != nil {
            var tmp : [Any] = []
            for k in self.clientSecrets! {
                tmp.append(k.toMap())
            }
            map["ClientSecrets"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientSecrets"] as? [Any?] {
            var tmp : [ListClientSecretsResponseBody.ClientSecrets] = []
            for v in value {
                if v != nil {
                    var model = ListClientSecretsResponseBody.ClientSecrets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clientSecrets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListClientSecretsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClientSecretsResponseBody?

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
            var model = ListClientSecretsResponseBody()
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

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

        public var OAuthType: String?

        public var tokenVaultName: String?

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
            if self.OAuthType != nil {
                map["OAuthType"] = self.OAuthType!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
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
            if let value = dict["OAuthType"] as? String {
                self.OAuthType = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
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

public class ListPoliciesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var policySetName: String?

    public override init() {
        super.init()
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
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
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
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class ListPoliciesResponseBody : Tea.TeaModel {
    public class Policies : Tea.TeaModel {
        public var createTime: String?

        public var definition: Definition?

        public var description_: String?

        public var policyArn: String?

        public var policyName: String?

        public var policySetName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.definition?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.definition != nil {
                map["Definition"] = self.definition?.toMap()
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policyArn != nil {
                map["PolicyArn"] = self.policyArn!
            }
            if self.policyName != nil {
                map["PolicyName"] = self.policyName!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Definition"] as? [String: Any?] {
                var model = Definition()
                model.fromMap(value)
                self.definition = model
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicyArn"] as? String {
                self.policyArn = value
            }
            if let value = dict["PolicyName"] as? String {
                self.policyName = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var policies: [ListPoliciesResponseBody.Policies]?

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
        if self.policies != nil {
            var tmp : [Any] = []
            for k in self.policies! {
                tmp.append(k.toMap())
            }
            map["Policies"] = tmp
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
        if let value = dict["Policies"] as? [Any?] {
            var tmp : [ListPoliciesResponseBody.Policies] = []
            for v in value {
                if v != nil {
                    var model = ListPoliciesResponseBody.Policies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPoliciesResponseBody?

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
            var model = ListPoliciesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicySetAttachedGatewaysRequest : Tea.TeaModel {
    public var gatewayType: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class ListPolicySetAttachedGatewaysResponseBody : Tea.TeaModel {
    public class AttachedGateways : Tea.TeaModel {
        public var attachedPolicySetName: String?

        public var attachedTime: String?

        public var enforcementMode: String?

        public var gatewayArn: String?

        public var gatewayType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.attachedPolicySetName != nil {
                map["AttachedPolicySetName"] = self.attachedPolicySetName!
            }
            if self.attachedTime != nil {
                map["AttachedTime"] = self.attachedTime!
            }
            if self.enforcementMode != nil {
                map["EnforcementMode"] = self.enforcementMode!
            }
            if self.gatewayArn != nil {
                map["GatewayArn"] = self.gatewayArn!
            }
            if self.gatewayType != nil {
                map["GatewayType"] = self.gatewayType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AttachedPolicySetName"] as? String {
                self.attachedPolicySetName = value
            }
            if let value = dict["AttachedTime"] as? String {
                self.attachedTime = value
            }
            if let value = dict["EnforcementMode"] as? String {
                self.enforcementMode = value
            }
            if let value = dict["GatewayArn"] as? String {
                self.gatewayArn = value
            }
            if let value = dict["GatewayType"] as? String {
                self.gatewayType = value
            }
        }
    }
    public var attachedGateways: [ListPolicySetAttachedGatewaysResponseBody.AttachedGateways]?

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
        if self.attachedGateways != nil {
            var tmp : [Any] = []
            for k in self.attachedGateways! {
                tmp.append(k.toMap())
            }
            map["AttachedGateways"] = tmp
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
        if let value = dict["AttachedGateways"] as? [Any?] {
            var tmp : [ListPolicySetAttachedGatewaysResponseBody.AttachedGateways] = []
            for v in value {
                if v != nil {
                    var model = ListPolicySetAttachedGatewaysResponseBody.AttachedGateways()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachedGateways = tmp
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

public class ListPolicySetAttachedGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicySetAttachedGatewaysResponseBody?

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
            var model = ListPolicySetAttachedGatewaysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListPolicySetsRequest : Tea.TeaModel {
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

public class ListPolicySetsResponseBody : Tea.TeaModel {
    public class PolicySets : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var policySetArn: String?

        public var policySetName: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.policySetArn != nil {
                map["PolicySetArn"] = self.policySetArn!
            }
            if self.policySetName != nil {
                map["PolicySetName"] = self.policySetName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["PolicySetArn"] as? String {
                self.policySetArn = value
            }
            if let value = dict["PolicySetName"] as? String {
                self.policySetName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var policySets: [ListPolicySetsResponseBody.PolicySets]?

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
        if self.policySets != nil {
            var tmp : [Any] = []
            for k in self.policySets! {
                tmp.append(k.toMap())
            }
            map["PolicySets"] = tmp
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
        if let value = dict["PolicySets"] as? [Any?] {
            var tmp : [ListPolicySetsResponseBody.PolicySets] = []
            for v in value {
                if v != nil {
                    var model = ListPolicySetsResponseBody.PolicySets()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.policySets = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListPolicySetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPolicySetsResponseBody?

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
            var model = ListPolicySetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRoleAssignmentsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var principalName: String?

    public var principalType: String?

    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.principalName != nil {
            map["PrincipalName"] = self.principalName!
        }
        if self.principalType != nil {
            map["PrincipalType"] = self.principalType!
        }
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
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
        if let value = dict["PrincipalName"] as? String {
            self.principalName = value
        }
        if let value = dict["PrincipalType"] as? String {
            self.principalType = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListRoleAssignmentsResponseBody : Tea.TeaModel {
    public class Assignments : Tea.TeaModel {
        public var createTime: String?

        public var principalId: String?

        public var principalName: String?

        public var principalType: String?

        public var roleId: String?

        public var roleName: String?

        public var userPoolId: String?

        public override init() {
            super.init()
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
            if self.principalId != nil {
                map["PrincipalId"] = self.principalId!
            }
            if self.principalName != nil {
                map["PrincipalName"] = self.principalName!
            }
            if self.principalType != nil {
                map["PrincipalType"] = self.principalType!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["PrincipalId"] as? String {
                self.principalId = value
            }
            if let value = dict["PrincipalName"] as? String {
                self.principalName = value
            }
            if let value = dict["PrincipalType"] as? String {
                self.principalType = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
        }
    }
    public var assignments: [ListRoleAssignmentsResponseBody.Assignments]?

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
        if self.assignments != nil {
            var tmp : [Any] = []
            for k in self.assignments! {
                tmp.append(k.toMap())
            }
            map["Assignments"] = tmp
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
        if let value = dict["Assignments"] as? [Any?] {
            var tmp : [ListRoleAssignmentsResponseBody.Assignments] = []
            for v in value {
                if v != nil {
                    var model = ListRoleAssignmentsResponseBody.Assignments()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.assignments = tmp
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

public class ListRoleAssignmentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRoleAssignmentsResponseBody?

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
            var model = ListRoleAssignmentsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRolesRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
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
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListRolesResponseBody : Tea.TeaModel {
    public class Roles : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var roleId: String?

        public var roleName: String?

        public var type: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.roleId != nil {
                map["RoleId"] = self.roleId!
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["RoleId"] as? String {
                self.roleId = value
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var roles: [ListRolesResponseBody.Roles]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roles != nil {
            var tmp : [Any] = []
            for k in self.roles! {
                tmp.append(k.toMap())
            }
            map["Roles"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Roles"] as? [Any?] {
            var tmp : [ListRolesResponseBody.Roles] = []
            for v in value {
                if v != nil {
                    var model = ListRolesResponseBody.Roles()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.roles = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRolesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRolesResponseBody?

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
            var model = ListRolesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSAMLIdentityProviderCertificatesRequest : Tea.TeaModel {
    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListSAMLIdentityProviderCertificatesResponseBody : Tea.TeaModel {
    public class X509Certificates : Tea.TeaModel {
        public var certificateId: String?

        public var x509Certificate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.x509Certificate != nil {
                map["X509Certificate"] = self.x509Certificate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
            if let value = dict["X509Certificate"] as? String {
                self.x509Certificate = value
            }
        }
    }
    public var requestId: String?

    public var x509Certificates: [ListSAMLIdentityProviderCertificatesResponseBody.X509Certificates]?

    public override init() {
        super.init()
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
        if self.x509Certificates != nil {
            var tmp : [Any] = []
            for k in self.x509Certificates! {
                tmp.append(k.toMap())
            }
            map["X509Certificates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["X509Certificates"] as? [Any?] {
            var tmp : [ListSAMLIdentityProviderCertificatesResponseBody.X509Certificates] = []
            for v in value {
                if v != nil {
                    var model = ListSAMLIdentityProviderCertificatesResponseBody.X509Certificates()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.x509Certificates = tmp
        }
    }
}

public class ListSAMLIdentityProviderCertificatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSAMLIdentityProviderCertificatesResponseBody?

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
            var model = ListSAMLIdentityProviderCertificatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTokenVaultsRequest : Tea.TeaModel {
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

public class ListTokenVaultsResponseBody : Tea.TeaModel {
    public class TokenVaults : Tea.TeaModel {
        public class EncryptionConfig : Tea.TeaModel {
            public var keyType: String?

            public var kmsKeyArn: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.keyType != nil {
                    map["KeyType"] = self.keyType!
                }
                if self.kmsKeyArn != nil {
                    map["KmsKeyArn"] = self.kmsKeyArn!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["KeyType"] as? String {
                    self.keyType = value
                }
                if let value = dict["KmsKeyArn"] as? String {
                    self.kmsKeyArn = value
                }
            }
        }
        public var createTime: String?

        public var description_: String?

        public var encryptionConfig: ListTokenVaultsResponseBody.TokenVaults.EncryptionConfig?

        public var roleArn: String?

        public var tokenVaultArn: String?

        public var tokenVaultName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.encryptionConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encryptionConfig != nil {
                map["EncryptionConfig"] = self.encryptionConfig?.toMap()
            }
            if self.roleArn != nil {
                map["RoleArn"] = self.roleArn!
            }
            if self.tokenVaultArn != nil {
                map["TokenVaultArn"] = self.tokenVaultArn!
            }
            if self.tokenVaultName != nil {
                map["TokenVaultName"] = self.tokenVaultName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EncryptionConfig"] as? [String: Any?] {
                var model = ListTokenVaultsResponseBody.TokenVaults.EncryptionConfig()
                model.fromMap(value)
                self.encryptionConfig = model
            }
            if let value = dict["RoleArn"] as? String {
                self.roleArn = value
            }
            if let value = dict["TokenVaultArn"] as? String {
                self.tokenVaultArn = value
            }
            if let value = dict["TokenVaultName"] as? String {
                self.tokenVaultName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var tokenVaults: [ListTokenVaultsResponseBody.TokenVaults]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tokenVaults != nil {
            var tmp : [Any] = []
            for k in self.tokenVaults! {
                tmp.append(k.toMap())
            }
            map["TokenVaults"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TokenVaults"] as? [Any?] {
            var tmp : [ListTokenVaultsResponseBody.TokenVaults] = []
            for v in value {
                if v != nil {
                    var model = ListTokenVaultsResponseBody.TokenVaults()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tokenVaults = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTokenVaultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTokenVaultsResponseBody?

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
            var model = ListTokenVaultsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserPoolClientsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
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
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListUserPoolClientsResponseBody : Tea.TeaModel {
    public class Clients : Tea.TeaModel {
        public class ClientScopes : Tea.TeaModel {
            public var description_: String?

            public var scopeName: String?

            public override init() {
                super.init()
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
                if self.scopeName != nil {
                    map["ScopeName"] = self.scopeName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["ScopeName"] as? String {
                    self.scopeName = value
                }
            }
        }
        public var accessTokenValidity: String?

        public var clientId: String?

        public var clientName: String?

        public var clientScopes: [ListUserPoolClientsResponseBody.Clients.ClientScopes]?

        public var clientType: String?

        public var createTime: String?

        public var enforcePKCE: Bool?

        public var redirectURIs: [String]?

        public var refreshTokenValidity: String?

        public var secretRequired: Bool?

        public var updateTime: String?

        public var userPoolName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.clientId != nil {
                map["ClientId"] = self.clientId!
            }
            if self.clientName != nil {
                map["ClientName"] = self.clientName!
            }
            if self.clientScopes != nil {
                var tmp : [Any] = []
                for k in self.clientScopes! {
                    tmp.append(k.toMap())
                }
                map["ClientScopes"] = tmp
            }
            if self.clientType != nil {
                map["ClientType"] = self.clientType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enforcePKCE != nil {
                map["EnforcePKCE"] = self.enforcePKCE!
            }
            if self.redirectURIs != nil {
                map["RedirectURIs"] = self.redirectURIs!
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessTokenValidity"] as? String {
                self.accessTokenValidity = value
            }
            if let value = dict["ClientId"] as? String {
                self.clientId = value
            }
            if let value = dict["ClientName"] as? String {
                self.clientName = value
            }
            if let value = dict["ClientScopes"] as? [Any?] {
                var tmp : [ListUserPoolClientsResponseBody.Clients.ClientScopes] = []
                for v in value {
                    if v != nil {
                        var model = ListUserPoolClientsResponseBody.Clients.ClientScopes()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.clientScopes = tmp
            }
            if let value = dict["ClientType"] as? String {
                self.clientType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnforcePKCE"] as? Bool {
                self.enforcePKCE = value
            }
            if let value = dict["RedirectURIs"] as? [String] {
                self.redirectURIs = value
            }
            if let value = dict["RefreshTokenValidity"] as? String {
                self.refreshTokenValidity = value
            }
            if let value = dict["SecretRequired"] as? Bool {
                self.secretRequired = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var clients: [ListUserPoolClientsResponseBody.Clients]?

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
        if self.clients != nil {
            var tmp : [Any] = []
            for k in self.clients! {
                tmp.append(k.toMap())
            }
            map["Clients"] = tmp
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
        if let value = dict["Clients"] as? [Any?] {
            var tmp : [ListUserPoolClientsResponseBody.Clients] = []
            for v in value {
                if v != nil {
                    var model = ListUserPoolClientsResponseBody.Clients()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clients = tmp
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

public class ListUserPoolClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserPoolClientsResponseBody?

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
            var model = ListUserPoolClientsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserPoolSyncJobsRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
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
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListUserPoolSyncJobsResponseBody : Tea.TeaModel {
    public class SynchronizationJobs : Tea.TeaModel {
        public class JobSummary : Tea.TeaModel {
            public var created: String?

            public var deleted: String?

            public var same: String?

            public var updated: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.created != nil {
                    map["Created"] = self.created!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.same != nil {
                    map["Same"] = self.same!
                }
                if self.updated != nil {
                    map["Updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Created"] as? String {
                    self.created = value
                }
                if let value = dict["Deleted"] as? String {
                    self.deleted = value
                }
                if let value = dict["Same"] as? String {
                    self.same = value
                }
                if let value = dict["Updated"] as? String {
                    self.updated = value
                }
            }
        }
        public var endTime: String?

        public var errorMessage: String?

        public var identityProviderType: String?

        public var jobSummary: ListUserPoolSyncJobsResponseBody.SynchronizationJobs.JobSummary?

        public var startTime: String?

        public var status: String?

        public var synchronizationJobId: String?

        public var triggerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobSummary?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.jobSummary != nil {
                map["JobSummary"] = self.jobSummary?.toMap()
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.synchronizationJobId != nil {
                map["SynchronizationJobId"] = self.synchronizationJobId!
            }
            if self.triggerType != nil {
                map["TriggerType"] = self.triggerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["JobSummary"] as? [String: Any?] {
                var model = ListUserPoolSyncJobsResponseBody.SynchronizationJobs.JobSummary()
                model.fromMap(value)
                self.jobSummary = model
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["SynchronizationJobId"] as? String {
                self.synchronizationJobId = value
            }
            if let value = dict["TriggerType"] as? String {
                self.triggerType = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var synchronizationJobs: [ListUserPoolSyncJobsResponseBody.SynchronizationJobs]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.synchronizationJobs != nil {
            var tmp : [Any] = []
            for k in self.synchronizationJobs! {
                tmp.append(k.toMap())
            }
            map["SynchronizationJobs"] = tmp
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SynchronizationJobs"] as? [Any?] {
            var tmp : [ListUserPoolSyncJobsResponseBody.SynchronizationJobs] = []
            for v in value {
                if v != nil {
                    var model = ListUserPoolSyncJobsResponseBody.SynchronizationJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.synchronizationJobs = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListUserPoolSyncJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserPoolSyncJobsResponseBody?

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
            var model = ListUserPoolSyncJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUserPoolsRequest : Tea.TeaModel {
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

public class ListUserPoolsResponseBody : Tea.TeaModel {
    public class UserPools : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var sourcePlatform: String?

        public var updateTime: String?

        public var userPoolId: String?

        public var userPoolName: String?

        public override init() {
            super.init()
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
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.userPoolId != nil {
                map["UserPoolId"] = self.userPoolId!
            }
            if self.userPoolName != nil {
                map["UserPoolName"] = self.userPoolName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserPoolId"] as? String {
                self.userPoolId = value
            }
            if let value = dict["UserPoolName"] as? String {
                self.userPoolName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var userPools: [ListUserPoolsResponseBody.UserPools]?

    public override init() {
        super.init()
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
        if self.userPools != nil {
            var tmp : [Any] = []
            for k in self.userPools! {
                tmp.append(k.toMap())
            }
            map["UserPools"] = tmp
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
        if let value = dict["UserPools"] as? [Any?] {
            var tmp : [ListUserPoolsResponseBody.UserPools] = []
            for v in value {
                if v != nil {
                    var model = ListUserPoolsResponseBody.UserPools()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userPools = tmp
        }
    }
}

public class ListUserPoolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserPoolsResponseBody?

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
            var model = ListUserPoolsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var maxResults: Int32?

    public var nextToken: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
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
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: Int32?

    public var users: [ListUsersResponseBody.Users]?

    public override init() {
        super.init()
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
        if let value = dict["Users"] as? [Any?] {
            var tmp : [ListUsersResponseBody.Users] = []
            for v in value {
                if v != nil {
                    var model = ListUsersResponseBody.Users()
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
            var model = ListUsersResponseBody()
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

        public var sessionBindingEnabled: Bool?

        public var sourceAgentArn: String?

        public var sourcePlatform: String?

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
            if self.sessionBindingEnabled != nil {
                map["SessionBindingEnabled"] = self.sessionBindingEnabled!
            }
            if self.sourceAgentArn != nil {
                map["SourceAgentArn"] = self.sourceAgentArn!
            }
            if self.sourcePlatform != nil {
                map["SourcePlatform"] = self.sourcePlatform!
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
            if let value = dict["SessionBindingEnabled"] as? Bool {
                self.sessionBindingEnabled = value
            }
            if let value = dict["SourceAgentArn"] as? String {
                self.sourceAgentArn = value
            }
            if let value = dict["SourcePlatform"] as? String {
                self.sourcePlatform = value
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

public class RunUserPoolSyncJobRequest : Tea.TeaModel {
    public var identityProviderType: String?

    public var maxSyncUsers: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.maxSyncUsers != nil {
            map["MaxSyncUsers"] = self.maxSyncUsers!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["MaxSyncUsers"] as? String {
            self.maxSyncUsers = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class RunUserPoolSyncJobResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var synchronizationJobId: String?

    public override init() {
        super.init()
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
        if self.synchronizationJobId != nil {
            map["SynchronizationJobId"] = self.synchronizationJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SynchronizationJobId"] as? String {
            self.synchronizationJobId = value
        }
    }
}

public class RunUserPoolSyncJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunUserPoolSyncJobResponseBody?

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
            var model = RunUserPoolSyncJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSAMLIdentityProviderRequest : Tea.TeaModel {
    public var entityId: String?

    public var JITProvisionStatus: String?

    public var JITUpdateStatus: String?

    public var loginURL: String?

    public var SAMLBindingType: String?

    public var SSOStatus: String?

    public var userPoolName: String?

    public var x509Certificates: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.JITProvisionStatus != nil {
            map["JITProvisionStatus"] = self.JITProvisionStatus!
        }
        if self.JITUpdateStatus != nil {
            map["JITUpdateStatus"] = self.JITUpdateStatus!
        }
        if self.loginURL != nil {
            map["LoginURL"] = self.loginURL!
        }
        if self.SAMLBindingType != nil {
            map["SAMLBindingType"] = self.SAMLBindingType!
        }
        if self.SSOStatus != nil {
            map["SSOStatus"] = self.SSOStatus!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        if self.x509Certificates != nil {
            map["X509Certificates"] = self.x509Certificates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["JITProvisionStatus"] as? String {
            self.JITProvisionStatus = value
        }
        if let value = dict["JITUpdateStatus"] as? String {
            self.JITUpdateStatus = value
        }
        if let value = dict["LoginURL"] as? String {
            self.loginURL = value
        }
        if let value = dict["SAMLBindingType"] as? String {
            self.SAMLBindingType = value
        }
        if let value = dict["SSOStatus"] as? String {
            self.SSOStatus = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
        if let value = dict["X509Certificates"] as? [String] {
            self.x509Certificates = value
        }
    }
}

public class SetSAMLIdentityProviderShrinkRequest : Tea.TeaModel {
    public var entityId: String?

    public var JITProvisionStatus: String?

    public var JITUpdateStatus: String?

    public var loginURL: String?

    public var SAMLBindingType: String?

    public var SSOStatus: String?

    public var userPoolName: String?

    public var x509CertificatesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.entityId != nil {
            map["EntityId"] = self.entityId!
        }
        if self.JITProvisionStatus != nil {
            map["JITProvisionStatus"] = self.JITProvisionStatus!
        }
        if self.JITUpdateStatus != nil {
            map["JITUpdateStatus"] = self.JITUpdateStatus!
        }
        if self.loginURL != nil {
            map["LoginURL"] = self.loginURL!
        }
        if self.SAMLBindingType != nil {
            map["SAMLBindingType"] = self.SAMLBindingType!
        }
        if self.SSOStatus != nil {
            map["SSOStatus"] = self.SSOStatus!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        if self.x509CertificatesShrink != nil {
            map["X509Certificates"] = self.x509CertificatesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EntityId"] as? String {
            self.entityId = value
        }
        if let value = dict["JITProvisionStatus"] as? String {
            self.JITProvisionStatus = value
        }
        if let value = dict["JITUpdateStatus"] as? String {
            self.JITUpdateStatus = value
        }
        if let value = dict["LoginURL"] as? String {
            self.loginURL = value
        }
        if let value = dict["SAMLBindingType"] as? String {
            self.SAMLBindingType = value
        }
        if let value = dict["SSOStatus"] as? String {
            self.SSOStatus = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
        if let value = dict["X509Certificates"] as? String {
            self.x509CertificatesShrink = value
        }
    }
}

public class SetSAMLIdentityProviderResponseBody : Tea.TeaModel {
    public class SSOIdentityProviderConfiguration : Tea.TeaModel {
        public class X509Certificates : Tea.TeaModel {
            public var certificateId: String?

            public var x509Certificate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.certificateId != nil {
                    map["CertificateId"] = self.certificateId!
                }
                if self.x509Certificate != nil {
                    map["X509Certificate"] = self.x509Certificate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CertificateId"] as? String {
                    self.certificateId = value
                }
                if let value = dict["X509Certificate"] as? String {
                    self.x509Certificate = value
                }
            }
        }
        public var entityId: String?

        public var JITProvisionStatus: String?

        public var JITUpdateStatus: String?

        public var loginURL: String?

        public var SAMLBindingType: String?

        public var SSOStatus: String?

        public var x509Certificates: [SetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.entityId != nil {
                map["EntityId"] = self.entityId!
            }
            if self.JITProvisionStatus != nil {
                map["JITProvisionStatus"] = self.JITProvisionStatus!
            }
            if self.JITUpdateStatus != nil {
                map["JITUpdateStatus"] = self.JITUpdateStatus!
            }
            if self.loginURL != nil {
                map["LoginURL"] = self.loginURL!
            }
            if self.SAMLBindingType != nil {
                map["SAMLBindingType"] = self.SAMLBindingType!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            if self.x509Certificates != nil {
                var tmp : [Any] = []
                for k in self.x509Certificates! {
                    tmp.append(k.toMap())
                }
                map["X509Certificates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EntityId"] as? String {
                self.entityId = value
            }
            if let value = dict["JITProvisionStatus"] as? String {
                self.JITProvisionStatus = value
            }
            if let value = dict["JITUpdateStatus"] as? String {
                self.JITUpdateStatus = value
            }
            if let value = dict["LoginURL"] as? String {
                self.loginURL = value
            }
            if let value = dict["SAMLBindingType"] as? String {
                self.SAMLBindingType = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
            if let value = dict["X509Certificates"] as? [Any?] {
                var tmp : [SetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates] = []
                for v in value {
                    if v != nil {
                        var model = SetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration.X509Certificates()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.x509Certificates = tmp
            }
        }
    }
    public var requestId: String?

    public var SSOIdentityProviderConfiguration: SetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SSOIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SSOIdentityProviderConfiguration != nil {
            map["SSOIdentityProviderConfiguration"] = self.SSOIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SSOIdentityProviderConfiguration"] as? [String: Any?] {
            var model = SetSAMLIdentityProviderResponseBody.SSOIdentityProviderConfiguration()
            model.fromMap(value)
            self.SSOIdentityProviderConfiguration = model
        }
    }
}

public class SetSAMLIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSAMLIdentityProviderResponseBody?

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
            var model = SetSAMLIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetSpecificIdentityProviderRequest : Tea.TeaModel {
    public var IDPMetadata: String?

    public var identityProviderType: String?

    public var SSOStatus: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.IDPMetadata != nil {
            map["IDPMetadata"] = self.IDPMetadata!
        }
        if self.identityProviderType != nil {
            map["IdentityProviderType"] = self.identityProviderType!
        }
        if self.SSOStatus != nil {
            map["SSOStatus"] = self.SSOStatus!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IDPMetadata"] as? String {
            self.IDPMetadata = value
        }
        if let value = dict["IdentityProviderType"] as? String {
            self.identityProviderType = value
        }
        if let value = dict["SSOStatus"] as? String {
            self.SSOStatus = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class SetSpecificIdentityProviderResponseBody : Tea.TeaModel {
    public class SpecificIdentityProviderConfiguration : Tea.TeaModel {
        public var IDPMetadata: String?

        public var identityProviderType: String?

        public var SSOStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.IDPMetadata != nil {
                map["IDPMetadata"] = self.IDPMetadata!
            }
            if self.identityProviderType != nil {
                map["IdentityProviderType"] = self.identityProviderType!
            }
            if self.SSOStatus != nil {
                map["SSOStatus"] = self.SSOStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IDPMetadata"] as? String {
                self.IDPMetadata = value
            }
            if let value = dict["IdentityProviderType"] as? String {
                self.identityProviderType = value
            }
            if let value = dict["SSOStatus"] as? String {
                self.SSOStatus = value
            }
        }
    }
    public var requestId: String?

    public var specificIdentityProviderConfiguration: SetSpecificIdentityProviderResponseBody.SpecificIdentityProviderConfiguration?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.specificIdentityProviderConfiguration?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.specificIdentityProviderConfiguration != nil {
            map["SpecificIdentityProviderConfiguration"] = self.specificIdentityProviderConfiguration?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpecificIdentityProviderConfiguration"] as? [String: Any?] {
            var model = SetSpecificIdentityProviderResponseBody.SpecificIdentityProviderConfiguration()
            model.fromMap(value)
            self.specificIdentityProviderConfiguration = model
        }
    }
}

public class SetSpecificIdentityProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSpecificIdentityProviderResponseBody?

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
            var model = SetSpecificIdentityProviderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetUserPasswordRequest : Tea.TeaModel {
    public var generateRandomPassword: Bool?

    public var password: String?

    public var userName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.generateRandomPassword != nil {
            map["GenerateRandomPassword"] = self.generateRandomPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GenerateRandomPassword"] as? Bool {
            self.generateRandomPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class SetUserPasswordResponseBody : Tea.TeaModel {
    public var randomPassword: String?

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
        if self.randomPassword != nil {
            map["RandomPassword"] = self.randomPassword!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RandomPassword"] as? String {
            self.randomPassword = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class SetUserPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserPasswordResponseBody?

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
            var model = SetUserPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAPIKeyCredentialProviderRequest : Tea.TeaModel {
    public var APIKey: String?

    public var APIKeyCredentialProviderName: String?

    public var description_: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

public class UpdateGatewayPolicyConfigRequest : Tea.TeaModel {
    public var enforcementMode: String?

    public var gatewayArn: String?

    public var gatewayType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enforcementMode != nil {
            map["EnforcementMode"] = self.enforcementMode!
        }
        if self.gatewayArn != nil {
            map["GatewayArn"] = self.gatewayArn!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnforcementMode"] as? String {
            self.enforcementMode = value
        }
        if let value = dict["GatewayArn"] as? String {
            self.gatewayArn = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
    }
}

public class UpdateGatewayPolicyConfigResponseBody : Tea.TeaModel {
    public class GatewayPolicyConfig : Tea.TeaModel {
        public var enforcementMode: String?

        public var policySetArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enforcementMode != nil {
                map["EnforcementMode"] = self.enforcementMode!
            }
            if self.policySetArn != nil {
                map["PolicySetArn"] = self.policySetArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnforcementMode"] as? String {
                self.enforcementMode = value
            }
            if let value = dict["PolicySetArn"] as? String {
                self.policySetArn = value
            }
        }
    }
    public var gatewayPolicyConfig: UpdateGatewayPolicyConfigResponseBody.GatewayPolicyConfig?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayPolicyConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayPolicyConfig != nil {
            map["GatewayPolicyConfig"] = self.gatewayPolicyConfig?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayPolicyConfig"] as? [String: Any?] {
            var model = UpdateGatewayPolicyConfigResponseBody.GatewayPolicyConfig()
            model.fromMap(value)
            self.gatewayPolicyConfig = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGatewayPolicyConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayPolicyConfigResponseBody?

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
            var model = UpdateGatewayPolicyConfigResponseBody()
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

public class UpdateLoginPreferenceRequest : Tea.TeaModel {
    public class LoginPreference : Tea.TeaModel {
        public var enablePasswordLogin: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enablePasswordLogin != nil {
                map["EnablePasswordLogin"] = self.enablePasswordLogin!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnablePasswordLogin"] as? Bool {
                self.enablePasswordLogin = value
            }
        }
    }
    public var loginPreference: UpdateLoginPreferenceRequest.LoginPreference?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginPreference != nil {
            map["LoginPreference"] = self.loginPreference?.toMap()
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginPreference"] as? [String: Any?] {
            var model = UpdateLoginPreferenceRequest.LoginPreference()
            model.fromMap(value)
            self.loginPreference = model
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateLoginPreferenceShrinkRequest : Tea.TeaModel {
    public var loginPreferenceShrink: String?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginPreferenceShrink != nil {
            map["LoginPreference"] = self.loginPreferenceShrink!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginPreference"] as? String {
            self.loginPreferenceShrink = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateLoginPreferenceResponseBody : Tea.TeaModel {
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

public class UpdateLoginPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoginPreferenceResponseBody?

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
            var model = UpdateLoginPreferenceResponseBody()
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

    public var tokenVaultName: String?

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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class UpdateOAuth2CredentialProviderShrinkRequest : Tea.TeaModel {
    public var callbackURL: String?

    public var credentialProviderVendor: String?

    public var description_: String?

    public var OAuth2CredentialProviderName: String?

    public var OAuth2ProviderConfigShrink: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
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
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
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

public class UpdatePolicyRequest : Tea.TeaModel {
    public var definition: Definition?

    public var description_: String?

    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.definition?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definition != nil {
            map["Definition"] = self.definition?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? [String: Any?] {
            var model = Definition()
            model.fromMap(value)
            self.definition = model
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class UpdatePolicyShrinkRequest : Tea.TeaModel {
    public var definitionShrink: String?

    public var description_: String?

    public var policyName: String?

    public var policySetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.definitionShrink != nil {
            map["Definition"] = self.definitionShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.policyName != nil {
            map["PolicyName"] = self.policyName!
        }
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Definition"] as? String {
            self.definitionShrink = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicyName"] as? String {
            self.policyName = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class UpdatePolicyResponseBody : Tea.TeaModel {
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

public class UpdatePolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicyResponseBody?

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
            var model = UpdatePolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePolicySetRequest : Tea.TeaModel {
    public var description_: String?

    public var policySetName: String?

    public override init() {
        super.init()
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
        if self.policySetName != nil {
            map["PolicySetName"] = self.policySetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["PolicySetName"] as? String {
            self.policySetName = value
        }
    }
}

public class UpdatePolicySetResponseBody : Tea.TeaModel {
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

public class UpdatePolicySetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePolicySetResponseBody?

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
            var model = UpdatePolicySetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateRoleRequest : Tea.TeaModel {
    public var description_: String?

    public var roleName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.roleName != nil {
            map["RoleName"] = self.roleName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RoleName"] as? String {
            self.roleName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateRoleResponseBody : Tea.TeaModel {
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

public class UpdateRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateRoleResponseBody?

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
            var model = UpdateRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateTokenVaultRequest : Tea.TeaModel {
    public var description_: String?

    public var roleArn: String?

    public var tokenVaultName: String?

    public override init() {
        super.init()
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
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.tokenVaultName != nil {
            map["TokenVaultName"] = self.tokenVaultName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["TokenVaultName"] as? String {
            self.tokenVaultName = value
        }
    }
}

public class UpdateTokenVaultResponseBody : Tea.TeaModel {
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

public class UpdateTokenVaultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateTokenVaultResponseBody?

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
            var model = UpdateTokenVaultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var description_: String?

    public var displayName: String?

    public var email: String?

    public var status: String?

    public var userName: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DisplayName"] as? String {
            self.displayName = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var displayName: String?

        public var email: String?

        public var status: String?

        public var type: String?

        public var updateTime: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
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
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DisplayName"] as? String {
                self.displayName = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var requestId: String?

    public var user: UpdateUserResponseBody.User?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.user?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.user != nil {
            map["User"] = self.user?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["User"] as? [String: Any?] {
            var model = UpdateUserResponseBody.User()
            model.fromMap(value)
            self.user = model
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserPoolRequest : Tea.TeaModel {
    public var description_: String?

    public var userPoolName: String?

    public override init() {
        super.init()
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
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateUserPoolResponseBody : Tea.TeaModel {
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

public class UpdateUserPoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserPoolResponseBody?

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
            var model = UpdateUserPoolResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserPoolClientRequest : Tea.TeaModel {
    public var accessTokenValidity: String?

    public var clientName: String?

    public var enforcePKCE: Bool?

    public var redirectURIs: [String]?

    public var refreshTokenValidity: String?

    public var secretRequired: Bool?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenValidity != nil {
            map["AccessTokenValidity"] = self.accessTokenValidity!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.enforcePKCE != nil {
            map["EnforcePKCE"] = self.enforcePKCE!
        }
        if self.redirectURIs != nil {
            map["RedirectURIs"] = self.redirectURIs!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenValidity"] as? String {
            self.accessTokenValidity = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["EnforcePKCE"] as? Bool {
            self.enforcePKCE = value
        }
        if let value = dict["RedirectURIs"] as? [String] {
            self.redirectURIs = value
        }
        if let value = dict["RefreshTokenValidity"] as? String {
            self.refreshTokenValidity = value
        }
        if let value = dict["SecretRequired"] as? Bool {
            self.secretRequired = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateUserPoolClientShrinkRequest : Tea.TeaModel {
    public var accessTokenValidity: String?

    public var clientName: String?

    public var enforcePKCE: Bool?

    public var redirectURIsShrink: String?

    public var refreshTokenValidity: String?

    public var secretRequired: Bool?

    public var userPoolName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenValidity != nil {
            map["AccessTokenValidity"] = self.accessTokenValidity!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
        }
        if self.enforcePKCE != nil {
            map["EnforcePKCE"] = self.enforcePKCE!
        }
        if self.redirectURIsShrink != nil {
            map["RedirectURIs"] = self.redirectURIsShrink!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        if self.userPoolName != nil {
            map["UserPoolName"] = self.userPoolName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenValidity"] as? String {
            self.accessTokenValidity = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["EnforcePKCE"] as? Bool {
            self.enforcePKCE = value
        }
        if let value = dict["RedirectURIs"] as? String {
            self.redirectURIsShrink = value
        }
        if let value = dict["RefreshTokenValidity"] as? String {
            self.refreshTokenValidity = value
        }
        if let value = dict["SecretRequired"] as? Bool {
            self.secretRequired = value
        }
        if let value = dict["UserPoolName"] as? String {
            self.userPoolName = value
        }
    }
}

public class UpdateUserPoolClientResponseBody : Tea.TeaModel {
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

public class UpdateUserPoolClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserPoolClientResponseBody?

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
            var model = UpdateUserPoolClientResponseBody()
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

    public var sessionBindingEnabled: String?

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
        if self.sessionBindingEnabled != nil {
            map["SessionBindingEnabled"] = self.sessionBindingEnabled!
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
        if let value = dict["SessionBindingEnabled"] as? String {
            self.sessionBindingEnabled = value
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

    public var sessionBindingEnabled: String?

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
        if self.sessionBindingEnabled != nil {
            map["SessionBindingEnabled"] = self.sessionBindingEnabled!
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
        if let value = dict["SessionBindingEnabled"] as? String {
            self.sessionBindingEnabled = value
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
