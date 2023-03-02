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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
            self.durationSeconds = dict["DurationSeconds"] as! Int64
        }
        if dict.keys.contains("ExternalId") && dict["ExternalId"] != nil {
            self.externalId = dict["ExternalId"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("RoleSessionName") && dict["RoleSessionName"] != nil {
            self.roleSessionName = dict["RoleSessionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") && dict["Arn"] != nil {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumedRoleId") && dict["AssumedRoleId"] != nil {
                self.assumedRoleId = dict["AssumedRoleId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                self.expiration = dict["Expiration"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public var assumedRoleUser: AssumeRoleResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleResponseBody.Credentials?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumedRoleUser") && dict["AssumedRoleUser"] != nil {
            var model = AssumeRoleResponseBody.AssumedRoleUser()
            model.fromMap(dict["AssumedRoleUser"] as! [String: Any])
            self.assumedRoleUser = model
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            var model = AssumeRoleResponseBody.Credentials()
            model.fromMap(dict["Credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AssumeRoleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
            self.durationSeconds = dict["DurationSeconds"] as! Int64
        }
        if dict.keys.contains("OIDCProviderArn") && dict["OIDCProviderArn"] != nil {
            self.OIDCProviderArn = dict["OIDCProviderArn"] as! String
        }
        if dict.keys.contains("OIDCToken") && dict["OIDCToken"] != nil {
            self.OIDCToken = dict["OIDCToken"] as! String
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("RoleSessionName") && dict["RoleSessionName"] != nil {
            self.roleSessionName = dict["RoleSessionName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") && dict["Arn"] != nil {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumedRoleId") && dict["AssumedRoleId"] != nil {
                self.assumedRoleId = dict["AssumedRoleId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                self.expiration = dict["Expiration"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
            }
        }
    }
    public class OIDCTokenInfo : Tea.TeaModel {
        public var clientIds: String?

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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.issuer != nil {
                map["Issuer"] = self.issuer!
            }
            if self.subject != nil {
                map["Subject"] = self.subject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClientIds") && dict["ClientIds"] != nil {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("Subject") && dict["Subject"] != nil {
                self.subject = dict["Subject"] as! String
            }
        }
    }
    public var assumedRoleUser: AssumeRoleWithOIDCResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleWithOIDCResponseBody.Credentials?

    public var OIDCTokenInfo: AssumeRoleWithOIDCResponseBody.OIDCTokenInfo?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumedRoleUser") && dict["AssumedRoleUser"] != nil {
            var model = AssumeRoleWithOIDCResponseBody.AssumedRoleUser()
            model.fromMap(dict["AssumedRoleUser"] as! [String: Any])
            self.assumedRoleUser = model
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            var model = AssumeRoleWithOIDCResponseBody.Credentials()
            model.fromMap(dict["Credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("OIDCTokenInfo") && dict["OIDCTokenInfo"] != nil {
            var model = AssumeRoleWithOIDCResponseBody.OIDCTokenInfo()
            model.fromMap(dict["OIDCTokenInfo"] as! [String: Any])
            self.OIDCTokenInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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
            var model = AssumeRoleWithOIDCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DurationSeconds") && dict["DurationSeconds"] != nil {
            self.durationSeconds = dict["DurationSeconds"] as! Int64
        }
        if dict.keys.contains("Policy") && dict["Policy"] != nil {
            self.policy = dict["Policy"] as! String
        }
        if dict.keys.contains("RoleArn") && dict["RoleArn"] != nil {
            self.roleArn = dict["RoleArn"] as! String
        }
        if dict.keys.contains("SAMLAssertion") && dict["SAMLAssertion"] != nil {
            self.SAMLAssertion = dict["SAMLAssertion"] as! String
        }
        if dict.keys.contains("SAMLProviderArn") && dict["SAMLProviderArn"] != nil {
            self.SAMLProviderArn = dict["SAMLProviderArn"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") && dict["Arn"] != nil {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("AssumedRoleId") && dict["AssumedRoleId"] != nil {
                self.assumedRoleId = dict["AssumedRoleId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") && dict["AccessKeyId"] != nil {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") && dict["AccessKeySecret"] != nil {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("Expiration") && dict["Expiration"] != nil {
                self.expiration = dict["Expiration"] as! String
            }
            if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
                self.securityToken = dict["SecurityToken"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Issuer") && dict["Issuer"] != nil {
                self.issuer = dict["Issuer"] as! String
            }
            if dict.keys.contains("Recipient") && dict["Recipient"] != nil {
                self.recipient = dict["Recipient"] as! String
            }
            if dict.keys.contains("Subject") && dict["Subject"] != nil {
                self.subject = dict["Subject"] as! String
            }
            if dict.keys.contains("SubjectType") && dict["SubjectType"] != nil {
                self.subjectType = dict["SubjectType"] as! String
            }
        }
    }
    public var assumedRoleUser: AssumeRoleWithSAMLResponseBody.AssumedRoleUser?

    public var credentials: AssumeRoleWithSAMLResponseBody.Credentials?

    public var requestId: String?

    public var SAMLAssertionInfo: AssumeRoleWithSAMLResponseBody.SAMLAssertionInfo?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AssumedRoleUser") && dict["AssumedRoleUser"] != nil {
            var model = AssumeRoleWithSAMLResponseBody.AssumedRoleUser()
            model.fromMap(dict["AssumedRoleUser"] as! [String: Any])
            self.assumedRoleUser = model
        }
        if dict.keys.contains("Credentials") && dict["Credentials"] != nil {
            var model = AssumeRoleWithSAMLResponseBody.Credentials()
            model.fromMap(dict["Credentials"] as! [String: Any])
            self.credentials = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLAssertionInfo") && dict["SAMLAssertionInfo"] != nil {
            var model = AssumeRoleWithSAMLResponseBody.SAMLAssertionInfo()
            model.fromMap(dict["SAMLAssertionInfo"] as! [String: Any])
            self.SAMLAssertionInfo = model
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
            var model = AssumeRoleWithSAMLResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountId") && dict["AccountId"] != nil {
            self.accountId = dict["AccountId"] as! String
        }
        if dict.keys.contains("Arn") && dict["Arn"] != nil {
            self.arn = dict["Arn"] as! String
        }
        if dict.keys.contains("IdentityType") && dict["IdentityType"] != nil {
            self.identityType = dict["IdentityType"] as! String
        }
        if dict.keys.contains("PrincipalId") && dict["PrincipalId"] != nil {
            self.principalId = dict["PrincipalId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RoleId") && dict["RoleId"] != nil {
            self.roleId = dict["RoleId"] as! String
        }
        if dict.keys.contains("UserId") && dict["UserId"] != nil {
            self.userId = dict["UserId"] as! String
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
            var model = GetCallerIdentityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
