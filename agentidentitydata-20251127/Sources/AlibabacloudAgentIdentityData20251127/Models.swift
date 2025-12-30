import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssumeRoleForWorkloadIdentityRequest : Tea.TeaModel {
    public var durationSeconds: Int64?

    public var policy: String?

    public var roleSessionName: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.durationSeconds != nil {
            map["DurationSeconds"] = self.durationSeconds!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.roleSessionName != nil {
            map["RoleSessionName"] = self.roleSessionName!
        }
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DurationSeconds"] as? Int64 {
            self.durationSeconds = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RoleSessionName"] as? String {
            self.roleSessionName = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class AssumeRoleForWorkloadIdentityResponseBody : Tea.TeaModel {
    public class AssumedRoleUser : Tea.TeaModel {
        public var arn: String?

        public var assumedRoleId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arn != nil {
                map["Arn"] = self.arn!
            }
            if self.assumedRoleId != nil {
                map["AssumedRoleId"] = self.assumedRoleId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Arn"] as? String {
                self.arn = value
            }
            if let value = dict["AssumedRoleId"] as? String {
                self.assumedRoleId = value
            }
        }
    }
    public class Credentials : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var expiration: String?

        public var securityToken: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.expiration != nil {
                map["Expiration"] = self.expiration!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessKeyId"] as? String {
                self.accessKeyId = value
            }
            if let value = dict["AccessKeySecret"] as? String {
                self.accessKeySecret = value
            }
            if let value = dict["Expiration"] as? String {
                self.expiration = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
        }
    }
    public class WorkloadContextInfo : Tea.TeaModel {
        public class UserContext : Tea.TeaModel {
            public class JwtClaims : Tea.TeaModel {
                public var audiences: String?

                public var issuer: String?

                public var subject: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.audiences != nil {
                        map["Audiences"] = self.audiences!
                    }
                    if self.issuer != nil {
                        map["Issuer"] = self.issuer!
                    }
                    if self.subject != nil {
                        map["Subject"] = self.subject!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Audiences"] as? String {
                        self.audiences = value
                    }
                    if let value = dict["Issuer"] as? String {
                        self.issuer = value
                    }
                    if let value = dict["Subject"] as? String {
                        self.subject = value
                    }
                }
            }
            public var jwtClaims: AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo.UserContext.JwtClaims?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.jwtClaims?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.jwtClaims != nil {
                    map["JwtClaims"] = self.jwtClaims?.toMap()
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["JwtClaims"] as? [String: Any?] {
                    var model = AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo.UserContext.JwtClaims()
                    model.fromMap(value)
                    self.jwtClaims = model
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
            }
        }
        public var userContext: AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo.UserContext?

        public var workloadIdentityArn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.userContext?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userContext != nil {
                map["UserContext"] = self.userContext?.toMap()
            }
            if self.workloadIdentityArn != nil {
                map["WorkloadIdentityArn"] = self.workloadIdentityArn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserContext"] as? [String: Any?] {
                var model = AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo.UserContext()
                model.fromMap(value)
                self.userContext = model
            }
            if let value = dict["WorkloadIdentityArn"] as? String {
                self.workloadIdentityArn = value
            }
        }
    }
    public var assumedRoleUser: AssumeRoleForWorkloadIdentityResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleForWorkloadIdentityResponseBody.Credentials?

    public var requestId: String?

    public var workloadContextInfo: AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.assumedRoleUser?.validate()
        try self.credentials?.validate()
        try self.workloadContextInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumedRoleUser != nil {
            map["AssumedRoleUser"] = self.assumedRoleUser?.toMap()
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.workloadContextInfo != nil {
            map["WorkloadContextInfo"] = self.workloadContextInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumedRoleUser"] as? [String: Any?] {
            var model = AssumeRoleForWorkloadIdentityResponseBody.AssumedRoleUser()
            model.fromMap(value)
            self.assumedRoleUser = model
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = AssumeRoleForWorkloadIdentityResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadContextInfo"] as? [String: Any?] {
            var model = AssumeRoleForWorkloadIdentityResponseBody.WorkloadContextInfo()
            model.fromMap(value)
            self.workloadContextInfo = model
        }
    }
}

public class AssumeRoleForWorkloadIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssumeRoleForWorkloadIdentityResponseBody?

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
            var model = AssumeRoleForWorkloadIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CompleteResourceTokenAuthRequest : Tea.TeaModel {
    public class UserIdentifier : Tea.TeaModel {
        public var userId: String?

        public var userJWT: String?

        public override init() {
            super.init()
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
            if self.userJWT != nil {
                map["UserJWT"] = self.userJWT!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserId"] as? String {
                self.userId = value
            }
            if let value = dict["UserJWT"] as? String {
                self.userJWT = value
            }
        }
    }
    public var sessionURI: String?

    public var userIdentifier: CompleteResourceTokenAuthRequest.UserIdentifier?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userIdentifier?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionURI != nil {
            map["SessionURI"] = self.sessionURI!
        }
        if self.userIdentifier != nil {
            map["UserIdentifier"] = self.userIdentifier?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SessionURI"] as? String {
            self.sessionURI = value
        }
        if let value = dict["UserIdentifier"] as? [String: Any?] {
            var model = CompleteResourceTokenAuthRequest.UserIdentifier()
            model.fromMap(value)
            self.userIdentifier = model
        }
    }
}

public class CompleteResourceTokenAuthShrinkRequest : Tea.TeaModel {
    public var sessionURI: String?

    public var userIdentifierShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.sessionURI != nil {
            map["SessionURI"] = self.sessionURI!
        }
        if self.userIdentifierShrink != nil {
            map["UserIdentifier"] = self.userIdentifierShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["SessionURI"] as? String {
            self.sessionURI = value
        }
        if let value = dict["UserIdentifier"] as? String {
            self.userIdentifierShrink = value
        }
    }
}

public class CompleteResourceTokenAuthResponseBody : Tea.TeaModel {
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

public class CompleteResourceTokenAuthResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CompleteResourceTokenAuthResponseBody?

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
            var model = CompleteResourceTokenAuthResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceAPIKeyRequest : Tea.TeaModel {
    public var resourceCredentialProviderName: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceCredentialProviderName != nil {
            map["ResourceCredentialProviderName"] = self.resourceCredentialProviderName!
        }
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceCredentialProviderName"] as? String {
            self.resourceCredentialProviderName = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetResourceAPIKeyResponseBody : Tea.TeaModel {
    public var APIKey: String?

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
        if self.APIKey != nil {
            map["APIKey"] = self.APIKey!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["APIKey"] as? String {
            self.APIKey = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetResourceAPIKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceAPIKeyResponseBody?

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
            var model = GetResourceAPIKeyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetResourceOAuth2TokenRequest : Tea.TeaModel {
    public var customParameters: [String: Any]?

    public var customState: String?

    public var forceAuthentication: Bool?

    public var OAuth2Flow: String?

    public var resourceCredentialProviderName: String?

    public var resourceOAuth2ReturnURL: String?

    public var scopes: [String]?

    public var sessionURI: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customParameters != nil {
            map["CustomParameters"] = self.customParameters!
        }
        if self.customState != nil {
            map["CustomState"] = self.customState!
        }
        if self.forceAuthentication != nil {
            map["ForceAuthentication"] = self.forceAuthentication!
        }
        if self.OAuth2Flow != nil {
            map["OAuth2Flow"] = self.OAuth2Flow!
        }
        if self.resourceCredentialProviderName != nil {
            map["ResourceCredentialProviderName"] = self.resourceCredentialProviderName!
        }
        if self.resourceOAuth2ReturnURL != nil {
            map["ResourceOAuth2ReturnURL"] = self.resourceOAuth2ReturnURL!
        }
        if self.scopes != nil {
            map["Scopes"] = self.scopes!
        }
        if self.sessionURI != nil {
            map["SessionURI"] = self.sessionURI!
        }
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomParameters"] as? [String: Any] {
            self.customParameters = value
        }
        if let value = dict["CustomState"] as? String {
            self.customState = value
        }
        if let value = dict["ForceAuthentication"] as? Bool {
            self.forceAuthentication = value
        }
        if let value = dict["OAuth2Flow"] as? String {
            self.OAuth2Flow = value
        }
        if let value = dict["ResourceCredentialProviderName"] as? String {
            self.resourceCredentialProviderName = value
        }
        if let value = dict["ResourceOAuth2ReturnURL"] as? String {
            self.resourceOAuth2ReturnURL = value
        }
        if let value = dict["Scopes"] as? [String] {
            self.scopes = value
        }
        if let value = dict["SessionURI"] as? String {
            self.sessionURI = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetResourceOAuth2TokenShrinkRequest : Tea.TeaModel {
    public var customParametersShrink: String?

    public var customState: String?

    public var forceAuthentication: Bool?

    public var OAuth2Flow: String?

    public var resourceCredentialProviderName: String?

    public var resourceOAuth2ReturnURL: String?

    public var scopesShrink: String?

    public var sessionURI: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customParametersShrink != nil {
            map["CustomParameters"] = self.customParametersShrink!
        }
        if self.customState != nil {
            map["CustomState"] = self.customState!
        }
        if self.forceAuthentication != nil {
            map["ForceAuthentication"] = self.forceAuthentication!
        }
        if self.OAuth2Flow != nil {
            map["OAuth2Flow"] = self.OAuth2Flow!
        }
        if self.resourceCredentialProviderName != nil {
            map["ResourceCredentialProviderName"] = self.resourceCredentialProviderName!
        }
        if self.resourceOAuth2ReturnURL != nil {
            map["ResourceOAuth2ReturnURL"] = self.resourceOAuth2ReturnURL!
        }
        if self.scopesShrink != nil {
            map["Scopes"] = self.scopesShrink!
        }
        if self.sessionURI != nil {
            map["SessionURI"] = self.sessionURI!
        }
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomParameters"] as? String {
            self.customParametersShrink = value
        }
        if let value = dict["CustomState"] as? String {
            self.customState = value
        }
        if let value = dict["ForceAuthentication"] as? Bool {
            self.forceAuthentication = value
        }
        if let value = dict["OAuth2Flow"] as? String {
            self.OAuth2Flow = value
        }
        if let value = dict["ResourceCredentialProviderName"] as? String {
            self.resourceCredentialProviderName = value
        }
        if let value = dict["ResourceOAuth2ReturnURL"] as? String {
            self.resourceOAuth2ReturnURL = value
        }
        if let value = dict["Scopes"] as? String {
            self.scopesShrink = value
        }
        if let value = dict["SessionURI"] as? String {
            self.sessionURI = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetResourceOAuth2TokenResponseBody : Tea.TeaModel {
    public var accessToken: String?

    public var authorizationURL: String?

    public var requestId: String?

    public var sessionStatus: String?

    public var sessionURI: String?

    public override init() {
        super.init()
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
            map["AccessToken"] = self.accessToken!
        }
        if self.authorizationURL != nil {
            map["AuthorizationURL"] = self.authorizationURL!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sessionStatus != nil {
            map["SessionStatus"] = self.sessionStatus!
        }
        if self.sessionURI != nil {
            map["SessionURI"] = self.sessionURI!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AuthorizationURL"] as? String {
            self.authorizationURL = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SessionStatus"] as? String {
            self.sessionStatus = value
        }
        if let value = dict["SessionURI"] as? String {
            self.sessionURI = value
        }
    }
}

public class GetResourceOAuth2TokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetResourceOAuth2TokenResponseBody?

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
            var model = GetResourceOAuth2TokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkloadAccessTokenRequest : Tea.TeaModel {
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

public class GetWorkloadAccessTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
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
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetWorkloadAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkloadAccessTokenResponseBody?

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
            var model = GetWorkloadAccessTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkloadAccessTokenForJWTRequest : Tea.TeaModel {
    public var userToken: String?

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
        if self.userToken != nil {
            map["UserToken"] = self.userToken!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserToken"] as? String {
            self.userToken = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class GetWorkloadAccessTokenForJWTResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
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
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetWorkloadAccessTokenForJWTResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkloadAccessTokenForJWTResponseBody?

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
            var model = GetWorkloadAccessTokenForJWTResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetWorkloadAccessTokenForUserIdRequest : Tea.TeaModel {
    public var userId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.workloadIdentityName != nil {
            map["WorkloadIdentityName"] = self.workloadIdentityName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
        if let value = dict["WorkloadIdentityName"] as? String {
            self.workloadIdentityName = value
        }
    }
}

public class GetWorkloadAccessTokenForUserIdResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workloadAccessToken: String?

    public override init() {
        super.init()
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
        if self.workloadAccessToken != nil {
            map["WorkloadAccessToken"] = self.workloadAccessToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkloadAccessToken"] as? String {
            self.workloadAccessToken = value
        }
    }
}

public class GetWorkloadAccessTokenForUserIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetWorkloadAccessTokenForUserIdResponseBody?

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
            var model = GetWorkloadAccessTokenForUserIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
