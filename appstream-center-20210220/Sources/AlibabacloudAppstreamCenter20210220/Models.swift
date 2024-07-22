import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class FindIdpListByLoginIdentifierRequest : Tea.TeaModel {
    public var clientChannel: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

    public var loginIdentifier: String?

    public var supportTypes: [String]?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientChannel != nil {
            map["ClientChannel"] = self.clientChannel!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientIp != nil {
            map["ClientIp"] = self.clientIp!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.loginIdentifier != nil {
            map["LoginIdentifier"] = self.loginIdentifier!
        }
        if self.supportTypes != nil {
            map["SupportTypes"] = self.supportTypes!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientChannel") {
            self.clientChannel = dict["ClientChannel"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientIp") {
            self.clientIp = dict["ClientIp"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("LoginIdentifier") {
            self.loginIdentifier = dict["LoginIdentifier"] as! String
        }
        if dict.keys.contains("SupportTypes") {
            self.supportTypes = dict["SupportTypes"] as! [String]
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class FindIdpListByLoginIdentifierResponseBody : Tea.TeaModel {
    public class IdpInfos : Tea.TeaModel {
        public var accountType: String?

        public var cookies: String?

        public var idpId: String?

        public var idpName: String?

        public var idpProvider: String?

        public var jumpSwitch: String?

        public var ssoProtocol: String?

        public var ssoServiceUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.cookies != nil {
                map["Cookies"] = self.cookies!
            }
            if self.idpId != nil {
                map["IdpId"] = self.idpId!
            }
            if self.idpName != nil {
                map["IdpName"] = self.idpName!
            }
            if self.idpProvider != nil {
                map["IdpProvider"] = self.idpProvider!
            }
            if self.jumpSwitch != nil {
                map["JumpSwitch"] = self.jumpSwitch!
            }
            if self.ssoProtocol != nil {
                map["SsoProtocol"] = self.ssoProtocol!
            }
            if self.ssoServiceUrl != nil {
                map["SsoServiceUrl"] = self.ssoServiceUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("Cookies") {
                self.cookies = dict["Cookies"] as! String
            }
            if dict.keys.contains("IdpId") {
                self.idpId = dict["IdpId"] as! String
            }
            if dict.keys.contains("IdpName") {
                self.idpName = dict["IdpName"] as! String
            }
            if dict.keys.contains("IdpProvider") {
                self.idpProvider = dict["IdpProvider"] as! String
            }
            if dict.keys.contains("JumpSwitch") {
                self.jumpSwitch = dict["JumpSwitch"] as! String
            }
            if dict.keys.contains("SsoProtocol") {
                self.ssoProtocol = dict["SsoProtocol"] as! String
            }
            if dict.keys.contains("SsoServiceUrl") {
                self.ssoServiceUrl = dict["SsoServiceUrl"] as! String
            }
        }
    }
    public class OfficeSiteInfo : Tea.TeaModel {
        public var accessType: String?

        public var officeSiteId: String?

        public var providerId: String?

        public var regionId: String?

        public var ssoServiceUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.officeSiteId != nil {
                map["OfficeSiteId"] = self.officeSiteId!
            }
            if self.providerId != nil {
                map["ProviderId"] = self.providerId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.ssoServiceUrl != nil {
                map["SsoServiceUrl"] = self.ssoServiceUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("OfficeSiteId") {
                self.officeSiteId = dict["OfficeSiteId"] as! String
            }
            if dict.keys.contains("ProviderId") {
                self.providerId = dict["ProviderId"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SsoServiceUrl") {
                self.ssoServiceUrl = dict["SsoServiceUrl"] as! String
            }
        }
    }
    public class TenantAliasInfo : Tea.TeaModel {
        public var accessType: String?

        public var tenantAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.tenantAlias != nil {
                map["TenantAlias"] = self.tenantAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("TenantAlias") {
                self.tenantAlias = dict["TenantAlias"] as! String
            }
        }
    }
    public var idpInfos: [FindIdpListByLoginIdentifierResponseBody.IdpInfos]?

    public var officeSiteInfo: FindIdpListByLoginIdentifierResponseBody.OfficeSiteInfo?

    public var popRegionConfig: [String: String]?

    public var profileRegion: String?

    public var requestId: String?

    public var tenantAliasInfo: FindIdpListByLoginIdentifierResponseBody.TenantAliasInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.officeSiteInfo?.validate()
        try self.tenantAliasInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.idpInfos != nil {
            var tmp : [Any] = []
            for k in self.idpInfos! {
                tmp.append(k.toMap())
            }
            map["IdpInfos"] = tmp
        }
        if self.officeSiteInfo != nil {
            map["OfficeSiteInfo"] = self.officeSiteInfo?.toMap()
        }
        if self.popRegionConfig != nil {
            map["PopRegionConfig"] = self.popRegionConfig!
        }
        if self.profileRegion != nil {
            map["ProfileRegion"] = self.profileRegion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tenantAliasInfo != nil {
            map["TenantAliasInfo"] = self.tenantAliasInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IdpInfos") {
            var tmp : [FindIdpListByLoginIdentifierResponseBody.IdpInfos] = []
            for v in dict["IdpInfos"] as! [Any] {
                var model = FindIdpListByLoginIdentifierResponseBody.IdpInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.idpInfos = tmp
        }
        if dict.keys.contains("OfficeSiteInfo") {
            var model = FindIdpListByLoginIdentifierResponseBody.OfficeSiteInfo()
            model.fromMap(dict["OfficeSiteInfo"] as! [String: Any])
            self.officeSiteInfo = model
        }
        if dict.keys.contains("PopRegionConfig") {
            self.popRegionConfig = dict["PopRegionConfig"] as! [String: String]
        }
        if dict.keys.contains("ProfileRegion") {
            self.profileRegion = dict["ProfileRegion"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TenantAliasInfo") {
            var model = FindIdpListByLoginIdentifierResponseBody.TenantAliasInfo()
            model.fromMap(dict["TenantAliasInfo"] as! [String: Any])
            self.tenantAliasInfo = model
        }
    }
}

public class FindIdpListByLoginIdentifierResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindIdpListByLoginIdentifierResponseBody?

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
            var model = FindIdpListByLoginIdentifierResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetLoginTokenRequest : Tea.TeaModel {
    public var authenticationCode: String?

    public var clientId: String?

    public var clientOS: String?

    public var clientType: String?

    public var clientVersion: String?

    public var currentStage: String?

    public var directoryId: String?

    public var encryptedFingerPrintData: String?

    public var encryptedKey: String?

    public var encryptedPassword: String?

    public var endUserId: String?

    public var fingerPrintData: String?

    public var idpId: String?

    public var imageUrl: String?

    public var keepAlive: Bool?

    public var keepAliveToken: String?

    public var loginIdentifier: String?

    public var loginName: String?

    public var networkType: String?

    public var newPassword: String?

    public var officeSiteId: String?

    public var oldPassword: String?

    public var password: String?

    public var phone: String?

    public var phoneVerifyCode: String?

    public var regionId: String?

    public var sessionId: String?

    public var ssoExtendsCookies: String?

    public var ssoSessionToken: String?

    public var tokenCode: String?

    public var umidToken: String?

    public var uuid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authenticationCode != nil {
            map["AuthenticationCode"] = self.authenticationCode!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientOS != nil {
            map["ClientOS"] = self.clientOS!
        }
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.currentStage != nil {
            map["CurrentStage"] = self.currentStage!
        }
        if self.directoryId != nil {
            map["DirectoryId"] = self.directoryId!
        }
        if self.encryptedFingerPrintData != nil {
            map["EncryptedFingerPrintData"] = self.encryptedFingerPrintData!
        }
        if self.encryptedKey != nil {
            map["EncryptedKey"] = self.encryptedKey!
        }
        if self.encryptedPassword != nil {
            map["EncryptedPassword"] = self.encryptedPassword!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.fingerPrintData != nil {
            map["FingerPrintData"] = self.fingerPrintData!
        }
        if self.idpId != nil {
            map["IdpId"] = self.idpId!
        }
        if self.imageUrl != nil {
            map["ImageUrl"] = self.imageUrl!
        }
        if self.keepAlive != nil {
            map["KeepAlive"] = self.keepAlive!
        }
        if self.keepAliveToken != nil {
            map["KeepAliveToken"] = self.keepAliveToken!
        }
        if self.loginIdentifier != nil {
            map["LoginIdentifier"] = self.loginIdentifier!
        }
        if self.loginName != nil {
            map["LoginName"] = self.loginName!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.oldPassword != nil {
            map["OldPassword"] = self.oldPassword!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.phoneVerifyCode != nil {
            map["PhoneVerifyCode"] = self.phoneVerifyCode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.ssoExtendsCookies != nil {
            map["SsoExtendsCookies"] = self.ssoExtendsCookies!
        }
        if self.ssoSessionToken != nil {
            map["SsoSessionToken"] = self.ssoSessionToken!
        }
        if self.tokenCode != nil {
            map["TokenCode"] = self.tokenCode!
        }
        if self.umidToken != nil {
            map["UmidToken"] = self.umidToken!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuthenticationCode") {
            self.authenticationCode = dict["AuthenticationCode"] as! String
        }
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientOS") {
            self.clientOS = dict["ClientOS"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("CurrentStage") {
            self.currentStage = dict["CurrentStage"] as! String
        }
        if dict.keys.contains("DirectoryId") {
            self.directoryId = dict["DirectoryId"] as! String
        }
        if dict.keys.contains("EncryptedFingerPrintData") {
            self.encryptedFingerPrintData = dict["EncryptedFingerPrintData"] as! String
        }
        if dict.keys.contains("EncryptedKey") {
            self.encryptedKey = dict["EncryptedKey"] as! String
        }
        if dict.keys.contains("EncryptedPassword") {
            self.encryptedPassword = dict["EncryptedPassword"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("FingerPrintData") {
            self.fingerPrintData = dict["FingerPrintData"] as! String
        }
        if dict.keys.contains("IdpId") {
            self.idpId = dict["IdpId"] as! String
        }
        if dict.keys.contains("ImageUrl") {
            self.imageUrl = dict["ImageUrl"] as! String
        }
        if dict.keys.contains("KeepAlive") {
            self.keepAlive = dict["KeepAlive"] as! Bool
        }
        if dict.keys.contains("KeepAliveToken") {
            self.keepAliveToken = dict["KeepAliveToken"] as! String
        }
        if dict.keys.contains("LoginIdentifier") {
            self.loginIdentifier = dict["LoginIdentifier"] as! String
        }
        if dict.keys.contains("LoginName") {
            self.loginName = dict["LoginName"] as! String
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("NewPassword") {
            self.newPassword = dict["NewPassword"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("OldPassword") {
            self.oldPassword = dict["OldPassword"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("PhoneVerifyCode") {
            self.phoneVerifyCode = dict["PhoneVerifyCode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("SsoExtendsCookies") {
            self.ssoExtendsCookies = dict["SsoExtendsCookies"] as! String
        }
        if dict.keys.contains("SsoSessionToken") {
            self.ssoSessionToken = dict["SsoSessionToken"] as! String
        }
        if dict.keys.contains("TokenCode") {
            self.tokenCode = dict["TokenCode"] as! String
        }
        if dict.keys.contains("UmidToken") {
            self.umidToken = dict["UmidToken"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class GetLoginTokenResponseBody : Tea.TeaModel {
    public class PasswordStrategy : Tea.TeaModel {
        public var tenantAlternativeChars: [String]?

        public var tenantPasswordLength: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.tenantAlternativeChars != nil {
                map["TenantAlternativeChars"] = self.tenantAlternativeChars!
            }
            if self.tenantPasswordLength != nil {
                map["TenantPasswordLength"] = self.tenantPasswordLength!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TenantAlternativeChars") {
                self.tenantAlternativeChars = dict["TenantAlternativeChars"] as! [String]
            }
            if dict.keys.contains("TenantPasswordLength") {
                self.tenantPasswordLength = dict["TenantPasswordLength"] as! Int32
            }
        }
    }
    public class RiskVerifyInfo : Tea.TeaModel {
        public var email: String?

        public var lastLockDuration: Int64?

        public var locked: Bool?

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
            if self.lastLockDuration != nil {
                map["LastLockDuration"] = self.lastLockDuration!
            }
            if self.locked != nil {
                map["Locked"] = self.locked!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Email") {
                self.email = dict["Email"] as! String
            }
            if dict.keys.contains("LastLockDuration") {
                self.lastLockDuration = dict["LastLockDuration"] as! Int64
            }
            if dict.keys.contains("Locked") {
                self.locked = dict["Locked"] as! Bool
            }
            if dict.keys.contains("Phone") {
                self.phone = dict["Phone"] as! String
            }
        }
    }
    public class TenantInfos : Tea.TeaModel {
        public var accessType: String?

        public var tenantAlias: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessType != nil {
                map["AccessType"] = self.accessType!
            }
            if self.tenantAlias != nil {
                map["TenantAlias"] = self.tenantAlias!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessType") {
                self.accessType = dict["AccessType"] as! String
            }
            if dict.keys.contains("TenantAlias") {
                self.tenantAlias = dict["TenantAlias"] as! String
            }
        }
    }
    public var accessType: String?

    public var accountType: String?

    public var adDomain: String?

    public var email: String?

    public var endUserId: String?

    public var idpId: String?

    public var industry: String?

    public var keepAliveToken: String?

    public var label: String?

    public var loginToken: String?

    public var nextStage: String?

    public var officeSites: [String]?

    public var passwordStrategy: GetLoginTokenResponseBody.PasswordStrategy?

    public var phone: String?

    public var props: [String: String]?

    public var qrCodePng: String?

    public var reason: String?

    public var requestId: String?

    public var riskVerifyInfo: GetLoginTokenResponseBody.RiskVerifyInfo?

    public var secret: String?

    public var sessionId: String?

    public var tenantAlias: String?

    public var tenantId: Int64?

    public var tenantInfos: [GetLoginTokenResponseBody.TenantInfos]?

    public var vpcRegionId: String?

    public var windowDisplayMode: String?

    public var wyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.passwordStrategy?.validate()
        try self.riskVerifyInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessType != nil {
            map["AccessType"] = self.accessType!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.adDomain != nil {
            map["AdDomain"] = self.adDomain!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.idpId != nil {
            map["IdpId"] = self.idpId!
        }
        if self.industry != nil {
            map["Industry"] = self.industry!
        }
        if self.keepAliveToken != nil {
            map["KeepAliveToken"] = self.keepAliveToken!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.nextStage != nil {
            map["NextStage"] = self.nextStage!
        }
        if self.officeSites != nil {
            map["OfficeSites"] = self.officeSites!
        }
        if self.passwordStrategy != nil {
            map["PasswordStrategy"] = self.passwordStrategy?.toMap()
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.props != nil {
            map["Props"] = self.props!
        }
        if self.qrCodePng != nil {
            map["QrCodePng"] = self.qrCodePng!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.riskVerifyInfo != nil {
            map["RiskVerifyInfo"] = self.riskVerifyInfo?.toMap()
        }
        if self.secret != nil {
            map["Secret"] = self.secret!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.tenantAlias != nil {
            map["TenantAlias"] = self.tenantAlias!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        if self.tenantInfos != nil {
            var tmp : [Any] = []
            for k in self.tenantInfos! {
                tmp.append(k.toMap())
            }
            map["TenantInfos"] = tmp
        }
        if self.vpcRegionId != nil {
            map["VpcRegionId"] = self.vpcRegionId!
        }
        if self.windowDisplayMode != nil {
            map["WindowDisplayMode"] = self.windowDisplayMode!
        }
        if self.wyId != nil {
            map["WyId"] = self.wyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessType") {
            self.accessType = dict["AccessType"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("AdDomain") {
            self.adDomain = dict["AdDomain"] as! String
        }
        if dict.keys.contains("Email") {
            self.email = dict["Email"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("IdpId") {
            self.idpId = dict["IdpId"] as! String
        }
        if dict.keys.contains("Industry") {
            self.industry = dict["Industry"] as! String
        }
        if dict.keys.contains("KeepAliveToken") {
            self.keepAliveToken = dict["KeepAliveToken"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("NextStage") {
            self.nextStage = dict["NextStage"] as! String
        }
        if dict.keys.contains("OfficeSites") {
            self.officeSites = dict["OfficeSites"] as! [String]
        }
        if dict.keys.contains("PasswordStrategy") {
            var model = GetLoginTokenResponseBody.PasswordStrategy()
            model.fromMap(dict["PasswordStrategy"] as! [String: Any])
            self.passwordStrategy = model
        }
        if dict.keys.contains("Phone") {
            self.phone = dict["Phone"] as! String
        }
        if dict.keys.contains("Props") {
            self.props = dict["Props"] as! [String: String]
        }
        if dict.keys.contains("QrCodePng") {
            self.qrCodePng = dict["QrCodePng"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RiskVerifyInfo") {
            var model = GetLoginTokenResponseBody.RiskVerifyInfo()
            model.fromMap(dict["RiskVerifyInfo"] as! [String: Any])
            self.riskVerifyInfo = model
        }
        if dict.keys.contains("Secret") {
            self.secret = dict["Secret"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("TenantAlias") {
            self.tenantAlias = dict["TenantAlias"] as! String
        }
        if dict.keys.contains("TenantId") {
            self.tenantId = dict["TenantId"] as! Int64
        }
        if dict.keys.contains("TenantInfos") {
            var tmp : [GetLoginTokenResponseBody.TenantInfos] = []
            for v in dict["TenantInfos"] as! [Any] {
                var model = GetLoginTokenResponseBody.TenantInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tenantInfos = tmp
        }
        if dict.keys.contains("VpcRegionId") {
            self.vpcRegionId = dict["VpcRegionId"] as! String
        }
        if dict.keys.contains("WindowDisplayMode") {
            self.windowDisplayMode = dict["WindowDisplayMode"] as! String
        }
        if dict.keys.contains("WyId") {
            self.wyId = dict["WyId"] as! String
        }
    }
}

public class GetLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetLoginTokenResponseBody?

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
            var model = GetLoginTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RefreshLoginTokenRequest : Tea.TeaModel {
    public var clientId: String?

    public var clientType: String?

    public var endUserId: String?

    public var loginIdentifier: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var profileRegion: String?

    public var sessionId: String?

    public var uuid: String?

    public override init() {
        super.init()
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
        if self.clientType != nil {
            map["ClientType"] = self.clientType!
        }
        if self.endUserId != nil {
            map["EndUserId"] = self.endUserId!
        }
        if self.loginIdentifier != nil {
            map["LoginIdentifier"] = self.loginIdentifier!
        }
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.officeSiteId != nil {
            map["OfficeSiteId"] = self.officeSiteId!
        }
        if self.profileRegion != nil {
            map["ProfileRegion"] = self.profileRegion!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientId") {
            self.clientId = dict["ClientId"] as! String
        }
        if dict.keys.contains("ClientType") {
            self.clientType = dict["ClientType"] as! String
        }
        if dict.keys.contains("EndUserId") {
            self.endUserId = dict["EndUserId"] as! String
        }
        if dict.keys.contains("LoginIdentifier") {
            self.loginIdentifier = dict["LoginIdentifier"] as! String
        }
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("OfficeSiteId") {
            self.officeSiteId = dict["OfficeSiteId"] as! String
        }
        if dict.keys.contains("ProfileRegion") {
            self.profileRegion = dict["ProfileRegion"] as! String
        }
        if dict.keys.contains("SessionId") {
            self.sessionId = dict["SessionId"] as! String
        }
        if dict.keys.contains("Uuid") {
            self.uuid = dict["Uuid"] as! String
        }
    }
}

public class RefreshLoginTokenResponseBody : Tea.TeaModel {
    public var loginToken: String?

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
        if self.loginToken != nil {
            map["LoginToken"] = self.loginToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginToken") {
            self.loginToken = dict["LoginToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RefreshLoginTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshLoginTokenResponseBody?

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
            var model = RefreshLoginTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
