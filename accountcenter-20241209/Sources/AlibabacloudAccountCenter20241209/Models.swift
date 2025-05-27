import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class EnterpriseOrgQueryLoadTreeRequest : Tea.TeaModel {
    public var encryptTicket: String?

    public var loadOrgOnly: Bool?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

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
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.loadOrgOnly != nil {
            map["LoadOrgOnly"] = self.loadOrgOnly!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["LoadOrgOnly"] as? Bool {
            self.loadOrgOnly = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnterpriseOrgQueryLoadTreeResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var treeDto: String?

    public override init() {
        super.init()
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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.treeDto != nil {
            map["TreeDto"] = self.treeDto!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
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
        if let value = dict["TreeDto"] as? String {
            self.treeDto = value
        }
    }
}

public class EnterpriseOrgQueryLoadTreeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseOrgQueryLoadTreeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnterpriseOrgQueryLoadTreeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnterpriseRegisterAccountRequest : Tea.TeaModel {
    public var alias: String?

    public var encryptPassword: String?

    public var encryptTicket: String?

    public var loginEmail: String?

    public var organizationId: String?

    public var orientedEcId: String?

    public var orientedLeId: String?

    public var orientedNbId: String?

    public var requestId: String?

    public var showCompleteInfo: Bool?

    public var siteNick: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.encryptPassword != nil {
            map["EncryptPassword"] = self.encryptPassword!
        }
        if self.encryptTicket != nil {
            map["EncryptTicket"] = self.encryptTicket!
        }
        if self.loginEmail != nil {
            map["LoginEmail"] = self.loginEmail!
        }
        if self.organizationId != nil {
            map["OrganizationId"] = self.organizationId!
        }
        if self.orientedEcId != nil {
            map["OrientedEcId"] = self.orientedEcId!
        }
        if self.orientedLeId != nil {
            map["OrientedLeId"] = self.orientedLeId!
        }
        if self.orientedNbId != nil {
            map["OrientedNbId"] = self.orientedNbId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.showCompleteInfo != nil {
            map["ShowCompleteInfo"] = self.showCompleteInfo!
        }
        if self.siteNick != nil {
            map["SiteNick"] = self.siteNick!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["EncryptPassword"] as? String {
            self.encryptPassword = value
        }
        if let value = dict["EncryptTicket"] as? String {
            self.encryptTicket = value
        }
        if let value = dict["LoginEmail"] as? String {
            self.loginEmail = value
        }
        if let value = dict["OrganizationId"] as? String {
            self.organizationId = value
        }
        if let value = dict["OrientedEcId"] as? String {
            self.orientedEcId = value
        }
        if let value = dict["OrientedLeId"] as? String {
            self.orientedLeId = value
        }
        if let value = dict["OrientedNbId"] as? String {
            self.orientedNbId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShowCompleteInfo"] as? Bool {
            self.showCompleteInfo = value
        }
        if let value = dict["SiteNick"] as? String {
            self.siteNick = value
        }
    }
}

public class EnterpriseRegisterAccountResponseBody : Tea.TeaModel {
    public class AccountInfo : Tea.TeaModel {
        public var enterpriseLicenseNo: String?

        public var enterpriseName: String?

        public var loginId: String?

        public var pk: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enterpriseLicenseNo != nil {
                map["EnterpriseLicenseNo"] = self.enterpriseLicenseNo!
            }
            if self.enterpriseName != nil {
                map["EnterpriseName"] = self.enterpriseName!
            }
            if self.loginId != nil {
                map["LoginId"] = self.loginId!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnterpriseLicenseNo"] as? String {
                self.enterpriseLicenseNo = value
            }
            if let value = dict["EnterpriseName"] as? String {
                self.enterpriseName = value
            }
            if let value = dict["LoginId"] as? String {
                self.loginId = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var accountInfo: EnterpriseRegisterAccountResponseBody.AccountInfo?

    public var code: String?

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
        try self.accountInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountInfo != nil {
            map["AccountInfo"] = self.accountInfo?.toMap()
        }
        if self.code != nil {
            map["Code"] = self.code!
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
        if let value = dict["AccountInfo"] as? [String: Any?] {
            var model = EnterpriseRegisterAccountResponseBody.AccountInfo()
            model.fromMap(value)
            self.accountInfo = model
        }
        if let value = dict["Code"] as? String {
            self.code = value
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

public class EnterpriseRegisterAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnterpriseRegisterAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnterpriseRegisterAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
