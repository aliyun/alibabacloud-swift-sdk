import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssumeRoleRequest : Tea.TeaModel {
    public var durationSeconds: Int64?

    public var externalId: String?

    public var policy: String?

    public var roleArn: String?

    public var roleSessionName: String?

    public var sourceIdentity: String?

    public override init() {
        super.init()
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
        if self.externalId != nil {
            map["ExternalId"] = self.externalId!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.roleSessionName != nil {
            map["RoleSessionName"] = self.roleSessionName!
        }
        if self.sourceIdentity != nil {
            map["SourceIdentity"] = self.sourceIdentity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DurationSeconds"] as? Int64 {
            self.durationSeconds = value
        }
        if let value = dict["ExternalId"] as? String {
            self.externalId = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["RoleSessionName"] as? String {
            self.roleSessionName = value
        }
        if let value = dict["SourceIdentity"] as? String {
            self.sourceIdentity = value
        }
    }
}

public class AssumeRoleResponseBody : Tea.TeaModel {
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
    public var assumedRoleUser: AssumeRoleResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleResponseBody.Credentials?

    public var requestId: String?

    public var sourceIdentity: String?

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
        if self.sourceIdentity != nil {
            map["SourceIdentity"] = self.sourceIdentity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumedRoleUser"] as? [String: Any?] {
            var model = AssumeRoleResponseBody.AssumedRoleUser()
            model.fromMap(value)
            self.assumedRoleUser = model
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = AssumeRoleResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceIdentity"] as? String {
            self.sourceIdentity = value
        }
    }
}

public class AssumeRoleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssumeRoleResponseBody?

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
            var model = AssumeRoleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssumeRoleWithOIDCRequest : Tea.TeaModel {
    public var durationSeconds: Int64?

    public var OIDCProviderArn: String?

    public var OIDCToken: String?

    public var policy: String?

    public var roleArn: String?

    public var roleSessionName: String?

    public override init() {
        super.init()
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
        if self.OIDCProviderArn != nil {
            map["OIDCProviderArn"] = self.OIDCProviderArn!
        }
        if self.OIDCToken != nil {
            map["OIDCToken"] = self.OIDCToken!
        }
        if self.policy != nil {
            map["Policy"] = self.policy!
        }
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.roleSessionName != nil {
            map["RoleSessionName"] = self.roleSessionName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DurationSeconds"] as? Int64 {
            self.durationSeconds = value
        }
        if let value = dict["OIDCProviderArn"] as? String {
            self.OIDCProviderArn = value
        }
        if let value = dict["OIDCToken"] as? String {
            self.OIDCToken = value
        }
        if let value = dict["Policy"] as? String {
            self.policy = value
        }
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["RoleSessionName"] as? String {
            self.roleSessionName = value
        }
    }
}

public class AssumeRoleWithOIDCResponseBody : Tea.TeaModel {
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
    public class OIDCTokenInfo : Tea.TeaModel {
        public var clientIds: String?

        public var expirationTime: String?

        public var issuanceTime: String?

        public var issuer: String?

        public var subject: String?

        public var verificationInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.expirationTime != nil {
                map["ExpirationTime"] = self.expirationTime!
            }
            if self.issuanceTime != nil {
                map["IssuanceTime"] = self.issuanceTime!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.verificationInfo != nil {
                map["VerificationInfo"] = self.verificationInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClientIds"] as? String {
                self.clientIds = value
            }
            if let value = dict["ExpirationTime"] as? String {
                self.expirationTime = value
            }
            if let value = dict["IssuanceTime"] as? String {
                self.issuanceTime = value
            }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
            if let value = dict["VerificationInfo"] as? String {
                self.verificationInfo = value
            }
        }
    }
    public var assumedRoleUser: AssumeRoleWithOIDCResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleWithOIDCResponseBody.Credentials?

    public var OIDCTokenInfo: AssumeRoleWithOIDCResponseBody.OIDCTokenInfo?

    public var requestId: String?

    public var sourceIdentity: String?

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
        try self.OIDCTokenInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.assumedRoleUser != nil {
            map["AssumedRoleUser"] = self.assumedRoleUser?.toMap()
        }
        if self.credentials != nil {
            map["Credentials"] = self.credentials?.toMap()
        }
        if self.OIDCTokenInfo != nil {
            map["OIDCTokenInfo"] = self.OIDCTokenInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sourceIdentity != nil {
            map["SourceIdentity"] = self.sourceIdentity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumedRoleUser"] as? [String: Any?] {
            var model = AssumeRoleWithOIDCResponseBody.AssumedRoleUser()
            model.fromMap(value)
            self.assumedRoleUser = model
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = AssumeRoleWithOIDCResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["OIDCTokenInfo"] as? [String: Any?] {
            var model = AssumeRoleWithOIDCResponseBody.OIDCTokenInfo()
            model.fromMap(value)
            self.OIDCTokenInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceIdentity"] as? String {
            self.sourceIdentity = value
        }
    }
}

public class AssumeRoleWithOIDCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssumeRoleWithOIDCResponseBody?

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
            var model = AssumeRoleWithOIDCResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AssumeRoleWithSAMLRequest : Tea.TeaModel {
    public var durationSeconds: Int64?

    public var policy: String?

    public var roleArn: String?

    public var SAMLAssertion: String?

    public var SAMLProviderArn: String?

    public override init() {
        super.init()
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
        if self.roleArn != nil {
            map["RoleArn"] = self.roleArn!
        }
        if self.SAMLAssertion != nil {
            map["SAMLAssertion"] = self.SAMLAssertion!
        }
        if self.SAMLProviderArn != nil {
            map["SAMLProviderArn"] = self.SAMLProviderArn!
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
        if let value = dict["RoleArn"] as? String {
            self.roleArn = value
        }
        if let value = dict["SAMLAssertion"] as? String {
            self.SAMLAssertion = value
        }
        if let value = dict["SAMLProviderArn"] as? String {
            self.SAMLProviderArn = value
        }
    }
}

public class AssumeRoleWithSAMLResponseBody : Tea.TeaModel {
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
    public class SAMLAssertionInfo : Tea.TeaModel {
        public var issuer: String?

        public var recipient: String?

        public var subject: String?

        public var subjectType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.recipient != nil {
                map["Recipient"] = self.recipient!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            if self.subjectType != nil {
                map["SubjectType"] = self.subjectType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Issuer"] as? String {
                self.issuer = value
            }
            if let value = dict["Recipient"] as? String {
                self.recipient = value
            }
            if let value = dict["Subject"] as? String {
                self.subject = value
            }
            if let value = dict["SubjectType"] as? String {
                self.subjectType = value
            }
        }
    }
    public var assumedRoleUser: AssumeRoleWithSAMLResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleWithSAMLResponseBody.Credentials?

    public var requestId: String?

    public var SAMLAssertionInfo: AssumeRoleWithSAMLResponseBody.SAMLAssertionInfo?

    public var sourceIdentity: String?

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
        try self.SAMLAssertionInfo?.validate()
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
        if self.SAMLAssertionInfo != nil {
            map["SAMLAssertionInfo"] = self.SAMLAssertionInfo?.toMap()
        }
        if self.sourceIdentity != nil {
            map["SourceIdentity"] = self.sourceIdentity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AssumedRoleUser"] as? [String: Any?] {
            var model = AssumeRoleWithSAMLResponseBody.AssumedRoleUser()
            model.fromMap(value)
            self.assumedRoleUser = model
        }
        if let value = dict["Credentials"] as? [String: Any?] {
            var model = AssumeRoleWithSAMLResponseBody.Credentials()
            model.fromMap(value)
            self.credentials = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SAMLAssertionInfo"] as? [String: Any?] {
            var model = AssumeRoleWithSAMLResponseBody.SAMLAssertionInfo()
            model.fromMap(value)
            self.SAMLAssertionInfo = model
        }
        if let value = dict["SourceIdentity"] as? String {
            self.sourceIdentity = value
        }
    }
}

public class AssumeRoleWithSAMLResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssumeRoleWithSAMLResponseBody?

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
            var model = AssumeRoleWithSAMLResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCallerIdentityResponseBody : Tea.TeaModel {
    public var accountId: String?

    public var arn: String?

    public var identityType: String?

    public var principalId: String?

    public var requestId: String?

    public var roleId: String?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.arn != nil {
            map["Arn"] = self.arn!
        }
        if self.identityType != nil {
            map["IdentityType"] = self.identityType!
        }
        if self.principalId != nil {
            map["PrincipalId"] = self.principalId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.roleId != nil {
            map["RoleId"] = self.roleId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["Arn"] as? String {
            self.arn = value
        }
        if let value = dict["IdentityType"] as? String {
            self.identityType = value
        }
        if let value = dict["PrincipalId"] as? String {
            self.principalId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RoleId"] as? String {
            self.roleId = value
        }
        if let value = dict["UserId"] as? String {
            self.userId = value
        }
    }
}

public class GetCallerIdentityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCallerIdentityResponseBody?

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
            var model = GetCallerIdentityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
