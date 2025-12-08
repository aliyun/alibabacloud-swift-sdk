import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ClientUserLogoutRequest : Tea.TeaModel {
    public var clientId: String?

    public var loginToken: String?

    public var officeSiteId: String?

    public var profileRegion: String?

    public var sessionId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["ProfileRegion"] as? String {
            self.profileRegion = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class ClientUserLogoutResponseBody : Tea.TeaModel {
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

public class ClientUserLogoutResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ClientUserLogoutResponseBody?

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
            var model = ClientUserLogoutResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindIdpListByLoginIdentifierRequest : Tea.TeaModel {
    public var availableFeatures: [String: String]?

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
        if self.availableFeatures != nil {
            map["AvailableFeatures"] = self.availableFeatures!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableFeatures"] as? [String: String] {
            self.availableFeatures = value
        }
        if let value = dict["ClientChannel"] as? String {
            self.clientChannel = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["LoginIdentifier"] as? String {
            self.loginIdentifier = value
        }
        if let value = dict["SupportTypes"] as? [String] {
            self.supportTypes = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class FindIdpListByLoginIdentifierShrinkRequest : Tea.TeaModel {
    public var availableFeaturesShrink: String?

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
        if self.availableFeaturesShrink != nil {
            map["AvailableFeatures"] = self.availableFeaturesShrink!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableFeatures"] as? String {
            self.availableFeaturesShrink = value
        }
        if let value = dict["ClientChannel"] as? String {
            self.clientChannel = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["LoginIdentifier"] as? String {
            self.loginIdentifier = value
        }
        if let value = dict["SupportTypes"] as? [String] {
            self.supportTypes = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class FindIdpListByLoginIdentifierResponseBody : Tea.TeaModel {
    public class IdpInfos : Tea.TeaModel {
        public var accountType: String?

        public var cookies: String?

        public var idpId: String?

        public var idpName: String?

        public var idpNameEN: String?

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
            if self.idpNameEN != nil {
                map["IdpNameEN"] = self.idpNameEN!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountType"] as? String {
                self.accountType = value
            }
            if let value = dict["Cookies"] as? String {
                self.cookies = value
            }
            if let value = dict["IdpId"] as? String {
                self.idpId = value
            }
            if let value = dict["IdpName"] as? String {
                self.idpName = value
            }
            if let value = dict["IdpNameEN"] as? String {
                self.idpNameEN = value
            }
            if let value = dict["IdpProvider"] as? String {
                self.idpProvider = value
            }
            if let value = dict["JumpSwitch"] as? String {
                self.jumpSwitch = value
            }
            if let value = dict["SsoProtocol"] as? String {
                self.ssoProtocol = value
            }
            if let value = dict["SsoServiceUrl"] as? String {
                self.ssoServiceUrl = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["OfficeSiteId"] as? String {
                self.officeSiteId = value
            }
            if let value = dict["ProviderId"] as? String {
                self.providerId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SsoServiceUrl"] as? String {
                self.ssoServiceUrl = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["TenantAlias"] as? String {
                self.tenantAlias = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IdpInfos"] as? [Any?] {
            var tmp : [FindIdpListByLoginIdentifierResponseBody.IdpInfos] = []
            for v in value {
                if v != nil {
                    var model = FindIdpListByLoginIdentifierResponseBody.IdpInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.idpInfos = tmp
        }
        if let value = dict["OfficeSiteInfo"] as? [String: Any?] {
            var model = FindIdpListByLoginIdentifierResponseBody.OfficeSiteInfo()
            model.fromMap(value)
            self.officeSiteInfo = model
        }
        if let value = dict["PopRegionConfig"] as? [String: String] {
            self.popRegionConfig = value
        }
        if let value = dict["ProfileRegion"] as? String {
            self.profileRegion = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TenantAliasInfo"] as? [String: Any?] {
            var model = FindIdpListByLoginIdentifierResponseBody.TenantAliasInfo()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = FindIdpListByLoginIdentifierResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetLoginTokenRequest : Tea.TeaModel {
    public var areaSite: String?

    public var authenticationCode: String?

    public var availableFeatures: [String: String]?

    public var channel: String?

    public var clientId: String?

    public var clientName: String?

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

    public var mfaType: String?

    public var networkType: String?

    public var newPassword: String?

    public var officeSiteId: String?

    public var oldPassword: String?

    public var password: String?

    public var phone: String?

    public var phoneVerifyCode: String?

    public var profileRegion: String?

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
        if self.areaSite != nil {
            map["AreaSite"] = self.areaSite!
        }
        if self.authenticationCode != nil {
            map["AuthenticationCode"] = self.authenticationCode!
        }
        if self.availableFeatures != nil {
            map["AvailableFeatures"] = self.availableFeatures!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
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
        if self.mfaType != nil {
            map["MfaType"] = self.mfaType!
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
        if self.profileRegion != nil {
            map["ProfileRegion"] = self.profileRegion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AreaSite"] as? String {
            self.areaSite = value
        }
        if let value = dict["AuthenticationCode"] as? String {
            self.authenticationCode = value
        }
        if let value = dict["AvailableFeatures"] as? [String: String] {
            self.availableFeatures = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CurrentStage"] as? String {
            self.currentStage = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EncryptedFingerPrintData"] as? String {
            self.encryptedFingerPrintData = value
        }
        if let value = dict["EncryptedKey"] as? String {
            self.encryptedKey = value
        }
        if let value = dict["EncryptedPassword"] as? String {
            self.encryptedPassword = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["FingerPrintData"] as? String {
            self.fingerPrintData = value
        }
        if let value = dict["IdpId"] as? String {
            self.idpId = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["KeepAlive"] as? Bool {
            self.keepAlive = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["LoginIdentifier"] as? String {
            self.loginIdentifier = value
        }
        if let value = dict["LoginName"] as? String {
            self.loginName = value
        }
        if let value = dict["MfaType"] as? String {
            self.mfaType = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PhoneVerifyCode"] as? String {
            self.phoneVerifyCode = value
        }
        if let value = dict["ProfileRegion"] as? String {
            self.profileRegion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SsoExtendsCookies"] as? String {
            self.ssoExtendsCookies = value
        }
        if let value = dict["SsoSessionToken"] as? String {
            self.ssoSessionToken = value
        }
        if let value = dict["TokenCode"] as? String {
            self.tokenCode = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetLoginTokenShrinkRequest : Tea.TeaModel {
    public var areaSite: String?

    public var authenticationCode: String?

    public var availableFeaturesShrink: String?

    public var channel: String?

    public var clientId: String?

    public var clientName: String?

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

    public var mfaType: String?

    public var networkType: String?

    public var newPassword: String?

    public var officeSiteId: String?

    public var oldPassword: String?

    public var password: String?

    public var phone: String?

    public var phoneVerifyCode: String?

    public var profileRegion: String?

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
        if self.areaSite != nil {
            map["AreaSite"] = self.areaSite!
        }
        if self.authenticationCode != nil {
            map["AuthenticationCode"] = self.authenticationCode!
        }
        if self.availableFeaturesShrink != nil {
            map["AvailableFeatures"] = self.availableFeaturesShrink!
        }
        if self.channel != nil {
            map["Channel"] = self.channel!
        }
        if self.clientId != nil {
            map["ClientId"] = self.clientId!
        }
        if self.clientName != nil {
            map["ClientName"] = self.clientName!
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
        if self.mfaType != nil {
            map["MfaType"] = self.mfaType!
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
        if self.profileRegion != nil {
            map["ProfileRegion"] = self.profileRegion!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AreaSite"] as? String {
            self.areaSite = value
        }
        if let value = dict["AuthenticationCode"] as? String {
            self.authenticationCode = value
        }
        if let value = dict["AvailableFeatures"] as? String {
            self.availableFeaturesShrink = value
        }
        if let value = dict["Channel"] as? String {
            self.channel = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientName"] as? String {
            self.clientName = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["CurrentStage"] as? String {
            self.currentStage = value
        }
        if let value = dict["DirectoryId"] as? String {
            self.directoryId = value
        }
        if let value = dict["EncryptedFingerPrintData"] as? String {
            self.encryptedFingerPrintData = value
        }
        if let value = dict["EncryptedKey"] as? String {
            self.encryptedKey = value
        }
        if let value = dict["EncryptedPassword"] as? String {
            self.encryptedPassword = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["FingerPrintData"] as? String {
            self.fingerPrintData = value
        }
        if let value = dict["IdpId"] as? String {
            self.idpId = value
        }
        if let value = dict["ImageUrl"] as? String {
            self.imageUrl = value
        }
        if let value = dict["KeepAlive"] as? Bool {
            self.keepAlive = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["LoginIdentifier"] as? String {
            self.loginIdentifier = value
        }
        if let value = dict["LoginName"] as? String {
            self.loginName = value
        }
        if let value = dict["MfaType"] as? String {
            self.mfaType = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["OldPassword"] as? String {
            self.oldPassword = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PhoneVerifyCode"] as? String {
            self.phoneVerifyCode = value
        }
        if let value = dict["ProfileRegion"] as? String {
            self.profileRegion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["SsoExtendsCookies"] as? String {
            self.ssoExtendsCookies = value
        }
        if let value = dict["SsoSessionToken"] as? String {
            self.ssoSessionToken = value
        }
        if let value = dict["TokenCode"] as? String {
            self.tokenCode = value
        }
        if let value = dict["UmidToken"] as? String {
            self.umidToken = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetLoginTokenResponseBody : Tea.TeaModel {
    public class MfaTypeList : Tea.TeaModel {
        public var name: String?

        public var stage: String?

        public override init() {
            super.init()
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
            if self.stage != nil {
                map["Stage"] = self.stage!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Stage"] as? String {
                self.stage = value
            }
        }
    }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TenantAlternativeChars"] as? [String] {
                self.tenantAlternativeChars = value
            }
            if let value = dict["TenantPasswordLength"] as? Int32 {
                self.tenantPasswordLength = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["LastLockDuration"] as? Int64 {
                self.lastLockDuration = value
            }
            if let value = dict["Locked"] as? Bool {
                self.locked = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessType"] as? String {
                self.accessType = value
            }
            if let value = dict["TenantAlias"] as? String {
                self.tenantAlias = value
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

    public var mfaTypeList: [GetLoginTokenResponseBody.MfaTypeList]?

    public var nextStage: String?

    public var nickName: String?

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
        if self.mfaTypeList != nil {
            var tmp : [Any] = []
            for k in self.mfaTypeList! {
                tmp.append(k.toMap())
            }
            map["MfaTypeList"] = tmp
        }
        if self.nextStage != nil {
            map["NextStage"] = self.nextStage!
        }
        if self.nickName != nil {
            map["NickName"] = self.nickName!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessType"] as? String {
            self.accessType = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["AdDomain"] as? String {
            self.adDomain = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["IdpId"] as? String {
            self.idpId = value
        }
        if let value = dict["Industry"] as? String {
            self.industry = value
        }
        if let value = dict["KeepAliveToken"] as? String {
            self.keepAliveToken = value
        }
        if let value = dict["Label"] as? String {
            self.label = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["MfaTypeList"] as? [Any?] {
            var tmp : [GetLoginTokenResponseBody.MfaTypeList] = []
            for v in value {
                if v != nil {
                    var model = GetLoginTokenResponseBody.MfaTypeList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mfaTypeList = tmp
        }
        if let value = dict["NextStage"] as? String {
            self.nextStage = value
        }
        if let value = dict["NickName"] as? String {
            self.nickName = value
        }
        if let value = dict["OfficeSites"] as? [String] {
            self.officeSites = value
        }
        if let value = dict["PasswordStrategy"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody.PasswordStrategy()
            model.fromMap(value)
            self.passwordStrategy = model
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["Props"] as? [String: String] {
            self.props = value
        }
        if let value = dict["QrCodePng"] as? String {
            self.qrCodePng = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskVerifyInfo"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody.RiskVerifyInfo()
            model.fromMap(value)
            self.riskVerifyInfo = model
        }
        if let value = dict["Secret"] as? String {
            self.secret = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["TenantAlias"] as? String {
            self.tenantAlias = value
        }
        if let value = dict["TenantId"] as? Int64 {
            self.tenantId = value
        }
        if let value = dict["TenantInfos"] as? [Any?] {
            var tmp : [GetLoginTokenResponseBody.TenantInfos] = []
            for v in value {
                if v != nil {
                    var model = GetLoginTokenResponseBody.TenantInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tenantInfos = tmp
        }
        if let value = dict["VpcRegionId"] as? String {
            self.vpcRegionId = value
        }
        if let value = dict["WindowDisplayMode"] as? String {
            self.windowDisplayMode = value
        }
        if let value = dict["WyId"] as? String {
            self.wyId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetLoginTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetStsTokenRequest : Tea.TeaModel {
    public var authCode: String?

    public var clientId: String?

    public var clientIp: String?

    public var clientOS: String?

    public var clientVersion: String?

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
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
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
        if self.uuid != nil {
            map["Uuid"] = self.uuid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientIp"] as? String {
            self.clientIp = value
        }
        if let value = dict["ClientOS"] as? String {
            self.clientOS = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
        }
    }
}

public class GetStsTokenResponseBody : Tea.TeaModel {
    public class StsTokenModel : Tea.TeaModel {
        public var sessionId: String?

        public var stsToken: String?

        public var tenantId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sessionId != nil {
                map["SessionId"] = self.sessionId!
            }
            if self.stsToken != nil {
                map["StsToken"] = self.stsToken!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SessionId"] as? String {
                self.sessionId = value
            }
            if let value = dict["StsToken"] as? String {
                self.stsToken = value
            }
            if let value = dict["TenantId"] as? Int64 {
                self.tenantId = value
            }
        }
    }
    public var requestId: String?

    public var stsTokenModel: GetStsTokenResponseBody.StsTokenModel?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.stsTokenModel?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stsTokenModel != nil {
            map["StsTokenModel"] = self.stsTokenModel?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StsTokenModel"] as? [String: Any?] {
            var model = GetStsTokenResponseBody.StsTokenModel()
            model.fromMap(value)
            self.stsTokenModel = model
        }
    }
}

public class GetStsTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetStsTokenResponseBody?

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
            var model = GetStsTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientId"] as? String {
            self.clientId = value
        }
        if let value = dict["ClientType"] as? String {
            self.clientType = value
        }
        if let value = dict["EndUserId"] as? String {
            self.endUserId = value
        }
        if let value = dict["LoginIdentifier"] as? String {
            self.loginIdentifier = value
        }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["OfficeSiteId"] as? String {
            self.officeSiteId = value
        }
        if let value = dict["ProfileRegion"] as? String {
            self.profileRegion = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
        if let value = dict["Uuid"] as? String {
            self.uuid = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginToken"] as? String {
            self.loginToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = RefreshLoginTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
