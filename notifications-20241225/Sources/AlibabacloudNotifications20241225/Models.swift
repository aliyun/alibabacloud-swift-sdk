import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateWebhookContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var botSecurityToken: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactName: String?

    public var cookies: String?

    public var securityToken: String?

    public var serverUrl: String?

    public var srcUrl: String?

    public var templateCode: String?

    public var tenantCode: String?

    public var uidType: String?

    public var verificationCode: String?

    public var webhookType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.botSecurityToken != nil {
            map["BotSecurityToken"] = self.botSecurityToken!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverUrl != nil {
            map["ServerUrl"] = self.serverUrl!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        if self.verificationCode != nil {
            map["VerificationCode"] = self.verificationCode!
        }
        if self.webhookType != nil {
            map["WebhookType"] = self.webhookType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["BotSecurityToken"] as? String {
            self.botSecurityToken = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["ServerUrl"] as? String {
            self.serverUrl = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
        if let value = dict["VerificationCode"] as? String {
            self.verificationCode = value
        }
        if let value = dict["WebhookType"] as? String {
            self.webhookType = value
        }
    }
}

public class CreateWebhookContactResponseBody : Tea.TeaModel {
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
    }
}

public class CreateWebhookContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWebhookContactResponseBody?

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
            var model = CreateWebhookContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DelMessageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var msgId: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class DelMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class DelMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelMessageResponseBody?

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
            var model = DelMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAllMessageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

    public var clientSource: String?

    public var cookies: String?

    public var groupCode: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClassId"] as? Int64 {
            self.classId = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class DeleteAllMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class DeleteAllMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAllMessageResponseBody?

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
            var model = DeleteAllMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteWebhookContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class DeleteWebhookContactResponseBody : Tea.TeaModel {
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
    }
}

public class DeleteWebhookContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWebhookContactResponseBody?

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
            var model = DeleteWebhookContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadAllCommonContactsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadAllCommonContactsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var emailConfirmed: Bool?

        public var mobileConfirmed: Bool?

        public var position: String?

        public override init() {
            super.init()
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
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["Position"] as? String {
                self.position = value
            }
        }
    }
    public var code: String?

    public var data: [ReadAllCommonContactsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadAllCommonContactsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadAllCommonContactsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadAllCommonContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadAllCommonContactsResponseBody?

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
            var model = ReadAllCommonContactsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadAllMarketingPreferencesRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadAllMarketingPreferencesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allowMarketing: Bool?

        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var position: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMarketing != nil {
                map["AllowMarketing"] = self.allowMarketing!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowMarketing"] as? Bool {
                self.allowMarketing = value
            }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["Position"] as? String {
                self.position = value
            }
        }
    }
    public var code: String?

    public var data: [ReadAllMarketingPreferencesResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadAllMarketingPreferencesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadAllMarketingPreferencesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadAllMarketingPreferencesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadAllMarketingPreferencesResponseBody?

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
            var model = ReadAllMarketingPreferencesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadAllMessageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

    public var clientSource: String?

    public var cookies: String?

    public var groupCode: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClassId"] as? Int64 {
            self.classId = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadAllMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class ReadAllMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadAllMessageResponseBody?

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
            var model = ReadAllMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadAllWebhookContactsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadAllWebhookContactsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var botSecurityToken: String?

        public var contactId: Int64?

        public var contactName: String?

        public var securityToken: String?

        public var serverUrl: String?

        public var templateCode: String?

        public var webhookType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.botSecurityToken != nil {
                map["BotSecurityToken"] = self.botSecurityToken!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.serverUrl != nil {
                map["ServerUrl"] = self.serverUrl!
            }
            if self.templateCode != nil {
                map["TemplateCode"] = self.templateCode!
            }
            if self.webhookType != nil {
                map["WebhookType"] = self.webhookType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BotSecurityToken"] as? String {
                self.botSecurityToken = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["ServerUrl"] as? String {
                self.serverUrl = value
            }
            if let value = dict["TemplateCode"] as? String {
                self.templateCode = value
            }
            if let value = dict["WebhookType"] as? String {
                self.webhookType = value
            }
        }
    }
    public var code: String?

    public var data: [ReadAllWebhookContactsResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadAllWebhookContactsResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadAllWebhookContactsResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadAllWebhookContactsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadAllWebhookContactsResponseBody?

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
            var model = ReadAllWebhookContactsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadCategoryGroupListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadCategoryGroupListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var groupCode: String?

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
            if self.groupCode != nil {
                map["GroupCode"] = self.groupCode!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupCode"] as? String {
                self.groupCode = value
            }
            if let value = dict["GroupName"] as? String {
                self.groupName = value
            }
        }
    }
    public var code: String?

    public var data: [ReadCategoryGroupListResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadCategoryGroupListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadCategoryGroupListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadCategoryGroupListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadCategoryGroupListResponseBody?

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
            var model = ReadCategoryGroupListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadClassNameRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadClassNameResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var id: Int64?

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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var code: String?

    public var data: [ReadClassNameResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadClassNameResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadClassNameResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadClassNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadClassNameResponseBody?

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
            var model = ReadClassNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadCommonContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadCommonContactResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var aliUid: Int64?

        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var emailConfirmed: Bool?

        public var mobileConfirmed: Bool?

        public var position: String?

        public override init() {
            super.init()
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
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
            if let value = dict["Position"] as? String {
                self.position = value
            }
        }
    }
    public var code: String?

    public var data: ReadCommonContactResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadCommonContactResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ReadCommonContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadCommonContactResponseBody?

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
            var model = ReadCommonContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMarketingPreferenceRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMarketingPreferenceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var allowMarketing: Bool?

        public var contactEmail: String?

        public var contactId: Int64?

        public var contactMobile: String?

        public var contactName: String?

        public var position: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowMarketing != nil {
                map["AllowMarketing"] = self.allowMarketing!
            }
            if self.contactEmail != nil {
                map["ContactEmail"] = self.contactEmail!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactMobile != nil {
                map["ContactMobile"] = self.contactMobile!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.position != nil {
                map["Position"] = self.position!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowMarketing"] as? Bool {
                self.allowMarketing = value
            }
            if let value = dict["ContactEmail"] as? String {
                self.contactEmail = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactMobile"] as? String {
                self.contactMobile = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["Position"] as? String {
                self.position = value
            }
        }
    }
    public var code: String?

    public var data: ReadMarketingPreferenceResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadMarketingPreferenceResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ReadMarketingPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMarketingPreferenceResponseBody?

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
            var model = ReadMarketingPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMessageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var msgId: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMessageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
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

public class ReadMessageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMessageResponseBody?

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
            var model = ReadMessageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMessageContentRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

    public var clientSource: String?

    public var cookies: String?

    public var groupCode: String?

    public var history: Bool?

    public var msgId: String?

    public var srcUrl: String?

    public var status: Int32?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.history != nil {
            map["History"] = self.history!
        }
        if self.msgId != nil {
            map["MsgId"] = self.msgId!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClassId"] as? Int64 {
            self.classId = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["History"] as? Bool {
            self.history = value
        }
        if let value = dict["MsgId"] as? String {
            self.msgId = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMessageContentResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Datas : Tea.TeaModel {
            public class Item : Tea.TeaModel {
                public var categoryName: String?

                public var classId: Int64?

                public var content: String?

                public var deleted: Int32?

                public var gmtCreated: Int64?

                public var gmtUpdate: Int64?

                public var massId: Int64?

                public var memo: String?

                public var msgId: Int64?

                public var status: Int64?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryName != nil {
                        map["CategoryName"] = self.categoryName!
                    }
                    if self.classId != nil {
                        map["ClassId"] = self.classId!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.gmtCreated != nil {
                        map["GmtCreated"] = self.gmtCreated!
                    }
                    if self.gmtUpdate != nil {
                        map["GmtUpdate"] = self.gmtUpdate!
                    }
                    if self.massId != nil {
                        map["MassId"] = self.massId!
                    }
                    if self.memo != nil {
                        map["Memo"] = self.memo!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryName"] as? String {
                        self.categoryName = value
                    }
                    if let value = dict["ClassId"] as? Int64 {
                        self.classId = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Deleted"] as? Int32 {
                        self.deleted = value
                    }
                    if let value = dict["GmtCreated"] as? Int64 {
                        self.gmtCreated = value
                    }
                    if let value = dict["GmtUpdate"] as? Int64 {
                        self.gmtUpdate = value
                    }
                    if let value = dict["MassId"] as? Int64 {
                        self.massId = value
                    }
                    if let value = dict["Memo"] as? String {
                        self.memo = value
                    }
                    if let value = dict["MsgId"] as? Int64 {
                        self.msgId = value
                    }
                    if let value = dict["Status"] as? Int64 {
                        self.status = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public class LastItem : Tea.TeaModel {
                public var categoryName: String?

                public var classId: Int64?

                public var content: String?

                public var deleted: Int32?

                public var gmtCreated: Int64?

                public var gmtUpdate: Int64?

                public var massId: Int64?

                public var memo: String?

                public var msgId: Int64?

                public var status: Int64?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryName != nil {
                        map["CategoryName"] = self.categoryName!
                    }
                    if self.classId != nil {
                        map["ClassId"] = self.classId!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.gmtCreated != nil {
                        map["GmtCreated"] = self.gmtCreated!
                    }
                    if self.gmtUpdate != nil {
                        map["GmtUpdate"] = self.gmtUpdate!
                    }
                    if self.massId != nil {
                        map["MassId"] = self.massId!
                    }
                    if self.memo != nil {
                        map["Memo"] = self.memo!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryName"] as? String {
                        self.categoryName = value
                    }
                    if let value = dict["ClassId"] as? Int64 {
                        self.classId = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Deleted"] as? Int32 {
                        self.deleted = value
                    }
                    if let value = dict["GmtCreated"] as? Int64 {
                        self.gmtCreated = value
                    }
                    if let value = dict["GmtUpdate"] as? Int64 {
                        self.gmtUpdate = value
                    }
                    if let value = dict["MassId"] as? Int64 {
                        self.massId = value
                    }
                    if let value = dict["Memo"] as? String {
                        self.memo = value
                    }
                    if let value = dict["MsgId"] as? Int64 {
                        self.msgId = value
                    }
                    if let value = dict["Status"] as? Int64 {
                        self.status = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public class NextItem : Tea.TeaModel {
                public var categoryName: String?

                public var classId: Int64?

                public var content: String?

                public var deleted: Int32?

                public var gmtCreated: Int64?

                public var gmtUpdate: Int64?

                public var massId: Int64?

                public var memo: String?

                public var msgId: Int64?

                public var status: Int64?

                public var title: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.categoryName != nil {
                        map["CategoryName"] = self.categoryName!
                    }
                    if self.classId != nil {
                        map["ClassId"] = self.classId!
                    }
                    if self.content != nil {
                        map["Content"] = self.content!
                    }
                    if self.deleted != nil {
                        map["Deleted"] = self.deleted!
                    }
                    if self.gmtCreated != nil {
                        map["GmtCreated"] = self.gmtCreated!
                    }
                    if self.gmtUpdate != nil {
                        map["GmtUpdate"] = self.gmtUpdate!
                    }
                    if self.massId != nil {
                        map["MassId"] = self.massId!
                    }
                    if self.memo != nil {
                        map["Memo"] = self.memo!
                    }
                    if self.msgId != nil {
                        map["MsgId"] = self.msgId!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.title != nil {
                        map["Title"] = self.title!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["CategoryName"] as? String {
                        self.categoryName = value
                    }
                    if let value = dict["ClassId"] as? Int64 {
                        self.classId = value
                    }
                    if let value = dict["Content"] as? String {
                        self.content = value
                    }
                    if let value = dict["Deleted"] as? Int32 {
                        self.deleted = value
                    }
                    if let value = dict["GmtCreated"] as? Int64 {
                        self.gmtCreated = value
                    }
                    if let value = dict["GmtUpdate"] as? Int64 {
                        self.gmtUpdate = value
                    }
                    if let value = dict["MassId"] as? Int64 {
                        self.massId = value
                    }
                    if let value = dict["Memo"] as? String {
                        self.memo = value
                    }
                    if let value = dict["MsgId"] as? Int64 {
                        self.msgId = value
                    }
                    if let value = dict["Status"] as? Int64 {
                        self.status = value
                    }
                    if let value = dict["Title"] as? String {
                        self.title = value
                    }
                }
            }
            public var item: [ReadMessageContentResponseBody.Data.Datas.Item]?

            public var lastItem: [ReadMessageContentResponseBody.Data.Datas.LastItem]?

            public var nextItem: [ReadMessageContentResponseBody.Data.Datas.NextItem]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.item != nil {
                    var tmp : [Any] = []
                    for k in self.item! {
                        tmp.append(k.toMap())
                    }
                    map["Item"] = tmp
                }
                if self.lastItem != nil {
                    var tmp : [Any] = []
                    for k in self.lastItem! {
                        tmp.append(k.toMap())
                    }
                    map["LastItem"] = tmp
                }
                if self.nextItem != nil {
                    var tmp : [Any] = []
                    for k in self.nextItem! {
                        tmp.append(k.toMap())
                    }
                    map["NextItem"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Item"] as? [Any?] {
                    var tmp : [ReadMessageContentResponseBody.Data.Datas.Item] = []
                    for v in value {
                        if v != nil {
                            var model = ReadMessageContentResponseBody.Data.Datas.Item()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.item = tmp
                }
                if let value = dict["LastItem"] as? [Any?] {
                    var tmp : [ReadMessageContentResponseBody.Data.Datas.LastItem] = []
                    for v in value {
                        if v != nil {
                            var model = ReadMessageContentResponseBody.Data.Datas.LastItem()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.lastItem = tmp
                }
                if let value = dict["NextItem"] as? [Any?] {
                    var tmp : [ReadMessageContentResponseBody.Data.Datas.NextItem] = []
                    for v in value {
                        if v != nil {
                            var model = ReadMessageContentResponseBody.Data.Datas.NextItem()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.nextItem = tmp
                }
            }
        }
        public var datas: ReadMessageContentResponseBody.Data.Datas?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.datas?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.datas != nil {
                map["Datas"] = self.datas?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Datas"] as? [String: Any?] {
                var model = ReadMessageContentResponseBody.Data.Datas()
                model.fromMap(value)
                self.datas = model
            }
        }
    }
    public var code: String?

    public var data: ReadMessageContentResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadMessageContentResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ReadMessageContentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMessageContentResponseBody?

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
            var model = ReadMessageContentResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMessageLanguageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var returnDefaultLang: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.returnDefaultLang != nil {
            map["ReturnDefaultLang"] = self.returnDefaultLang!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["ReturnDefaultLang"] as? String {
            self.returnDefaultLang = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMessageLanguageResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
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

public class ReadMessageLanguageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMessageLanguageResponseBody?

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
            var model = ReadMessageLanguageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMessageListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

    public var clientSource: String?

    public var content: String?

    public var cookies: String?

    public var groupCode: String?

    public var history: String?

    public var loc: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var page: Int32?

    public var pageSize: Int32?

    public var srcUrl: String?

    public var status: Int32?

    public var tenantCode: String?

    public var title: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.classId != nil {
            map["ClassId"] = self.classId!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.groupCode != nil {
            map["GroupCode"] = self.groupCode!
        }
        if self.history != nil {
            map["History"] = self.history!
        }
        if self.loc != nil {
            map["Loc"] = self.loc!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.page != nil {
            map["Page"] = self.page!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClassId"] as? Int64 {
            self.classId = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Content"] as? String {
            self.content = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["GroupCode"] as? String {
            self.groupCode = value
        }
        if let value = dict["History"] as? String {
            self.history = value
        }
        if let value = dict["Loc"] as? String {
            self.loc = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Page"] as? Int32 {
            self.page = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["Status"] as? Int32 {
            self.status = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMessageListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rows : Tea.TeaModel {
            public var categoryCode: String?

            public var categoryName: String?

            public var class_: String?

            public var classId: Int64?

            public var content: String?

            public var deleted: Int32?

            public var gmtCreated: Int64?

            public var gmtUpdate: Int64?

            public var massId: Int64?

            public var memo: String?

            public var msgId: Int64?

            public var status: Int64?

            public var title: String?

            public var titleh: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.categoryCode != nil {
                    map["CategoryCode"] = self.categoryCode!
                }
                if self.categoryName != nil {
                    map["CategoryName"] = self.categoryName!
                }
                if self.class_ != nil {
                    map["Class"] = self.class_!
                }
                if self.classId != nil {
                    map["ClassId"] = self.classId!
                }
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.deleted != nil {
                    map["Deleted"] = self.deleted!
                }
                if self.gmtCreated != nil {
                    map["GmtCreated"] = self.gmtCreated!
                }
                if self.gmtUpdate != nil {
                    map["GmtUpdate"] = self.gmtUpdate!
                }
                if self.massId != nil {
                    map["MassId"] = self.massId!
                }
                if self.memo != nil {
                    map["Memo"] = self.memo!
                }
                if self.msgId != nil {
                    map["MsgId"] = self.msgId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.title != nil {
                    map["Title"] = self.title!
                }
                if self.titleh != nil {
                    map["Titleh"] = self.titleh!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CategoryCode"] as? String {
                    self.categoryCode = value
                }
                if let value = dict["CategoryName"] as? String {
                    self.categoryName = value
                }
                if let value = dict["Class"] as? String {
                    self.class_ = value
                }
                if let value = dict["ClassId"] as? Int64 {
                    self.classId = value
                }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Deleted"] as? Int32 {
                    self.deleted = value
                }
                if let value = dict["GmtCreated"] as? Int64 {
                    self.gmtCreated = value
                }
                if let value = dict["GmtUpdate"] as? Int64 {
                    self.gmtUpdate = value
                }
                if let value = dict["MassId"] as? Int64 {
                    self.massId = value
                }
                if let value = dict["Memo"] as? String {
                    self.memo = value
                }
                if let value = dict["MsgId"] as? Int64 {
                    self.msgId = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
                if let value = dict["Title"] as? String {
                    self.title = value
                }
                if let value = dict["Titleh"] as? String {
                    self.titleh = value
                }
            }
        }
        public var count: Int64?

        public var maxResults: Int64?

        public var nextToken: String?

        public var page: Int32?

        public var pageSize: Int32?

        public var rows: [ReadMessageListResponseBody.Data.Rows]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.maxResults != nil {
                map["MaxResults"] = self.maxResults!
            }
            if self.nextToken != nil {
                map["NextToken"] = self.nextToken!
            }
            if self.page != nil {
                map["Page"] = self.page!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.rows != nil {
                var tmp : [Any] = []
                for k in self.rows! {
                    tmp.append(k.toMap())
                }
                map["Rows"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Count"] as? Int64 {
                self.count = value
            }
            if let value = dict["MaxResults"] as? Int64 {
                self.maxResults = value
            }
            if let value = dict["NextToken"] as? String {
                self.nextToken = value
            }
            if let value = dict["Page"] as? Int32 {
                self.page = value
            }
            if let value = dict["PageSize"] as? Int32 {
                self.pageSize = value
            }
            if let value = dict["Rows"] as? [Any?] {
                var tmp : [ReadMessageListResponseBody.Data.Rows] = []
                for v in value {
                    if v != nil {
                        var model = ReadMessageListResponseBody.Data.Rows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rows = tmp
            }
        }
    }
    public var code: String?

    public var data: ReadMessageListResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadMessageListResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ReadMessageListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMessageListResponseBody?

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
            var model = ReadMessageListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMessageNewTotalRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMessageNewTotalResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Int64?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Int64 {
            self.data = value
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

public class ReadMessageNewTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMessageNewTotalResponseBody?

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
            var model = ReadMessageNewTotalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadMetaConfigRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadMetaConfigResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Any?

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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? Any {
            self.data = value
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

public class ReadMetaConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadMetaConfigResponseBody?

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
            var model = ReadMetaConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadNumGroupByClassRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadNumGroupByClassResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var classId: Int64?

        public var msgCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.classId != nil {
                map["ClassId"] = self.classId!
            }
            if self.msgCount != nil {
                map["MsgCount"] = self.msgCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClassId"] as? Int64 {
                self.classId = value
            }
            if let value = dict["MsgCount"] as? Int64 {
                self.msgCount = value
            }
        }
    }
    public var code: String?

    public var data: [ReadNumGroupByClassResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadNumGroupByClassResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadNumGroupByClassResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadNumGroupByClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadNumGroupByClassResponseBody?

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
            var model = ReadNumGroupByClassResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadNumGroupTotalRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var title: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.title != nil {
            map["Title"] = self.title!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["Title"] as? String {
            self.title = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadNumGroupTotalResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var groupCode: String?

        public var id: Int64?

        public var readCount: Int64?

        public var totalCount: Int64?

        public var unReadCount: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupCode != nil {
                map["GroupCode"] = self.groupCode!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.readCount != nil {
                map["ReadCount"] = self.readCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            if self.unReadCount != nil {
                map["UnReadCount"] = self.unReadCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupCode"] as? String {
                self.groupCode = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["ReadCount"] as? Int64 {
                self.readCount = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
            if let value = dict["UnReadCount"] as? Int64 {
                self.unReadCount = value
            }
        }
    }
    public var code: String?

    public var data: [ReadNumGroupTotalResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadNumGroupTotalResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadNumGroupTotalResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadNumGroupTotalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadNumGroupTotalResponseBody?

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
            var model = ReadNumGroupTotalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadRevisionHistoryListRequest : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var maxResults: Int32?

        public var nextToken: String?

        public var returnTotalCount: Bool?

        public override init() {
            super.init()
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
            if self.returnTotalCount != nil {
                map["ReturnTotalCount"] = self.returnTotalCount!
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
            if let value = dict["ReturnTotalCount"] as? Bool {
                self.returnTotalCount = value
            }
        }
    }
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var categoryCode: String?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var pageInfo: ReadRevisionHistoryListRequest.PageInfo?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.categoryCode != nil {
            map["CategoryCode"] = self.categoryCode!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.pageInfo != nil {
            map["PageInfo"] = self.pageInfo?.toMap()
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["CategoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["PageInfo"] as? [String: Any?] {
            var model = ReadRevisionHistoryListRequest.PageInfo()
            model.fromMap(value)
            self.pageInfo = model
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadRevisionHistoryListShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var categoryCode: String?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var pageInfoShrink: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.categoryCode != nil {
            map["CategoryCode"] = self.categoryCode!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.pageInfoShrink != nil {
            map["PageInfo"] = self.pageInfoShrink!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["CategoryCode"] as? String {
            self.categoryCode = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["PageInfo"] as? String {
            self.pageInfoShrink = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadRevisionHistoryListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Rows : Tea.TeaModel {
            public class PageSpec : Tea.TeaModel {
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
            public var aliUid: Int64?

            public var categoryCode: String?

            public var channelGroupCode: String?

            public var newValue: String?

            public var operationItemCode: String?

            public var operationItemName: String?

            public var operationTimestamp: Int64?

            public var operatorIp: String?

            public var operatorName: String?

            public var operatorUid: Int64?

            public var originalValue: String?

            public var pageSpec: ReadRevisionHistoryListResponseBody.Data.Rows.PageSpec?

            public var remarks: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.pageSpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.categoryCode != nil {
                    map["CategoryCode"] = self.categoryCode!
                }
                if self.channelGroupCode != nil {
                    map["ChannelGroupCode"] = self.channelGroupCode!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.operationItemCode != nil {
                    map["OperationItemCode"] = self.operationItemCode!
                }
                if self.operationItemName != nil {
                    map["OperationItemName"] = self.operationItemName!
                }
                if self.operationTimestamp != nil {
                    map["OperationTimestamp"] = self.operationTimestamp!
                }
                if self.operatorIp != nil {
                    map["OperatorIp"] = self.operatorIp!
                }
                if self.operatorName != nil {
                    map["OperatorName"] = self.operatorName!
                }
                if self.operatorUid != nil {
                    map["OperatorUid"] = self.operatorUid!
                }
                if self.originalValue != nil {
                    map["OriginalValue"] = self.originalValue!
                }
                if self.pageSpec != nil {
                    map["PageSpec"] = self.pageSpec?.toMap()
                }
                if self.remarks != nil {
                    map["Remarks"] = self.remarks!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliUid"] as? Int64 {
                    self.aliUid = value
                }
                if let value = dict["CategoryCode"] as? String {
                    self.categoryCode = value
                }
                if let value = dict["ChannelGroupCode"] as? String {
                    self.channelGroupCode = value
                }
                if let value = dict["NewValue"] as? String {
                    self.newValue = value
                }
                if let value = dict["OperationItemCode"] as? String {
                    self.operationItemCode = value
                }
                if let value = dict["OperationItemName"] as? String {
                    self.operationItemName = value
                }
                if let value = dict["OperationTimestamp"] as? Int64 {
                    self.operationTimestamp = value
                }
                if let value = dict["OperatorIp"] as? String {
                    self.operatorIp = value
                }
                if let value = dict["OperatorName"] as? String {
                    self.operatorName = value
                }
                if let value = dict["OperatorUid"] as? Int64 {
                    self.operatorUid = value
                }
                if let value = dict["OriginalValue"] as? String {
                    self.originalValue = value
                }
                if let value = dict["PageSpec"] as? [String: Any?] {
                    var model = ReadRevisionHistoryListResponseBody.Data.Rows.PageSpec()
                    model.fromMap(value)
                    self.pageSpec = model
                }
                if let value = dict["Remarks"] as? String {
                    self.remarks = value
                }
            }
        }
        public var maxResults: Int32?

        public var nextToken: String?

        public var rows: [ReadRevisionHistoryListResponseBody.Data.Rows]?

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
            if self.rows != nil {
                var tmp : [Any] = []
                for k in self.rows! {
                    tmp.append(k.toMap())
                }
                map["Rows"] = tmp
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
            if let value = dict["Rows"] as? [Any?] {
                var tmp : [ReadRevisionHistoryListResponseBody.Data.Rows] = []
                for v in value {
                    if v != nil {
                        var model = ReadRevisionHistoryListResponseBody.Data.Rows()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.rows = tmp
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var code: String?

    public var data: ReadRevisionHistoryListResponseBody.Data?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadRevisionHistoryListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpCode"] as? Int32 {
            self.httpCode = value
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

public class ReadRevisionHistoryListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadRevisionHistoryListResponseBody?

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
            var model = ReadRevisionHistoryListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadUserSubscriptionListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var categoryGroupCode: String?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.categoryGroupCode != nil {
            map["CategoryGroupCode"] = self.categoryGroupCode!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["CategoryGroupCode"] as? String {
            self.categoryGroupCode = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadUserSubscriptionListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ChannelConfigs : Tea.TeaModel {
            public var channelType: String?

            public var checkedState: String?

            public var defaultChecked: String?

            public var fatigueDayLimit: Int32?

            public var optional_: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.channelType != nil {
                    map["ChannelType"] = self.channelType!
                }
                if self.checkedState != nil {
                    map["CheckedState"] = self.checkedState!
                }
                if self.defaultChecked != nil {
                    map["DefaultChecked"] = self.defaultChecked!
                }
                if self.fatigueDayLimit != nil {
                    map["FatigueDayLimit"] = self.fatigueDayLimit!
                }
                if self.optional_ != nil {
                    map["Optional"] = self.optional_!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ChannelType"] as? String {
                    self.channelType = value
                }
                if let value = dict["CheckedState"] as? String {
                    self.checkedState = value
                }
                if let value = dict["DefaultChecked"] as? String {
                    self.defaultChecked = value
                }
                if let value = dict["FatigueDayLimit"] as? Int32 {
                    self.fatigueDayLimit = value
                }
                if let value = dict["Optional"] as? String {
                    self.optional_ = value
                }
            }
        }
        public class Contact : Tea.TeaModel {
            public class CommonContacts : Tea.TeaModel {
                public class MessageSource : Tea.TeaModel {
                    public var keywordBlacklist: [String]?

                    public var keywordWhitelist: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keywordBlacklist != nil {
                            map["KeywordBlacklist"] = self.keywordBlacklist!
                        }
                        if self.keywordWhitelist != nil {
                            map["KeywordWhitelist"] = self.keywordWhitelist!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["KeywordBlacklist"] as? [String] {
                            self.keywordBlacklist = value
                        }
                        if let value = dict["KeywordWhitelist"] as? [String] {
                            self.keywordWhitelist = value
                        }
                    }
                }
                public var aliUid: Int64?

                public var contactEmail: String?

                public var contactId: Int64?

                public var contactMobile: String?

                public var contactName: String?

                public var emailConfirmed: Bool?

                public var messageSource: ReadUserSubscriptionListResponseBody.Data.Contact.CommonContacts.MessageSource?

                public var mobileConfirmed: Bool?

                public var position: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.messageSource?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.aliUid != nil {
                        map["AliUid"] = self.aliUid!
                    }
                    if self.contactEmail != nil {
                        map["ContactEmail"] = self.contactEmail!
                    }
                    if self.contactId != nil {
                        map["ContactId"] = self.contactId!
                    }
                    if self.contactMobile != nil {
                        map["ContactMobile"] = self.contactMobile!
                    }
                    if self.contactName != nil {
                        map["ContactName"] = self.contactName!
                    }
                    if self.emailConfirmed != nil {
                        map["EmailConfirmed"] = self.emailConfirmed!
                    }
                    if self.messageSource != nil {
                        map["MessageSource"] = self.messageSource?.toMap()
                    }
                    if self.mobileConfirmed != nil {
                        map["MobileConfirmed"] = self.mobileConfirmed!
                    }
                    if self.position != nil {
                        map["Position"] = self.position!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AliUid"] as? Int64 {
                        self.aliUid = value
                    }
                    if let value = dict["ContactEmail"] as? String {
                        self.contactEmail = value
                    }
                    if let value = dict["ContactId"] as? Int64 {
                        self.contactId = value
                    }
                    if let value = dict["ContactMobile"] as? String {
                        self.contactMobile = value
                    }
                    if let value = dict["ContactName"] as? String {
                        self.contactName = value
                    }
                    if let value = dict["EmailConfirmed"] as? Bool {
                        self.emailConfirmed = value
                    }
                    if let value = dict["MessageSource"] as? [String: Any?] {
                        var model = ReadUserSubscriptionListResponseBody.Data.Contact.CommonContacts.MessageSource()
                        model.fromMap(value)
                        self.messageSource = model
                    }
                    if let value = dict["MobileConfirmed"] as? Bool {
                        self.mobileConfirmed = value
                    }
                    if let value = dict["Position"] as? String {
                        self.position = value
                    }
                }
            }
            public class WebhookContacts : Tea.TeaModel {
                public class MessageSource : Tea.TeaModel {
                    public var keywordBlacklist: [String]?

                    public var keywordWhitelist: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.keywordBlacklist != nil {
                            map["KeywordBlacklist"] = self.keywordBlacklist!
                        }
                        if self.keywordWhitelist != nil {
                            map["KeywordWhitelist"] = self.keywordWhitelist!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["KeywordBlacklist"] as? [String] {
                            self.keywordBlacklist = value
                        }
                        if let value = dict["KeywordWhitelist"] as? [String] {
                            self.keywordWhitelist = value
                        }
                    }
                }
                public var contactId: Int64?

                public var contactName: String?

                public var messageSource: ReadUserSubscriptionListResponseBody.Data.Contact.WebhookContacts.MessageSource?

                public var securityToken: String?

                public var serverUrl: String?

                public var webhookType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.messageSource?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.contactId != nil {
                        map["ContactId"] = self.contactId!
                    }
                    if self.contactName != nil {
                        map["ContactName"] = self.contactName!
                    }
                    if self.messageSource != nil {
                        map["MessageSource"] = self.messageSource?.toMap()
                    }
                    if self.securityToken != nil {
                        map["SecurityToken"] = self.securityToken!
                    }
                    if self.serverUrl != nil {
                        map["ServerUrl"] = self.serverUrl!
                    }
                    if self.webhookType != nil {
                        map["WebhookType"] = self.webhookType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ContactId"] as? Int64 {
                        self.contactId = value
                    }
                    if let value = dict["ContactName"] as? String {
                        self.contactName = value
                    }
                    if let value = dict["MessageSource"] as? [String: Any?] {
                        var model = ReadUserSubscriptionListResponseBody.Data.Contact.WebhookContacts.MessageSource()
                        model.fromMap(value)
                        self.messageSource = model
                    }
                    if let value = dict["SecurityToken"] as? String {
                        self.securityToken = value
                    }
                    if let value = dict["ServerUrl"] as? String {
                        self.serverUrl = value
                    }
                    if let value = dict["WebhookType"] as? String {
                        self.webhookType = value
                    }
                }
            }
            public var commonContacts: [ReadUserSubscriptionListResponseBody.Data.Contact.CommonContacts]?

            public var webhookContacts: [ReadUserSubscriptionListResponseBody.Data.Contact.WebhookContacts]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commonContacts != nil {
                    var tmp : [Any] = []
                    for k in self.commonContacts! {
                        tmp.append(k.toMap())
                    }
                    map["CommonContacts"] = tmp
                }
                if self.webhookContacts != nil {
                    var tmp : [Any] = []
                    for k in self.webhookContacts! {
                        tmp.append(k.toMap())
                    }
                    map["WebhookContacts"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommonContacts"] as? [Any?] {
                    var tmp : [ReadUserSubscriptionListResponseBody.Data.Contact.CommonContacts] = []
                    for v in value {
                        if v != nil {
                            var model = ReadUserSubscriptionListResponseBody.Data.Contact.CommonContacts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.commonContacts = tmp
                }
                if let value = dict["WebhookContacts"] as? [Any?] {
                    var tmp : [ReadUserSubscriptionListResponseBody.Data.Contact.WebhookContacts] = []
                    for v in value {
                        if v != nil {
                            var model = ReadUserSubscriptionListResponseBody.Data.Contact.WebhookContacts()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.webhookContacts = tmp
                }
            }
        }
        public var aliUid: Int64?

        public var categoryCode: String?

        public var categoryDesc: String?

        public var categoryGroupCode: String?

        public var categoryGroupName: String?

        public var categoryName: String?

        public var channelConfigs: [ReadUserSubscriptionListResponseBody.Data.ChannelConfigs]?

        public var contact: ReadUserSubscriptionListResponseBody.Data.Contact?

        public var receiveTimeList: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.contact?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.categoryCode != nil {
                map["CategoryCode"] = self.categoryCode!
            }
            if self.categoryDesc != nil {
                map["CategoryDesc"] = self.categoryDesc!
            }
            if self.categoryGroupCode != nil {
                map["CategoryGroupCode"] = self.categoryGroupCode!
            }
            if self.categoryGroupName != nil {
                map["CategoryGroupName"] = self.categoryGroupName!
            }
            if self.categoryName != nil {
                map["CategoryName"] = self.categoryName!
            }
            if self.channelConfigs != nil {
                var tmp : [Any] = []
                for k in self.channelConfigs! {
                    tmp.append(k.toMap())
                }
                map["ChannelConfigs"] = tmp
            }
            if self.contact != nil {
                map["Contact"] = self.contact?.toMap()
            }
            if self.receiveTimeList != nil {
                map["ReceiveTimeList"] = self.receiveTimeList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["CategoryCode"] as? String {
                self.categoryCode = value
            }
            if let value = dict["CategoryDesc"] as? String {
                self.categoryDesc = value
            }
            if let value = dict["CategoryGroupCode"] as? String {
                self.categoryGroupCode = value
            }
            if let value = dict["CategoryGroupName"] as? String {
                self.categoryGroupName = value
            }
            if let value = dict["CategoryName"] as? String {
                self.categoryName = value
            }
            if let value = dict["ChannelConfigs"] as? [Any?] {
                var tmp : [ReadUserSubscriptionListResponseBody.Data.ChannelConfigs] = []
                for v in value {
                    if v != nil {
                        var model = ReadUserSubscriptionListResponseBody.Data.ChannelConfigs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.channelConfigs = tmp
            }
            if let value = dict["Contact"] as? [String: Any?] {
                var model = ReadUserSubscriptionListResponseBody.Data.Contact()
                model.fromMap(value)
                self.contact = model
            }
            if let value = dict["ReceiveTimeList"] as? [Int32] {
                self.receiveTimeList = value
            }
        }
    }
    public var code: String?

    public var data: [ReadUserSubscriptionListResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadUserSubscriptionListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadUserSubscriptionListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
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

public class ReadUserSubscriptionListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadUserSubscriptionListResponseBody?

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
            var model = ReadUserSubscriptionListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadWebhookContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadWebhookContactResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var botSecurityToken: String?

        public var contactId: Int64?

        public var contactName: String?

        public var securityToken: String?

        public var serverUrl: String?

        public var webhookType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.botSecurityToken != nil {
                map["BotSecurityToken"] = self.botSecurityToken!
            }
            if self.contactId != nil {
                map["ContactId"] = self.contactId!
            }
            if self.contactName != nil {
                map["ContactName"] = self.contactName!
            }
            if self.securityToken != nil {
                map["SecurityToken"] = self.securityToken!
            }
            if self.serverUrl != nil {
                map["ServerUrl"] = self.serverUrl!
            }
            if self.webhookType != nil {
                map["WebhookType"] = self.webhookType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BotSecurityToken"] as? String {
                self.botSecurityToken = value
            }
            if let value = dict["ContactId"] as? Int64 {
                self.contactId = value
            }
            if let value = dict["ContactName"] as? String {
                self.contactName = value
            }
            if let value = dict["SecurityToken"] as? String {
                self.securityToken = value
            }
            if let value = dict["ServerUrl"] as? String {
                self.serverUrl = value
            }
            if let value = dict["WebhookType"] as? String {
                self.webhookType = value
            }
        }
    }
    public var code: String?

    public var data: ReadWebhookContactResponseBody.Data?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = ReadWebhookContactResponseBody.Data()
            model.fromMap(value)
            self.data = model
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

public class ReadWebhookContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadWebhookContactResponseBody?

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
            var model = ReadWebhookContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReadWebhookContactSendTemplateListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var srcUrl: String?

    public var templateCode: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ReadWebhookContactSendTemplateListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var code: String?

        public var template: Any?

        public override init() {
            super.init()
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
            if self.template != nil {
                map["Template"] = self.template!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Code"] as? String {
                self.code = value
            }
            if let value = dict["Template"] as? Any {
                self.template = value
            }
        }
    }
    public var code: String?

    public var data: [ReadWebhookContactSendTemplateListResponseBody.Data]?

    public var httpCode: Int32?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [ReadWebhookContactSendTemplateListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = ReadWebhookContactSendTemplateListResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpCode"] as? Int32 {
            self.httpCode = value
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

public class ReadWebhookContactSendTemplateListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReadWebhookContactSendTemplateListResponseBody?

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
            var model = ReadWebhookContactSendTemplateListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResetUserSubscriptionRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var categoryCodes: [String]?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var remarks: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.categoryCodes != nil {
            map["CategoryCodes"] = self.categoryCodes!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.remarks != nil {
            map["Remarks"] = self.remarks!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["CategoryCodes"] as? [String] {
            self.categoryCodes = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["Remarks"] as? String {
            self.remarks = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ResetUserSubscriptionShrinkRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var categoryCodesShrink: String?

    public var channelGroupCode: String?

    public var clientSource: String?

    public var cookies: String?

    public var remarks: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.categoryCodesShrink != nil {
            map["CategoryCodes"] = self.categoryCodesShrink!
        }
        if self.channelGroupCode != nil {
            map["ChannelGroupCode"] = self.channelGroupCode!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.remarks != nil {
            map["Remarks"] = self.remarks!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["CategoryCodes"] as? String {
            self.categoryCodesShrink = value
        }
        if let value = dict["ChannelGroupCode"] as? String {
            self.channelGroupCode = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["Remarks"] as? String {
            self.remarks = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class ResetUserSubscriptionResponseBody : Tea.TeaModel {
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
    }
}

public class ResetUserSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetUserSubscriptionResponseBody?

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
            var model = ResetUserSubscriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class TestWebhookContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var botSecurityToken: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var contactName: String?

    public var cookies: String?

    public var serverUrl: String?

    public var srcUrl: String?

    public var templateCode: String?

    public var tenantCode: String?

    public var uidType: String?

    public var webhookType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.botSecurityToken != nil {
            map["BotSecurityToken"] = self.botSecurityToken!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.serverUrl != nil {
            map["ServerUrl"] = self.serverUrl!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        if self.webhookType != nil {
            map["WebhookType"] = self.webhookType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["BotSecurityToken"] as? String {
            self.botSecurityToken = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["ServerUrl"] as? String {
            self.serverUrl = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
        if let value = dict["WebhookType"] as? String {
            self.webhookType = value
        }
    }
}

public class TestWebhookContactResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpCode: Int32?

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
        if self.httpCode != nil {
            map["HttpCode"] = self.httpCode!
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
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["HttpCode"] as? Int32 {
            self.httpCode = value
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

public class TestWebhookContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: TestWebhookContactResponseBody?

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
            var model = TestWebhookContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMarketingPreferenceRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var allowMarketing: Bool?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var cookies: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.allowMarketing != nil {
            map["AllowMarketing"] = self.allowMarketing!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AllowMarketing"] as? Bool {
            self.allowMarketing = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class UpdateMarketingPreferenceResponseBody : Tea.TeaModel {
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
    }
}

public class UpdateMarketingPreferenceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMarketingPreferenceResponseBody?

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
            var model = UpdateMarketingPreferenceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMessageLanguageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var cookies: String?

    public var preferLang: String?

    public var srcUrl: String?

    public var tenantCode: String?

    public var uidType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.preferLang != nil {
            map["PreferLang"] = self.preferLang!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["PreferLang"] as? String {
            self.preferLang = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
    }
}

public class UpdateMessageLanguageResponseBody : Tea.TeaModel {
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
    }
}

public class UpdateMessageLanguageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMessageLanguageResponseBody?

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
            var model = UpdateMessageLanguageResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateWebhookContactRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var botSecurityToken: String?

    public var callerProtocol: String?

    public var clientSource: String?

    public var contactId: Int64?

    public var contactName: String?

    public var cookies: String?

    public var securityToken: String?

    public var serverUrl: String?

    public var srcUrl: String?

    public var templateCode: String?

    public var tenantCode: String?

    public var uidType: String?

    public var verificationCode: String?

    public var webhookType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bizName != nil {
            map["BizName"] = self.bizName!
        }
        if self.botSecurityToken != nil {
            map["BotSecurityToken"] = self.botSecurityToken!
        }
        if self.callerProtocol != nil {
            map["CallerProtocol"] = self.callerProtocol!
        }
        if self.clientSource != nil {
            map["ClientSource"] = self.clientSource!
        }
        if self.contactId != nil {
            map["ContactId"] = self.contactId!
        }
        if self.contactName != nil {
            map["ContactName"] = self.contactName!
        }
        if self.cookies != nil {
            map["Cookies"] = self.cookies!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.serverUrl != nil {
            map["ServerUrl"] = self.serverUrl!
        }
        if self.srcUrl != nil {
            map["SrcUrl"] = self.srcUrl!
        }
        if self.templateCode != nil {
            map["TemplateCode"] = self.templateCode!
        }
        if self.tenantCode != nil {
            map["TenantCode"] = self.tenantCode!
        }
        if self.uidType != nil {
            map["UidType"] = self.uidType!
        }
        if self.verificationCode != nil {
            map["VerificationCode"] = self.verificationCode!
        }
        if self.webhookType != nil {
            map["WebhookType"] = self.webhookType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["BizName"] as? String {
            self.bizName = value
        }
        if let value = dict["BotSecurityToken"] as? String {
            self.botSecurityToken = value
        }
        if let value = dict["CallerProtocol"] as? String {
            self.callerProtocol = value
        }
        if let value = dict["ClientSource"] as? String {
            self.clientSource = value
        }
        if let value = dict["ContactId"] as? Int64 {
            self.contactId = value
        }
        if let value = dict["ContactName"] as? String {
            self.contactName = value
        }
        if let value = dict["Cookies"] as? String {
            self.cookies = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["ServerUrl"] as? String {
            self.serverUrl = value
        }
        if let value = dict["SrcUrl"] as? String {
            self.srcUrl = value
        }
        if let value = dict["TemplateCode"] as? String {
            self.templateCode = value
        }
        if let value = dict["TenantCode"] as? String {
            self.tenantCode = value
        }
        if let value = dict["UidType"] as? String {
            self.uidType = value
        }
        if let value = dict["VerificationCode"] as? String {
            self.verificationCode = value
        }
        if let value = dict["WebhookType"] as? String {
            self.webhookType = value
        }
    }
}

public class UpdateWebhookContactResponseBody : Tea.TeaModel {
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
    }
}

public class UpdateWebhookContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateWebhookContactResponseBody?

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
            var model = UpdateWebhookContactResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
