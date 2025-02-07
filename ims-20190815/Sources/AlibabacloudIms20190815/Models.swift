import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddClientIdToOIDCProviderRequest : Tea.TeaModel {
    public var clientId: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
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
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class AddClientIdToOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: AddClientIdToOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = AddClientIdToOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddClientIdToOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddClientIdToOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddClientIdToOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddFingerprintToOIDCProviderRequest : Tea.TeaModel {
    public var fingerprint: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fingerprint") {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class AddFingerprintToOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: AddFingerprintToOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = AddFingerprintToOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddFingerprintToOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddFingerprintToOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddFingerprintToOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUserToGroupRequest : Tea.TeaModel {
    public var groupName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class AddUserToGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddUserToGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserToGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUserToGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindMFADeviceRequest : Tea.TeaModel {
    public var authenticationCode1: String?

    public var authenticationCode2: String?

    public var serialNumber: String?

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
        if self.authenticationCode1 != nil {
            map["AuthenticationCode1"] = self.authenticationCode1!
        }
        if self.authenticationCode2 != nil {
            map["AuthenticationCode2"] = self.authenticationCode2!
        }
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationCode1") {
            self.authenticationCode1 = dict["AuthenticationCode1"] as! String
        }
        if dict.keys.contains("AuthenticationCode2") {
            self.authenticationCode2 = dict["AuthenticationCode2"] as! String
        }
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class BindMFADeviceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindMFADeviceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = BindMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ChangePasswordRequest : Tea.TeaModel {
    public var newPassword: String?

    public var oldPassword: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("OldPassword") {
            self.oldPassword = dict["OldPassword"] as! String
        }
    }
}

public class ChangePasswordResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ChangePasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangePasswordResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ChangePasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessKeyRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class CreateAccessKeyResponseBody : Tea.TeaModel {
    public class AccessKey : Tea.TeaModel {
        public var accessKeyId: String?

        public var accessKeySecret: String?

        public var createDate: String?

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
            if self.accessKeyId != nil {
                map["AccessKeyId"] = self.accessKeyId!
            }
            if self.accessKeySecret != nil {
                map["AccessKeySecret"] = self.accessKeySecret!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyId") {
                self.accessKeyId = dict["AccessKeyId"] as! String
            }
            if dict.keys.contains("AccessKeySecret") {
                self.accessKeySecret = dict["AccessKeySecret"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var accessKey: CreateAccessKeyResponseBody.AccessKey?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKey?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKey != nil {
            map["AccessKey"] = self.accessKey?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKey") {
            var model = CreateAccessKeyResponseBody.AccessKey()
            model.fromMap(dict["AccessKey"] as! [String: Any])
            self.accessKey = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessKeyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class CreateAppSecretResponseBody : Tea.TeaModel {
    public class AppSecret : Tea.TeaModel {
        public var appId: String?

        public var appSecretId: String?

        public var appSecretValue: String?

        public var createDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecretId != nil {
                map["AppSecretId"] = self.appSecretId!
            }
            if self.appSecretValue != nil {
                map["AppSecretValue"] = self.appSecretValue!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppSecretId") {
                self.appSecretId = dict["AppSecretId"] as! String
            }
            if dict.keys.contains("AppSecretValue") {
                self.appSecretValue = dict["AppSecretValue"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
        }
    }
    public var appSecret: CreateAppSecretResponseBody.AppSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecret") {
            var model = CreateAppSecretResponseBody.AppSecret()
            model.fromMap(dict["AppSecret"] as! [String: Any])
            self.appSecret = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppSecretResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAppSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateApplicationRequest : Tea.TeaModel {
    public var accessTokenValidity: Int32?

    public var appName: String?

    public var appType: String?

    public var displayName: String?

    public var isMultiTenant: Bool?

    public var predefinedScopes: String?

    public var redirectUris: String?

    public var refreshTokenValidity: Int32?

    public var requiredScopes: String?

    public var secretRequired: Bool?

    public override init() {
        super.init()
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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.isMultiTenant != nil {
            map["IsMultiTenant"] = self.isMultiTenant!
        }
        if self.predefinedScopes != nil {
            map["PredefinedScopes"] = self.predefinedScopes!
        }
        if self.redirectUris != nil {
            map["RedirectUris"] = self.redirectUris!
        }
        if self.refreshTokenValidity != nil {
            map["RefreshTokenValidity"] = self.refreshTokenValidity!
        }
        if self.requiredScopes != nil {
            map["RequiredScopes"] = self.requiredScopes!
        }
        if self.secretRequired != nil {
            map["SecretRequired"] = self.secretRequired!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTokenValidity") {
            self.accessTokenValidity = dict["AccessTokenValidity"] as! Int32
        }
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("IsMultiTenant") {
            self.isMultiTenant = dict["IsMultiTenant"] as! Bool
        }
        if dict.keys.contains("PredefinedScopes") {
            self.predefinedScopes = dict["PredefinedScopes"] as! String
        }
        if dict.keys.contains("RedirectUris") {
            self.redirectUris = dict["RedirectUris"] as! String
        }
        if dict.keys.contains("RefreshTokenValidity") {
            self.refreshTokenValidity = dict["RefreshTokenValidity"] as! Int32
        }
        if dict.keys.contains("RequiredScopes") {
            self.requiredScopes = dict["RequiredScopes"] as! String
        }
        if dict.keys.contains("SecretRequired") {
            self.secretRequired = dict["SecretRequired"] as! Bool
        }
    }
}

public class CreateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Description") {
                            self.description_ = dict["Description"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var predefinedScope: [CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PredefinedScope") {
                        var tmp : [CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in dict["PredefinedScope"] as! [Any] {
                            var model = CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PredefinedScopes") {
                    var model = CreateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(dict["PredefinedScopes"] as! [String: Any])
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RedirectUri") {
                    self.redirectUri = dict["RedirectUri"] as! [String]
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: CreateApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: CreateApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTokenValidity") {
                self.accessTokenValidity = dict["AccessTokenValidity"] as! Int32
            }
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppType") {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DelegatedScope") {
                var model = CreateApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(dict["DelegatedScope"] as! [String: Any])
                self.delegatedScope = model
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IsMultiTenant") {
                self.isMultiTenant = dict["IsMultiTenant"] as! Bool
            }
            if dict.keys.contains("RedirectUris") {
                var model = CreateApplicationResponseBody.Application.RedirectUris()
                model.fromMap(dict["RedirectUris"] as! [String: Any])
                self.redirectUris = model
            }
            if dict.keys.contains("RefreshTokenValidity") {
                self.refreshTokenValidity = dict["RefreshTokenValidity"] as! Int32
            }
            if dict.keys.contains("SecretRequired") {
                self.secretRequired = dict["SecretRequired"] as! Bool
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var application: CreateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = CreateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateApplicationResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGroupRequest : Tea.TeaModel {
    public var comments: String?

    public var displayName: String?

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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class CreateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var group: CreateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = CreateGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

    public var status: String?

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
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFABindRequired") {
            self.MFABindRequired = dict["MFABindRequired"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordResetRequired") {
            self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class CreateLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

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
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MFABindRequired") {
                self.MFABindRequired = dict["MFABindRequired"] as! Bool
            }
            if dict.keys.contains("PasswordResetRequired") {
                self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
            }
        }
    }
    public var loginProfile: CreateLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginProfile") {
            var model = CreateLoginProfileResponseBody.LoginProfile()
            model.fromMap(dict["LoginProfile"] as! [String: Any])
            self.loginProfile = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateLoginProfileResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateOIDCProviderRequest : Tea.TeaModel {
    public var clientIds: String?

    public var description_: String?

    public var fingerprints: String?

    public var issuanceLimitTime: Int64?

    public var issuerUrl: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fingerprints != nil {
            map["Fingerprints"] = self.fingerprints!
        }
        if self.issuanceLimitTime != nil {
            map["IssuanceLimitTime"] = self.issuanceLimitTime!
        }
        if self.issuerUrl != nil {
            map["IssuerUrl"] = self.issuerUrl!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") {
            self.clientIds = dict["ClientIds"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Fingerprints") {
            self.fingerprints = dict["Fingerprints"] as! String
        }
        if dict.keys.contains("IssuanceLimitTime") {
            self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
        }
        if dict.keys.contains("IssuerUrl") {
            self.issuerUrl = dict["IssuerUrl"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class CreateOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: CreateOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = CreateOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSAMLProviderRequest : Tea.TeaModel {
    public var description_: String?

    public var encodedSAMLMetadataDocument: String?

    public var SAMLProviderName: String?

    public override init() {
        super.init()
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
        if self.encodedSAMLMetadataDocument != nil {
            map["EncodedSAMLMetadataDocument"] = self.encodedSAMLMetadataDocument!
        }
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("EncodedSAMLMetadataDocument") {
            self.encodedSAMLMetadataDocument = dict["EncodedSAMLMetadataDocument"] as! String
        }
        if dict.keys.contains("SAMLProviderName") {
            self.SAMLProviderName = dict["SAMLProviderName"] as! String
        }
    }
}

public class CreateSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("SAMLProviderName") {
                self.SAMLProviderName = dict["SAMLProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: CreateSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLProvider") {
            var model = CreateSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(dict["SAMLProvider"] as! [String: Any])
            self.SAMLProvider = model
        }
    }
}

public class CreateSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSAMLProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateSAMLProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var comments: String?

    public var displayName: String?

    public var email: String?

    public var mobilePhone: String?

    public var tag: [CreateUserRequest.Tag]?

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
        if self.comments != nil {
            map["Comments"] = self.comments!
        }
        if self.displayName != nil {
            map["DisplayName"] = self.displayName!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.mobilePhone != nil {
            map["MobilePhone"] = self.mobilePhone!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comments") {
            self.comments = dict["Comments"] as! String
        }
        if dict.keys.contains("DisplayName") {
            self.displayName = dict["DisplayName"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("MobilePhone") {
            self.mobilePhone = dict["MobilePhone"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateUserRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateUserRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class CreateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public class Tag : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var tag: [CreateUserResponseBody.User.Tags.Tag]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tag != nil {
                    var tmp : [Any] = []
                    for k in self.tag! {
                        tmp.append(k.toMap())
                    }
                    map["Tag"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Tag") {
                    var tmp : [CreateUserResponseBody.User.Tags.Tag] = []
                    for v in dict["Tag"] as! [Any] {
                        var model = CreateUserResponseBody.User.Tags.Tag()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tag = tmp
                }
            }
        }
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var tags: CreateUserResponseBody.User.Tags?

        public var updateDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLoginDate") {
                self.lastLoginDate = dict["LastLoginDate"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Tags") {
                var model = CreateUserResponseBody.User.Tags()
                model.fromMap(dict["Tags"] as! [String: Any])
                self.tags = model
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = CreateUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
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

public class CreateVirtualMFADeviceRequest : Tea.TeaModel {
    public var virtualMFADeviceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.virtualMFADeviceName != nil {
            map["VirtualMFADeviceName"] = self.virtualMFADeviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VirtualMFADeviceName") {
            self.virtualMFADeviceName = dict["VirtualMFADeviceName"] as! String
        }
    }
}

public class CreateVirtualMFADeviceResponseBody : Tea.TeaModel {
    public class VirtualMFADevice : Tea.TeaModel {
        public var base32StringSeed: String?

        public var QRCodePNG: String?

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
            if self.base32StringSeed != nil {
                map["Base32StringSeed"] = self.base32StringSeed!
            }
            if self.QRCodePNG != nil {
                map["QRCodePNG"] = self.QRCodePNG!
            }
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Base32StringSeed") {
                self.base32StringSeed = dict["Base32StringSeed"] as! String
            }
            if dict.keys.contains("QRCodePNG") {
                self.QRCodePNG = dict["QRCodePNG"] as! String
            }
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
        }
    }
    public var requestId: String?

    public var virtualMFADevice: CreateVirtualMFADeviceResponseBody.VirtualMFADevice?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevice != nil {
            map["VirtualMFADevice"] = self.virtualMFADevice?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualMFADevice") {
            var model = CreateVirtualMFADeviceResponseBody.VirtualMFADevice()
            model.fromMap(dict["VirtualMFADevice"] as! [String: Any])
            self.virtualMFADevice = model
        }
    }
}

public class CreateVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualMFADeviceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessKeyRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

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
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class DeleteAccessKeyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessKeyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecretId != nil {
            map["AppSecretId"] = self.appSecretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppSecretId") {
            self.appSecretId = dict["AppSecretId"] as! String
        }
    }
}

public class DeleteAppSecretResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAppSecretResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAppSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class DeleteApplicationResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteApplicationResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGroupRequest : Tea.TeaModel {
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class DeleteGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteLoginProfileRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class DeleteLoginProfileResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLoginProfileResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteOIDCProviderRequest : Tea.TeaModel {
    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class DeleteOIDCProviderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeletePasskeyRequest : Tea.TeaModel {
    public var passkeyId: String?

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
        if self.passkeyId != nil {
            map["PasskeyId"] = self.passkeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasskeyId") {
            self.passkeyId = dict["PasskeyId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class DeletePasskeyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeletePasskeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePasskeyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeletePasskeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSAMLProviderRequest : Tea.TeaModel {
    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SAMLProviderName") {
            self.SAMLProviderName = dict["SAMLProviderName"] as! String
        }
    }
}

public class DeleteSAMLProviderResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSAMLProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSAMLProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserRequest : Tea.TeaModel {
    public var userId: String?

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
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVirtualMFADeviceRequest : Tea.TeaModel {
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
        if self.serialNumber != nil {
            map["SerialNumber"] = self.serialNumber!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SerialNumber") {
            self.serialNumber = dict["SerialNumber"] as! String
        }
    }
}

public class DeleteVirtualMFADeviceResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVirtualMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualMFADeviceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteVirtualMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableVirtualMFARequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class DisableVirtualMFAResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DisableVirtualMFAResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableVirtualMFAResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DisableVirtualMFAResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GenerateCredentialReportResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var state: String?

    public override init() {
        super.init()
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
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class GenerateCredentialReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateCredentialReportResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GenerateCredentialReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessKeyLastUsedRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

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
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class GetAccessKeyLastUsedResponseBody : Tea.TeaModel {
    public class AccessKeyLastUsed : Tea.TeaModel {
        public var lastUsedDate: String?

        public var serviceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.lastUsedDate != nil {
                map["LastUsedDate"] = self.lastUsedDate!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LastUsedDate") {
                self.lastUsedDate = dict["LastUsedDate"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
        }
    }
    public var accessKeyLastUsed: GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeyLastUsed?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeyLastUsed != nil {
            map["AccessKeyLastUsed"] = self.accessKeyLastUsed?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeyLastUsed") {
            var model = GetAccessKeyLastUsedResponseBody.AccessKeyLastUsed()
            model.fromMap(dict["AccessKeyLastUsed"] as! [String: Any])
            self.accessKeyLastUsed = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessKeyLastUsedResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessKeyLastUsedResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccessKeyLastUsedResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountMFAInfoResponseBody : Tea.TeaModel {
    public var isMFAEnable: Bool?

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
        if self.isMFAEnable != nil {
            map["IsMFAEnable"] = self.isMFAEnable!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsMFAEnable") {
            self.isMFAEnable = dict["IsMFAEnable"] as! Bool
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccountMFAInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountMFAInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountMFAInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountSecurityPracticeReportResponseBody : Tea.TeaModel {
    public class AccountSecurityPracticeInfo : Tea.TeaModel {
        public class AccountSecurityPracticeUserInfo : Tea.TeaModel {
            public var bindMfa: Bool?

            public var oldAkNum: Int32?

            public var rootWithAccessKey: Int32?

            public var subUser: Int32?

            public var subUserBindMfa: Int32?

            public var subUserPwdLevel: String?

            public var subUserWithOldAccessKey: Int32?

            public var subUserWithUnusedAccessKey: Int32?

            public var unusedAkNum: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bindMfa != nil {
                    map["BindMfa"] = self.bindMfa!
                }
                if self.oldAkNum != nil {
                    map["OldAkNum"] = self.oldAkNum!
                }
                if self.rootWithAccessKey != nil {
                    map["RootWithAccessKey"] = self.rootWithAccessKey!
                }
                if self.subUser != nil {
                    map["SubUser"] = self.subUser!
                }
                if self.subUserBindMfa != nil {
                    map["SubUserBindMfa"] = self.subUserBindMfa!
                }
                if self.subUserPwdLevel != nil {
                    map["SubUserPwdLevel"] = self.subUserPwdLevel!
                }
                if self.subUserWithOldAccessKey != nil {
                    map["SubUserWithOldAccessKey"] = self.subUserWithOldAccessKey!
                }
                if self.subUserWithUnusedAccessKey != nil {
                    map["SubUserWithUnusedAccessKey"] = self.subUserWithUnusedAccessKey!
                }
                if self.unusedAkNum != nil {
                    map["UnusedAkNum"] = self.unusedAkNum!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BindMfa") {
                    self.bindMfa = dict["BindMfa"] as! Bool
                }
                if dict.keys.contains("OldAkNum") {
                    self.oldAkNum = dict["OldAkNum"] as! Int32
                }
                if dict.keys.contains("RootWithAccessKey") {
                    self.rootWithAccessKey = dict["RootWithAccessKey"] as! Int32
                }
                if dict.keys.contains("SubUser") {
                    self.subUser = dict["SubUser"] as! Int32
                }
                if dict.keys.contains("SubUserBindMfa") {
                    self.subUserBindMfa = dict["SubUserBindMfa"] as! Int32
                }
                if dict.keys.contains("SubUserPwdLevel") {
                    self.subUserPwdLevel = dict["SubUserPwdLevel"] as! String
                }
                if dict.keys.contains("SubUserWithOldAccessKey") {
                    self.subUserWithOldAccessKey = dict["SubUserWithOldAccessKey"] as! Int32
                }
                if dict.keys.contains("SubUserWithUnusedAccessKey") {
                    self.subUserWithUnusedAccessKey = dict["SubUserWithUnusedAccessKey"] as! Int32
                }
                if dict.keys.contains("UnusedAkNum") {
                    self.unusedAkNum = dict["UnusedAkNum"] as! Int32
                }
            }
        }
        public var accountSecurityPracticeUserInfo: GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo.AccountSecurityPracticeUserInfo?

        public var score: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountSecurityPracticeUserInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountSecurityPracticeUserInfo != nil {
                map["AccountSecurityPracticeUserInfo"] = self.accountSecurityPracticeUserInfo?.toMap()
            }
            if self.score != nil {
                map["Score"] = self.score!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountSecurityPracticeUserInfo") {
                var model = GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo.AccountSecurityPracticeUserInfo()
                model.fromMap(dict["AccountSecurityPracticeUserInfo"] as! [String: Any])
                self.accountSecurityPracticeUserInfo = model
            }
            if dict.keys.contains("Score") {
                self.score = dict["Score"] as! Int32
            }
        }
    }
    public var accountSecurityPracticeInfo: GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountSecurityPracticeInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountSecurityPracticeInfo != nil {
            map["AccountSecurityPracticeInfo"] = self.accountSecurityPracticeInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountSecurityPracticeInfo") {
            var model = GetAccountSecurityPracticeReportResponseBody.AccountSecurityPracticeInfo()
            model.fromMap(dict["AccountSecurityPracticeInfo"] as! [String: Any])
            self.accountSecurityPracticeInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccountSecurityPracticeReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountSecurityPracticeReportResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountSecurityPracticeReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountSummaryResponseBody : Tea.TeaModel {
    public class SummaryMap : Tea.TeaModel {
        public var accessKeysPerUserQuota: Int32?

        public var attachedPoliciesPerGroupQuota: Int32?

        public var attachedPoliciesPerRoleQuota: Int32?

        public var attachedPoliciesPerUserQuota: Int32?

        public var attachedSystemPoliciesPerGroupQuota: Int32?

        public var attachedSystemPoliciesPerRoleQuota: Int32?

        public var attachedSystemPoliciesPerUserQuota: Int32?

        public var conditionsPerAKPolicyQuota: Int32?

        public var groups: Int32?

        public var groupsPerUserQuota: Int32?

        public var groupsQuota: Int32?

        public var IPItemsPerAKPolicyQuota: Int32?

        public var MFADevices: Int32?

        public var MFADevicesInUse: Int32?

        public var policies: Int32?

        public var policiesQuota: Int32?

        public var policySizeQuota: Int32?

        public var roles: Int32?

        public var rolesQuota: Int32?

        public var users: Int32?

        public var usersQuota: Int32?

        public var versionsPerPolicyQuota: Int32?

        public var virtualMFADevicesQuota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeysPerUserQuota != nil {
                map["AccessKeysPerUserQuota"] = self.accessKeysPerUserQuota!
            }
            if self.attachedPoliciesPerGroupQuota != nil {
                map["AttachedPoliciesPerGroupQuota"] = self.attachedPoliciesPerGroupQuota!
            }
            if self.attachedPoliciesPerRoleQuota != nil {
                map["AttachedPoliciesPerRoleQuota"] = self.attachedPoliciesPerRoleQuota!
            }
            if self.attachedPoliciesPerUserQuota != nil {
                map["AttachedPoliciesPerUserQuota"] = self.attachedPoliciesPerUserQuota!
            }
            if self.attachedSystemPoliciesPerGroupQuota != nil {
                map["AttachedSystemPoliciesPerGroupQuota"] = self.attachedSystemPoliciesPerGroupQuota!
            }
            if self.attachedSystemPoliciesPerRoleQuota != nil {
                map["AttachedSystemPoliciesPerRoleQuota"] = self.attachedSystemPoliciesPerRoleQuota!
            }
            if self.attachedSystemPoliciesPerUserQuota != nil {
                map["AttachedSystemPoliciesPerUserQuota"] = self.attachedSystemPoliciesPerUserQuota!
            }
            if self.conditionsPerAKPolicyQuota != nil {
                map["ConditionsPerAKPolicyQuota"] = self.conditionsPerAKPolicyQuota!
            }
            if self.groups != nil {
                map["Groups"] = self.groups!
            }
            if self.groupsPerUserQuota != nil {
                map["GroupsPerUserQuota"] = self.groupsPerUserQuota!
            }
            if self.groupsQuota != nil {
                map["GroupsQuota"] = self.groupsQuota!
            }
            if self.IPItemsPerAKPolicyQuota != nil {
                map["IPItemsPerAKPolicyQuota"] = self.IPItemsPerAKPolicyQuota!
            }
            if self.MFADevices != nil {
                map["MFADevices"] = self.MFADevices!
            }
            if self.MFADevicesInUse != nil {
                map["MFADevicesInUse"] = self.MFADevicesInUse!
            }
            if self.policies != nil {
                map["Policies"] = self.policies!
            }
            if self.policiesQuota != nil {
                map["PoliciesQuota"] = self.policiesQuota!
            }
            if self.policySizeQuota != nil {
                map["PolicySizeQuota"] = self.policySizeQuota!
            }
            if self.roles != nil {
                map["Roles"] = self.roles!
            }
            if self.rolesQuota != nil {
                map["RolesQuota"] = self.rolesQuota!
            }
            if self.users != nil {
                map["Users"] = self.users!
            }
            if self.usersQuota != nil {
                map["UsersQuota"] = self.usersQuota!
            }
            if self.versionsPerPolicyQuota != nil {
                map["VersionsPerPolicyQuota"] = self.versionsPerPolicyQuota!
            }
            if self.virtualMFADevicesQuota != nil {
                map["VirtualMFADevicesQuota"] = self.virtualMFADevicesQuota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeysPerUserQuota") {
                self.accessKeysPerUserQuota = dict["AccessKeysPerUserQuota"] as! Int32
            }
            if dict.keys.contains("AttachedPoliciesPerGroupQuota") {
                self.attachedPoliciesPerGroupQuota = dict["AttachedPoliciesPerGroupQuota"] as! Int32
            }
            if dict.keys.contains("AttachedPoliciesPerRoleQuota") {
                self.attachedPoliciesPerRoleQuota = dict["AttachedPoliciesPerRoleQuota"] as! Int32
            }
            if dict.keys.contains("AttachedPoliciesPerUserQuota") {
                self.attachedPoliciesPerUserQuota = dict["AttachedPoliciesPerUserQuota"] as! Int32
            }
            if dict.keys.contains("AttachedSystemPoliciesPerGroupQuota") {
                self.attachedSystemPoliciesPerGroupQuota = dict["AttachedSystemPoliciesPerGroupQuota"] as! Int32
            }
            if dict.keys.contains("AttachedSystemPoliciesPerRoleQuota") {
                self.attachedSystemPoliciesPerRoleQuota = dict["AttachedSystemPoliciesPerRoleQuota"] as! Int32
            }
            if dict.keys.contains("AttachedSystemPoliciesPerUserQuota") {
                self.attachedSystemPoliciesPerUserQuota = dict["AttachedSystemPoliciesPerUserQuota"] as! Int32
            }
            if dict.keys.contains("ConditionsPerAKPolicyQuota") {
                self.conditionsPerAKPolicyQuota = dict["ConditionsPerAKPolicyQuota"] as! Int32
            }
            if dict.keys.contains("Groups") {
                self.groups = dict["Groups"] as! Int32
            }
            if dict.keys.contains("GroupsPerUserQuota") {
                self.groupsPerUserQuota = dict["GroupsPerUserQuota"] as! Int32
            }
            if dict.keys.contains("GroupsQuota") {
                self.groupsQuota = dict["GroupsQuota"] as! Int32
            }
            if dict.keys.contains("IPItemsPerAKPolicyQuota") {
                self.IPItemsPerAKPolicyQuota = dict["IPItemsPerAKPolicyQuota"] as! Int32
            }
            if dict.keys.contains("MFADevices") {
                self.MFADevices = dict["MFADevices"] as! Int32
            }
            if dict.keys.contains("MFADevicesInUse") {
                self.MFADevicesInUse = dict["MFADevicesInUse"] as! Int32
            }
            if dict.keys.contains("Policies") {
                self.policies = dict["Policies"] as! Int32
            }
            if dict.keys.contains("PoliciesQuota") {
                self.policiesQuota = dict["PoliciesQuota"] as! Int32
            }
            if dict.keys.contains("PolicySizeQuota") {
                self.policySizeQuota = dict["PolicySizeQuota"] as! Int32
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! Int32
            }
            if dict.keys.contains("RolesQuota") {
                self.rolesQuota = dict["RolesQuota"] as! Int32
            }
            if dict.keys.contains("Users") {
                self.users = dict["Users"] as! Int32
            }
            if dict.keys.contains("UsersQuota") {
                self.usersQuota = dict["UsersQuota"] as! Int32
            }
            if dict.keys.contains("VersionsPerPolicyQuota") {
                self.versionsPerPolicyQuota = dict["VersionsPerPolicyQuota"] as! Int32
            }
            if dict.keys.contains("VirtualMFADevicesQuota") {
                self.virtualMFADevicesQuota = dict["VirtualMFADevicesQuota"] as! Int32
            }
        }
    }
    public var requestId: String?

    public var summaryMap: GetAccountSummaryResponseBody.SummaryMap?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.summaryMap?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.summaryMap != nil {
            map["SummaryMap"] = self.summaryMap?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SummaryMap") {
            var model = GetAccountSummaryResponseBody.SummaryMap()
            model.fromMap(dict["SummaryMap"] as! [String: Any])
            self.summaryMap = model
        }
    }
}

public class GetAccountSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountSummaryResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAppSecretRequest : Tea.TeaModel {
    public var appId: String?

    public var appSecretId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.appSecretId != nil {
            map["AppSecretId"] = self.appSecretId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("AppSecretId") {
            self.appSecretId = dict["AppSecretId"] as! String
        }
    }
}

public class GetAppSecretResponseBody : Tea.TeaModel {
    public class AppSecret : Tea.TeaModel {
        public var appId: String?

        public var appSecretId: String?

        public var appSecretValue: String?

        public var createDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appSecretId != nil {
                map["AppSecretId"] = self.appSecretId!
            }
            if self.appSecretValue != nil {
                map["AppSecretValue"] = self.appSecretValue!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppSecretId") {
                self.appSecretId = dict["AppSecretId"] as! String
            }
            if dict.keys.contains("AppSecretValue") {
                self.appSecretValue = dict["AppSecretValue"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
        }
    }
    public var appSecret: GetAppSecretResponseBody.AppSecret?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecret?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecret != nil {
            map["AppSecret"] = self.appSecret?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecret") {
            var model = GetAppSecretResponseBody.AppSecret()
            model.fromMap(dict["AppSecret"] as! [String: Any])
            self.appSecret = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAppSecretResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAppSecretResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAppSecretResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class GetApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Description") {
                            self.description_ = dict["Description"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var predefinedScope: [GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PredefinedScope") {
                        var tmp : [GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in dict["PredefinedScope"] as! [Any] {
                            var model = GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PredefinedScopes") {
                    var model = GetApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(dict["PredefinedScopes"] as! [String: Any])
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RedirectUri") {
                    self.redirectUri = dict["RedirectUri"] as! [String]
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: GetApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: GetApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTokenValidity") {
                self.accessTokenValidity = dict["AccessTokenValidity"] as! Int32
            }
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppType") {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DelegatedScope") {
                var model = GetApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(dict["DelegatedScope"] as! [String: Any])
                self.delegatedScope = model
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IsMultiTenant") {
                self.isMultiTenant = dict["IsMultiTenant"] as! Bool
            }
            if dict.keys.contains("RedirectUris") {
                var model = GetApplicationResponseBody.Application.RedirectUris()
                model.fromMap(dict["RedirectUris"] as! [String: Any])
                self.redirectUris = model
            }
            if dict.keys.contains("RefreshTokenValidity") {
                self.refreshTokenValidity = dict["RefreshTokenValidity"] as! Int32
            }
            if dict.keys.contains("SecretRequired") {
                self.secretRequired = dict["SecretRequired"] as! Bool
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var application: GetApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = GetApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetApplicationResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCredentialReportRequest : Tea.TeaModel {
    public var maxItems: String?

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
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class GetCredentialReportResponseBody : Tea.TeaModel {
    public var content: String?

    public var generatedTime: String?

    public var isTruncated: String?

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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.generatedTime != nil {
            map["GeneratedTime"] = self.generatedTime!
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("GeneratedTime") {
            self.generatedTime = dict["GeneratedTime"] as! String
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! String
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCredentialReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCredentialReportResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCredentialReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDefaultDomainResponseBody : Tea.TeaModel {
    public var defaultDomainName: String?

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
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultDomainName") {
            self.defaultDomainName = dict["DefaultDomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDefaultDomainResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetDefaultDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGroupRequest : Tea.TeaModel {
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class GetGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var group: GetGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = GetGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoginProfileRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class GetLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var autoDisableLoginStatus: String?

        public var lastLoginTime: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

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
            if self.autoDisableLoginStatus != nil {
                map["AutoDisableLoginStatus"] = self.autoDisableLoginStatus!
            }
            if self.lastLoginTime != nil {
                map["LastLoginTime"] = self.lastLoginTime!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoDisableLoginStatus") {
                self.autoDisableLoginStatus = dict["AutoDisableLoginStatus"] as! String
            }
            if dict.keys.contains("LastLoginTime") {
                self.lastLoginTime = dict["LastLoginTime"] as! String
            }
            if dict.keys.contains("MFABindRequired") {
                self.MFABindRequired = dict["MFABindRequired"] as! Bool
            }
            if dict.keys.contains("PasswordResetRequired") {
                self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
            }
        }
    }
    public var loginProfile: GetLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginProfile") {
            var model = GetLoginProfileResponseBody.LoginProfile()
            model.fromMap(dict["LoginProfile"] as! [String: Any])
            self.loginProfile = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginProfileResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetOIDCProviderRequest : Tea.TeaModel {
    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class GetOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: GetOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = GetOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordDifferentCharacter: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordNotContainUserName: Bool?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
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
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordDifferentCharacter != nil {
                map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordNotContainUserName != nil {
                map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HardExpire") {
                self.hardExpire = dict["HardExpire"] as! Bool
            }
            if dict.keys.contains("MaxLoginAttemps") {
                self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
            }
            if dict.keys.contains("MaxPasswordAge") {
                self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordDifferentCharacter") {
                self.minimumPasswordDifferentCharacter = dict["MinimumPasswordDifferentCharacter"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordLength") {
                self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
            }
            if dict.keys.contains("PasswordNotContainUserName") {
                self.passwordNotContainUserName = dict["PasswordNotContainUserName"] as! Bool
            }
            if dict.keys.contains("PasswordReusePrevention") {
                self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
            }
            if dict.keys.contains("RequireLowercaseCharacters") {
                self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
            }
            if dict.keys.contains("RequireNumbers") {
                self.requireNumbers = dict["RequireNumbers"] as! Bool
            }
            if dict.keys.contains("RequireSymbols") {
                self.requireSymbols = dict["RequireSymbols"] as! Bool
            }
            if dict.keys.contains("RequireUppercaseCharacters") {
                self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
            }
        }
    }
    public var passwordPolicy: GetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordPolicy") {
            var model = GetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(dict["PasswordPolicy"] as! [String: Any])
            self.passwordPolicy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPasswordPolicyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPasswordPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSAMLProviderRequest : Tea.TeaModel {
    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("SAMLProviderName") {
            self.SAMLProviderName = dict["SAMLProviderName"] as! String
        }
    }
}

public class GetSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var encodedSAMLMetadataDocument: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.encodedSAMLMetadataDocument != nil {
                map["EncodedSAMLMetadataDocument"] = self.encodedSAMLMetadataDocument!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EncodedSAMLMetadataDocument") {
                self.encodedSAMLMetadataDocument = dict["EncodedSAMLMetadataDocument"] as! String
            }
            if dict.keys.contains("SAMLProviderName") {
                self.SAMLProviderName = dict["SAMLProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: GetSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLProvider") {
            var model = GetSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(dict["SAMLProvider"] as! [String: Any])
            self.SAMLProvider = model
        }
    }
}

public class GetSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSAMLProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSAMLProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageAccessKeys") {
                    self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var allowUserToLoginWithPasskey: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public var MFAOperationForLogin: String?

            public var operationForRiskLogin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.allowUserToLoginWithPasskey != nil {
                    map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                if self.MFAOperationForLogin != nil {
                    map["MFAOperationForLogin"] = self.MFAOperationForLogin!
                }
                if self.operationForRiskLogin != nil {
                    map["OperationForRiskLogin"] = self.operationForRiskLogin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToChangePassword") {
                    self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
                }
                if dict.keys.contains("AllowUserToLoginWithPasskey") {
                    self.allowUserToLoginWithPasskey = dict["AllowUserToLoginWithPasskey"] as! Bool
                }
                if dict.keys.contains("EnableSaveMFATicket") {
                    self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
                }
                if dict.keys.contains("LoginNetworkMasks") {
                    self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
                }
                if dict.keys.contains("LoginSessionDuration") {
                    self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
                }
                if dict.keys.contains("MFAOperationForLogin") {
                    self.MFAOperationForLogin = dict["MFAOperationForLogin"] as! String
                }
                if dict.keys.contains("OperationForRiskLogin") {
                    self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageMFADevices") {
                    self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
                }
            }
        }
        public class MaxIdleDays : Tea.TeaModel {
            public var maxIdleDaysForAccessKeys: Int32?

            public var maxIdleDaysForUsers: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxIdleDaysForAccessKeys != nil {
                    map["MaxIdleDaysForAccessKeys"] = self.maxIdleDaysForAccessKeys!
                }
                if self.maxIdleDaysForUsers != nil {
                    map["MaxIdleDaysForUsers"] = self.maxIdleDaysForUsers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxIdleDaysForAccessKeys") {
                    self.maxIdleDaysForAccessKeys = dict["MaxIdleDaysForAccessKeys"] as! Int32
                }
                if dict.keys.contains("MaxIdleDaysForUsers") {
                    self.maxIdleDaysForUsers = dict["MaxIdleDaysForUsers"] as! Int32
                }
            }
        }
        public class PersonalInfoPreference : Tea.TeaModel {
            public var allowUserToManagePersonalDingTalk: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePersonalDingTalk != nil {
                    map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManagePersonalDingTalk") {
                    self.allowUserToManagePersonalDingTalk = dict["AllowUserToManagePersonalDingTalk"] as! Bool
                }
            }
        }
        public class VerificationPreference : Tea.TeaModel {
            public var verificationTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.verificationTypes != nil {
                    map["VerificationTypes"] = self.verificationTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VerificationTypes") {
                    self.verificationTypes = dict["VerificationTypes"] as! [String]
                }
            }
        }
        public var accessKeyPreference: GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var maxIdleDays: GetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays?

        public var personalInfoPreference: GetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference?

        public var verificationPreference: GetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.maxIdleDays?.validate()
            try self.personalInfoPreference?.validate()
            try self.verificationPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.maxIdleDays != nil {
                map["MaxIdleDays"] = self.maxIdleDays?.toMap()
            }
            if self.personalInfoPreference != nil {
                map["PersonalInfoPreference"] = self.personalInfoPreference?.toMap()
            }
            if self.verificationPreference != nil {
                map["VerificationPreference"] = self.verificationPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(dict["AccessKeyPreference"] as! [String: Any])
                self.accessKeyPreference = model
            }
            if dict.keys.contains("LoginProfilePreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(dict["LoginProfilePreference"] as! [String: Any])
                self.loginProfilePreference = model
            }
            if dict.keys.contains("MFAPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(dict["MFAPreference"] as! [String: Any])
                self.MFAPreference = model
            }
            if dict.keys.contains("MaxIdleDays") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays()
                model.fromMap(dict["MaxIdleDays"] as! [String: Any])
                self.maxIdleDays = model
            }
            if dict.keys.contains("PersonalInfoPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference()
                model.fromMap(dict["PersonalInfoPreference"] as! [String: Any])
                self.personalInfoPreference = model
            }
            if dict.keys.contains("VerificationPreference") {
                var model = GetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference()
                model.fromMap(dict["VerificationPreference"] as! [String: Any])
                self.verificationPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: GetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPreference") {
            var model = GetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(dict["SecurityPreference"] as! [String: Any])
            self.securityPreference = model
        }
    }
}

public class GetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSecurityPreferenceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSecurityPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserRequest : Tea.TeaModel {
    public var userAccessKeyId: String?

    public var userId: String?

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
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class GetUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public class Tags : Tea.TeaModel {
            public class Tag : Tea.TeaModel {
                public var tagKey: String?

                public var tagValue: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tagKey != nil {
                        map["TagKey"] = self.tagKey!
                    }
                    if self.tagValue != nil {
                        map["TagValue"] = self.tagValue!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TagKey") {
                        self.tagKey = dict["TagKey"] as! String
                    }
                    if dict.keys.contains("TagValue") {
                        self.tagValue = dict["TagValue"] as! String
                    }
                }
            }
            public var tag: [GetUserResponseBody.User.Tags.Tag]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.tag != nil {
                    var tmp : [Any] = []
                    for k in self.tag! {
                        tmp.append(k.toMap())
                    }
                    map["Tag"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Tag") {
                    var tmp : [GetUserResponseBody.User.Tags.Tag] = []
                    for v in dict["Tag"] as! [Any] {
                        var model = GetUserResponseBody.User.Tags.Tag()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tag = tmp
                }
            }
        }
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var tags: GetUserResponseBody.User.Tags?

        public var updateDate: String?

        public var userId: String?

        public var userPrincipalName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.tags?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.tags != nil {
                map["Tags"] = self.tags?.toMap()
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLoginDate") {
                self.lastLoginDate = dict["LastLoginDate"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("Tags") {
                var model = GetUserResponseBody.User.Tags()
                model.fromMap(dict["Tags"] as! [String: Any])
                self.tags = model
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = GetUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
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

public class GetUserMFAInfoRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class GetUserMFAInfoResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
        public var serialNumber: String?

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
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var isMFAEnable: Bool?

    public var MFADevice: GetUserMFAInfoResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isMFAEnable != nil {
            map["IsMFAEnable"] = self.isMFAEnable!
        }
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsMFAEnable") {
            self.isMFAEnable = dict["IsMFAEnable"] as! Bool
        }
        if dict.keys.contains("MFADevice") {
            var model = GetUserMFAInfoResponseBody.MFADevice()
            model.fromMap(dict["MFADevice"] as! [String: Any])
            self.MFADevice = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetUserMFAInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserMFAInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserMFAInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserSsoSettingsResponseBody : Tea.TeaModel {
    public class UserSsoSettings : Tea.TeaModel {
        public var auxiliaryDomain: String?

        public var metadataDocument: String?

        public var ssoEnabled: Bool?

        public var ssoLoginWithDomain: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auxiliaryDomain != nil {
                map["AuxiliaryDomain"] = self.auxiliaryDomain!
            }
            if self.metadataDocument != nil {
                map["MetadataDocument"] = self.metadataDocument!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.ssoLoginWithDomain != nil {
                map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuxiliaryDomain") {
                self.auxiliaryDomain = dict["AuxiliaryDomain"] as! String
            }
            if dict.keys.contains("MetadataDocument") {
                self.metadataDocument = dict["MetadataDocument"] as! String
            }
            if dict.keys.contains("SsoEnabled") {
                self.ssoEnabled = dict["SsoEnabled"] as! Bool
            }
            if dict.keys.contains("SsoLoginWithDomain") {
                self.ssoLoginWithDomain = dict["SsoLoginWithDomain"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var userSsoSettings: GetUserSsoSettingsResponseBody.UserSsoSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSsoSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userSsoSettings != nil {
            map["UserSsoSettings"] = self.userSsoSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSsoSettings") {
            var model = GetUserSsoSettingsResponseBody.UserSsoSettings()
            model.fromMap(dict["UserSsoSettings"] as! [String: Any])
            self.userSsoSettings = model
        }
    }
}

public class GetUserSsoSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserSsoSettingsResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserSsoSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVerificationInfoRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class GetVerificationInfoResponseBody : Tea.TeaModel {
    public class SecurityEmailDevice : Tea.TeaModel {
        public var email: String?

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
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public class SecurityPhoneDevice : Tea.TeaModel {
        public var areaCode: String?

        public var phoneNumber: String?

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
            if self.areaCode != nil {
                map["AreaCode"] = self.areaCode!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AreaCode") {
                self.areaCode = dict["AreaCode"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var requestId: String?

    public var securityEmailDevice: GetVerificationInfoResponseBody.SecurityEmailDevice?

    public var securityPhoneDevice: GetVerificationInfoResponseBody.SecurityPhoneDevice?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityEmailDevice?.validate()
        try self.securityPhoneDevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityEmailDevice != nil {
            map["SecurityEmailDevice"] = self.securityEmailDevice?.toMap()
        }
        if self.securityPhoneDevice != nil {
            map["SecurityPhoneDevice"] = self.securityPhoneDevice?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityEmailDevice") {
            var model = GetVerificationInfoResponseBody.SecurityEmailDevice()
            model.fromMap(dict["SecurityEmailDevice"] as! [String: Any])
            self.securityEmailDevice = model
        }
        if dict.keys.contains("SecurityPhoneDevice") {
            var model = GetVerificationInfoResponseBody.SecurityPhoneDevice()
            model.fromMap(dict["SecurityPhoneDevice"] as! [String: Any])
            self.securityPhoneDevice = model
        }
    }
}

public class GetVerificationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVerificationInfoResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVerificationInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessKeysRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class ListAccessKeysResponseBody : Tea.TeaModel {
    public class AccessKeys : Tea.TeaModel {
        public class AccessKey : Tea.TeaModel {
            public var accessKeyId: String?

            public var createDate: String?

            public var status: String?

            public var updateDate: String?

            public override init() {
                super.init()
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
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessKeyId") {
                    self.accessKeyId = dict["AccessKeyId"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var accessKey: [ListAccessKeysResponseBody.AccessKeys.AccessKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKey != nil {
                var tmp : [Any] = []
                for k in self.accessKey! {
                    tmp.append(k.toMap())
                }
                map["AccessKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKey") {
                var tmp : [ListAccessKeysResponseBody.AccessKeys.AccessKey] = []
                for v in dict["AccessKey"] as! [Any] {
                    var model = ListAccessKeysResponseBody.AccessKeys.AccessKey()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessKey = tmp
            }
        }
    }
    public var accessKeys: ListAccessKeysResponseBody.AccessKeys?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessKeys != nil {
            map["AccessKeys"] = self.accessKeys?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessKeys") {
            var model = ListAccessKeysResponseBody.AccessKeys()
            model.fromMap(dict["AccessKeys"] as! [String: Any])
            self.accessKeys = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccessKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessKeysResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAccessKeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAppSecretIdsRequest : Tea.TeaModel {
    public var appId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
    }
}

public class ListAppSecretIdsResponseBody : Tea.TeaModel {
    public class AppSecrets : Tea.TeaModel {
        public class AppSecret : Tea.TeaModel {
            public var appId: String?

            public var appSecretId: String?

            public var createDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appSecretId != nil {
                    map["AppSecretId"] = self.appSecretId!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppSecretId") {
                    self.appSecretId = dict["AppSecretId"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
            }
        }
        public var appSecret: [ListAppSecretIdsResponseBody.AppSecrets.AppSecret]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.appSecret != nil {
                var tmp : [Any] = []
                for k in self.appSecret! {
                    tmp.append(k.toMap())
                }
                map["AppSecret"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppSecret") {
                var tmp : [ListAppSecretIdsResponseBody.AppSecrets.AppSecret] = []
                for v in dict["AppSecret"] as! [Any] {
                    var model = ListAppSecretIdsResponseBody.AppSecrets.AppSecret()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.appSecret = tmp
            }
        }
    }
    public var appSecrets: ListAppSecretIdsResponseBody.AppSecrets?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.appSecrets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appSecrets != nil {
            map["AppSecrets"] = self.appSecrets?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppSecrets") {
            var model = ListAppSecretIdsResponseBody.AppSecrets()
            model.fromMap(dict["AppSecrets"] as! [String: Any])
            self.appSecrets = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAppSecretIdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAppSecretIdsResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAppSecretIdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListApplicationsResponseBody : Tea.TeaModel {
    public class Applications : Tea.TeaModel {
        public class Application : Tea.TeaModel {
            public class DelegatedScope : Tea.TeaModel {
                public class PredefinedScopes : Tea.TeaModel {
                    public class PredefinedScope : Tea.TeaModel {
                        public var description_: String?

                        public var name: String?

                        public var required_: Bool?

                        public override init() {
                            super.init()
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
                            if self.name != nil {
                                map["Name"] = self.name!
                            }
                            if self.required_ != nil {
                                map["Required"] = self.required_!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Description") {
                                self.description_ = dict["Description"] as! String
                            }
                            if dict.keys.contains("Name") {
                                self.name = dict["Name"] as! String
                            }
                            if dict.keys.contains("Required") {
                                self.required_ = dict["Required"] as! Bool
                            }
                        }
                    }
                    public var predefinedScope: [ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.predefinedScope != nil {
                            var tmp : [Any] = []
                            for k in self.predefinedScope! {
                                tmp.append(k.toMap())
                            }
                            map["PredefinedScope"] = tmp
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PredefinedScope") {
                            var tmp : [ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                            for v in dict["PredefinedScope"] as! [Any] {
                                var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.predefinedScope = tmp
                        }
                    }
                }
                public var predefinedScopes: ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.predefinedScopes?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScopes != nil {
                        map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PredefinedScopes") {
                        var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope.PredefinedScopes()
                        model.fromMap(dict["PredefinedScopes"] as! [String: Any])
                        self.predefinedScopes = model
                    }
                }
            }
            public class RedirectUris : Tea.TeaModel {
                public var redirectUri: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.redirectUri != nil {
                        map["RedirectUri"] = self.redirectUri!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RedirectUri") {
                        self.redirectUri = dict["RedirectUri"] as! [String]
                    }
                }
            }
            public var accessTokenValidity: Int32?

            public var accountId: String?

            public var appId: String?

            public var appName: String?

            public var appType: String?

            public var createDate: String?

            public var delegatedScope: ListApplicationsResponseBody.Applications.Application.DelegatedScope?

            public var displayName: String?

            public var isMultiTenant: Bool?

            public var redirectUris: ListApplicationsResponseBody.Applications.Application.RedirectUris?

            public var refreshTokenValidity: Int32?

            public var secretRequired: Bool?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.delegatedScope?.validate()
                try self.redirectUris?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessTokenValidity != nil {
                    map["AccessTokenValidity"] = self.accessTokenValidity!
                }
                if self.accountId != nil {
                    map["AccountId"] = self.accountId!
                }
                if self.appId != nil {
                    map["AppId"] = self.appId!
                }
                if self.appName != nil {
                    map["AppName"] = self.appName!
                }
                if self.appType != nil {
                    map["AppType"] = self.appType!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.delegatedScope != nil {
                    map["DelegatedScope"] = self.delegatedScope?.toMap()
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.isMultiTenant != nil {
                    map["IsMultiTenant"] = self.isMultiTenant!
                }
                if self.redirectUris != nil {
                    map["RedirectUris"] = self.redirectUris?.toMap()
                }
                if self.refreshTokenValidity != nil {
                    map["RefreshTokenValidity"] = self.refreshTokenValidity!
                }
                if self.secretRequired != nil {
                    map["SecretRequired"] = self.secretRequired!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessTokenValidity") {
                    self.accessTokenValidity = dict["AccessTokenValidity"] as! Int32
                }
                if dict.keys.contains("AccountId") {
                    self.accountId = dict["AccountId"] as! String
                }
                if dict.keys.contains("AppId") {
                    self.appId = dict["AppId"] as! String
                }
                if dict.keys.contains("AppName") {
                    self.appName = dict["AppName"] as! String
                }
                if dict.keys.contains("AppType") {
                    self.appType = dict["AppType"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("DelegatedScope") {
                    var model = ListApplicationsResponseBody.Applications.Application.DelegatedScope()
                    model.fromMap(dict["DelegatedScope"] as! [String: Any])
                    self.delegatedScope = model
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("IsMultiTenant") {
                    self.isMultiTenant = dict["IsMultiTenant"] as! Bool
                }
                if dict.keys.contains("RedirectUris") {
                    var model = ListApplicationsResponseBody.Applications.Application.RedirectUris()
                    model.fromMap(dict["RedirectUris"] as! [String: Any])
                    self.redirectUris = model
                }
                if dict.keys.contains("RefreshTokenValidity") {
                    self.refreshTokenValidity = dict["RefreshTokenValidity"] as! Int32
                }
                if dict.keys.contains("SecretRequired") {
                    self.secretRequired = dict["SecretRequired"] as! Bool
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var application: [ListApplicationsResponseBody.Applications.Application]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.application != nil {
                var tmp : [Any] = []
                for k in self.application! {
                    tmp.append(k.toMap())
                }
                map["Application"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Application") {
                var tmp : [ListApplicationsResponseBody.Applications.Application] = []
                for v in dict["Application"] as! [Any] {
                    var model = ListApplicationsResponseBody.Applications.Application()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.application = tmp
            }
        }
    }
    public var applications: ListApplicationsResponseBody.Applications?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.applications?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applications != nil {
            map["Applications"] = self.applications?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Applications") {
            var model = ListApplicationsResponseBody.Applications()
            model.fromMap(dict["Applications"] as! [String: Any])
            self.applications = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListApplicationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListApplicationsResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListApplicationsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var createDate: String?

            public var displayName: String?

            public var groupId: String?

            public var groupName: String?

            public var updateDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var group: [ListGroupsResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                var tmp : [ListGroupsResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = ListGroupsResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsResponseBody.Groups?

    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = ListGroupsResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsForUserRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class ListGroupsForUserResponseBody : Tea.TeaModel {
    public class Groups : Tea.TeaModel {
        public class Group : Tea.TeaModel {
            public var comments: String?

            public var displayName: String?

            public var groupId: String?

            public var groupName: String?

            public var joinDate: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("JoinDate") {
                    self.joinDate = dict["JoinDate"] as! String
                }
            }
        }
        public var group: [ListGroupsForUserResponseBody.Groups.Group]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.group != nil {
                var tmp : [Any] = []
                for k in self.group! {
                    tmp.append(k.toMap())
                }
                map["Group"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                var tmp : [ListGroupsForUserResponseBody.Groups.Group] = []
                for v in dict["Group"] as! [Any] {
                    var model = ListGroupsForUserResponseBody.Groups.Group()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.group = tmp
            }
        }
    }
    public var groups: ListGroupsForUserResponseBody.Groups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groups != nil {
            map["Groups"] = self.groups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var model = ListGroupsForUserResponseBody.Groups()
            model.fromMap(dict["Groups"] as! [String: Any])
            self.groups = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListGroupsForUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsForUserResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGroupsForUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOIDCProvidersRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListOIDCProvidersResponseBody : Tea.TeaModel {
    public class OIDCProviders : Tea.TeaModel {
        public class OIDCProvider : Tea.TeaModel {
            public var arn: String?

            public var clientIds: String?

            public var createDate: String?

            public var description_: String?

            public var fingerprints: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var issuanceLimitTime: Int64?

            public var issuerUrl: String?

            public var OIDCProviderName: String?

            public var updateDate: String?

            public override init() {
                super.init()
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
                if self.clientIds != nil {
                    map["ClientIds"] = self.clientIds!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.fingerprints != nil {
                    map["Fingerprints"] = self.fingerprints!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.issuanceLimitTime != nil {
                    map["IssuanceLimitTime"] = self.issuanceLimitTime!
                }
                if self.issuerUrl != nil {
                    map["IssuerUrl"] = self.issuerUrl!
                }
                if self.OIDCProviderName != nil {
                    map["OIDCProviderName"] = self.OIDCProviderName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Arn") {
                    self.arn = dict["Arn"] as! String
                }
                if dict.keys.contains("ClientIds") {
                    self.clientIds = dict["ClientIds"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Fingerprints") {
                    self.fingerprints = dict["Fingerprints"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IssuanceLimitTime") {
                    self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
                }
                if dict.keys.contains("IssuerUrl") {
                    self.issuerUrl = dict["IssuerUrl"] as! String
                }
                if dict.keys.contains("OIDCProviderName") {
                    self.OIDCProviderName = dict["OIDCProviderName"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var OIDCProvider: [ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.OIDCProvider != nil {
                var tmp : [Any] = []
                for k in self.OIDCProvider! {
                    tmp.append(k.toMap())
                }
                map["OIDCProvider"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OIDCProvider") {
                var tmp : [ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider] = []
                for v in dict["OIDCProvider"] as! [Any] {
                    var model = ListOIDCProvidersResponseBody.OIDCProviders.OIDCProvider()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.OIDCProvider = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var OIDCProviders: ListOIDCProvidersResponseBody.OIDCProviders?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProviders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.OIDCProviders != nil {
            map["OIDCProviders"] = self.OIDCProviders?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("OIDCProviders") {
            var model = ListOIDCProvidersResponseBody.OIDCProviders()
            model.fromMap(dict["OIDCProviders"] as! [String: Any])
            self.OIDCProviders = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListOIDCProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOIDCProvidersResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListOIDCProvidersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPasskeysRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class ListPasskeysResponseBody : Tea.TeaModel {
    public class Passkeys : Tea.TeaModel {
        public var createDate: String?

        public var lastUseDate: String?

        public var passkeyId: String?

        public var passkeyName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.lastUseDate != nil {
                map["LastUseDate"] = self.lastUseDate!
            }
            if self.passkeyId != nil {
                map["PasskeyId"] = self.passkeyId!
            }
            if self.passkeyName != nil {
                map["PasskeyName"] = self.passkeyName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("LastUseDate") {
                self.lastUseDate = dict["LastUseDate"] as! String
            }
            if dict.keys.contains("PasskeyId") {
                self.passkeyId = dict["PasskeyId"] as! String
            }
            if dict.keys.contains("PasskeyName") {
                self.passkeyName = dict["PasskeyName"] as! String
            }
        }
    }
    public var passkeys: [ListPasskeysResponseBody.Passkeys]?

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
        if self.passkeys != nil {
            var tmp : [Any] = []
            for k in self.passkeys! {
                tmp.append(k.toMap())
            }
            map["Passkeys"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Passkeys") {
            var tmp : [ListPasskeysResponseBody.Passkeys] = []
            for v in dict["Passkeys"] as! [Any] {
                var model = ListPasskeysResponseBody.Passkeys()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.passkeys = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPasskeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPasskeysResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPasskeysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPredefinedScopesRequest : Tea.TeaModel {
    public var appType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
    }
}

public class ListPredefinedScopesResponseBody : Tea.TeaModel {
    public class PredefinedScopes : Tea.TeaModel {
        public class PredefinedScope : Tea.TeaModel {
            public var description_: String?

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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var predefinedScope: [ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.predefinedScope != nil {
                var tmp : [Any] = []
                for k in self.predefinedScope! {
                    tmp.append(k.toMap())
                }
                map["PredefinedScope"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PredefinedScope") {
                var tmp : [ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope] = []
                for v in dict["PredefinedScope"] as! [Any] {
                    var model = ListPredefinedScopesResponseBody.PredefinedScopes.PredefinedScope()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.predefinedScope = tmp
            }
        }
    }
    public var predefinedScopes: ListPredefinedScopesResponseBody.PredefinedScopes?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.predefinedScopes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.predefinedScopes != nil {
            map["PredefinedScopes"] = self.predefinedScopes?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PredefinedScopes") {
            var model = ListPredefinedScopesResponseBody.PredefinedScopes()
            model.fromMap(dict["PredefinedScopes"] as! [String: Any])
            self.predefinedScopes = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListPredefinedScopesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPredefinedScopesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPredefinedScopesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSAMLProvidersRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListSAMLProvidersResponseBody : Tea.TeaModel {
    public class SAMLProviders : Tea.TeaModel {
        public class SAMLProvider : Tea.TeaModel {
            public var arn: String?

            public var createDate: String?

            public var description_: String?

            public var SAMLProviderName: String?

            public var updateDate: String?

            public override init() {
                super.init()
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
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.SAMLProviderName != nil {
                    map["SAMLProviderName"] = self.SAMLProviderName!
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Arn") {
                    self.arn = dict["Arn"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("SAMLProviderName") {
                    self.SAMLProviderName = dict["SAMLProviderName"] as! String
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
            }
        }
        public var SAMLProvider: [ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.SAMLProvider != nil {
                var tmp : [Any] = []
                for k in self.SAMLProvider! {
                    tmp.append(k.toMap())
                }
                map["SAMLProvider"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SAMLProvider") {
                var tmp : [ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider] = []
                for v in dict["SAMLProvider"] as! [Any] {
                    var model = ListSAMLProvidersResponseBody.SAMLProviders.SAMLProvider()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.SAMLProvider = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var SAMLProviders: ListSAMLProvidersResponseBody.SAMLProviders?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProviders?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProviders != nil {
            map["SAMLProviders"] = self.SAMLProviders?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLProviders") {
            var model = ListSAMLProvidersResponseBody.SAMLProviders()
            model.fromMap(dict["SAMLProviders"] as! [String: Any])
            self.SAMLProviders = model
        }
    }
}

public class ListSAMLProvidersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSAMLProvidersResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSAMLProvidersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var pageSize: Int32?

    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tag: [ListTagResourcesRequest.Tag]?

    public override init() {
        super.init()
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
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourcePrincipalName") {
            self.resourcePrincipalName = dict["ResourcePrincipalName"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListTagResourcesResponseBody : Tea.TeaModel {
    public class TagResources : Tea.TeaModel {
        public class TagResource : Tea.TeaModel {
            public var resourceId: String?

            public var resourceType: String?

            public var tagKey: String?

            public var tagValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resourceId != nil {
                    map["ResourceId"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["ResourceType"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["TagKey"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["TagValue"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
                    self.tagValue = dict["TagValue"] as! String
                }
            }
        }
        public var tagResource: [ListTagResourcesResponseBody.TagResources.TagResource]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tagResource != nil {
                var tmp : [Any] = []
                for k in self.tagResource! {
                    tmp.append(k.toMap())
                }
                map["TagResource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tagResource = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var nextToken: String?

    public var requestId: String?

    public var tagResources: ListTagResourcesResponseBody.TagResources?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tagResources?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
            self.tagResources = model
        }
    }
}

public class ListTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTagResourcesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserBasicInfosRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var status: String?

    public var tag: [ListUserBasicInfosRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListUserBasicInfosRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListUserBasicInfosRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListUserBasicInfosResponseBody : Tea.TeaModel {
    public class UserBasicInfos : Tea.TeaModel {
        public class UserBasicInfo : Tea.TeaModel {
            public var displayName: String?

            public var status: String?

            public var userId: String?

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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserPrincipalName") {
                    self.userPrincipalName = dict["UserPrincipalName"] as! String
                }
            }
        }
        public var userBasicInfo: [ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userBasicInfo != nil {
                var tmp : [Any] = []
                for k in self.userBasicInfo! {
                    tmp.append(k.toMap())
                }
                map["UserBasicInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserBasicInfo") {
                var tmp : [ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo] = []
                for v in dict["UserBasicInfo"] as! [Any] {
                    var model = ListUserBasicInfosResponseBody.UserBasicInfos.UserBasicInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.userBasicInfo = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var userBasicInfos: ListUserBasicInfosResponseBody.UserBasicInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userBasicInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userBasicInfos != nil {
            map["UserBasicInfos"] = self.userBasicInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserBasicInfos") {
            var model = ListUserBasicInfosResponseBody.UserBasicInfos()
            model.fromMap(dict["UserBasicInfos"] as! [String: Any])
            self.userBasicInfos = model
        }
    }
}

public class ListUserBasicInfosResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserBasicInfosResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUserBasicInfosResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var marker: String?

    public var maxItems: Int32?

    public var status: String?

    public var tag: [ListUsersRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [ListUsersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListUsersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
                public class Tag : Tea.TeaModel {
                    public var tagKey: String?

                    public var tagValue: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.tagKey != nil {
                            map["TagKey"] = self.tagKey!
                        }
                        if self.tagValue != nil {
                            map["TagValue"] = self.tagValue!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("TagKey") {
                            self.tagKey = dict["TagKey"] as! String
                        }
                        if dict.keys.contains("TagValue") {
                            self.tagValue = dict["TagValue"] as! String
                        }
                    }
                }
                public var tag: [ListUsersResponseBody.Users.User.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.tag != nil {
                        var tmp : [Any] = []
                        for k in self.tag! {
                            tmp.append(k.toMap())
                        }
                        map["Tag"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Tag") {
                        var tmp : [ListUsersResponseBody.Users.User.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = ListUsersResponseBody.Users.User.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var comments: String?

            public var createDate: String?

            public var displayName: String?

            public var email: String?

            public var lastLoginDate: String?

            public var mobilePhone: String?

            public var provisionType: String?

            public var status: String?

            public var tags: ListUsersResponseBody.Users.User.Tags?

            public var updateDate: String?

            public var userId: String?

            public var userPrincipalName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comments != nil {
                    map["Comments"] = self.comments!
                }
                if self.createDate != nil {
                    map["CreateDate"] = self.createDate!
                }
                if self.displayName != nil {
                    map["DisplayName"] = self.displayName!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.lastLoginDate != nil {
                    map["LastLoginDate"] = self.lastLoginDate!
                }
                if self.mobilePhone != nil {
                    map["MobilePhone"] = self.mobilePhone!
                }
                if self.provisionType != nil {
                    map["ProvisionType"] = self.provisionType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.updateDate != nil {
                    map["UpdateDate"] = self.updateDate!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comments") {
                    self.comments = dict["Comments"] as! String
                }
                if dict.keys.contains("CreateDate") {
                    self.createDate = dict["CreateDate"] as! String
                }
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("Email") {
                    self.email = dict["Email"] as! String
                }
                if dict.keys.contains("LastLoginDate") {
                    self.lastLoginDate = dict["LastLoginDate"] as! String
                }
                if dict.keys.contains("MobilePhone") {
                    self.mobilePhone = dict["MobilePhone"] as! String
                }
                if dict.keys.contains("ProvisionType") {
                    self.provisionType = dict["ProvisionType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = ListUsersResponseBody.Users.User.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UpdateDate") {
                    self.updateDate = dict["UpdateDate"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserPrincipalName") {
                    self.userPrincipalName = dict["UserPrincipalName"] as! String
                }
            }
        }
        public var user: [ListUsersResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                var tmp : [ListUsersResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = ListUsersResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var model = ListUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
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

public class ListUsersForGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListUsersForGroupResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class User : Tea.TeaModel {
            public var displayName: String?

            public var joinDate: String?

            public var userId: String?

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
                if self.joinDate != nil {
                    map["JoinDate"] = self.joinDate!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userPrincipalName != nil {
                    map["UserPrincipalName"] = self.userPrincipalName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DisplayName") {
                    self.displayName = dict["DisplayName"] as! String
                }
                if dict.keys.contains("JoinDate") {
                    self.joinDate = dict["JoinDate"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserPrincipalName") {
                    self.userPrincipalName = dict["UserPrincipalName"] as! String
                }
            }
        }
        public var user: [ListUsersForGroupResponseBody.Users.User]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.user != nil {
                var tmp : [Any] = []
                for k in self.user! {
                    tmp.append(k.toMap())
                }
                map["User"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("User") {
                var tmp : [ListUsersForGroupResponseBody.Users.User] = []
                for v in dict["User"] as! [Any] {
                    var model = ListUsersForGroupResponseBody.Users.User()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.user = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var users: ListUsersForGroupResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Users") {
            var model = ListUsersForGroupResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListUsersForGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersForGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersForGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVirtualMFADevicesRequest : Tea.TeaModel {
    public var marker: String?

    public var maxItems: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.maxItems != nil {
            map["MaxItems"] = self.maxItems!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("MaxItems") {
            self.maxItems = dict["MaxItems"] as! Int32
        }
    }
}

public class ListVirtualMFADevicesResponseBody : Tea.TeaModel {
    public class VirtualMFADevices : Tea.TeaModel {
        public class VirtualMFADevice : Tea.TeaModel {
            public class User : Tea.TeaModel {
                public var displayName: String?

                public var userId: String?

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
                    if self.userId != nil {
                        map["UserId"] = self.userId!
                    }
                    if self.userPrincipalName != nil {
                        map["UserPrincipalName"] = self.userPrincipalName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DisplayName") {
                        self.displayName = dict["DisplayName"] as! String
                    }
                    if dict.keys.contains("UserId") {
                        self.userId = dict["UserId"] as! String
                    }
                    if dict.keys.contains("UserPrincipalName") {
                        self.userPrincipalName = dict["UserPrincipalName"] as! String
                    }
                }
            }
            public var activateDate: String?

            public var serialNumber: String?

            public var user: ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User?

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
                if self.activateDate != nil {
                    map["ActivateDate"] = self.activateDate!
                }
                if self.serialNumber != nil {
                    map["SerialNumber"] = self.serialNumber!
                }
                if self.user != nil {
                    map["User"] = self.user?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActivateDate") {
                    self.activateDate = dict["ActivateDate"] as! String
                }
                if dict.keys.contains("SerialNumber") {
                    self.serialNumber = dict["SerialNumber"] as! String
                }
                if dict.keys.contains("User") {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice.User()
                    model.fromMap(dict["User"] as! [String: Any])
                    self.user = model
                }
            }
        }
        public var virtualMFADevice: [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.virtualMFADevice != nil {
                var tmp : [Any] = []
                for k in self.virtualMFADevice! {
                    tmp.append(k.toMap())
                }
                map["VirtualMFADevice"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VirtualMFADevice") {
                var tmp : [ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice] = []
                for v in dict["VirtualMFADevice"] as! [Any] {
                    var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices.VirtualMFADevice()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.virtualMFADevice = tmp
            }
        }
    }
    public var isTruncated: Bool?

    public var marker: String?

    public var requestId: String?

    public var virtualMFADevices: ListVirtualMFADevicesResponseBody.VirtualMFADevices?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.virtualMFADevices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isTruncated != nil {
            map["IsTruncated"] = self.isTruncated!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualMFADevices != nil {
            map["VirtualMFADevices"] = self.virtualMFADevices?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsTruncated") {
            self.isTruncated = dict["IsTruncated"] as! Bool
        }
        if dict.keys.contains("Marker") {
            self.marker = dict["Marker"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VirtualMFADevices") {
            var model = ListVirtualMFADevicesResponseBody.VirtualMFADevices()
            model.fromMap(dict["VirtualMFADevices"] as! [String: Any])
            self.virtualMFADevices = model
        }
    }
}

public class ListVirtualMFADevicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualMFADevicesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListVirtualMFADevicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveClientIdFromOIDCProviderRequest : Tea.TeaModel {
    public var clientId: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
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
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class RemoveClientIdFromOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: RemoveClientIdFromOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = RemoveClientIdFromOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveClientIdFromOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveClientIdFromOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveClientIdFromOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveFingerprintFromOIDCProviderRequest : Tea.TeaModel {
    public var fingerprint: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fingerprint != nil {
            map["Fingerprint"] = self.fingerprint!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Fingerprint") {
            self.fingerprint = dict["Fingerprint"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class RemoveFingerprintFromOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: RemoveFingerprintFromOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = RemoveFingerprintFromOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveFingerprintFromOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveFingerprintFromOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveFingerprintFromOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveUserFromGroupRequest : Tea.TeaModel {
    public var groupName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class RemoveUserFromGroupResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RemoveUserFromGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveUserFromGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveUserFromGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetDefaultDomainRequest : Tea.TeaModel {
    public var defaultDomainName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultDomainName") {
            self.defaultDomainName = dict["DefaultDomainName"] as! String
        }
    }
}

public class SetDefaultDomainResponseBody : Tea.TeaModel {
    public var defaultDomainName: String?

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
        if self.defaultDomainName != nil {
            map["DefaultDomainName"] = self.defaultDomainName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultDomainName") {
            self.defaultDomainName = dict["DefaultDomainName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetDefaultDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetDefaultDomainResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetDefaultDomainResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPasswordPolicyRequest : Tea.TeaModel {
    public var hardExpire: Bool?

    public var maxLoginAttemps: Int32?

    public var maxPasswordAge: Int32?

    public var minimumPasswordDifferentCharacter: Int32?

    public var minimumPasswordLength: Int32?

    public var passwordNotContainUserName: Bool?

    public var passwordReusePrevention: Int32?

    public var requireLowercaseCharacters: Bool?

    public var requireNumbers: Bool?

    public var requireSymbols: Bool?

    public var requireUppercaseCharacters: Bool?

    public override init() {
        super.init()
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
        if self.maxLoginAttemps != nil {
            map["MaxLoginAttemps"] = self.maxLoginAttemps!
        }
        if self.maxPasswordAge != nil {
            map["MaxPasswordAge"] = self.maxPasswordAge!
        }
        if self.minimumPasswordDifferentCharacter != nil {
            map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
        }
        if self.minimumPasswordLength != nil {
            map["MinimumPasswordLength"] = self.minimumPasswordLength!
        }
        if self.passwordNotContainUserName != nil {
            map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
        }
        if self.passwordReusePrevention != nil {
            map["PasswordReusePrevention"] = self.passwordReusePrevention!
        }
        if self.requireLowercaseCharacters != nil {
            map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
        }
        if self.requireNumbers != nil {
            map["RequireNumbers"] = self.requireNumbers!
        }
        if self.requireSymbols != nil {
            map["RequireSymbols"] = self.requireSymbols!
        }
        if self.requireUppercaseCharacters != nil {
            map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HardExpire") {
            self.hardExpire = dict["HardExpire"] as! Bool
        }
        if dict.keys.contains("MaxLoginAttemps") {
            self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
        }
        if dict.keys.contains("MaxPasswordAge") {
            self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
        }
        if dict.keys.contains("MinimumPasswordDifferentCharacter") {
            self.minimumPasswordDifferentCharacter = dict["MinimumPasswordDifferentCharacter"] as! Int32
        }
        if dict.keys.contains("MinimumPasswordLength") {
            self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
        }
        if dict.keys.contains("PasswordNotContainUserName") {
            self.passwordNotContainUserName = dict["PasswordNotContainUserName"] as! Bool
        }
        if dict.keys.contains("PasswordReusePrevention") {
            self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
        }
        if dict.keys.contains("RequireLowercaseCharacters") {
            self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
        }
        if dict.keys.contains("RequireNumbers") {
            self.requireNumbers = dict["RequireNumbers"] as! Bool
        }
        if dict.keys.contains("RequireSymbols") {
            self.requireSymbols = dict["RequireSymbols"] as! Bool
        }
        if dict.keys.contains("RequireUppercaseCharacters") {
            self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
        }
    }
}

public class SetPasswordPolicyResponseBody : Tea.TeaModel {
    public class PasswordPolicy : Tea.TeaModel {
        public var hardExpire: Bool?

        public var maxLoginAttemps: Int32?

        public var maxPasswordAge: Int32?

        public var minimumPasswordDifferentCharacter: Int32?

        public var minimumPasswordLength: Int32?

        public var passwordNotContainUserName: Bool?

        public var passwordReusePrevention: Int32?

        public var requireLowercaseCharacters: Bool?

        public var requireNumbers: Bool?

        public var requireSymbols: Bool?

        public var requireUppercaseCharacters: Bool?

        public override init() {
            super.init()
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
            if self.maxLoginAttemps != nil {
                map["MaxLoginAttemps"] = self.maxLoginAttemps!
            }
            if self.maxPasswordAge != nil {
                map["MaxPasswordAge"] = self.maxPasswordAge!
            }
            if self.minimumPasswordDifferentCharacter != nil {
                map["MinimumPasswordDifferentCharacter"] = self.minimumPasswordDifferentCharacter!
            }
            if self.minimumPasswordLength != nil {
                map["MinimumPasswordLength"] = self.minimumPasswordLength!
            }
            if self.passwordNotContainUserName != nil {
                map["PasswordNotContainUserName"] = self.passwordNotContainUserName!
            }
            if self.passwordReusePrevention != nil {
                map["PasswordReusePrevention"] = self.passwordReusePrevention!
            }
            if self.requireLowercaseCharacters != nil {
                map["RequireLowercaseCharacters"] = self.requireLowercaseCharacters!
            }
            if self.requireNumbers != nil {
                map["RequireNumbers"] = self.requireNumbers!
            }
            if self.requireSymbols != nil {
                map["RequireSymbols"] = self.requireSymbols!
            }
            if self.requireUppercaseCharacters != nil {
                map["RequireUppercaseCharacters"] = self.requireUppercaseCharacters!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HardExpire") {
                self.hardExpire = dict["HardExpire"] as! Bool
            }
            if dict.keys.contains("MaxLoginAttemps") {
                self.maxLoginAttemps = dict["MaxLoginAttemps"] as! Int32
            }
            if dict.keys.contains("MaxPasswordAge") {
                self.maxPasswordAge = dict["MaxPasswordAge"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordDifferentCharacter") {
                self.minimumPasswordDifferentCharacter = dict["MinimumPasswordDifferentCharacter"] as! Int32
            }
            if dict.keys.contains("MinimumPasswordLength") {
                self.minimumPasswordLength = dict["MinimumPasswordLength"] as! Int32
            }
            if dict.keys.contains("PasswordNotContainUserName") {
                self.passwordNotContainUserName = dict["PasswordNotContainUserName"] as! Bool
            }
            if dict.keys.contains("PasswordReusePrevention") {
                self.passwordReusePrevention = dict["PasswordReusePrevention"] as! Int32
            }
            if dict.keys.contains("RequireLowercaseCharacters") {
                self.requireLowercaseCharacters = dict["RequireLowercaseCharacters"] as! Bool
            }
            if dict.keys.contains("RequireNumbers") {
                self.requireNumbers = dict["RequireNumbers"] as! Bool
            }
            if dict.keys.contains("RequireSymbols") {
                self.requireSymbols = dict["RequireSymbols"] as! Bool
            }
            if dict.keys.contains("RequireUppercaseCharacters") {
                self.requireUppercaseCharacters = dict["RequireUppercaseCharacters"] as! Bool
            }
        }
    }
    public var passwordPolicy: SetPasswordPolicyResponseBody.PasswordPolicy?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.passwordPolicy != nil {
            map["PasswordPolicy"] = self.passwordPolicy?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasswordPolicy") {
            var model = SetPasswordPolicyResponseBody.PasswordPolicy()
            model.fromMap(dict["PasswordPolicy"] as! [String: Any])
            self.passwordPolicy = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SetPasswordPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPasswordPolicyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetPasswordPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSecurityPreferenceRequest : Tea.TeaModel {
    public var allowUserToChangePassword: Bool?

    public var allowUserToLoginWithPasskey: Bool?

    public var allowUserToManageAccessKeys: Bool?

    public var allowUserToManageMFADevices: Bool?

    public var allowUserToManagePersonalDingTalk: Bool?

    public var enableSaveMFATicket: Bool?

    public var loginNetworkMasks: String?

    public var loginSessionDuration: Int32?

    public var MFAOperationForLogin: String?

    public var operationForRiskLogin: String?

    public var verificationTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUserToChangePassword != nil {
            map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
        }
        if self.allowUserToLoginWithPasskey != nil {
            map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
        }
        if self.allowUserToManageAccessKeys != nil {
            map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
        }
        if self.allowUserToManageMFADevices != nil {
            map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
        }
        if self.allowUserToManagePersonalDingTalk != nil {
            map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
        }
        if self.enableSaveMFATicket != nil {
            map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        if self.loginSessionDuration != nil {
            map["LoginSessionDuration"] = self.loginSessionDuration!
        }
        if self.MFAOperationForLogin != nil {
            map["MFAOperationForLogin"] = self.MFAOperationForLogin!
        }
        if self.operationForRiskLogin != nil {
            map["OperationForRiskLogin"] = self.operationForRiskLogin!
        }
        if self.verificationTypes != nil {
            map["VerificationTypes"] = self.verificationTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowUserToChangePassword") {
            self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
        }
        if dict.keys.contains("AllowUserToLoginWithPasskey") {
            self.allowUserToLoginWithPasskey = dict["AllowUserToLoginWithPasskey"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageAccessKeys") {
            self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageMFADevices") {
            self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
        }
        if dict.keys.contains("AllowUserToManagePersonalDingTalk") {
            self.allowUserToManagePersonalDingTalk = dict["AllowUserToManagePersonalDingTalk"] as! Bool
        }
        if dict.keys.contains("EnableSaveMFATicket") {
            self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
        }
        if dict.keys.contains("LoginNetworkMasks") {
            self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
        }
        if dict.keys.contains("LoginSessionDuration") {
            self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
        }
        if dict.keys.contains("MFAOperationForLogin") {
            self.MFAOperationForLogin = dict["MFAOperationForLogin"] as! String
        }
        if dict.keys.contains("OperationForRiskLogin") {
            self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
        }
        if dict.keys.contains("VerificationTypes") {
            self.verificationTypes = dict["VerificationTypes"] as! [String]
        }
    }
}

public class SetSecurityPreferenceShrinkRequest : Tea.TeaModel {
    public var allowUserToChangePassword: Bool?

    public var allowUserToLoginWithPasskey: Bool?

    public var allowUserToManageAccessKeys: Bool?

    public var allowUserToManageMFADevices: Bool?

    public var allowUserToManagePersonalDingTalk: Bool?

    public var enableSaveMFATicket: Bool?

    public var loginNetworkMasks: String?

    public var loginSessionDuration: Int32?

    public var MFAOperationForLogin: String?

    public var operationForRiskLogin: String?

    public var verificationTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowUserToChangePassword != nil {
            map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
        }
        if self.allowUserToLoginWithPasskey != nil {
            map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
        }
        if self.allowUserToManageAccessKeys != nil {
            map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
        }
        if self.allowUserToManageMFADevices != nil {
            map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
        }
        if self.allowUserToManagePersonalDingTalk != nil {
            map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
        }
        if self.enableSaveMFATicket != nil {
            map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
        }
        if self.loginNetworkMasks != nil {
            map["LoginNetworkMasks"] = self.loginNetworkMasks!
        }
        if self.loginSessionDuration != nil {
            map["LoginSessionDuration"] = self.loginSessionDuration!
        }
        if self.MFAOperationForLogin != nil {
            map["MFAOperationForLogin"] = self.MFAOperationForLogin!
        }
        if self.operationForRiskLogin != nil {
            map["OperationForRiskLogin"] = self.operationForRiskLogin!
        }
        if self.verificationTypesShrink != nil {
            map["VerificationTypes"] = self.verificationTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowUserToChangePassword") {
            self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
        }
        if dict.keys.contains("AllowUserToLoginWithPasskey") {
            self.allowUserToLoginWithPasskey = dict["AllowUserToLoginWithPasskey"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageAccessKeys") {
            self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
        }
        if dict.keys.contains("AllowUserToManageMFADevices") {
            self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
        }
        if dict.keys.contains("AllowUserToManagePersonalDingTalk") {
            self.allowUserToManagePersonalDingTalk = dict["AllowUserToManagePersonalDingTalk"] as! Bool
        }
        if dict.keys.contains("EnableSaveMFATicket") {
            self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
        }
        if dict.keys.contains("LoginNetworkMasks") {
            self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
        }
        if dict.keys.contains("LoginSessionDuration") {
            self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
        }
        if dict.keys.contains("MFAOperationForLogin") {
            self.MFAOperationForLogin = dict["MFAOperationForLogin"] as! String
        }
        if dict.keys.contains("OperationForRiskLogin") {
            self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
        }
        if dict.keys.contains("VerificationTypes") {
            self.verificationTypesShrink = dict["VerificationTypes"] as! String
        }
    }
}

public class SetSecurityPreferenceResponseBody : Tea.TeaModel {
    public class SecurityPreference : Tea.TeaModel {
        public class AccessKeyPreference : Tea.TeaModel {
            public var allowUserToManageAccessKeys: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageAccessKeys != nil {
                    map["AllowUserToManageAccessKeys"] = self.allowUserToManageAccessKeys!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageAccessKeys") {
                    self.allowUserToManageAccessKeys = dict["AllowUserToManageAccessKeys"] as! Bool
                }
            }
        }
        public class LoginProfilePreference : Tea.TeaModel {
            public var allowUserToChangePassword: Bool?

            public var allowUserToLoginWithPasskey: Bool?

            public var enableSaveMFATicket: Bool?

            public var loginNetworkMasks: String?

            public var loginSessionDuration: Int32?

            public var MFAOperationForLogin: String?

            public var operationForRiskLogin: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToChangePassword != nil {
                    map["AllowUserToChangePassword"] = self.allowUserToChangePassword!
                }
                if self.allowUserToLoginWithPasskey != nil {
                    map["AllowUserToLoginWithPasskey"] = self.allowUserToLoginWithPasskey!
                }
                if self.enableSaveMFATicket != nil {
                    map["EnableSaveMFATicket"] = self.enableSaveMFATicket!
                }
                if self.loginNetworkMasks != nil {
                    map["LoginNetworkMasks"] = self.loginNetworkMasks!
                }
                if self.loginSessionDuration != nil {
                    map["LoginSessionDuration"] = self.loginSessionDuration!
                }
                if self.MFAOperationForLogin != nil {
                    map["MFAOperationForLogin"] = self.MFAOperationForLogin!
                }
                if self.operationForRiskLogin != nil {
                    map["OperationForRiskLogin"] = self.operationForRiskLogin!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToChangePassword") {
                    self.allowUserToChangePassword = dict["AllowUserToChangePassword"] as! Bool
                }
                if dict.keys.contains("AllowUserToLoginWithPasskey") {
                    self.allowUserToLoginWithPasskey = dict["AllowUserToLoginWithPasskey"] as! Bool
                }
                if dict.keys.contains("EnableSaveMFATicket") {
                    self.enableSaveMFATicket = dict["EnableSaveMFATicket"] as! Bool
                }
                if dict.keys.contains("LoginNetworkMasks") {
                    self.loginNetworkMasks = dict["LoginNetworkMasks"] as! String
                }
                if dict.keys.contains("LoginSessionDuration") {
                    self.loginSessionDuration = dict["LoginSessionDuration"] as! Int32
                }
                if dict.keys.contains("MFAOperationForLogin") {
                    self.MFAOperationForLogin = dict["MFAOperationForLogin"] as! String
                }
                if dict.keys.contains("OperationForRiskLogin") {
                    self.operationForRiskLogin = dict["OperationForRiskLogin"] as! String
                }
            }
        }
        public class MFAPreference : Tea.TeaModel {
            public var allowUserToManageMFADevices: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManageMFADevices != nil {
                    map["AllowUserToManageMFADevices"] = self.allowUserToManageMFADevices!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManageMFADevices") {
                    self.allowUserToManageMFADevices = dict["AllowUserToManageMFADevices"] as! Bool
                }
            }
        }
        public class MaxIdleDays : Tea.TeaModel {
            public var maxIdleDaysForAccessKeys: Int32?

            public var maxIdleDaysForUsers: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.maxIdleDaysForAccessKeys != nil {
                    map["MaxIdleDaysForAccessKeys"] = self.maxIdleDaysForAccessKeys!
                }
                if self.maxIdleDaysForUsers != nil {
                    map["MaxIdleDaysForUsers"] = self.maxIdleDaysForUsers!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MaxIdleDaysForAccessKeys") {
                    self.maxIdleDaysForAccessKeys = dict["MaxIdleDaysForAccessKeys"] as! Int32
                }
                if dict.keys.contains("MaxIdleDaysForUsers") {
                    self.maxIdleDaysForUsers = dict["MaxIdleDaysForUsers"] as! Int32
                }
            }
        }
        public class PersonalInfoPreference : Tea.TeaModel {
            public var allowUserToManagePersonalDingTalk: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowUserToManagePersonalDingTalk != nil {
                    map["AllowUserToManagePersonalDingTalk"] = self.allowUserToManagePersonalDingTalk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowUserToManagePersonalDingTalk") {
                    self.allowUserToManagePersonalDingTalk = dict["AllowUserToManagePersonalDingTalk"] as! Bool
                }
            }
        }
        public class VerificationPreference : Tea.TeaModel {
            public var verificationTypes: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.verificationTypes != nil {
                    map["VerificationTypes"] = self.verificationTypes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VerificationTypes") {
                    self.verificationTypes = dict["VerificationTypes"] as! [String]
                }
            }
        }
        public var accessKeyPreference: SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference?

        public var loginProfilePreference: SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference?

        public var MFAPreference: SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference?

        public var maxIdleDays: SetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays?

        public var personalInfoPreference: SetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference?

        public var verificationPreference: SetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accessKeyPreference?.validate()
            try self.loginProfilePreference?.validate()
            try self.MFAPreference?.validate()
            try self.maxIdleDays?.validate()
            try self.personalInfoPreference?.validate()
            try self.verificationPreference?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessKeyPreference != nil {
                map["AccessKeyPreference"] = self.accessKeyPreference?.toMap()
            }
            if self.loginProfilePreference != nil {
                map["LoginProfilePreference"] = self.loginProfilePreference?.toMap()
            }
            if self.MFAPreference != nil {
                map["MFAPreference"] = self.MFAPreference?.toMap()
            }
            if self.maxIdleDays != nil {
                map["MaxIdleDays"] = self.maxIdleDays?.toMap()
            }
            if self.personalInfoPreference != nil {
                map["PersonalInfoPreference"] = self.personalInfoPreference?.toMap()
            }
            if self.verificationPreference != nil {
                map["VerificationPreference"] = self.verificationPreference?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessKeyPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.AccessKeyPreference()
                model.fromMap(dict["AccessKeyPreference"] as! [String: Any])
                self.accessKeyPreference = model
            }
            if dict.keys.contains("LoginProfilePreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.LoginProfilePreference()
                model.fromMap(dict["LoginProfilePreference"] as! [String: Any])
                self.loginProfilePreference = model
            }
            if dict.keys.contains("MFAPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MFAPreference()
                model.fromMap(dict["MFAPreference"] as! [String: Any])
                self.MFAPreference = model
            }
            if dict.keys.contains("MaxIdleDays") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.MaxIdleDays()
                model.fromMap(dict["MaxIdleDays"] as! [String: Any])
                self.maxIdleDays = model
            }
            if dict.keys.contains("PersonalInfoPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.PersonalInfoPreference()
                model.fromMap(dict["PersonalInfoPreference"] as! [String: Any])
                self.personalInfoPreference = model
            }
            if dict.keys.contains("VerificationPreference") {
                var model = SetSecurityPreferenceResponseBody.SecurityPreference.VerificationPreference()
                model.fromMap(dict["VerificationPreference"] as! [String: Any])
                self.verificationPreference = model
            }
        }
    }
    public var requestId: String?

    public var securityPreference: SetSecurityPreferenceResponseBody.SecurityPreference?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityPreference?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityPreference != nil {
            map["SecurityPreference"] = self.securityPreference?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityPreference") {
            var model = SetSecurityPreferenceResponseBody.SecurityPreference()
            model.fromMap(dict["SecurityPreference"] as! [String: Any])
            self.securityPreference = model
        }
    }
}

public class SetSecurityPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSecurityPreferenceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetSecurityPreferenceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetUserSsoSettingsRequest : Tea.TeaModel {
    public var auxiliaryDomain: String?

    public var metadataDocument: String?

    public var ssoEnabled: Bool?

    public var ssoLoginWithDomain: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auxiliaryDomain != nil {
            map["AuxiliaryDomain"] = self.auxiliaryDomain!
        }
        if self.metadataDocument != nil {
            map["MetadataDocument"] = self.metadataDocument!
        }
        if self.ssoEnabled != nil {
            map["SsoEnabled"] = self.ssoEnabled!
        }
        if self.ssoLoginWithDomain != nil {
            map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuxiliaryDomain") {
            self.auxiliaryDomain = dict["AuxiliaryDomain"] as! String
        }
        if dict.keys.contains("MetadataDocument") {
            self.metadataDocument = dict["MetadataDocument"] as! String
        }
        if dict.keys.contains("SsoEnabled") {
            self.ssoEnabled = dict["SsoEnabled"] as! Bool
        }
        if dict.keys.contains("SsoLoginWithDomain") {
            self.ssoLoginWithDomain = dict["SsoLoginWithDomain"] as! Bool
        }
    }
}

public class SetUserSsoSettingsResponseBody : Tea.TeaModel {
    public class UserSsoSettings : Tea.TeaModel {
        public var auxiliaryDomain: String?

        public var metadataDocument: String?

        public var ssoEnabled: Bool?

        public var ssoLoginWithDomain: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auxiliaryDomain != nil {
                map["AuxiliaryDomain"] = self.auxiliaryDomain!
            }
            if self.metadataDocument != nil {
                map["MetadataDocument"] = self.metadataDocument!
            }
            if self.ssoEnabled != nil {
                map["SsoEnabled"] = self.ssoEnabled!
            }
            if self.ssoLoginWithDomain != nil {
                map["SsoLoginWithDomain"] = self.ssoLoginWithDomain!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuxiliaryDomain") {
                self.auxiliaryDomain = dict["AuxiliaryDomain"] as! String
            }
            if dict.keys.contains("MetadataDocument") {
                self.metadataDocument = dict["MetadataDocument"] as! String
            }
            if dict.keys.contains("SsoEnabled") {
                self.ssoEnabled = dict["SsoEnabled"] as! Bool
            }
            if dict.keys.contains("SsoLoginWithDomain") {
                self.ssoLoginWithDomain = dict["SsoLoginWithDomain"] as! Bool
            }
        }
    }
    public var requestId: String?

    public var userSsoSettings: SetUserSsoSettingsResponseBody.UserSsoSettings?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.userSsoSettings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userSsoSettings != nil {
            map["UserSsoSettings"] = self.userSsoSettings?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserSsoSettings") {
            var model = SetUserSsoSettingsResponseBody.UserSsoSettings()
            model.fromMap(dict["UserSsoSettings"] as! [String: Any])
            self.userSsoSettings = model
        }
    }
}

public class SetUserSsoSettingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetUserSsoSettingsResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetUserSsoSettingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public class Tag : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tag: [TagResourcesRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourcePrincipalName") {
            self.resourcePrincipalName = dict["ResourcePrincipalName"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class TagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TagResourcesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnbindMFADeviceRequest : Tea.TeaModel {
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
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class UnbindMFADeviceResponseBody : Tea.TeaModel {
    public class MFADevice : Tea.TeaModel {
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
            if self.serialNumber != nil {
                map["SerialNumber"] = self.serialNumber!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SerialNumber") {
                self.serialNumber = dict["SerialNumber"] as! String
            }
        }
    }
    public var MFADevice: UnbindMFADeviceResponseBody.MFADevice?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.MFADevice?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.MFADevice != nil {
            map["MFADevice"] = self.MFADevice?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFADevice") {
            var model = UnbindMFADeviceResponseBody.MFADevice()
            model.fromMap(dict["MFADevice"] as! [String: Any])
            self.MFADevice = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UnbindMFADeviceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnbindMFADeviceResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnbindMFADeviceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var resourceId: [String]?

    public var resourcePrincipalName: [String]?

    public var resourceType: String?

    public var tagKey: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.all != nil {
            map["All"] = self.all!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourcePrincipalName != nil {
            map["ResourcePrincipalName"] = self.resourcePrincipalName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourcePrincipalName") {
            self.resourcePrincipalName = dict["ResourcePrincipalName"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UntagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UntagResourcesResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAccessKeyRequest : Tea.TeaModel {
    public var status: String?

    public var userAccessKeyId: String?

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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userAccessKeyId != nil {
            map["UserAccessKeyId"] = self.userAccessKeyId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserAccessKeyId") {
            self.userAccessKeyId = dict["UserAccessKeyId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class UpdateAccessKeyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateAccessKeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccessKeyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAccessKeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateApplicationRequest : Tea.TeaModel {
    public var appId: String?

    public var newAccessTokenValidity: Int32?

    public var newDisplayName: String?

    public var newIsMultiTenant: Bool?

    public var newPredefinedScopes: String?

    public var newRedirectUris: String?

    public var newRefreshTokenValidity: Int32?

    public var newRequiredScopes: String?

    public var newSecretRequired: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appId != nil {
            map["AppId"] = self.appId!
        }
        if self.newAccessTokenValidity != nil {
            map["NewAccessTokenValidity"] = self.newAccessTokenValidity!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newIsMultiTenant != nil {
            map["NewIsMultiTenant"] = self.newIsMultiTenant!
        }
        if self.newPredefinedScopes != nil {
            map["NewPredefinedScopes"] = self.newPredefinedScopes!
        }
        if self.newRedirectUris != nil {
            map["NewRedirectUris"] = self.newRedirectUris!
        }
        if self.newRefreshTokenValidity != nil {
            map["NewRefreshTokenValidity"] = self.newRefreshTokenValidity!
        }
        if self.newRequiredScopes != nil {
            map["NewRequiredScopes"] = self.newRequiredScopes!
        }
        if self.newSecretRequired != nil {
            map["NewSecretRequired"] = self.newSecretRequired!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("NewAccessTokenValidity") {
            self.newAccessTokenValidity = dict["NewAccessTokenValidity"] as! Int32
        }
        if dict.keys.contains("NewDisplayName") {
            self.newDisplayName = dict["NewDisplayName"] as! String
        }
        if dict.keys.contains("NewIsMultiTenant") {
            self.newIsMultiTenant = dict["NewIsMultiTenant"] as! Bool
        }
        if dict.keys.contains("NewPredefinedScopes") {
            self.newPredefinedScopes = dict["NewPredefinedScopes"] as! String
        }
        if dict.keys.contains("NewRedirectUris") {
            self.newRedirectUris = dict["NewRedirectUris"] as! String
        }
        if dict.keys.contains("NewRefreshTokenValidity") {
            self.newRefreshTokenValidity = dict["NewRefreshTokenValidity"] as! Int32
        }
        if dict.keys.contains("NewRequiredScopes") {
            self.newRequiredScopes = dict["NewRequiredScopes"] as! String
        }
        if dict.keys.contains("NewSecretRequired") {
            self.newSecretRequired = dict["NewSecretRequired"] as! Bool
        }
    }
}

public class UpdateApplicationResponseBody : Tea.TeaModel {
    public class Application : Tea.TeaModel {
        public class DelegatedScope : Tea.TeaModel {
            public class PredefinedScopes : Tea.TeaModel {
                public class PredefinedScope : Tea.TeaModel {
                    public var description_: String?

                    public var name: String?

                    public var required_: Bool?

                    public override init() {
                        super.init()
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
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Description") {
                            self.description_ = dict["Description"] as! String
                        }
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                    }
                }
                public var predefinedScope: [UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.predefinedScope != nil {
                        var tmp : [Any] = []
                        for k in self.predefinedScope! {
                            tmp.append(k.toMap())
                        }
                        map["PredefinedScope"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PredefinedScope") {
                        var tmp : [UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope] = []
                        for v in dict["PredefinedScope"] as! [Any] {
                            var model = UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes.PredefinedScope()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.predefinedScope = tmp
                    }
                }
            }
            public var predefinedScopes: UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.predefinedScopes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.predefinedScopes != nil {
                    map["PredefinedScopes"] = self.predefinedScopes?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PredefinedScopes") {
                    var model = UpdateApplicationResponseBody.Application.DelegatedScope.PredefinedScopes()
                    model.fromMap(dict["PredefinedScopes"] as! [String: Any])
                    self.predefinedScopes = model
                }
            }
        }
        public class RedirectUris : Tea.TeaModel {
            public var redirectUri: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.redirectUri != nil {
                    map["RedirectUri"] = self.redirectUri!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RedirectUri") {
                    self.redirectUri = dict["RedirectUri"] as! [String]
                }
            }
        }
        public var accessTokenValidity: Int32?

        public var accountId: String?

        public var appId: String?

        public var appName: String?

        public var appType: String?

        public var createDate: String?

        public var delegatedScope: UpdateApplicationResponseBody.Application.DelegatedScope?

        public var displayName: String?

        public var isMultiTenant: Bool?

        public var redirectUris: UpdateApplicationResponseBody.Application.RedirectUris?

        public var refreshTokenValidity: Int32?

        public var secretRequired: Bool?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.delegatedScope?.validate()
            try self.redirectUris?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessTokenValidity != nil {
                map["AccessTokenValidity"] = self.accessTokenValidity!
            }
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.appId != nil {
                map["AppId"] = self.appId!
            }
            if self.appName != nil {
                map["AppName"] = self.appName!
            }
            if self.appType != nil {
                map["AppType"] = self.appType!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.delegatedScope != nil {
                map["DelegatedScope"] = self.delegatedScope?.toMap()
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.isMultiTenant != nil {
                map["IsMultiTenant"] = self.isMultiTenant!
            }
            if self.redirectUris != nil {
                map["RedirectUris"] = self.redirectUris?.toMap()
            }
            if self.refreshTokenValidity != nil {
                map["RefreshTokenValidity"] = self.refreshTokenValidity!
            }
            if self.secretRequired != nil {
                map["SecretRequired"] = self.secretRequired!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessTokenValidity") {
                self.accessTokenValidity = dict["AccessTokenValidity"] as! Int32
            }
            if dict.keys.contains("AccountId") {
                self.accountId = dict["AccountId"] as! String
            }
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("AppName") {
                self.appName = dict["AppName"] as! String
            }
            if dict.keys.contains("AppType") {
                self.appType = dict["AppType"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DelegatedScope") {
                var model = UpdateApplicationResponseBody.Application.DelegatedScope()
                model.fromMap(dict["DelegatedScope"] as! [String: Any])
                self.delegatedScope = model
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("IsMultiTenant") {
                self.isMultiTenant = dict["IsMultiTenant"] as! Bool
            }
            if dict.keys.contains("RedirectUris") {
                var model = UpdateApplicationResponseBody.Application.RedirectUris()
                model.fromMap(dict["RedirectUris"] as! [String: Any])
                self.redirectUris = model
            }
            if dict.keys.contains("RefreshTokenValidity") {
                self.refreshTokenValidity = dict["RefreshTokenValidity"] as! Int32
            }
            if dict.keys.contains("SecretRequired") {
                self.secretRequired = dict["SecretRequired"] as! Bool
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var application: UpdateApplicationResponseBody.Application?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.application?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.application != nil {
            map["Application"] = self.application?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            var model = UpdateApplicationResponseBody.Application()
            model.fromMap(dict["Application"] as! [String: Any])
            self.application = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateApplicationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateApplicationResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateApplicationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var groupName: String?

    public var newComments: String?

    public var newDisplayName: String?

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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newGroupName != nil {
            map["NewGroupName"] = self.newGroupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("NewComments") {
            self.newComments = dict["NewComments"] as! String
        }
        if dict.keys.contains("NewDisplayName") {
            self.newDisplayName = dict["NewDisplayName"] as! String
        }
        if dict.keys.contains("NewGroupName") {
            self.newGroupName = dict["NewGroupName"] as! String
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
    public class Group : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var groupId: String?

        public var groupName: String?

        public var updateDate: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.groupId != nil {
                map["GroupId"] = self.groupId!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("GroupId") {
                self.groupId = dict["GroupId"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var group: UpdateGroupResponseBody.Group?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.group?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.group != nil {
            map["Group"] = self.group?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Group") {
            var model = UpdateGroupResponseBody.Group()
            model.fromMap(dict["Group"] as! [String: Any])
            self.group = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateLoginProfileRequest : Tea.TeaModel {
    public var MFABindRequired: Bool?

    public var password: String?

    public var passwordResetRequired: Bool?

    public var status: String?

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
        if self.MFABindRequired != nil {
            map["MFABindRequired"] = self.MFABindRequired!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordResetRequired != nil {
            map["PasswordResetRequired"] = self.passwordResetRequired!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MFABindRequired") {
            self.MFABindRequired = dict["MFABindRequired"] as! Bool
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordResetRequired") {
            self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class UpdateLoginProfileResponseBody : Tea.TeaModel {
    public class LoginProfile : Tea.TeaModel {
        public var autoDisableLoginStatus: String?

        public var MFABindRequired: Bool?

        public var passwordResetRequired: Bool?

        public var status: String?

        public var updateDate: String?

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
            if self.autoDisableLoginStatus != nil {
                map["AutoDisableLoginStatus"] = self.autoDisableLoginStatus!
            }
            if self.MFABindRequired != nil {
                map["MFABindRequired"] = self.MFABindRequired!
            }
            if self.passwordResetRequired != nil {
                map["PasswordResetRequired"] = self.passwordResetRequired!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AutoDisableLoginStatus") {
                self.autoDisableLoginStatus = dict["AutoDisableLoginStatus"] as! String
            }
            if dict.keys.contains("MFABindRequired") {
                self.MFABindRequired = dict["MFABindRequired"] as! Bool
            }
            if dict.keys.contains("PasswordResetRequired") {
                self.passwordResetRequired = dict["PasswordResetRequired"] as! Bool
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
            }
        }
    }
    public var loginProfile: UpdateLoginProfileResponseBody.LoginProfile?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.loginProfile?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginProfile != nil {
            map["LoginProfile"] = self.loginProfile?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginProfile") {
            var model = UpdateLoginProfileResponseBody.LoginProfile()
            model.fromMap(dict["LoginProfile"] as! [String: Any])
            self.loginProfile = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateLoginProfileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateLoginProfileResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateLoginProfileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateOIDCProviderRequest : Tea.TeaModel {
    public var clientIds: String?

    public var issuanceLimitTime: Int64?

    public var newDescription: String?

    public var OIDCProviderName: String?

    public override init() {
        super.init()
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
        if self.issuanceLimitTime != nil {
            map["IssuanceLimitTime"] = self.issuanceLimitTime!
        }
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.OIDCProviderName != nil {
            map["OIDCProviderName"] = self.OIDCProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientIds") {
            self.clientIds = dict["ClientIds"] as! String
        }
        if dict.keys.contains("IssuanceLimitTime") {
            self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
        }
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("OIDCProviderName") {
            self.OIDCProviderName = dict["OIDCProviderName"] as! String
        }
    }
}

public class UpdateOIDCProviderResponseBody : Tea.TeaModel {
    public class OIDCProvider : Tea.TeaModel {
        public var arn: String?

        public var clientIds: String?

        public var createDate: String?

        public var description_: String?

        public var fingerprints: String?

        public var gmtCreate: String?

        public var gmtModified: String?

        public var issuanceLimitTime: Int64?

        public var issuerUrl: String?

        public var OIDCProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.clientIds != nil {
                map["ClientIds"] = self.clientIds!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fingerprints != nil {
                map["Fingerprints"] = self.fingerprints!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.issuanceLimitTime != nil {
                map["IssuanceLimitTime"] = self.issuanceLimitTime!
            }
            if self.issuerUrl != nil {
                map["IssuerUrl"] = self.issuerUrl!
            }
            if self.OIDCProviderName != nil {
                map["OIDCProviderName"] = self.OIDCProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("ClientIds") {
                self.clientIds = dict["ClientIds"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Fingerprints") {
                self.fingerprints = dict["Fingerprints"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! String
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! String
            }
            if dict.keys.contains("IssuanceLimitTime") {
                self.issuanceLimitTime = dict["IssuanceLimitTime"] as! Int64
            }
            if dict.keys.contains("IssuerUrl") {
                self.issuerUrl = dict["IssuerUrl"] as! String
            }
            if dict.keys.contains("OIDCProviderName") {
                self.OIDCProviderName = dict["OIDCProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var OIDCProvider: UpdateOIDCProviderResponseBody.OIDCProvider?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.OIDCProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.OIDCProvider != nil {
            map["OIDCProvider"] = self.OIDCProvider?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OIDCProvider") {
            var model = UpdateOIDCProviderResponseBody.OIDCProvider()
            model.fromMap(dict["OIDCProvider"] as! [String: Any])
            self.OIDCProvider = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdateOIDCProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOIDCProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateOIDCProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdatePasskeyRequest : Tea.TeaModel {
    public var passkeyId: String?

    public var passkeyName: String?

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
        if self.passkeyId != nil {
            map["PasskeyId"] = self.passkeyId!
        }
        if self.passkeyName != nil {
            map["PasskeyName"] = self.passkeyName!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PasskeyId") {
            self.passkeyId = dict["PasskeyId"] as! String
        }
        if dict.keys.contains("PasskeyName") {
            self.passkeyName = dict["PasskeyName"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class UpdatePasskeyResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpdatePasskeyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePasskeyResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdatePasskeyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateSAMLProviderRequest : Tea.TeaModel {
    public var newDescription: String?

    public var newEncodedSAMLMetadataDocument: String?

    public var SAMLProviderName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.newDescription != nil {
            map["NewDescription"] = self.newDescription!
        }
        if self.newEncodedSAMLMetadataDocument != nil {
            map["NewEncodedSAMLMetadataDocument"] = self.newEncodedSAMLMetadataDocument!
        }
        if self.SAMLProviderName != nil {
            map["SAMLProviderName"] = self.SAMLProviderName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewDescription") {
            self.newDescription = dict["NewDescription"] as! String
        }
        if dict.keys.contains("NewEncodedSAMLMetadataDocument") {
            self.newEncodedSAMLMetadataDocument = dict["NewEncodedSAMLMetadataDocument"] as! String
        }
        if dict.keys.contains("SAMLProviderName") {
            self.SAMLProviderName = dict["SAMLProviderName"] as! String
        }
    }
}

public class UpdateSAMLProviderResponseBody : Tea.TeaModel {
    public class SAMLProvider : Tea.TeaModel {
        public var arn: String?

        public var createDate: String?

        public var description_: String?

        public var SAMLProviderName: String?

        public var updateDate: String?

        public override init() {
            super.init()
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
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.SAMLProviderName != nil {
                map["SAMLProviderName"] = self.SAMLProviderName!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Arn") {
                self.arn = dict["Arn"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("SAMLProviderName") {
                self.SAMLProviderName = dict["SAMLProviderName"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
        }
    }
    public var requestId: String?

    public var SAMLProvider: UpdateSAMLProviderResponseBody.SAMLProvider?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.SAMLProvider?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SAMLProvider != nil {
            map["SAMLProvider"] = self.SAMLProvider?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SAMLProvider") {
            var model = UpdateSAMLProviderResponseBody.SAMLProvider()
            model.fromMap(dict["SAMLProvider"] as! [String: Any])
            self.SAMLProvider = model
        }
    }
}

public class UpdateSAMLProviderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateSAMLProviderResponseBody?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateSAMLProviderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var newComments: String?

    public var newDisplayName: String?

    public var newEmail: String?

    public var newMobilePhone: String?

    public var newUserPrincipalName: String?

    public var userId: String?

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
        if self.newComments != nil {
            map["NewComments"] = self.newComments!
        }
        if self.newDisplayName != nil {
            map["NewDisplayName"] = self.newDisplayName!
        }
        if self.newEmail != nil {
            map["NewEmail"] = self.newEmail!
        }
        if self.newMobilePhone != nil {
            map["NewMobilePhone"] = self.newMobilePhone!
        }
        if self.newUserPrincipalName != nil {
            map["NewUserPrincipalName"] = self.newUserPrincipalName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userPrincipalName != nil {
            map["UserPrincipalName"] = self.userPrincipalName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewComments") {
            self.newComments = dict["NewComments"] as! String
        }
        if dict.keys.contains("NewDisplayName") {
            self.newDisplayName = dict["NewDisplayName"] as! String
        }
        if dict.keys.contains("NewEmail") {
            self.newEmail = dict["NewEmail"] as! String
        }
        if dict.keys.contains("NewMobilePhone") {
            self.newMobilePhone = dict["NewMobilePhone"] as! String
        }
        if dict.keys.contains("NewUserPrincipalName") {
            self.newUserPrincipalName = dict["NewUserPrincipalName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserPrincipalName") {
            self.userPrincipalName = dict["UserPrincipalName"] as! String
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var comments: String?

        public var createDate: String?

        public var displayName: String?

        public var email: String?

        public var lastLoginDate: String?

        public var mobilePhone: String?

        public var provisionType: String?

        public var updateDate: String?

        public var userId: String?

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
            if self.comments != nil {
                map["Comments"] = self.comments!
            }
            if self.createDate != nil {
                map["CreateDate"] = self.createDate!
            }
            if self.displayName != nil {
                map["DisplayName"] = self.displayName!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.lastLoginDate != nil {
                map["LastLoginDate"] = self.lastLoginDate!
            }
            if self.mobilePhone != nil {
                map["MobilePhone"] = self.mobilePhone!
            }
            if self.provisionType != nil {
                map["ProvisionType"] = self.provisionType!
            }
            if self.updateDate != nil {
                map["UpdateDate"] = self.updateDate!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userPrincipalName != nil {
                map["UserPrincipalName"] = self.userPrincipalName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comments") {
                self.comments = dict["Comments"] as! String
            }
            if dict.keys.contains("CreateDate") {
                self.createDate = dict["CreateDate"] as! String
            }
            if dict.keys.contains("DisplayName") {
                self.displayName = dict["DisplayName"] as! String
            }
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLoginDate") {
                self.lastLoginDate = dict["LastLoginDate"] as! String
            }
            if dict.keys.contains("MobilePhone") {
                self.mobilePhone = dict["MobilePhone"] as! String
            }
            if dict.keys.contains("ProvisionType") {
                self.provisionType = dict["ProvisionType"] as! String
            }
            if dict.keys.contains("UpdateDate") {
                self.updateDate = dict["UpdateDate"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserPrincipalName") {
                self.userPrincipalName = dict["UserPrincipalName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("User") {
            var model = UpdateUserResponseBody.User()
            model.fromMap(dict["User"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
