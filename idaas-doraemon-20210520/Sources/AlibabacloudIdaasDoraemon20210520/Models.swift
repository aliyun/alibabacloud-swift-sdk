import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAuthenticatorRegistrationRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorType: String?

    public var clientExtendParamsJson: String?

    public var clientExtendParamsJsonSign: String?

    public var registrationContext: String?

    public var serverExtendParamsJson: String?

    public var userDisplayName: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.clientExtendParamsJson != nil {
            map["ClientExtendParamsJson"] = self.clientExtendParamsJson!
        }
        if self.clientExtendParamsJsonSign != nil {
            map["ClientExtendParamsJsonSign"] = self.clientExtendParamsJsonSign!
        }
        if self.registrationContext != nil {
            map["RegistrationContext"] = self.registrationContext!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.userDisplayName != nil {
            map["UserDisplayName"] = self.userDisplayName!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJson") {
            self.clientExtendParamsJson = dict["ClientExtendParamsJson"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJsonSign") {
            self.clientExtendParamsJsonSign = dict["ClientExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("RegistrationContext") {
            self.registrationContext = dict["RegistrationContext"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("UserDisplayName") {
            self.userDisplayName = dict["UserDisplayName"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateAuthenticatorRegistrationResponseBody : Tea.TeaModel {
    public var challengeBase64: String?

    public var options: String?

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
        if self.challengeBase64 != nil {
            map["ChallengeBase64"] = self.challengeBase64!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChallengeBase64") {
            self.challengeBase64 = dict["ChallengeBase64"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAuthenticatorRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAuthenticatorRegistrationResponseBody?

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
            var model = CreateAuthenticatorRegistrationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserAuthenticateOptionsRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorType: String?

    public var bindHashBase64: String?

    public var clientExtendParamsJson: String?

    public var clientExtendParamsJsonSign: String?

    public var serverExtendParamsJson: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.bindHashBase64 != nil {
            map["BindHashBase64"] = self.bindHashBase64!
        }
        if self.clientExtendParamsJson != nil {
            map["ClientExtendParamsJson"] = self.clientExtendParamsJson!
        }
        if self.clientExtendParamsJsonSign != nil {
            map["ClientExtendParamsJsonSign"] = self.clientExtendParamsJsonSign!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("BindHashBase64") {
            self.bindHashBase64 = dict["BindHashBase64"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJson") {
            self.clientExtendParamsJson = dict["ClientExtendParamsJson"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJsonSign") {
            self.clientExtendParamsJsonSign = dict["ClientExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class CreateUserAuthenticateOptionsResponseBody : Tea.TeaModel {
    public var challengeBase64: String?

    public var options: String?

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
        if self.challengeBase64 != nil {
            map["ChallengeBase64"] = self.challengeBase64!
        }
        if self.options != nil {
            map["Options"] = self.options!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChallengeBase64") {
            self.challengeBase64 = dict["ChallengeBase64"] as! String
        }
        if dict.keys.contains("Options") {
            self.options = dict["Options"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateUserAuthenticateOptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserAuthenticateOptionsResponseBody?

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
            var model = CreateUserAuthenticateOptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeregisterAuthenticatorRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorUuid: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class DeregisterAuthenticatorResponseBody : Tea.TeaModel {
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

public class DeregisterAuthenticatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeregisterAuthenticatorResponseBody?

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
            var model = DeregisterAuthenticatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FetchAccessTokenRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var mobileExtendParamsJson: String?

    public var mobileExtendParamsJsonSign: String?

    public var serverExtendParamsJson: String?

    public var userId: String?

    public var XClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.mobileExtendParamsJson != nil {
            map["MobileExtendParamsJson"] = self.mobileExtendParamsJson!
        }
        if self.mobileExtendParamsJsonSign != nil {
            map["MobileExtendParamsJsonSign"] = self.mobileExtendParamsJsonSign!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.XClientIp != nil {
            map["XClientIp"] = self.XClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("MobileExtendParamsJson") {
            self.mobileExtendParamsJson = dict["MobileExtendParamsJson"] as! String
        }
        if dict.keys.contains("MobileExtendParamsJsonSign") {
            self.mobileExtendParamsJsonSign = dict["MobileExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("XClientIp") {
            self.XClientIp = dict["XClientIp"] as! String
        }
    }
}

public class FetchAccessTokenResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accessToken: String?

        public var expiresIn: String?

        public var idToken: String?

        public var refreshToken: String?

        public var scope: String?

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
                map["Access_token"] = self.accessToken!
            }
            if self.expiresIn != nil {
                map["Expires_in"] = self.expiresIn!
            }
            if self.idToken != nil {
                map["Id_token"] = self.idToken!
            }
            if self.refreshToken != nil {
                map["Refresh_token"] = self.refreshToken!
            }
            if self.scope != nil {
                map["Scope"] = self.scope!
            }
            if self.tokenType != nil {
                map["Token_type"] = self.tokenType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Access_token") {
                self.accessToken = dict["Access_token"] as! String
            }
            if dict.keys.contains("Expires_in") {
                self.expiresIn = dict["Expires_in"] as! String
            }
            if dict.keys.contains("Id_token") {
                self.idToken = dict["Id_token"] as! String
            }
            if dict.keys.contains("Refresh_token") {
                self.refreshToken = dict["Refresh_token"] as! String
            }
            if dict.keys.contains("Scope") {
                self.scope = dict["Scope"] as! String
            }
            if dict.keys.contains("Token_type") {
                self.tokenType = dict["Token_type"] as! String
            }
        }
    }
    public var code: String?

    public var data: FetchAccessTokenResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            var model = FetchAccessTokenResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FetchAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FetchAccessTokenResponseBody?

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
            var model = FetchAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAuthenticatorRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorUuid: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class GetAuthenticatorResponseBody : Tea.TeaModel {
    public class Authenticator : Tea.TeaModel {
        public var authenticatorName: String?

        public var authenticatorUuid: String?

        public var credentialId: String?

        public var customAuthenticator: String?

        public var lastVerifySourceIp: String?

        public var lastVerifyTime: Int64?

        public var lastVerifyUserAgent: String?

        public var registerSourceIp: String?

        public var registerTime: Int64?

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
            if self.authenticatorName != nil {
                map["AuthenticatorName"] = self.authenticatorName!
            }
            if self.authenticatorUuid != nil {
                map["AuthenticatorUuid"] = self.authenticatorUuid!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.customAuthenticator != nil {
                map["CustomAuthenticator"] = self.customAuthenticator!
            }
            if self.lastVerifySourceIp != nil {
                map["LastVerifySourceIp"] = self.lastVerifySourceIp!
            }
            if self.lastVerifyTime != nil {
                map["LastVerifyTime"] = self.lastVerifyTime!
            }
            if self.lastVerifyUserAgent != nil {
                map["LastVerifyUserAgent"] = self.lastVerifyUserAgent!
            }
            if self.registerSourceIp != nil {
                map["RegisterSourceIp"] = self.registerSourceIp!
            }
            if self.registerTime != nil {
                map["RegisterTime"] = self.registerTime!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthenticatorName") {
                self.authenticatorName = dict["AuthenticatorName"] as! String
            }
            if dict.keys.contains("AuthenticatorUuid") {
                self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("CustomAuthenticator") {
                self.customAuthenticator = dict["CustomAuthenticator"] as! String
            }
            if dict.keys.contains("LastVerifySourceIp") {
                self.lastVerifySourceIp = dict["LastVerifySourceIp"] as! String
            }
            if dict.keys.contains("LastVerifyTime") {
                self.lastVerifyTime = dict["LastVerifyTime"] as! Int64
            }
            if dict.keys.contains("LastVerifyUserAgent") {
                self.lastVerifyUserAgent = dict["LastVerifyUserAgent"] as! String
            }
            if dict.keys.contains("RegisterSourceIp") {
                self.registerSourceIp = dict["RegisterSourceIp"] as! String
            }
            if dict.keys.contains("RegisterTime") {
                self.registerTime = dict["RegisterTime"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var authenticator: GetAuthenticatorResponseBody.Authenticator?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authenticator?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticator != nil {
            map["Authenticator"] = self.authenticator?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authenticator") {
            var model = GetAuthenticatorResponseBody.Authenticator()
            model.fromMap(dict["Authenticator"] as! [String: Any])
            self.authenticator = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAuthenticatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAuthenticatorResponseBody?

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
            var model = GetAuthenticatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthenticationLogsRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorType: String?

    public var authenticatorUuid: String?

    public var credentialId: String?

    public var fromTime: Int64?

    public var logTag: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var toTime: Int64?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.credentialId != nil {
            map["CredentialId"] = self.credentialId!
        }
        if self.fromTime != nil {
            map["FromTime"] = self.fromTime!
        }
        if self.logTag != nil {
            map["LogTag"] = self.logTag!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.toTime != nil {
            map["ToTime"] = self.toTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("CredentialId") {
            self.credentialId = dict["CredentialId"] as! String
        }
        if dict.keys.contains("FromTime") {
            self.fromTime = dict["FromTime"] as! Int64
        }
        if dict.keys.contains("LogTag") {
            self.logTag = dict["LogTag"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ToTime") {
            self.toTime = dict["ToTime"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListAuthenticationLogsResponseBody : Tea.TeaModel {
    public class AuthenticationLogContent : Tea.TeaModel {
        public var aliUid: String?

        public var applicationExternalId: String?

        public var applicationUuid: String?

        public var authenticationAction: String?

        public var authenticationTime: Int64?

        public var authenticatorName: String?

        public var authenticatorType: String?

        public var authenticatorUuid: String?

        public var challengeBase64: String?

        public var credentialId: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var logParams: String?

        public var logTag: String?

        public var rawAuthenticationContext: String?

        public var tenantId: String?

        public var userAgent: String?

        public var userId: String?

        public var userSourceIp: String?

        public var verifyResult: Bool?

        public override init() {
            super.init()
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
            if self.applicationExternalId != nil {
                map["ApplicationExternalId"] = self.applicationExternalId!
            }
            if self.applicationUuid != nil {
                map["ApplicationUuid"] = self.applicationUuid!
            }
            if self.authenticationAction != nil {
                map["AuthenticationAction"] = self.authenticationAction!
            }
            if self.authenticationTime != nil {
                map["AuthenticationTime"] = self.authenticationTime!
            }
            if self.authenticatorName != nil {
                map["AuthenticatorName"] = self.authenticatorName!
            }
            if self.authenticatorType != nil {
                map["AuthenticatorType"] = self.authenticatorType!
            }
            if self.authenticatorUuid != nil {
                map["AuthenticatorUuid"] = self.authenticatorUuid!
            }
            if self.challengeBase64 != nil {
                map["ChallengeBase64"] = self.challengeBase64!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.logParams != nil {
                map["LogParams"] = self.logParams!
            }
            if self.logTag != nil {
                map["LogTag"] = self.logTag!
            }
            if self.rawAuthenticationContext != nil {
                map["RawAuthenticationContext"] = self.rawAuthenticationContext!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userAgent != nil {
                map["UserAgent"] = self.userAgent!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userSourceIp != nil {
                map["UserSourceIp"] = self.userSourceIp!
            }
            if self.verifyResult != nil {
                map["VerifyResult"] = self.verifyResult!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("ApplicationExternalId") {
                self.applicationExternalId = dict["ApplicationExternalId"] as! String
            }
            if dict.keys.contains("ApplicationUuid") {
                self.applicationUuid = dict["ApplicationUuid"] as! String
            }
            if dict.keys.contains("AuthenticationAction") {
                self.authenticationAction = dict["AuthenticationAction"] as! String
            }
            if dict.keys.contains("AuthenticationTime") {
                self.authenticationTime = dict["AuthenticationTime"] as! Int64
            }
            if dict.keys.contains("AuthenticatorName") {
                self.authenticatorName = dict["AuthenticatorName"] as! String
            }
            if dict.keys.contains("AuthenticatorType") {
                self.authenticatorType = dict["AuthenticatorType"] as! String
            }
            if dict.keys.contains("AuthenticatorUuid") {
                self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
            }
            if dict.keys.contains("ChallengeBase64") {
                self.challengeBase64 = dict["ChallengeBase64"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("LogParams") {
                self.logParams = dict["LogParams"] as! String
            }
            if dict.keys.contains("LogTag") {
                self.logTag = dict["LogTag"] as! String
            }
            if dict.keys.contains("RawAuthenticationContext") {
                self.rawAuthenticationContext = dict["RawAuthenticationContext"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserAgent") {
                self.userAgent = dict["UserAgent"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserSourceIp") {
                self.userSourceIp = dict["UserSourceIp"] as! String
            }
            if dict.keys.contains("VerifyResult") {
                self.verifyResult = dict["VerifyResult"] as! Bool
            }
        }
    }
    public var authenticationLogContent: [ListAuthenticationLogsResponseBody.AuthenticationLogContent]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.authenticationLogContent != nil {
            var tmp : [Any] = []
            for k in self.authenticationLogContent! {
                tmp.append(k.toMap())
            }
            map["AuthenticationLogContent"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationLogContent") {
            var tmp : [ListAuthenticationLogsResponseBody.AuthenticationLogContent] = []
            for v in dict["AuthenticationLogContent"] as! [Any] {
                var model = ListAuthenticationLogsResponseBody.AuthenticationLogContent()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authenticationLogContent = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListAuthenticationLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthenticationLogsResponseBody?

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
            var model = ListAuthenticationLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthenticatorOpsLogsRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorType: String?

    public var authenticatorUuid: String?

    public var fromTime: Int64?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var toTime: Int64?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.fromTime != nil {
            map["FromTime"] = self.fromTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.toTime != nil {
            map["ToTime"] = self.toTime!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("FromTime") {
            self.fromTime = dict["FromTime"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("ToTime") {
            self.toTime = dict["ToTime"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListAuthenticatorOpsLogsResponseBody : Tea.TeaModel {
    public class AuthenticationLogContent : Tea.TeaModel {
        public var aliUid: String?

        public var applicationExternalId: String?

        public var applicationUuid: String?

        public var authenticatorName: String?

        public var authenticatorType: String?

        public var authenticatorUuid: String?

        public var challengeBase64: String?

        public var credentialId: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var logParams: String?

        public var operationAction: String?

        public var operationResult: Bool?

        public var operationTime: Int64?

        public var rawContext: String?

        public var tenantId: String?

        public var userAgent: String?

        public var userId: String?

        public var userSourceIp: String?

        public override init() {
            super.init()
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
            if self.applicationExternalId != nil {
                map["ApplicationExternalId"] = self.applicationExternalId!
            }
            if self.applicationUuid != nil {
                map["ApplicationUuid"] = self.applicationUuid!
            }
            if self.authenticatorName != nil {
                map["AuthenticatorName"] = self.authenticatorName!
            }
            if self.authenticatorType != nil {
                map["AuthenticatorType"] = self.authenticatorType!
            }
            if self.authenticatorUuid != nil {
                map["AuthenticatorUuid"] = self.authenticatorUuid!
            }
            if self.challengeBase64 != nil {
                map["ChallengeBase64"] = self.challengeBase64!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.logParams != nil {
                map["LogParams"] = self.logParams!
            }
            if self.operationAction != nil {
                map["OperationAction"] = self.operationAction!
            }
            if self.operationResult != nil {
                map["OperationResult"] = self.operationResult!
            }
            if self.operationTime != nil {
                map["OperationTime"] = self.operationTime!
            }
            if self.rawContext != nil {
                map["RawContext"] = self.rawContext!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userAgent != nil {
                map["UserAgent"] = self.userAgent!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userSourceIp != nil {
                map["UserSourceIp"] = self.userSourceIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! String
            }
            if dict.keys.contains("ApplicationExternalId") {
                self.applicationExternalId = dict["ApplicationExternalId"] as! String
            }
            if dict.keys.contains("ApplicationUuid") {
                self.applicationUuid = dict["ApplicationUuid"] as! String
            }
            if dict.keys.contains("AuthenticatorName") {
                self.authenticatorName = dict["AuthenticatorName"] as! String
            }
            if dict.keys.contains("AuthenticatorType") {
                self.authenticatorType = dict["AuthenticatorType"] as! String
            }
            if dict.keys.contains("AuthenticatorUuid") {
                self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
            }
            if dict.keys.contains("ChallengeBase64") {
                self.challengeBase64 = dict["ChallengeBase64"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("ErrorCode") {
                self.errorCode = dict["ErrorCode"] as! String
            }
            if dict.keys.contains("ErrorMessage") {
                self.errorMessage = dict["ErrorMessage"] as! String
            }
            if dict.keys.contains("LogParams") {
                self.logParams = dict["LogParams"] as! String
            }
            if dict.keys.contains("OperationAction") {
                self.operationAction = dict["OperationAction"] as! String
            }
            if dict.keys.contains("OperationResult") {
                self.operationResult = dict["OperationResult"] as! Bool
            }
            if dict.keys.contains("OperationTime") {
                self.operationTime = dict["OperationTime"] as! Int64
            }
            if dict.keys.contains("RawContext") {
                self.rawContext = dict["RawContext"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("UserAgent") {
                self.userAgent = dict["UserAgent"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserSourceIp") {
                self.userSourceIp = dict["UserSourceIp"] as! String
            }
        }
    }
    public var authenticationLogContent: [ListAuthenticatorOpsLogsResponseBody.AuthenticationLogContent]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.authenticationLogContent != nil {
            var tmp : [Any] = []
            for k in self.authenticationLogContent! {
                tmp.append(k.toMap())
            }
            map["AuthenticationLogContent"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationLogContent") {
            var tmp : [ListAuthenticatorOpsLogsResponseBody.AuthenticationLogContent] = []
            for v in dict["AuthenticationLogContent"] as! [Any] {
                var model = ListAuthenticatorOpsLogsResponseBody.AuthenticationLogContent()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authenticationLogContent = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListAuthenticatorOpsLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthenticatorOpsLogsResponseBody?

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
            var model = ListAuthenticatorOpsLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAuthenticatorsRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorType: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListAuthenticatorsResponseBody : Tea.TeaModel {
    public class Authenticator : Tea.TeaModel {
        public var applicationExternalId: String?

        public var authenticatorName: String?

        public var authenticatorUuid: String?

        public var credentialId: String?

        public var lastVerifyTime: Int64?

        public var registerTime: Int64?

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
            if self.applicationExternalId != nil {
                map["ApplicationExternalId"] = self.applicationExternalId!
            }
            if self.authenticatorName != nil {
                map["AuthenticatorName"] = self.authenticatorName!
            }
            if self.authenticatorUuid != nil {
                map["AuthenticatorUuid"] = self.authenticatorUuid!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.lastVerifyTime != nil {
                map["LastVerifyTime"] = self.lastVerifyTime!
            }
            if self.registerTime != nil {
                map["RegisterTime"] = self.registerTime!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ApplicationExternalId") {
                self.applicationExternalId = dict["ApplicationExternalId"] as! String
            }
            if dict.keys.contains("AuthenticatorName") {
                self.authenticatorName = dict["AuthenticatorName"] as! String
            }
            if dict.keys.contains("AuthenticatorUuid") {
                self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("LastVerifyTime") {
                self.lastVerifyTime = dict["LastVerifyTime"] as! Int64
            }
            if dict.keys.contains("RegisterTime") {
                self.registerTime = dict["RegisterTime"] as! Int64
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var authenticator: [ListAuthenticatorsResponseBody.Authenticator]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.authenticator != nil {
            var tmp : [Any] = []
            for k in self.authenticator! {
                tmp.append(k.toMap())
            }
            map["Authenticator"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Authenticator") {
            var tmp : [ListAuthenticatorsResponseBody.Authenticator] = []
            for v in dict["Authenticator"] as! [Any] {
                var model = ListAuthenticatorsResponseBody.Authenticator()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.authenticator = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListAuthenticatorsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAuthenticatorsResponseBody?

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
            var model = ListAuthenticatorsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCostUnitOrdersRequest : Tea.TeaModel {
    public var beginDate: String?

    public var finalDate: String?

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
        if self.beginDate != nil {
            map["BeginDate"] = self.beginDate!
        }
        if self.finalDate != nil {
            map["FinalDate"] = self.finalDate!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BeginDate") {
            self.beginDate = dict["BeginDate"] as! String
        }
        if dict.keys.contains("FinalDate") {
            self.finalDate = dict["FinalDate"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListCostUnitOrdersResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var aliOrderCode: String?

        public var aliOrderInstanceId: String?

        public var createTime: Int64?

        public var exhausted: Bool?

        public var expiredTime: Int64?

        public var orderStatus: String?

        public var refundTime: Int64?

        public var totalCostUnit: Int64?

        public var usedCostUnit: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliOrderCode != nil {
                map["AliOrderCode"] = self.aliOrderCode!
            }
            if self.aliOrderInstanceId != nil {
                map["AliOrderInstanceId"] = self.aliOrderInstanceId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.exhausted != nil {
                map["Exhausted"] = self.exhausted!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.orderStatus != nil {
                map["OrderStatus"] = self.orderStatus!
            }
            if self.refundTime != nil {
                map["RefundTime"] = self.refundTime!
            }
            if self.totalCostUnit != nil {
                map["TotalCostUnit"] = self.totalCostUnit!
            }
            if self.usedCostUnit != nil {
                map["UsedCostUnit"] = self.usedCostUnit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliOrderCode") {
                self.aliOrderCode = dict["AliOrderCode"] as! String
            }
            if dict.keys.contains("AliOrderInstanceId") {
                self.aliOrderInstanceId = dict["AliOrderInstanceId"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Exhausted") {
                self.exhausted = dict["Exhausted"] as! Bool
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! Int64
            }
            if dict.keys.contains("OrderStatus") {
                self.orderStatus = dict["OrderStatus"] as! String
            }
            if dict.keys.contains("RefundTime") {
                self.refundTime = dict["RefundTime"] as! Int64
            }
            if dict.keys.contains("TotalCostUnit") {
                self.totalCostUnit = dict["TotalCostUnit"] as! Int64
            }
            if dict.keys.contains("UsedCostUnit") {
                self.usedCostUnit = dict["UsedCostUnit"] as! Int64
            }
        }
    }
    public var items: [ListCostUnitOrdersResponseBody.Items]?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalElements: Int64?

    public var totalPages: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalElements != nil {
            map["TotalElements"] = self.totalElements!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var tmp : [ListCostUnitOrdersResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = ListCostUnitOrdersResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int64
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int64
        }
    }
}

public class ListCostUnitOrdersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCostUnitOrdersResponseBody?

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
            var model = ListCostUnitOrdersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOrderConsumeStatisticRecordsRequest : Tea.TeaModel {
    public var aliOrderCode: String?

    public var applicationExternalId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var serviceCode: String?

    public var statisticTimeMax: String?

    public var statisticTimeMin: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliOrderCode != nil {
            map["AliOrderCode"] = self.aliOrderCode!
        }
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.statisticTimeMax != nil {
            map["StatisticTimeMax"] = self.statisticTimeMax!
        }
        if self.statisticTimeMin != nil {
            map["StatisticTimeMin"] = self.statisticTimeMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliOrderCode") {
            self.aliOrderCode = dict["AliOrderCode"] as! String
        }
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("StatisticTimeMax") {
            self.statisticTimeMax = dict["StatisticTimeMax"] as! String
        }
        if dict.keys.contains("StatisticTimeMin") {
            self.statisticTimeMin = dict["StatisticTimeMin"] as! String
        }
    }
}

public class ListOrderConsumeStatisticRecordsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var aliOrderCode: String?

        public var applicationExternalId: String?

        public var chargedCount: Int64?

        public var serviceCode: String?

        public var statisticTime: Int64?

        public var totalPrice: Int64?

        public var unitPrice: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliOrderCode != nil {
                map["AliOrderCode"] = self.aliOrderCode!
            }
            if self.applicationExternalId != nil {
                map["ApplicationExternalId"] = self.applicationExternalId!
            }
            if self.chargedCount != nil {
                map["ChargedCount"] = self.chargedCount!
            }
            if self.serviceCode != nil {
                map["ServiceCode"] = self.serviceCode!
            }
            if self.statisticTime != nil {
                map["StatisticTime"] = self.statisticTime!
            }
            if self.totalPrice != nil {
                map["TotalPrice"] = self.totalPrice!
            }
            if self.unitPrice != nil {
                map["UnitPrice"] = self.unitPrice!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliOrderCode") {
                self.aliOrderCode = dict["AliOrderCode"] as! String
            }
            if dict.keys.contains("ApplicationExternalId") {
                self.applicationExternalId = dict["ApplicationExternalId"] as! String
            }
            if dict.keys.contains("ChargedCount") {
                self.chargedCount = dict["ChargedCount"] as! Int64
            }
            if dict.keys.contains("ServiceCode") {
                self.serviceCode = dict["ServiceCode"] as! String
            }
            if dict.keys.contains("StatisticTime") {
                self.statisticTime = dict["StatisticTime"] as! Int64
            }
            if dict.keys.contains("TotalPrice") {
                self.totalPrice = dict["TotalPrice"] as! Int64
            }
            if dict.keys.contains("UnitPrice") {
                self.unitPrice = dict["UnitPrice"] as! Int64
            }
        }
    }
    public var items: [ListOrderConsumeStatisticRecordsResponseBody.Items]?

    public var pageSize: Int64?

    public var requestId: String?

    public var totalElements: Int64?

    public var totalPages: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalElements != nil {
            map["TotalElements"] = self.totalElements!
        }
        if self.totalPages != nil {
            map["TotalPages"] = self.totalPages!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") {
            var tmp : [ListOrderConsumeStatisticRecordsResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = ListOrderConsumeStatisticRecordsResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int64
        }
        if dict.keys.contains("TotalPages") {
            self.totalPages = dict["TotalPages"] as! Int64
        }
    }
}

public class ListOrderConsumeStatisticRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOrderConsumeStatisticRecordsResponseBody?

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
            var model = ListOrderConsumeStatisticRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPwnedPasswordsRequest : Tea.TeaModel {
    public var prefixHexPasswordSha1Hash: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prefixHexPasswordSha1Hash != nil {
            map["PrefixHexPasswordSha1Hash"] = self.prefixHexPasswordSha1Hash!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrefixHexPasswordSha1Hash") {
            self.prefixHexPasswordSha1Hash = dict["PrefixHexPasswordSha1Hash"] as! String
        }
    }
}

public class ListPwnedPasswordsResponseBody : Tea.TeaModel {
    public class PwnedPasswordInfos : Tea.TeaModel {
        public var hexPasswordSha1Hash: String?

        public var pwnedCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.hexPasswordSha1Hash != nil {
                map["HexPasswordSha1Hash"] = self.hexPasswordSha1Hash!
            }
            if self.pwnedCount != nil {
                map["PwnedCount"] = self.pwnedCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HexPasswordSha1Hash") {
                self.hexPasswordSha1Hash = dict["HexPasswordSha1Hash"] as! String
            }
            if dict.keys.contains("PwnedCount") {
                self.pwnedCount = dict["PwnedCount"] as! Int64
            }
        }
    }
    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var pwnedPasswordInfos: [ListPwnedPasswordsResponseBody.PwnedPasswordInfos]?

    public var requestId: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pwnedPasswordInfos != nil {
            var tmp : [Any] = []
            for k in self.pwnedPasswordInfos! {
                tmp.append(k.toMap())
            }
            map["PwnedPasswordInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PwnedPasswordInfos") {
            var tmp : [ListPwnedPasswordsResponseBody.PwnedPasswordInfos] = []
            for v in dict["PwnedPasswordInfos"] as! [Any] {
                var model = ListPwnedPasswordsResponseBody.PwnedPasswordInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pwnedPasswordInfos = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
    }
}

public class ListPwnedPasswordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPwnedPasswordsResponseBody?

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
            var model = ListPwnedPasswordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var applicationExternalId: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public var userDisplayName: String?

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
            if self.userDisplayName != nil {
                map["UserDisplayName"] = self.userDisplayName!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserDisplayName") {
                self.userDisplayName = dict["UserDisplayName"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var requestId: String?

    public var totalCount: Int64?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Users") {
            var tmp : [ListUsersResponseBody.Users] = []
            for v in dict["Users"] as! [Any] {
                var model = ListUsersResponseBody.Users()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

public class QuerySmsReportsRequest : Tea.TeaModel {
    public var appId: String?

    public var eventId: String?

    public override init() {
        super.init()
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
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppId") {
            self.appId = dict["AppId"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
    }
}

public class QuerySmsReportsResponseBody : Tea.TeaModel {
    public class SmsReports : Tea.TeaModel {
        public var appId: String?

        public var chargedCount: Int32?

        public var code: String?

        public var eventId: String?

        public var mobile: String?

        public var sn: String?

        public var stat: String?

        public var tenantId: String?

        public var tid: String?

        public var time: String?

        public override init() {
            super.init()
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
            if self.chargedCount != nil {
                map["ChargedCount"] = self.chargedCount!
            }
            if self.code != nil {
                map["Code"] = self.code!
            }
            if self.eventId != nil {
                map["EventId"] = self.eventId!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.sn != nil {
                map["Sn"] = self.sn!
            }
            if self.stat != nil {
                map["Stat"] = self.stat!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.tid != nil {
                map["Tid"] = self.tid!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AppId") {
                self.appId = dict["AppId"] as! String
            }
            if dict.keys.contains("ChargedCount") {
                self.chargedCount = dict["ChargedCount"] as! Int32
            }
            if dict.keys.contains("Code") {
                self.code = dict["Code"] as! String
            }
            if dict.keys.contains("EventId") {
                self.eventId = dict["EventId"] as! String
            }
            if dict.keys.contains("Mobile") {
                self.mobile = dict["Mobile"] as! String
            }
            if dict.keys.contains("Sn") {
                self.sn = dict["Sn"] as! String
            }
            if dict.keys.contains("Stat") {
                self.stat = dict["Stat"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
            if dict.keys.contains("Tid") {
                self.tid = dict["Tid"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
        }
    }
    public var requestId: String?

    public var smsReports: [QuerySmsReportsResponseBody.SmsReports]?

    public var totalElements: Int64?

    public override init() {
        super.init()
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
        if self.smsReports != nil {
            var tmp : [Any] = []
            for k in self.smsReports! {
                tmp.append(k.toMap())
            }
            map["SmsReports"] = tmp
        }
        if self.totalElements != nil {
            map["TotalElements"] = self.totalElements!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SmsReports") {
            var tmp : [QuerySmsReportsResponseBody.SmsReports] = []
            for v in dict["SmsReports"] as! [Any] {
                var model = QuerySmsReportsResponseBody.SmsReports()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.smsReports = tmp
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int64
        }
    }
}

public class QuerySmsReportsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsReportsResponseBody?

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
            var model = QuerySmsReportsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySmsUpsResponseBody : Tea.TeaModel {
    public class SmsUps : Tea.TeaModel {
        public var content: String?

        public var destCode: String?

        public var phoneNumber: String?

        public var sendTime: String?

        public var sequenceId: String?

        public var tenantId: String?

        public override init() {
            super.init()
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
            if self.destCode != nil {
                map["DestCode"] = self.destCode!
            }
            if self.phoneNumber != nil {
                map["PhoneNumber"] = self.phoneNumber!
            }
            if self.sendTime != nil {
                map["SendTime"] = self.sendTime!
            }
            if self.sequenceId != nil {
                map["SequenceId"] = self.sequenceId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Content") {
                self.content = dict["Content"] as! String
            }
            if dict.keys.contains("DestCode") {
                self.destCode = dict["DestCode"] as! String
            }
            if dict.keys.contains("PhoneNumber") {
                self.phoneNumber = dict["PhoneNumber"] as! String
            }
            if dict.keys.contains("SendTime") {
                self.sendTime = dict["SendTime"] as! String
            }
            if dict.keys.contains("SequenceId") {
                self.sequenceId = dict["SequenceId"] as! String
            }
            if dict.keys.contains("TenantId") {
                self.tenantId = dict["TenantId"] as! String
            }
        }
    }
    public var requestId: String?

    public var smsUps: [QuerySmsUpsResponseBody.SmsUps]?

    public var totalElements: Int64?

    public override init() {
        super.init()
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
        if self.smsUps != nil {
            var tmp : [Any] = []
            for k in self.smsUps! {
                tmp.append(k.toMap())
            }
            map["SmsUps"] = tmp
        }
        if self.totalElements != nil {
            map["TotalElements"] = self.totalElements!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SmsUps") {
            var tmp : [QuerySmsUpsResponseBody.SmsUps] = []
            for v in dict["SmsUps"] as! [Any] {
                var model = QuerySmsUpsResponseBody.SmsUps()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.smsUps = tmp
        }
        if dict.keys.contains("TotalElements") {
            self.totalElements = dict["TotalElements"] as! Int64
        }
    }
}

public class QuerySmsUpsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySmsUpsResponseBody?

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
            var model = QuerySmsUpsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RegisterAuthenticatorRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorName: String?

    public var authenticatorType: String?

    public var clientExtendParamsJson: String?

    public var clientExtendParamsJsonSign: String?

    public var logParams: String?

    public var registrationContext: String?

    public var requireChallengeBase64: String?

    public var serverExtendParamsJson: String?

    public var userId: String?

    public var userSourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorName != nil {
            map["AuthenticatorName"] = self.authenticatorName!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.clientExtendParamsJson != nil {
            map["ClientExtendParamsJson"] = self.clientExtendParamsJson!
        }
        if self.clientExtendParamsJsonSign != nil {
            map["ClientExtendParamsJsonSign"] = self.clientExtendParamsJsonSign!
        }
        if self.logParams != nil {
            map["LogParams"] = self.logParams!
        }
        if self.registrationContext != nil {
            map["RegistrationContext"] = self.registrationContext!
        }
        if self.requireChallengeBase64 != nil {
            map["RequireChallengeBase64"] = self.requireChallengeBase64!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userSourceIp != nil {
            map["UserSourceIp"] = self.userSourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorName") {
            self.authenticatorName = dict["AuthenticatorName"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJson") {
            self.clientExtendParamsJson = dict["ClientExtendParamsJson"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJsonSign") {
            self.clientExtendParamsJsonSign = dict["ClientExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("LogParams") {
            self.logParams = dict["LogParams"] as! String
        }
        if dict.keys.contains("RegistrationContext") {
            self.registrationContext = dict["RegistrationContext"] as! String
        }
        if dict.keys.contains("RequireChallengeBase64") {
            self.requireChallengeBase64 = dict["RequireChallengeBase64"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserSourceIp") {
            self.userSourceIp = dict["UserSourceIp"] as! String
        }
    }
}

public class RegisterAuthenticatorResponseBody : Tea.TeaModel {
    public var authenticatorUuid: String?

    public var etasResponseSting: String?

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
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.etasResponseSting != nil {
            map["EtasResponseSting"] = self.etasResponseSting!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("EtasResponseSting") {
            self.etasResponseSting = dict["EtasResponseSting"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RegisterAuthenticatorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterAuthenticatorResponseBody?

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
            var model = RegisterAuthenticatorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ServiceInvokeRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var doraemonAction: String?

    public var mobileExtendParamsJson: String?

    public var mobileExtendParamsJsonSign: String?

    public var serverExtendParamsJson: String?

    public var serviceCode: String?

    public var testModel: Bool?

    public var XClientIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.doraemonAction != nil {
            map["DoraemonAction"] = self.doraemonAction!
        }
        if self.mobileExtendParamsJson != nil {
            map["MobileExtendParamsJson"] = self.mobileExtendParamsJson!
        }
        if self.mobileExtendParamsJsonSign != nil {
            map["MobileExtendParamsJsonSign"] = self.mobileExtendParamsJsonSign!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.serviceCode != nil {
            map["ServiceCode"] = self.serviceCode!
        }
        if self.testModel != nil {
            map["TestModel"] = self.testModel!
        }
        if self.XClientIp != nil {
            map["XClientIp"] = self.XClientIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("DoraemonAction") {
            self.doraemonAction = dict["DoraemonAction"] as! String
        }
        if dict.keys.contains("MobileExtendParamsJson") {
            self.mobileExtendParamsJson = dict["MobileExtendParamsJson"] as! String
        }
        if dict.keys.contains("MobileExtendParamsJsonSign") {
            self.mobileExtendParamsJsonSign = dict["MobileExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("ServiceCode") {
            self.serviceCode = dict["ServiceCode"] as! String
        }
        if dict.keys.contains("TestModel") {
            self.testModel = dict["TestModel"] as! Bool
        }
        if dict.keys.contains("XClientIp") {
            self.XClientIp = dict["XClientIp"] as! String
        }
    }
}

public class ServiceInvokeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var eventId: String?

    public var idToken: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.eventId != nil {
            map["EventId"] = self.eventId!
        }
        if self.idToken != nil {
            map["IdToken"] = self.idToken!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("EventId") {
            self.eventId = dict["EventId"] as! String
        }
        if dict.keys.contains("IdToken") {
            self.idToken = dict["IdToken"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ServiceInvokeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ServiceInvokeResponseBody?

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
            var model = ServiceInvokeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateAuthenticatorAttributeRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticatorName: String?

    public var authenticatorUuid: String?

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
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticatorName != nil {
            map["AuthenticatorName"] = self.authenticatorName!
        }
        if self.authenticatorUuid != nil {
            map["AuthenticatorUuid"] = self.authenticatorUuid!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticatorName") {
            self.authenticatorName = dict["AuthenticatorName"] as! String
        }
        if dict.keys.contains("AuthenticatorUuid") {
            self.authenticatorUuid = dict["AuthenticatorUuid"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class UpdateAuthenticatorAttributeResponseBody : Tea.TeaModel {
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

public class UpdateAuthenticatorAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAuthenticatorAttributeResponseBody?

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
            var model = UpdateAuthenticatorAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyIdTokenRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var jwtIdToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.jwtIdToken != nil {
            map["JwtIdToken"] = self.jwtIdToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("JwtIdToken") {
            self.jwtIdToken = dict["JwtIdToken"] as! String
        }
    }
}

public class VerifyIdTokenResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
    }
}

public class VerifyIdTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyIdTokenResponseBody?

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
            var model = VerifyIdTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class VerifyUserAuthenticationRequest : Tea.TeaModel {
    public var applicationExternalId: String?

    public var authenticationContext: String?

    public var authenticatorType: String?

    public var clientExtendParamsJson: String?

    public var clientExtendParamsJsonSign: String?

    public var logParams: String?

    public var logTag: String?

    public var requireBindHashBase64: String?

    public var requireChallengeBase64: String?

    public var serverExtendParamsJson: String?

    public var userId: String?

    public var userSourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.applicationExternalId != nil {
            map["ApplicationExternalId"] = self.applicationExternalId!
        }
        if self.authenticationContext != nil {
            map["AuthenticationContext"] = self.authenticationContext!
        }
        if self.authenticatorType != nil {
            map["AuthenticatorType"] = self.authenticatorType!
        }
        if self.clientExtendParamsJson != nil {
            map["ClientExtendParamsJson"] = self.clientExtendParamsJson!
        }
        if self.clientExtendParamsJsonSign != nil {
            map["ClientExtendParamsJsonSign"] = self.clientExtendParamsJsonSign!
        }
        if self.logParams != nil {
            map["LogParams"] = self.logParams!
        }
        if self.logTag != nil {
            map["LogTag"] = self.logTag!
        }
        if self.requireBindHashBase64 != nil {
            map["RequireBindHashBase64"] = self.requireBindHashBase64!
        }
        if self.requireChallengeBase64 != nil {
            map["RequireChallengeBase64"] = self.requireChallengeBase64!
        }
        if self.serverExtendParamsJson != nil {
            map["ServerExtendParamsJson"] = self.serverExtendParamsJson!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.userSourceIp != nil {
            map["UserSourceIp"] = self.userSourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ApplicationExternalId") {
            self.applicationExternalId = dict["ApplicationExternalId"] as! String
        }
        if dict.keys.contains("AuthenticationContext") {
            self.authenticationContext = dict["AuthenticationContext"] as! String
        }
        if dict.keys.contains("AuthenticatorType") {
            self.authenticatorType = dict["AuthenticatorType"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJson") {
            self.clientExtendParamsJson = dict["ClientExtendParamsJson"] as! String
        }
        if dict.keys.contains("ClientExtendParamsJsonSign") {
            self.clientExtendParamsJsonSign = dict["ClientExtendParamsJsonSign"] as! String
        }
        if dict.keys.contains("LogParams") {
            self.logParams = dict["LogParams"] as! String
        }
        if dict.keys.contains("LogTag") {
            self.logTag = dict["LogTag"] as! String
        }
        if dict.keys.contains("RequireBindHashBase64") {
            self.requireBindHashBase64 = dict["RequireBindHashBase64"] as! String
        }
        if dict.keys.contains("RequireChallengeBase64") {
            self.requireChallengeBase64 = dict["RequireChallengeBase64"] as! String
        }
        if dict.keys.contains("ServerExtendParamsJson") {
            self.serverExtendParamsJson = dict["ServerExtendParamsJson"] as! String
        }
        if dict.keys.contains("UserId") {
            self.userId = dict["UserId"] as! String
        }
        if dict.keys.contains("UserSourceIp") {
            self.userSourceIp = dict["UserSourceIp"] as! String
        }
    }
}

public class VerifyUserAuthenticationResponseBody : Tea.TeaModel {
    public class AuthenticateResultInfo : Tea.TeaModel {
        public var bindHashBase64: String?

        public var credentialId: String?

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
            if self.bindHashBase64 != nil {
                map["BindHashBase64"] = self.bindHashBase64!
            }
            if self.credentialId != nil {
                map["CredentialId"] = self.credentialId!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BindHashBase64") {
                self.bindHashBase64 = dict["BindHashBase64"] as! String
            }
            if dict.keys.contains("CredentialId") {
                self.credentialId = dict["CredentialId"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var authenticateResultInfo: VerifyUserAuthenticationResponseBody.AuthenticateResultInfo?

    public var etasSDKString: String?

    public var idToken: String?

    public var requestId: String?

    public var verifyResult: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.authenticateResultInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticateResultInfo != nil {
            map["AuthenticateResultInfo"] = self.authenticateResultInfo?.toMap()
        }
        if self.etasSDKString != nil {
            map["EtasSDKString"] = self.etasSDKString!
        }
        if self.idToken != nil {
            map["IdToken"] = self.idToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.verifyResult != nil {
            map["VerifyResult"] = self.verifyResult!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticateResultInfo") {
            var model = VerifyUserAuthenticationResponseBody.AuthenticateResultInfo()
            model.fromMap(dict["AuthenticateResultInfo"] as! [String: Any])
            self.authenticateResultInfo = model
        }
        if dict.keys.contains("EtasSDKString") {
            self.etasSDKString = dict["EtasSDKString"] as! String
        }
        if dict.keys.contains("IdToken") {
            self.idToken = dict["IdToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VerifyResult") {
            self.verifyResult = dict["VerifyResult"] as! Bool
        }
    }
}

public class VerifyUserAuthenticationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: VerifyUserAuthenticationResponseBody?

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
            var model = VerifyUserAuthenticationResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
