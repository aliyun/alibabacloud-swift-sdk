import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AccountOneKeyDeleteRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class AccountOneKeyDeleteResponseBody : Tea.TeaModel {
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

public class AccountOneKeyDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AccountOneKeyDeleteResponseBody?

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
            var model = AccountOneKeyDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AddCustomerLabelRequest : Tea.TeaModel {
    public var endtime: String?

    public var labelSeries: String?

    public var labelTypes: [String]?

    public var organization: String?

    public var PK: Int64?

    public var startTime: String?

    public var token: String?

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
        if self.endtime != nil {
            map["Endtime"] = self.endtime!
        }
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.labelTypes != nil {
            map["LabelTypes"] = self.labelTypes!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Endtime"] as? String {
            self.endtime = value
        }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["LabelTypes"] as? [String] {
            self.labelTypes = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class AddCustomerLabelResponseBody : Tea.TeaModel {
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

public class AddCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddCustomerLabelResponseBody?

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
            var model = AddCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AllowAgAccountLoginRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class AllowAgAccountLoginResponseBody : Tea.TeaModel {
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

public class AllowAgAccountLoginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllowAgAccountLoginResponseBody?

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
            var model = AllowAgAccountLoginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyAgOneKeyDeleteTaskRequest : Tea.TeaModel {
    public var abandonedDependency: String?

    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.abandonedDependency != nil {
            map["AbandonedDependency"] = self.abandonedDependency!
        }
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AbandonedDependency"] as? String {
            self.abandonedDependency = value
        }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class ApplyAgOneKeyDeleteTaskResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var message: String?

    public var needAbandonSpAfterPay: Bool?

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
        if self.needAbandonSpAfterPay != nil {
            map["NeedAbandonSpAfterPay"] = self.needAbandonSpAfterPay!
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
        if let value = dict["NeedAbandonSpAfterPay"] as? Bool {
            self.needAbandonSpAfterPay = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ApplyAgOneKeyDeleteTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAgOneKeyDeleteTaskResponseBody?

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
            var model = ApplyAgOneKeyDeleteTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyAgOneKeyOnlyCheckerTaskRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class ApplyAgOneKeyOnlyCheckerTaskResponseBody : Tea.TeaModel {
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

public class ApplyAgOneKeyOnlyCheckerTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyAgOneKeyOnlyCheckerTaskResponseBody?

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
            var model = ApplyAgOneKeyOnlyCheckerTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ApplyIdentityRegistrationRequest : Tea.TeaModel {
    public var accountType: Int32?

    public var customerId: String?

    public var docBackPic: String?

    public var docFrontPic: String?

    public var docNum: String?

    public var docType: String?

    public var email: String?

    public var fullName: String?

    public var registeredAddress: String?

    public var registeredCountry: String?

    public var registeredNum: String?

    public var source: String?

    public var tel: String?

    public override init() {
        super.init()
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
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.docBackPic != nil {
            map["DocBackPic"] = self.docBackPic!
        }
        if self.docFrontPic != nil {
            map["DocFrontPic"] = self.docFrontPic!
        }
        if self.docNum != nil {
            map["DocNum"] = self.docNum!
        }
        if self.docType != nil {
            map["DocType"] = self.docType!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.fullName != nil {
            map["FullName"] = self.fullName!
        }
        if self.registeredAddress != nil {
            map["RegisteredAddress"] = self.registeredAddress!
        }
        if self.registeredCountry != nil {
            map["RegisteredCountry"] = self.registeredCountry!
        }
        if self.registeredNum != nil {
            map["RegisteredNum"] = self.registeredNum!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.tel != nil {
            map["Tel"] = self.tel!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountType"] as? Int32 {
            self.accountType = value
        }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["DocBackPic"] as? String {
            self.docBackPic = value
        }
        if let value = dict["DocFrontPic"] as? String {
            self.docFrontPic = value
        }
        if let value = dict["DocNum"] as? String {
            self.docNum = value
        }
        if let value = dict["DocType"] as? String {
            self.docType = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["FullName"] as? String {
            self.fullName = value
        }
        if let value = dict["RegisteredAddress"] as? String {
            self.registeredAddress = value
        }
        if let value = dict["RegisteredCountry"] as? String {
            self.registeredCountry = value
        }
        if let value = dict["RegisteredNum"] as? String {
            self.registeredNum = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Tel"] as? String {
            self.tel = value
        }
    }
}

public class ApplyIdentityRegistrationResponseBody : Tea.TeaModel {
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

public class ApplyIdentityRegistrationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyIdentityRegistrationResponseBody?

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
            var model = ApplyIdentityRegistrationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AsyncCreateAgAccountRequest : Tea.TeaModel {
    public var loginEmail: String?

    public var maserAccountInfo: String?

    public var mpk: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginEmail != nil {
            map["LoginEmail"] = self.loginEmail!
        }
        if self.maserAccountInfo != nil {
            map["MaserAccountInfo"] = self.maserAccountInfo!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginEmail"] as? String {
            self.loginEmail = value
        }
        if let value = dict["MaserAccountInfo"] as? String {
            self.maserAccountInfo = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
    }
}

public class AsyncCreateAgAccountResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceNo: String?

    public override init() {
        super.init()
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
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
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
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class AsyncCreateAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsyncCreateAgAccountResponseBody?

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
            var model = AsyncCreateAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AsyncModifyAgLoginEmailRequest : Tea.TeaModel {
    public var mpk: String?

    public var newLoginEmail: String?

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
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.newLoginEmail != nil {
            map["NewLoginEmail"] = self.newLoginEmail!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["NewLoginEmail"] as? String {
            self.newLoginEmail = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class AsyncModifyAgLoginEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceNo: String?

    public override init() {
        super.init()
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
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
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
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class AsyncModifyAgLoginEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AsyncModifyAgLoginEmailResponseBody?

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
            var model = AsyncModifyAgLoginEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthAndActiveWithHidRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class AuthAndActiveWithHidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AccountModel : Tea.TeaModel {
            public var aliyunId: String?

            public var createTime: Int64?

            public var email: String?

            public var havanaId: Int64?

            public var mobile: String?

            public var PK: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliyunId != nil {
                    map["AliyunId"] = self.aliyunId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.email != nil {
                    map["Email"] = self.email!
                }
                if self.havanaId != nil {
                    map["HavanaId"] = self.havanaId!
                }
                if self.mobile != nil {
                    map["Mobile"] = self.mobile!
                }
                if self.PK != nil {
                    map["PK"] = self.PK!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliyunId"] as? String {
                    self.aliyunId = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Email"] as? String {
                    self.email = value
                }
                if let value = dict["HavanaId"] as? Int64 {
                    self.havanaId = value
                }
                if let value = dict["Mobile"] as? String {
                    self.mobile = value
                }
                if let value = dict["PK"] as? String {
                    self.PK = value
                }
            }
        }
        public class SessionModel : Tea.TeaModel {
            public var aliyunPK: String?

            public var loginTicket: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliyunPK != nil {
                    map["AliyunPK"] = self.aliyunPK!
                }
                if self.loginTicket != nil {
                    map["LoginTicket"] = self.loginTicket!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AliyunPK"] as? String {
                    self.aliyunPK = value
                }
                if let value = dict["LoginTicket"] as? String {
                    self.loginTicket = value
                }
            }
        }
        public var accountModel: AuthAndActiveWithHidResponseBody.Data.AccountModel?

        public var sessionModel: AuthAndActiveWithHidResponseBody.Data.SessionModel?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountModel?.validate()
            try self.sessionModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountModel != nil {
                map["AccountModel"] = self.accountModel?.toMap()
            }
            if self.sessionModel != nil {
                map["SessionModel"] = self.sessionModel?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountModel"] as? [String: Any?] {
                var model = AuthAndActiveWithHidResponseBody.Data.AccountModel()
                model.fromMap(value)
                self.accountModel = model
            }
            if let value = dict["SessionModel"] as? [String: Any?] {
                var model = AuthAndActiveWithHidResponseBody.Data.SessionModel()
                model.fromMap(value)
                self.sessionModel = model
            }
        }
    }
    public var code: String?

    public var data: AuthAndActiveWithHidResponseBody.Data?

    public var msg: String?

    public var requestId: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AuthAndActiveWithHidResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AuthAndActiveWithHidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthAndActiveWithHidResponseBody?

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
            var model = AuthAndActiveWithHidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthAndRefreshLoginTicketRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.sessionId != nil {
            map["SessionId"] = self.sessionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["SessionId"] as? String {
            self.sessionId = value
        }
    }
}

public class AuthAndRefreshLoginTicketResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var newLoginTicket: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newLoginTicket != nil {
                map["NewLoginTicket"] = self.newLoginTicket!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NewLoginTicket"] as? String {
                self.newLoginTicket = value
            }
        }
    }
    public var code: String?

    public var data: AuthAndRefreshLoginTicketResponseBody.Data?

    public var msg: String?

    public var requestId: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = AuthAndRefreshLoginTicketResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AuthAndRefreshLoginTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthAndRefreshLoginTicketResponseBody?

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
            var model = AuthAndRefreshLoginTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AuthLoginTicketRequest : Tea.TeaModel {
    public var appName: String?

    public var authCode: String?

    public var minorAuthCode: String?

    public var scene: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.authCode != nil {
            map["AuthCode"] = self.authCode!
        }
        if self.minorAuthCode != nil {
            map["MinorAuthCode"] = self.minorAuthCode!
        }
        if self.scene != nil {
            map["Scene"] = self.scene!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["AuthCode"] as? String {
            self.authCode = value
        }
        if let value = dict["MinorAuthCode"] as? String {
            self.minorAuthCode = value
        }
        if let value = dict["Scene"] as? String {
            self.scene = value
        }
    }
}

public class AuthLoginTicketResponseBody : Tea.TeaModel {
    public class LoginTicketDto : Tea.TeaModel {
        public var loginTicket: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loginTicket != nil {
                map["LoginTicket"] = self.loginTicket!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoginTicket"] as? String {
                self.loginTicket = value
            }
        }
    }
    public var code: String?

    public var loginTicketDto: AuthLoginTicketResponseBody.LoginTicketDto?

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
        try self.loginTicketDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.loginTicketDto != nil {
            map["LoginTicketDto"] = self.loginTicketDto?.toMap()
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
        if let value = dict["LoginTicketDto"] as? [String: Any?] {
            var model = AuthLoginTicketResponseBody.LoginTicketDto()
            model.fromMap(value)
            self.loginTicketDto = model
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

public class AuthLoginTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AuthLoginTicketResponseBody?

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
            var model = AuthLoginTicketResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchQueryAgAccountRequest : Tea.TeaModel {
    public var mpk: String?

    public var pkList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pkList != nil {
            map["PkList"] = self.pkList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["PkList"] as? String {
            self.pkList = value
        }
    }
}

public class BatchQueryAgAccountResponseBody : Tea.TeaModel {
    public class AgAccounts : Tea.TeaModel {
        public var loginEmail: String?

        public var pk: String?

        public var showNickName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.loginEmail != nil {
                map["LoginEmail"] = self.loginEmail!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.showNickName != nil {
                map["ShowNickName"] = self.showNickName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LoginEmail"] as? String {
                self.loginEmail = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["ShowNickName"] as? String {
                self.showNickName = value
            }
        }
    }
    public var agAccounts: [BatchQueryAgAccountResponseBody.AgAccounts]?

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
        if self.agAccounts != nil {
            var tmp : [Any] = []
            for k in self.agAccounts! {
                tmp.append(k.toMap())
            }
            map["AgAccounts"] = tmp
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
        if let value = dict["AgAccounts"] as? [Any?] {
            var tmp : [BatchQueryAgAccountResponseBody.AgAccounts] = []
            for v in value {
                if v != nil {
                    var model = BatchQueryAgAccountResponseBody.AgAccounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.agAccounts = tmp
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

public class BatchQueryAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryAgAccountResponseBody?

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
            var model = BatchQueryAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchQueryCreateAccountTraceRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNoList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNoList != nil {
            map["TraceNoList"] = self.traceNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNoList"] as? String {
            self.traceNoList = value
        }
    }
}

public class BatchQueryCreateAccountTraceResponseBody : Tea.TeaModel {
    public class Traces : Tea.TeaModel {
        public var nowLoginEmail: String?

        public var pk: String?

        public var status: String?

        public var traceNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nowLoginEmail != nil {
                map["NowLoginEmail"] = self.nowLoginEmail!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.traceNo != nil {
                map["TraceNo"] = self.traceNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NowLoginEmail"] as? String {
                self.nowLoginEmail = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TraceNo"] as? String {
                self.traceNo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traces: [BatchQueryCreateAccountTraceResponseBody.Traces]?

    public override init() {
        super.init()
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
        if self.traces != nil {
            var tmp : [Any] = []
            for k in self.traces! {
                tmp.append(k.toMap())
            }
            map["Traces"] = tmp
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
        if let value = dict["Traces"] as? [Any?] {
            var tmp : [BatchQueryCreateAccountTraceResponseBody.Traces] = []
            for v in value {
                if v != nil {
                    var model = BatchQueryCreateAccountTraceResponseBody.Traces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traces = tmp
        }
    }
}

public class BatchQueryCreateAccountTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryCreateAccountTraceResponseBody?

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
            var model = BatchQueryCreateAccountTraceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class BatchQueryModifyLoginEmailTraceRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNoList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNoList != nil {
            map["TraceNoList"] = self.traceNoList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNoList"] as? String {
            self.traceNoList = value
        }
    }
}

public class BatchQueryModifyLoginEmailTraceResponseBody : Tea.TeaModel {
    public class Traces : Tea.TeaModel {
        public var newLoginEmail: String?

        public var nowLoginEmail: String?

        public var oldLoginEmail: String?

        public var pk: String?

        public var status: String?

        public var traceNo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.newLoginEmail != nil {
                map["NewLoginEmail"] = self.newLoginEmail!
            }
            if self.nowLoginEmail != nil {
                map["NowLoginEmail"] = self.nowLoginEmail!
            }
            if self.oldLoginEmail != nil {
                map["OldLoginEmail"] = self.oldLoginEmail!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.traceNo != nil {
                map["TraceNo"] = self.traceNo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NewLoginEmail"] as? String {
                self.newLoginEmail = value
            }
            if let value = dict["NowLoginEmail"] as? String {
                self.nowLoginEmail = value
            }
            if let value = dict["OldLoginEmail"] as? String {
                self.oldLoginEmail = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TraceNo"] as? String {
                self.traceNo = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public var traces: [BatchQueryModifyLoginEmailTraceResponseBody.Traces]?

    public override init() {
        super.init()
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
        if self.traces != nil {
            var tmp : [Any] = []
            for k in self.traces! {
                tmp.append(k.toMap())
            }
            map["Traces"] = tmp
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["Traces"] as? [Any?] {
            var tmp : [BatchQueryModifyLoginEmailTraceResponseBody.Traces] = []
            for v in value {
                if v != nil {
                    var model = BatchQueryModifyLoginEmailTraceResponseBody.Traces()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.traces = tmp
        }
    }
}

public class BatchQueryModifyLoginEmailTraceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BatchQueryModifyLoginEmailTraceResponseBody?

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
            var model = BatchQueryModifyLoginEmailTraceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelAsyncCreateAgAccountRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class CancelAsyncCreateAgAccountResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CancelAsyncCreateAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAsyncCreateAgAccountResponseBody?

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
            var model = CancelAsyncCreateAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CancelAsyncModifyLoginEmailRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class CancelAsyncModifyLoginEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CancelAsyncModifyLoginEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelAsyncModifyLoginEmailResponseBody?

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
            var model = CancelAsyncModifyLoginEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeAgAccountNationalityCodeRequest : Tea.TeaModel {
    public var appName: String?

    public var mpk: String?

    public var nationalityCode: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.nationalityCode != nil {
            map["NationalityCode"] = self.nationalityCode!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["NationalityCode"] as? String {
            self.nationalityCode = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class ChangeAgAccountNationalityCodeResponseBody : Tea.TeaModel {
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

public class ChangeAgAccountNationalityCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAgAccountNationalityCodeResponseBody?

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
            var model = ChangeAgAccountNationalityCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeAgSecurityEmailRequest : Tea.TeaModel {
    public var appName: String?

    public var mpk: String?

    public var pk: String?

    public var securityEmail: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.securityEmail != nil {
            map["SecurityEmail"] = self.securityEmail!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["SecurityEmail"] as? String {
            self.securityEmail = value
        }
    }
}

public class ChangeAgSecurityEmailResponseBody : Tea.TeaModel {
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

public class ChangeAgSecurityEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAgSecurityEmailResponseBody?

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
            var model = ChangeAgSecurityEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeAgSecurityMobileRequest : Tea.TeaModel {
    public var appName: String?

    public var mpk: String?

    public var pk: String?

    public var securityMobile: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.securityMobile != nil {
            map["SecurityMobile"] = self.securityMobile!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["SecurityMobile"] as? String {
            self.securityMobile = value
        }
    }
}

public class ChangeAgSecurityMobileResponseBody : Tea.TeaModel {
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

public class ChangeAgSecurityMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAgSecurityMobileResponseBody?

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
            var model = ChangeAgSecurityMobileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAccountProfileInfoRequest : Tea.TeaModel {
    public var accountJson: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountJson != nil {
            map["AccountJson"] = self.accountJson!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountJson"] as? String {
            self.accountJson = value
        }
    }
}

public class CreateAccountProfileInfoResponseBody : Tea.TeaModel {
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

public class CreateAccountProfileInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountProfileInfoResponseBody?

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
            var model = CreateAccountProfileInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAgAccountRequest : Tea.TeaModel {
    public var loginEmail: String?

    public var mpk: String?

    public var nationCode: String?

    public var own: String?

    public var realParentPk: String?

    public var securityMobile: String?

    public var showNickName: String?

    public var siteNick: String?

    public var srcAccountInfo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.loginEmail != nil {
            map["LoginEmail"] = self.loginEmail!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.nationCode != nil {
            map["NationCode"] = self.nationCode!
        }
        if self.own != nil {
            map["Own"] = self.own!
        }
        if self.realParentPk != nil {
            map["RealParentPk"] = self.realParentPk!
        }
        if self.securityMobile != nil {
            map["SecurityMobile"] = self.securityMobile!
        }
        if self.showNickName != nil {
            map["ShowNickName"] = self.showNickName!
        }
        if self.siteNick != nil {
            map["SiteNick"] = self.siteNick!
        }
        if self.srcAccountInfo != nil {
            map["srcAccountInfo"] = self.srcAccountInfo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginEmail"] as? String {
            self.loginEmail = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["NationCode"] as? String {
            self.nationCode = value
        }
        if let value = dict["Own"] as? String {
            self.own = value
        }
        if let value = dict["RealParentPk"] as? String {
            self.realParentPk = value
        }
        if let value = dict["SecurityMobile"] as? String {
            self.securityMobile = value
        }
        if let value = dict["ShowNickName"] as? String {
            self.showNickName = value
        }
        if let value = dict["SiteNick"] as? String {
            self.siteNick = value
        }
        if let value = dict["srcAccountInfo"] as? String {
            self.srcAccountInfo = value
        }
    }
}

public class CreateAgAccountResponseBody : Tea.TeaModel {
    public class AgRelationDto : Tea.TeaModel {
        public var mpk: String?

        public var pk: String?

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
            if self.mpk != nil {
                map["Mpk"] = self.mpk!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Mpk"] as? String {
                self.mpk = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var agRelationDto: CreateAgAccountResponseBody.AgRelationDto?

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
        try self.agRelationDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agRelationDto != nil {
            map["AgRelationDto"] = self.agRelationDto?.toMap()
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
        if let value = dict["AgRelationDto"] as? [String: Any?] {
            var model = CreateAgAccountResponseBody.AgRelationDto()
            model.fromMap(value)
            self.agRelationDto = model
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

public class CreateAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAgAccountResponseBody?

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
            var model = CreateAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateContacterRequest : Tea.TeaModel {
    public var contacterAddress: String?

    public var contacterDingding: String?

    public var contacterEmail: String?

    public var contacterMobile: String?

    public var contacterName: String?

    public var contacterPosition: String?

    public var contacterStaffNo: String?

    public var contacterType: String?

    public var contacterWangwang: String?

    public var emailConfirmed: Bool?

    public var mobileConfirmed: Bool?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacterAddress != nil {
            map["ContacterAddress"] = self.contacterAddress!
        }
        if self.contacterDingding != nil {
            map["ContacterDingding"] = self.contacterDingding!
        }
        if self.contacterEmail != nil {
            map["ContacterEmail"] = self.contacterEmail!
        }
        if self.contacterMobile != nil {
            map["ContacterMobile"] = self.contacterMobile!
        }
        if self.contacterName != nil {
            map["ContacterName"] = self.contacterName!
        }
        if self.contacterPosition != nil {
            map["ContacterPosition"] = self.contacterPosition!
        }
        if self.contacterStaffNo != nil {
            map["ContacterStaffNo"] = self.contacterStaffNo!
        }
        if self.contacterType != nil {
            map["ContacterType"] = self.contacterType!
        }
        if self.contacterWangwang != nil {
            map["ContacterWangwang"] = self.contacterWangwang!
        }
        if self.emailConfirmed != nil {
            map["EmailConfirmed"] = self.emailConfirmed!
        }
        if self.mobileConfirmed != nil {
            map["MobileConfirmed"] = self.mobileConfirmed!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContacterAddress"] as? String {
            self.contacterAddress = value
        }
        if let value = dict["ContacterDingding"] as? String {
            self.contacterDingding = value
        }
        if let value = dict["ContacterEmail"] as? String {
            self.contacterEmail = value
        }
        if let value = dict["ContacterMobile"] as? String {
            self.contacterMobile = value
        }
        if let value = dict["ContacterName"] as? String {
            self.contacterName = value
        }
        if let value = dict["ContacterPosition"] as? String {
            self.contacterPosition = value
        }
        if let value = dict["ContacterStaffNo"] as? String {
            self.contacterStaffNo = value
        }
        if let value = dict["ContacterType"] as? String {
            self.contacterType = value
        }
        if let value = dict["ContacterWangwang"] as? String {
            self.contacterWangwang = value
        }
        if let value = dict["EmailConfirmed"] as? Bool {
            self.emailConfirmed = value
        }
        if let value = dict["MobileConfirmed"] as? Bool {
            self.mobileConfirmed = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class CreateContacterResponseBody : Tea.TeaModel {
    public var code: String?

    public var contacterId: String?

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
        if self.contacterId != nil {
            map["ContacterId"] = self.contacterId!
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
        if let value = dict["ContacterId"] as? String {
            self.contacterId = value
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

public class CreateContacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateContacterResponseBody?

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
            var model = CreateContacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateRealNameCertificationRequest : Tea.TeaModel {
    public var accountCertifyType: String?

    public var corporateLicenseNumber: String?

    public var corporateName: String?

    public var licenseNumber: String?

    public var licenseType: String?

    public var name: String?

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
        if self.accountCertifyType != nil {
            map["AccountCertifyType"] = self.accountCertifyType!
        }
        if self.corporateLicenseNumber != nil {
            map["CorporateLicenseNumber"] = self.corporateLicenseNumber!
        }
        if self.corporateName != nil {
            map["CorporateName"] = self.corporateName!
        }
        if self.licenseNumber != nil {
            map["LicenseNumber"] = self.licenseNumber!
        }
        if self.licenseType != nil {
            map["LicenseType"] = self.licenseType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountCertifyType"] as? String {
            self.accountCertifyType = value
        }
        if let value = dict["CorporateLicenseNumber"] as? String {
            self.corporateLicenseNumber = value
        }
        if let value = dict["CorporateName"] as? String {
            self.corporateName = value
        }
        if let value = dict["LicenseNumber"] as? String {
            self.licenseNumber = value
        }
        if let value = dict["LicenseType"] as? String {
            self.licenseType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class CreateRealNameCertificationResponseBody : Tea.TeaModel {
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

public class CreateRealNameCertificationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateRealNameCertificationResponseBody?

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
            var model = CreateRealNameCertificationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CustomerSensitiveInfoLogicalDeleteRequest : Tea.TeaModel {
    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class CustomerSensitiveInfoLogicalDeleteResponseBody : Tea.TeaModel {
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

public class CustomerSensitiveInfoLogicalDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomerSensitiveInfoLogicalDeleteResponseBody?

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
            var model = CustomerSensitiveInfoLogicalDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CustomerSensitiveInfoPhysicalDeleteRequest : Tea.TeaModel {
    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class CustomerSensitiveInfoPhysicalDeleteResponseBody : Tea.TeaModel {
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

public class CustomerSensitiveInfoPhysicalDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CustomerSensitiveInfoPhysicalDeleteResponseBody?

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
            var model = CustomerSensitiveInfoPhysicalDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DelCacheOperateSyncRequest : Tea.TeaModel {
    public var key: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Key"] as? String {
            self.key = value
        }
    }
}

public class DelCacheOperateSyncResponseBody : Tea.TeaModel {
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

public class DelCacheOperateSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DelCacheOperateSyncResponseBody?

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
            var model = DelCacheOperateSyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteContacterRequest : Tea.TeaModel {
    public var contacterId: Int64?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacterId != nil {
            map["ContacterId"] = self.contacterId!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContacterId"] as? Int64 {
            self.contacterId = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class DeleteContacterResponseBody : Tea.TeaModel {
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

public class DeleteContacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContacterResponseBody?

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
            var model = DeleteContacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteCustomerLabelRequest : Tea.TeaModel {
    public var labelSeries: String?

    public var labelTypes: [String]?

    public var organization: String?

    public var PK: Int64?

    public var token: String?

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
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.labelTypes != nil {
            map["LabelTypes"] = self.labelTypes!
        }
        if self.organization != nil {
            map["Organization"] = self.organization!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["LabelTypes"] as? [String] {
            self.labelTypes = value
        }
        if let value = dict["Organization"] as? String {
            self.organization = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class DeleteCustomerLabelResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteCustomerLabelResponseBody?

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
            var model = DeleteCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ExistBindsByOuterIdRequest : Tea.TeaModel {
    public var appName: String?

    public var minorOuterId: String?

    public var outerId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.minorOuterId != nil {
            map["MinorOuterId"] = self.minorOuterId!
        }
        if self.outerId != nil {
            map["OuterId"] = self.outerId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["MinorOuterId"] as? String {
            self.minorOuterId = value
        }
        if let value = dict["OuterId"] as? String {
            self.outerId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class ExistBindsByOuterIdResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: Bool?

    public var httpCode: String?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["HttpCode"] as? String {
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

public class ExistBindsByOuterIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ExistBindsByOuterIdResponseBody?

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
            var model = ExistBindsByOuterIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindAllContacterRequest : Tea.TeaModel {
    public var appName: String?

    public var localeString: String?

    public var type: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.localeString != nil {
            map["LocaleString"] = self.localeString!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["LocaleString"] as? String {
            self.localeString = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class FindAllContacterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ContacterInfo : Tea.TeaModel {
            public var contacterAddress: String?

            public var contacterDingding: String?

            public var contacterEmail: String?

            public var contacterId: Int64?

            public var contacterMobile: String?

            public var contacterName: String?

            public var contacterPosition: String?

            public var contacterStaffNo: String?

            public var contacterType: String?

            public var contacterWangwang: String?

            public var emailConfirmed: Bool?

            public var mobileConfirmed: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.contacterAddress != nil {
                    map["ContacterAddress"] = self.contacterAddress!
                }
                if self.contacterDingding != nil {
                    map["ContacterDingding"] = self.contacterDingding!
                }
                if self.contacterEmail != nil {
                    map["ContacterEmail"] = self.contacterEmail!
                }
                if self.contacterId != nil {
                    map["ContacterId"] = self.contacterId!
                }
                if self.contacterMobile != nil {
                    map["ContacterMobile"] = self.contacterMobile!
                }
                if self.contacterName != nil {
                    map["ContacterName"] = self.contacterName!
                }
                if self.contacterPosition != nil {
                    map["ContacterPosition"] = self.contacterPosition!
                }
                if self.contacterStaffNo != nil {
                    map["ContacterStaffNo"] = self.contacterStaffNo!
                }
                if self.contacterType != nil {
                    map["ContacterType"] = self.contacterType!
                }
                if self.contacterWangwang != nil {
                    map["ContacterWangwang"] = self.contacterWangwang!
                }
                if self.emailConfirmed != nil {
                    map["EmailConfirmed"] = self.emailConfirmed!
                }
                if self.mobileConfirmed != nil {
                    map["MobileConfirmed"] = self.mobileConfirmed!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ContacterAddress"] as? String {
                    self.contacterAddress = value
                }
                if let value = dict["ContacterDingding"] as? String {
                    self.contacterDingding = value
                }
                if let value = dict["ContacterEmail"] as? String {
                    self.contacterEmail = value
                }
                if let value = dict["ContacterId"] as? Int64 {
                    self.contacterId = value
                }
                if let value = dict["ContacterMobile"] as? String {
                    self.contacterMobile = value
                }
                if let value = dict["ContacterName"] as? String {
                    self.contacterName = value
                }
                if let value = dict["ContacterPosition"] as? String {
                    self.contacterPosition = value
                }
                if let value = dict["ContacterStaffNo"] as? String {
                    self.contacterStaffNo = value
                }
                if let value = dict["ContacterType"] as? String {
                    self.contacterType = value
                }
                if let value = dict["ContacterWangwang"] as? String {
                    self.contacterWangwang = value
                }
                if let value = dict["EmailConfirmed"] as? Bool {
                    self.emailConfirmed = value
                }
                if let value = dict["MobileConfirmed"] as? Bool {
                    self.mobileConfirmed = value
                }
            }
        }
        public var contacterInfo: [FindAllContacterResponseBody.Data.ContacterInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contacterInfo != nil {
                var tmp : [Any] = []
                for k in self.contacterInfo! {
                    tmp.append(k.toMap())
                }
                map["ContacterInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContacterInfo"] as? [Any?] {
                var tmp : [FindAllContacterResponseBody.Data.ContacterInfo] = []
                for v in value {
                    if v != nil {
                        var model = FindAllContacterResponseBody.Data.ContacterInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.contacterInfo = tmp
            }
        }
    }
    public var code: String?

    public var data: FindAllContacterResponseBody.Data?

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
            var model = FindAllContacterResponseBody.Data()
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

public class FindAllContacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindAllContacterResponseBody?

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
            var model = FindAllContacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindBizCategoryConfigRequest : Tea.TeaModel {
    public var localeString: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.localeString != nil {
            map["LocaleString"] = self.localeString!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocaleString"] as? String {
            self.localeString = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class FindBizCategoryConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BizCategory : Tea.TeaModel {
            public class SubConfigs : Tea.TeaModel {
                public class BizSubCategory : Tea.TeaModel {
                    public var code: String?

                    public var isCheck: Bool?

                    public var mainBiz: Bool?

                    public var name: String?

                    public var other: String?

                    public override init() {
                        super.init()
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
                        if self.isCheck != nil {
                            map["IsCheck"] = self.isCheck!
                        }
                        if self.mainBiz != nil {
                            map["MainBiz"] = self.mainBiz!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.other != nil {
                            map["Other"] = self.other!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Code"] as? String {
                            self.code = value
                        }
                        if let value = dict["IsCheck"] as? Bool {
                            self.isCheck = value
                        }
                        if let value = dict["MainBiz"] as? Bool {
                            self.mainBiz = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Other"] as? String {
                            self.other = value
                        }
                    }
                }
                public var bizSubCategory: [FindBizCategoryConfigResponseBody.Data.BizCategory.SubConfigs.BizSubCategory]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bizSubCategory != nil {
                        var tmp : [Any] = []
                        for k in self.bizSubCategory! {
                            tmp.append(k.toMap())
                        }
                        map["BizSubCategory"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BizSubCategory"] as? [Any?] {
                        var tmp : [FindBizCategoryConfigResponseBody.Data.BizCategory.SubConfigs.BizSubCategory] = []
                        for v in value {
                            if v != nil {
                                var model = FindBizCategoryConfigResponseBody.Data.BizCategory.SubConfigs.BizSubCategory()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bizSubCategory = tmp
                    }
                }
            }
            public var code: String?

            public var isCheck: Bool?

            public var mainBiz: Bool?

            public var name: String?

            public var other: String?

            public var subConfigs: FindBizCategoryConfigResponseBody.Data.BizCategory.SubConfigs?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.subConfigs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.isCheck != nil {
                    map["IsCheck"] = self.isCheck!
                }
                if self.mainBiz != nil {
                    map["MainBiz"] = self.mainBiz!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.other != nil {
                    map["Other"] = self.other!
                }
                if self.subConfigs != nil {
                    map["SubConfigs"] = self.subConfigs?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["IsCheck"] as? Bool {
                    self.isCheck = value
                }
                if let value = dict["MainBiz"] as? Bool {
                    self.mainBiz = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Other"] as? String {
                    self.other = value
                }
                if let value = dict["SubConfigs"] as? [String: Any?] {
                    var model = FindBizCategoryConfigResponseBody.Data.BizCategory.SubConfigs()
                    model.fromMap(value)
                    self.subConfigs = model
                }
            }
        }
        public var bizCategory: [FindBizCategoryConfigResponseBody.Data.BizCategory]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCategory != nil {
                var tmp : [Any] = []
                for k in self.bizCategory! {
                    tmp.append(k.toMap())
                }
                map["BizCategory"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCategory"] as? [Any?] {
                var tmp : [FindBizCategoryConfigResponseBody.Data.BizCategory] = []
                for v in value {
                    if v != nil {
                        var model = FindBizCategoryConfigResponseBody.Data.BizCategory()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bizCategory = tmp
            }
        }
    }
    public var code: String?

    public var data: FindBizCategoryConfigResponseBody.Data?

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
            var model = FindBizCategoryConfigResponseBody.Data()
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

public class FindBizCategoryConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindBizCategoryConfigResponseBody?

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
            var model = FindBizCategoryConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindContacterRequest : Tea.TeaModel {
    public var contacterId: Int64?

    public var localeString: String?

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
        if self.contacterId != nil {
            map["ContacterId"] = self.contacterId!
        }
        if self.localeString != nil {
            map["LocaleString"] = self.localeString!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContacterId"] as? Int64 {
            self.contacterId = value
        }
        if let value = dict["LocaleString"] as? String {
            self.localeString = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class FindContacterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var contacterAddress: String?

        public var contacterDingding: String?

        public var contacterEmail: String?

        public var contacterId: Int64?

        public var contacterMobile: String?

        public var contacterName: String?

        public var contacterPosition: String?

        public var contacterStaffNo: String?

        public var contacterType: String?

        public var contacterWangwang: String?

        public var emailConfirmed: Bool?

        public var mobileConfirmed: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.contacterAddress != nil {
                map["ContacterAddress"] = self.contacterAddress!
            }
            if self.contacterDingding != nil {
                map["ContacterDingding"] = self.contacterDingding!
            }
            if self.contacterEmail != nil {
                map["ContacterEmail"] = self.contacterEmail!
            }
            if self.contacterId != nil {
                map["ContacterId"] = self.contacterId!
            }
            if self.contacterMobile != nil {
                map["ContacterMobile"] = self.contacterMobile!
            }
            if self.contacterName != nil {
                map["ContacterName"] = self.contacterName!
            }
            if self.contacterPosition != nil {
                map["ContacterPosition"] = self.contacterPosition!
            }
            if self.contacterStaffNo != nil {
                map["ContacterStaffNo"] = self.contacterStaffNo!
            }
            if self.contacterType != nil {
                map["ContacterType"] = self.contacterType!
            }
            if self.contacterWangwang != nil {
                map["ContacterWangwang"] = self.contacterWangwang!
            }
            if self.emailConfirmed != nil {
                map["EmailConfirmed"] = self.emailConfirmed!
            }
            if self.mobileConfirmed != nil {
                map["MobileConfirmed"] = self.mobileConfirmed!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ContacterAddress"] as? String {
                self.contacterAddress = value
            }
            if let value = dict["ContacterDingding"] as? String {
                self.contacterDingding = value
            }
            if let value = dict["ContacterEmail"] as? String {
                self.contacterEmail = value
            }
            if let value = dict["ContacterId"] as? Int64 {
                self.contacterId = value
            }
            if let value = dict["ContacterMobile"] as? String {
                self.contacterMobile = value
            }
            if let value = dict["ContacterName"] as? String {
                self.contacterName = value
            }
            if let value = dict["ContacterPosition"] as? String {
                self.contacterPosition = value
            }
            if let value = dict["ContacterStaffNo"] as? String {
                self.contacterStaffNo = value
            }
            if let value = dict["ContacterType"] as? String {
                self.contacterType = value
            }
            if let value = dict["ContacterWangwang"] as? String {
                self.contacterWangwang = value
            }
            if let value = dict["EmailConfirmed"] as? Bool {
                self.emailConfirmed = value
            }
            if let value = dict["MobileConfirmed"] as? Bool {
                self.mobileConfirmed = value
            }
        }
    }
    public var code: String?

    public var data: FindContacterResponseBody.Data?

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
            var model = FindContacterResponseBody.Data()
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

public class FindContacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindContacterResponseBody?

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
            var model = FindContacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindCustomerInfoRequest : Tea.TeaModel {
    public var userId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class FindCustomerInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var biz: String?

        public var website: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.biz != nil {
                map["Biz"] = self.biz!
            }
            if self.website != nil {
                map["Website"] = self.website!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Biz"] as? String {
                self.biz = value
            }
            if let value = dict["Website"] as? String {
                self.website = value
            }
        }
    }
    public var code: String?

    public var data: FindCustomerInfoResponseBody.Data?

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
            var model = FindCustomerInfoResponseBody.Data()
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

public class FindCustomerInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindCustomerInfoResponseBody?

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
            var model = FindCustomerInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindCustomerSnapshotRequest : Tea.TeaModel {
    public var infoType: String?

    public var pk: Int64?

    public var versionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.infoType != nil {
            map["InfoType"] = self.infoType!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.versionId != nil {
            map["VersionId"] = self.versionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InfoType"] as? String {
            self.infoType = value
        }
        if let value = dict["Pk"] as? Int64 {
            self.pk = value
        }
        if let value = dict["VersionId"] as? String {
            self.versionId = value
        }
    }
}

public class FindCustomerSnapshotResponseBody : Tea.TeaModel {
    public class CustomerSnapshot : Tea.TeaModel {
        public class AccountInfoSnapshotModel : Tea.TeaModel {
            public var address: String?

            public var address2: String?

            public var address3: String?

            public var address4: String?

            public var address5: String?

            public var address6: String?

            public var cityId: String?

            public var cityName: String?

            public var postCode: String?

            public var provinceId: String?

            public var provinceName: String?

            public var trueName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.address != nil {
                    map["Address"] = self.address!
                }
                if self.address2 != nil {
                    map["Address2"] = self.address2!
                }
                if self.address3 != nil {
                    map["Address3"] = self.address3!
                }
                if self.address4 != nil {
                    map["Address4"] = self.address4!
                }
                if self.address5 != nil {
                    map["Address5"] = self.address5!
                }
                if self.address6 != nil {
                    map["Address6"] = self.address6!
                }
                if self.cityId != nil {
                    map["CityId"] = self.cityId!
                }
                if self.cityName != nil {
                    map["CityName"] = self.cityName!
                }
                if self.postCode != nil {
                    map["PostCode"] = self.postCode!
                }
                if self.provinceId != nil {
                    map["ProvinceId"] = self.provinceId!
                }
                if self.provinceName != nil {
                    map["ProvinceName"] = self.provinceName!
                }
                if self.trueName != nil {
                    map["TrueName"] = self.trueName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Address"] as? String {
                    self.address = value
                }
                if let value = dict["Address2"] as? String {
                    self.address2 = value
                }
                if let value = dict["Address3"] as? String {
                    self.address3 = value
                }
                if let value = dict["Address4"] as? String {
                    self.address4 = value
                }
                if let value = dict["Address5"] as? String {
                    self.address5 = value
                }
                if let value = dict["Address6"] as? String {
                    self.address6 = value
                }
                if let value = dict["CityId"] as? String {
                    self.cityId = value
                }
                if let value = dict["CityName"] as? String {
                    self.cityName = value
                }
                if let value = dict["PostCode"] as? String {
                    self.postCode = value
                }
                if let value = dict["ProvinceId"] as? String {
                    self.provinceId = value
                }
                if let value = dict["ProvinceName"] as? String {
                    self.provinceName = value
                }
                if let value = dict["TrueName"] as? String {
                    self.trueName = value
                }
            }
        }
        public class AccountTaxSnapshotModel : Tea.TeaModel {
            public var financeTaxCertificateImgName: String?

            public var financeTaxCertificateImgUrl: String?

            public var secondFinanceTax: String?

            public var secondFinanceTaxCertificateImgName: String?

            public var secondFinanceTaxCertificateImgUrl: String?

            public var tax: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.financeTaxCertificateImgName != nil {
                    map["FinanceTaxCertificateImgName"] = self.financeTaxCertificateImgName!
                }
                if self.financeTaxCertificateImgUrl != nil {
                    map["FinanceTaxCertificateImgUrl"] = self.financeTaxCertificateImgUrl!
                }
                if self.secondFinanceTax != nil {
                    map["SecondFinanceTax"] = self.secondFinanceTax!
                }
                if self.secondFinanceTaxCertificateImgName != nil {
                    map["SecondFinanceTaxCertificateImgName"] = self.secondFinanceTaxCertificateImgName!
                }
                if self.secondFinanceTaxCertificateImgUrl != nil {
                    map["SecondFinanceTaxCertificateImgUrl"] = self.secondFinanceTaxCertificateImgUrl!
                }
                if self.tax != nil {
                    map["Tax"] = self.tax!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["FinanceTaxCertificateImgName"] as? String {
                    self.financeTaxCertificateImgName = value
                }
                if let value = dict["FinanceTaxCertificateImgUrl"] as? String {
                    self.financeTaxCertificateImgUrl = value
                }
                if let value = dict["SecondFinanceTax"] as? String {
                    self.secondFinanceTax = value
                }
                if let value = dict["SecondFinanceTaxCertificateImgName"] as? String {
                    self.secondFinanceTaxCertificateImgName = value
                }
                if let value = dict["SecondFinanceTaxCertificateImgUrl"] as? String {
                    self.secondFinanceTaxCertificateImgUrl = value
                }
                if let value = dict["Tax"] as? String {
                    self.tax = value
                }
            }
        }
        public var accountInfoSnapshotModel: FindCustomerSnapshotResponseBody.CustomerSnapshot.AccountInfoSnapshotModel?

        public var accountTaxSnapshotModel: FindCustomerSnapshotResponseBody.CustomerSnapshot.AccountTaxSnapshotModel?

        public var gmtCreate: String?

        public var id: Int64?

        public var infoType: String?

        public var kpId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.accountInfoSnapshotModel?.validate()
            try self.accountTaxSnapshotModel?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountInfoSnapshotModel != nil {
                map["AccountInfoSnapshotModel"] = self.accountInfoSnapshotModel?.toMap()
            }
            if self.accountTaxSnapshotModel != nil {
                map["AccountTaxSnapshotModel"] = self.accountTaxSnapshotModel?.toMap()
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.infoType != nil {
                map["InfoType"] = self.infoType!
            }
            if self.kpId != nil {
                map["KpId"] = self.kpId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountInfoSnapshotModel"] as? [String: Any?] {
                var model = FindCustomerSnapshotResponseBody.CustomerSnapshot.AccountInfoSnapshotModel()
                model.fromMap(value)
                self.accountInfoSnapshotModel = model
            }
            if let value = dict["AccountTaxSnapshotModel"] as? [String: Any?] {
                var model = FindCustomerSnapshotResponseBody.CustomerSnapshot.AccountTaxSnapshotModel()
                model.fromMap(value)
                self.accountTaxSnapshotModel = model
            }
            if let value = dict["GmtCreate"] as? String {
                self.gmtCreate = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InfoType"] as? String {
                self.infoType = value
            }
            if let value = dict["KpId"] as? Int64 {
                self.kpId = value
            }
        }
    }
    public var code: String?

    public var customerSnapshot: FindCustomerSnapshotResponseBody.CustomerSnapshot?

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
        try self.customerSnapshot?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.customerSnapshot != nil {
            map["CustomerSnapshot"] = self.customerSnapshot?.toMap()
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
        if let value = dict["CustomerSnapshot"] as? [String: Any?] {
            var model = FindCustomerSnapshotResponseBody.CustomerSnapshot()
            model.fromMap(value)
            self.customerSnapshot = model
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

public class FindCustomerSnapshotResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindCustomerSnapshotResponseBody?

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
            var model = FindCustomerSnapshotResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindFinanceTaxRequest : Tea.TeaModel {
    public var HId: Int64?

    public var taxVersion: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.HId != nil {
            map["HId"] = self.HId!
        }
        if self.taxVersion != nil {
            map["TaxVersion"] = self.taxVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HId"] as? Int64 {
            self.HId = value
        }
        if let value = dict["TaxVersion"] as? String {
            self.taxVersion = value
        }
    }
}

public class FindFinanceTaxResponseBody : Tea.TeaModel {
    public class FinanceVersion : Tea.TeaModel {
        public var financeTaxCertificateImgName: String?

        public var financeTaxCertificateImgUrl: String?

        public var secondFinanceTax: String?

        public var secondFinanceTaxCertificateImgName: String?

        public var secondFinanceTaxCertificateImgUrl: String?

        public var tax: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.financeTaxCertificateImgName != nil {
                map["FinanceTaxCertificateImgName"] = self.financeTaxCertificateImgName!
            }
            if self.financeTaxCertificateImgUrl != nil {
                map["FinanceTaxCertificateImgUrl"] = self.financeTaxCertificateImgUrl!
            }
            if self.secondFinanceTax != nil {
                map["SecondFinanceTax"] = self.secondFinanceTax!
            }
            if self.secondFinanceTaxCertificateImgName != nil {
                map["SecondFinanceTaxCertificateImgName"] = self.secondFinanceTaxCertificateImgName!
            }
            if self.secondFinanceTaxCertificateImgUrl != nil {
                map["SecondFinanceTaxCertificateImgUrl"] = self.secondFinanceTaxCertificateImgUrl!
            }
            if self.tax != nil {
                map["Tax"] = self.tax!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinanceTaxCertificateImgName"] as? String {
                self.financeTaxCertificateImgName = value
            }
            if let value = dict["FinanceTaxCertificateImgUrl"] as? String {
                self.financeTaxCertificateImgUrl = value
            }
            if let value = dict["SecondFinanceTax"] as? String {
                self.secondFinanceTax = value
            }
            if let value = dict["SecondFinanceTaxCertificateImgName"] as? String {
                self.secondFinanceTaxCertificateImgName = value
            }
            if let value = dict["SecondFinanceTaxCertificateImgUrl"] as? String {
                self.secondFinanceTaxCertificateImgUrl = value
            }
            if let value = dict["Tax"] as? String {
                self.tax = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var code: String?

    public var financeVersion: FindFinanceTaxResponseBody.FinanceVersion?

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
        try self.financeVersion?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.financeVersion != nil {
            map["FinanceVersion"] = self.financeVersion?.toMap()
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
        if let value = dict["FinanceVersion"] as? [String: Any?] {
            var model = FindFinanceTaxResponseBody.FinanceVersion()
            model.fromMap(value)
            self.financeVersion = model
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

public class FindFinanceTaxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindFinanceTaxResponseBody?

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
            var model = FindFinanceTaxResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindFinanceTaxDetailRequest : Tea.TeaModel {
    public var kpId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kpId != nil {
            map["KpId"] = self.kpId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KpId"] as? Int64 {
            self.kpId = value
        }
    }
}

public class FindFinanceTaxDetailResponseBody : Tea.TeaModel {
    public class Finance : Tea.TeaModel {
        public var financeTaxCertificateImgName: String?

        public var tax: String?

        public var financeTaxCertificateImgUrl: String?

        public var secondFinanceTax: String?

        public var secondFinanceTaxCertificateImgName: String?

        public var secondFinanceTaxCertificateImgUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.financeTaxCertificateImgName != nil {
                map["FinanceTaxCertificateImgName"] = self.financeTaxCertificateImgName!
            }
            if self.tax != nil {
                map["Tax"] = self.tax!
            }
            if self.financeTaxCertificateImgUrl != nil {
                map["financeTaxCertificateImgUrl"] = self.financeTaxCertificateImgUrl!
            }
            if self.secondFinanceTax != nil {
                map["secondFinanceTax"] = self.secondFinanceTax!
            }
            if self.secondFinanceTaxCertificateImgName != nil {
                map["secondFinanceTaxCertificateImgName"] = self.secondFinanceTaxCertificateImgName!
            }
            if self.secondFinanceTaxCertificateImgUrl != nil {
                map["secondFinanceTaxCertificateImgUrl"] = self.secondFinanceTaxCertificateImgUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FinanceTaxCertificateImgName"] as? String {
                self.financeTaxCertificateImgName = value
            }
            if let value = dict["Tax"] as? String {
                self.tax = value
            }
            if let value = dict["financeTaxCertificateImgUrl"] as? String {
                self.financeTaxCertificateImgUrl = value
            }
            if let value = dict["secondFinanceTax"] as? String {
                self.secondFinanceTax = value
            }
            if let value = dict["secondFinanceTaxCertificateImgName"] as? String {
                self.secondFinanceTaxCertificateImgName = value
            }
            if let value = dict["secondFinanceTaxCertificateImgUrl"] as? String {
                self.secondFinanceTaxCertificateImgUrl = value
            }
        }
    }
    public var code: String?

    public var finance: FindFinanceTaxDetailResponseBody.Finance?

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
        try self.finance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.finance != nil {
            map["Finance"] = self.finance?.toMap()
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
        if let value = dict["Finance"] as? [String: Any?] {
            var model = FindFinanceTaxDetailResponseBody.Finance()
            model.fromMap(value)
            self.finance = model
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

public class FindFinanceTaxDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindFinanceTaxDetailResponseBody?

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
            var model = FindFinanceTaxDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FindPkByHidForLoginWithLegacyRequest : Tea.TeaModel {
    public var hid: String?

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
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Hid"] as? String {
            self.hid = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
    }
}

public class FindPkByHidForLoginWithLegacyResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hid: String?

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
            if self.hid != nil {
                map["Hid"] = self.hid!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hid"] as? String {
                self.hid = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var code: String?

    public var data: FindPkByHidForLoginWithLegacyResponseBody.Data?

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
            var model = FindPkByHidForLoginWithLegacyResponseBody.Data()
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

public class FindPkByHidForLoginWithLegacyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindPkByHidForLoginWithLegacyResponseBody?

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
            var model = FindPkByHidForLoginWithLegacyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ForbiddenAgAccountLoginRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class ForbiddenAgAccountLoginResponseBody : Tea.TeaModel {
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

public class ForbiddenAgAccountLoginResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ForbiddenAgAccountLoginResponseBody?

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
            var model = ForbiddenAgAccountLoginResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GenerateAliyunCertUrlRequest : Tea.TeaModel {
    public var aliyunPk: String?

    public var appName: String?

    public var applyChannel: String?

    public var applyType: String?

    public var callback: String?

    public var certWay: String?

    public var ignoreAlreadyCert: Bool?

    public var isMobile: Bool?

    public var isOpenApp: Bool?

    public var platform: String?

    public var source: String?

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
        if self.aliyunPk != nil {
            map["AliyunPk"] = self.aliyunPk!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.applyChannel != nil {
            map["ApplyChannel"] = self.applyChannel!
        }
        if self.applyType != nil {
            map["ApplyType"] = self.applyType!
        }
        if self.callback != nil {
            map["Callback"] = self.callback!
        }
        if self.certWay != nil {
            map["CertWay"] = self.certWay!
        }
        if self.ignoreAlreadyCert != nil {
            map["IgnoreAlreadyCert"] = self.ignoreAlreadyCert!
        }
        if self.isMobile != nil {
            map["IsMobile"] = self.isMobile!
        }
        if self.isOpenApp != nil {
            map["IsOpenApp"] = self.isOpenApp!
        }
        if self.platform != nil {
            map["Platform"] = self.platform!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.subjectType != nil {
            map["SubjectType"] = self.subjectType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunPk"] as? String {
            self.aliyunPk = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["ApplyChannel"] as? String {
            self.applyChannel = value
        }
        if let value = dict["ApplyType"] as? String {
            self.applyType = value
        }
        if let value = dict["Callback"] as? String {
            self.callback = value
        }
        if let value = dict["CertWay"] as? String {
            self.certWay = value
        }
        if let value = dict["IgnoreAlreadyCert"] as? Bool {
            self.ignoreAlreadyCert = value
        }
        if let value = dict["IsMobile"] as? Bool {
            self.isMobile = value
        }
        if let value = dict["IsOpenApp"] as? Bool {
            self.isOpenApp = value
        }
        if let value = dict["Platform"] as? String {
            self.platform = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["SubjectType"] as? String {
            self.subjectType = value
        }
    }
}

public class GenerateAliyunCertUrlResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var httpCode: String?

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
        if let value = dict["HttpCode"] as? String {
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

public class GenerateAliyunCertUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GenerateAliyunCertUrlResponseBody?

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
            var model = GenerateAliyunCertUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgAccountAkRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class GetAgAccountAkResponseBody : Tea.TeaModel {
    public class AccountAkDto : Tea.TeaModel {
        public var ak: String?

        public var secret: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ak != nil {
                map["Ak"] = self.ak!
            }
            if self.secret != nil {
                map["Secret"] = self.secret!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ak"] as? String {
                self.ak = value
            }
            if let value = dict["Secret"] as? String {
                self.secret = value
            }
        }
    }
    public var accountAkDto: GetAgAccountAkResponseBody.AccountAkDto?

    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountAkDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountAkDto != nil {
            map["AccountAkDto"] = self.accountAkDto?.toMap()
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
        if let value = dict["AccountAkDto"] as? [String: Any?] {
            var model = GetAgAccountAkResponseBody.AccountAkDto()
            model.fromMap(value)
            self.accountAkDto = model
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetAgAccountAkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgAccountAkResponseBody?

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
            var model = GetAgAccountAkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgOneKeyDeleteTaskRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

    public var pk: String?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class GetAgOneKeyDeleteTaskResponseBody : Tea.TeaModel {
    public class TaskDto : Tea.TeaModel {
        public var deleteStatus: String?

        public var existQuietPeriod: Bool?

        public var quietPeriodEndTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deleteStatus != nil {
                map["DeleteStatus"] = self.deleteStatus!
            }
            if self.existQuietPeriod != nil {
                map["ExistQuietPeriod"] = self.existQuietPeriod!
            }
            if self.quietPeriodEndTime != nil {
                map["QuietPeriodEndTime"] = self.quietPeriodEndTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DeleteStatus"] as? String {
                self.deleteStatus = value
            }
            if let value = dict["ExistQuietPeriod"] as? Bool {
                self.existQuietPeriod = value
            }
            if let value = dict["QuietPeriodEndTime"] as? String {
                self.quietPeriodEndTime = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskDto: GetAgOneKeyDeleteTaskResponseBody.TaskDto?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.taskDto?.validate()
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
        if self.taskDto != nil {
            map["TaskDto"] = self.taskDto?.toMap()
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
        if let value = dict["TaskDto"] as? [String: Any?] {
            var model = GetAgOneKeyDeleteTaskResponseBody.TaskDto()
            model.fromMap(value)
            self.taskDto = model
        }
    }
}

public class GetAgOneKeyDeleteTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgOneKeyDeleteTaskResponseBody?

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
            var model = GetAgOneKeyDeleteTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAgRelationRequest : Tea.TeaModel {
    public var agAccountType: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class GetAgRelationResponseBody : Tea.TeaModel {
    public class AgRelationDto : Tea.TeaModel {
        public var mpk: String?

        public var pk: String?

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
            if self.mpk != nil {
                map["Mpk"] = self.mpk!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Mpk"] as? String {
                self.mpk = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var agRelationDto: GetAgRelationResponseBody.AgRelationDto?

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
        try self.agRelationDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agRelationDto != nil {
            map["AgRelationDto"] = self.agRelationDto?.toMap()
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
        if let value = dict["AgRelationDto"] as? [String: Any?] {
            var model = GetAgRelationResponseBody.AgRelationDto()
            model.fromMap(value)
            self.agRelationDto = model
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

public class GetAgRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAgRelationResponseBody?

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
            var model = GetAgRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAliyunIdByPkRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class GetAliyunIdByPkResponseBody : Tea.TeaModel {
    public var aliyunId: String?

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
        if self.aliyunId != nil {
            map["AliyunId"] = self.aliyunId!
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
        if let value = dict["AliyunId"] as? String {
            self.aliyunId = value
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

public class GetAliyunIdByPkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAliyunIdByPkResponseBody?

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
            var model = GetAliyunIdByPkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAliyunPKByAliyunIDRequest : Tea.TeaModel {
    public var aliyunId: String?

    public var email: String?

    public var havanaId: String?

    public var mobile: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliyunId != nil {
            map["AliyunId"] = self.aliyunId!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliyunId"] as? String {
            self.aliyunId = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class GetAliyunPKByAliyunIDResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var msg: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAliyunPKByAliyunIDResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAliyunPKByAliyunIDResponseBody?

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
            var model = GetAliyunPKByAliyunIDResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomerCategoryRequest : Tea.TeaModel {
    public var localeString: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.localeString != nil {
            map["LocaleString"] = self.localeString!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LocaleString"] as? String {
            self.localeString = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetCustomerCategoryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class BizCategory : Tea.TeaModel {
            public class SubConfigs : Tea.TeaModel {
                public class BizSubCategory : Tea.TeaModel {
                    public var code: String?

                    public var isCheck: Bool?

                    public var mainBiz: Bool?

                    public var name: String?

                    public var other: String?

                    public override init() {
                        super.init()
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
                        if self.isCheck != nil {
                            map["IsCheck"] = self.isCheck!
                        }
                        if self.mainBiz != nil {
                            map["MainBiz"] = self.mainBiz!
                        }
                        if self.name != nil {
                            map["Name"] = self.name!
                        }
                        if self.other != nil {
                            map["Other"] = self.other!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Code"] as? String {
                            self.code = value
                        }
                        if let value = dict["IsCheck"] as? Bool {
                            self.isCheck = value
                        }
                        if let value = dict["MainBiz"] as? Bool {
                            self.mainBiz = value
                        }
                        if let value = dict["Name"] as? String {
                            self.name = value
                        }
                        if let value = dict["Other"] as? String {
                            self.other = value
                        }
                    }
                }
                public var bizSubCategory: [GetCustomerCategoryResponseBody.Data.BizCategory.SubConfigs.BizSubCategory]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.bizSubCategory != nil {
                        var tmp : [Any] = []
                        for k in self.bizSubCategory! {
                            tmp.append(k.toMap())
                        }
                        map["BizSubCategory"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["BizSubCategory"] as? [Any?] {
                        var tmp : [GetCustomerCategoryResponseBody.Data.BizCategory.SubConfigs.BizSubCategory] = []
                        for v in value {
                            if v != nil {
                                var model = GetCustomerCategoryResponseBody.Data.BizCategory.SubConfigs.BizSubCategory()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.bizSubCategory = tmp
                    }
                }
            }
            public var code: String?

            public var isCheck: Bool?

            public var mainBiz: Bool?

            public var name: String?

            public var other: String?

            public var subConfigs: GetCustomerCategoryResponseBody.Data.BizCategory.SubConfigs?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.subConfigs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["Code"] = self.code!
                }
                if self.isCheck != nil {
                    map["IsCheck"] = self.isCheck!
                }
                if self.mainBiz != nil {
                    map["MainBiz"] = self.mainBiz!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.other != nil {
                    map["Other"] = self.other!
                }
                if self.subConfigs != nil {
                    map["SubConfigs"] = self.subConfigs?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Code"] as? String {
                    self.code = value
                }
                if let value = dict["IsCheck"] as? Bool {
                    self.isCheck = value
                }
                if let value = dict["MainBiz"] as? Bool {
                    self.mainBiz = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Other"] as? String {
                    self.other = value
                }
                if let value = dict["SubConfigs"] as? [String: Any?] {
                    var model = GetCustomerCategoryResponseBody.Data.BizCategory.SubConfigs()
                    model.fromMap(value)
                    self.subConfigs = model
                }
            }
        }
        public var bizCategory: [GetCustomerCategoryResponseBody.Data.BizCategory]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bizCategory != nil {
                var tmp : [Any] = []
                for k in self.bizCategory! {
                    tmp.append(k.toMap())
                }
                map["BizCategory"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BizCategory"] as? [Any?] {
                var tmp : [GetCustomerCategoryResponseBody.Data.BizCategory] = []
                for v in value {
                    if v != nil {
                        var model = GetCustomerCategoryResponseBody.Data.BizCategory()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.bizCategory = tmp
            }
        }
    }
    public var code: String?

    public var data: GetCustomerCategoryResponseBody.Data?

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
            var model = GetCustomerCategoryResponseBody.Data()
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

public class GetCustomerCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerCategoryResponseBody?

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
            var model = GetCustomerCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomerCategoryDictionaryRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class GetCustomerCategoryDictionaryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EnumConfig : Tea.TeaModel {
            public var enumName: String?

            public var enumValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enumName != nil {
                    map["enumName"] = self.enumName!
                }
                if self.enumValue != nil {
                    map["enumValue"] = self.enumValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enumName"] as? String {
                    self.enumName = value
                }
                if let value = dict["enumValue"] as? String {
                    self.enumValue = value
                }
            }
        }
        public var enumConfig: [GetCustomerCategoryDictionaryResponseBody.Data.EnumConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enumConfig != nil {
                var tmp : [Any] = []
                for k in self.enumConfig! {
                    tmp.append(k.toMap())
                }
                map["EnumConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnumConfig"] as? [Any?] {
                var tmp : [GetCustomerCategoryDictionaryResponseBody.Data.EnumConfig] = []
                for v in value {
                    if v != nil {
                        var model = GetCustomerCategoryDictionaryResponseBody.Data.EnumConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumConfig = tmp
            }
        }
    }
    public var code: String?

    public var data: GetCustomerCategoryDictionaryResponseBody.Data?

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
            var model = GetCustomerCategoryDictionaryResponseBody.Data()
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

public class GetCustomerCategoryDictionaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerCategoryDictionaryResponseBody?

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
            var model = GetCustomerCategoryDictionaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCustomerInformationRequest : Tea.TeaModel {
    public var userId: Int64?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class GetCustomerInformationResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var biz: String?

        public var customerCategory: String?

        public var website: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.biz != nil {
                map["Biz"] = self.biz!
            }
            if self.customerCategory != nil {
                map["CustomerCategory"] = self.customerCategory!
            }
            if self.website != nil {
                map["Website"] = self.website!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Biz"] as? String {
                self.biz = value
            }
            if let value = dict["CustomerCategory"] as? String {
                self.customerCategory = value
            }
            if let value = dict["Website"] as? String {
                self.website = value
            }
        }
    }
    public var code: String?

    public var data: GetCustomerInformationResponseBody.Data?

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
            var model = GetCustomerInformationResponseBody.Data()
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

public class GetCustomerInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCustomerInformationResponseBody?

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
            var model = GetCustomerInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDingTalkUserOrgByAliyunTmpCodeRequest : Tea.TeaModel {
    public var appName: String?

    public var dingTalkChannel: String?

    public var tmpCode: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.dingTalkChannel != nil {
            map["DingTalkChannel"] = self.dingTalkChannel!
        }
        if self.tmpCode != nil {
            map["TmpCode"] = self.tmpCode!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["DingTalkChannel"] as? String {
            self.dingTalkChannel = value
        }
        if let value = dict["TmpCode"] as? String {
            self.tmpCode = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class GetDingTalkUserOrgByAliyunTmpCodeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class OrgDtoList : Tea.TeaModel {
            public var corpId: String?

            public var orgId: String?

            public var orgName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.corpId != nil {
                    map["CorpId"] = self.corpId!
                }
                if self.orgId != nil {
                    map["OrgId"] = self.orgId!
                }
                if self.orgName != nil {
                    map["OrgName"] = self.orgName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CorpId"] as? String {
                    self.corpId = value
                }
                if let value = dict["OrgId"] as? String {
                    self.orgId = value
                }
                if let value = dict["OrgName"] as? String {
                    self.orgName = value
                }
            }
        }
        public var associatedUnionId: String?

        public var nick: String?

        public var orgDtoList: [GetDingTalkUserOrgByAliyunTmpCodeResponseBody.Data.OrgDtoList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.associatedUnionId != nil {
                map["AssociatedUnionId"] = self.associatedUnionId!
            }
            if self.nick != nil {
                map["Nick"] = self.nick!
            }
            if self.orgDtoList != nil {
                var tmp : [Any] = []
                for k in self.orgDtoList! {
                    tmp.append(k.toMap())
                }
                map["OrgDtoList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AssociatedUnionId"] as? String {
                self.associatedUnionId = value
            }
            if let value = dict["Nick"] as? String {
                self.nick = value
            }
            if let value = dict["OrgDtoList"] as? [Any?] {
                var tmp : [GetDingTalkUserOrgByAliyunTmpCodeResponseBody.Data.OrgDtoList] = []
                for v in value {
                    if v != nil {
                        var model = GetDingTalkUserOrgByAliyunTmpCodeResponseBody.Data.OrgDtoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.orgDtoList = tmp
            }
        }
    }
    public var code: String?

    public var data: GetDingTalkUserOrgByAliyunTmpCodeResponseBody.Data?

    public var httpCode: String?

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
            var model = GetDingTalkUserOrgByAliyunTmpCodeResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpCode"] as? String {
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

public class GetDingTalkUserOrgByAliyunTmpCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDingTalkUserOrgByAliyunTmpCodeResponseBody?

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
            var model = GetDingTalkUserOrgByAliyunTmpCodeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetIdentityRegistrationByCustomerRequest : Tea.TeaModel {
    public var customerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
    }
}

public class GetIdentityRegistrationByCustomerResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountType: Int32?

        public var applicationId: Int64?

        public var applyStatus: String?

        public var auditCode: String?

        public var customerId: Int64?

        public var docBackPic: String?

        public var docFrontPic: String?

        public var docNum: String?

        public var docType: String?

        public var email: String?

        public var fullName: String?

        public var registeredAddress: String?

        public var registeredCountry: String?

        public var registeredNum: String?

        public var tel: String?

        public override init() {
            super.init()
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
            if self.applicationId != nil {
                map["ApplicationId"] = self.applicationId!
            }
            if self.applyStatus != nil {
                map["ApplyStatus"] = self.applyStatus!
            }
            if self.auditCode != nil {
                map["AuditCode"] = self.auditCode!
            }
            if self.customerId != nil {
                map["CustomerId"] = self.customerId!
            }
            if self.docBackPic != nil {
                map["DocBackPic"] = self.docBackPic!
            }
            if self.docFrontPic != nil {
                map["DocFrontPic"] = self.docFrontPic!
            }
            if self.docNum != nil {
                map["DocNum"] = self.docNum!
            }
            if self.docType != nil {
                map["DocType"] = self.docType!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.fullName != nil {
                map["FullName"] = self.fullName!
            }
            if self.registeredAddress != nil {
                map["RegisteredAddress"] = self.registeredAddress!
            }
            if self.registeredCountry != nil {
                map["RegisteredCountry"] = self.registeredCountry!
            }
            if self.registeredNum != nil {
                map["RegisteredNum"] = self.registeredNum!
            }
            if self.tel != nil {
                map["Tel"] = self.tel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountType"] as? Int32 {
                self.accountType = value
            }
            if let value = dict["ApplicationId"] as? Int64 {
                self.applicationId = value
            }
            if let value = dict["ApplyStatus"] as? String {
                self.applyStatus = value
            }
            if let value = dict["AuditCode"] as? String {
                self.auditCode = value
            }
            if let value = dict["CustomerId"] as? Int64 {
                self.customerId = value
            }
            if let value = dict["DocBackPic"] as? String {
                self.docBackPic = value
            }
            if let value = dict["DocFrontPic"] as? String {
                self.docFrontPic = value
            }
            if let value = dict["DocNum"] as? String {
                self.docNum = value
            }
            if let value = dict["DocType"] as? String {
                self.docType = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["FullName"] as? String {
                self.fullName = value
            }
            if let value = dict["RegisteredAddress"] as? String {
                self.registeredAddress = value
            }
            if let value = dict["RegisteredCountry"] as? String {
                self.registeredCountry = value
            }
            if let value = dict["RegisteredNum"] as? String {
                self.registeredNum = value
            }
            if let value = dict["Tel"] as? String {
                self.tel = value
            }
        }
    }
    public var code: String?

    public var data: GetIdentityRegistrationByCustomerResponseBody.Data?

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
            var model = GetIdentityRegistrationByCustomerResponseBody.Data()
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

public class GetIdentityRegistrationByCustomerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIdentityRegistrationByCustomerResponseBody?

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
            var model = GetIdentityRegistrationByCustomerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetProfileTypeByPkRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class GetProfileTypeByPkResponseBody : Tea.TeaModel {
    public var accountType: String?

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
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
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
        if let value = dict["AccountType"] as? String {
            self.accountType = value
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

public class GetProfileTypeByPkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetProfileTypeByPkResponseBody?

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
            var model = GetProfileTypeByPkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUploadIdentityRegistrationDocConfigRequest : Tea.TeaModel {
    public var customerId: String?

    public var filePath: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customerId != nil {
            map["CustomerId"] = self.customerId!
        }
        if self.filePath != nil {
            map["FilePath"] = self.filePath!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomerId"] as? String {
            self.customerId = value
        }
        if let value = dict["FilePath"] as? String {
            self.filePath = value
        }
    }
}

public class GetUploadIdentityRegistrationDocConfigResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bucketName: String?

        public var fileName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bucketName != nil {
                map["BucketName"] = self.bucketName!
            }
            if self.fileName != nil {
                map["fileName"] = self.fileName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BucketName"] as? String {
                self.bucketName = value
            }
            if let value = dict["fileName"] as? String {
                self.fileName = value
            }
        }
    }
    public var code: String?

    public var data: GetUploadIdentityRegistrationDocConfigResponseBody.Data?

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
            var model = GetUploadIdentityRegistrationDocConfigResponseBody.Data()
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

public class GetUploadIdentityRegistrationDocConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUploadIdentityRegistrationDocConfigResponseBody?

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
            var model = GetUploadIdentityRegistrationDocConfigResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class IncrByCacheOperateSyncRequest : Tea.TeaModel {
    public var defaultValue: Int32?

    public var expireSeconds: Int32?

    public var key: String?

    public var step: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultValue != nil {
            map["DefaultValue"] = self.defaultValue!
        }
        if self.expireSeconds != nil {
            map["ExpireSeconds"] = self.expireSeconds!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.step != nil {
            map["Step"] = self.step!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DefaultValue"] as? Int32 {
            self.defaultValue = value
        }
        if let value = dict["ExpireSeconds"] as? Int32 {
            self.expireSeconds = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["Step"] as? Int32 {
            self.step = value
        }
    }
}

public class IncrByCacheOperateSyncResponseBody : Tea.TeaModel {
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

public class IncrByCacheOperateSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: IncrByCacheOperateSyncResponseBody?

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
            var model = IncrByCacheOperateSyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class JudgeAgExistQuietPeriodRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class JudgeAgExistQuietPeriodResponseBody : Tea.TeaModel {
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

public class JudgeAgExistQuietPeriodResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: JudgeAgExistQuietPeriodResponseBody?

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
            var model = JudgeAgExistQuietPeriodResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class LoadRealNameInfoByPkRequest : Tea.TeaModel {
    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class LoadRealNameInfoByPkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountCertifyType: String?

        public var authAlipay: String?

        public var authAlipayDomain: String?

        public var authAlipayLoginId: String?

        public var authBeiAnCid: String?

        public var authDomain: String?

        public var certifiedFrom: String?

        public var certifiedTime: String?

        public var certifyStatus: Int32?

        public var cicCertifyFrom: Int32?

        public var cicCertifyProduct: Int64?

        public var isBankIDAuth: Bool?

        public var isCertified: Bool?

        public var licenseNumber: String?

        public var licenseType: String?

        public var name: String?

        public var newUnityRealNameAccount: String?

        public var processingEnterpriseCertify: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountCertifyType != nil {
                map["AccountCertifyType"] = self.accountCertifyType!
            }
            if self.authAlipay != nil {
                map["AuthAlipay"] = self.authAlipay!
            }
            if self.authAlipayDomain != nil {
                map["AuthAlipayDomain"] = self.authAlipayDomain!
            }
            if self.authAlipayLoginId != nil {
                map["AuthAlipayLoginId"] = self.authAlipayLoginId!
            }
            if self.authBeiAnCid != nil {
                map["AuthBeiAnCid"] = self.authBeiAnCid!
            }
            if self.authDomain != nil {
                map["AuthDomain"] = self.authDomain!
            }
            if self.certifiedFrom != nil {
                map["CertifiedFrom"] = self.certifiedFrom!
            }
            if self.certifiedTime != nil {
                map["CertifiedTime"] = self.certifiedTime!
            }
            if self.certifyStatus != nil {
                map["CertifyStatus"] = self.certifyStatus!
            }
            if self.cicCertifyFrom != nil {
                map["CicCertifyFrom"] = self.cicCertifyFrom!
            }
            if self.cicCertifyProduct != nil {
                map["CicCertifyProduct"] = self.cicCertifyProduct!
            }
            if self.isBankIDAuth != nil {
                map["IsBankIDAuth"] = self.isBankIDAuth!
            }
            if self.isCertified != nil {
                map["IsCertified"] = self.isCertified!
            }
            if self.licenseNumber != nil {
                map["LicenseNumber"] = self.licenseNumber!
            }
            if self.licenseType != nil {
                map["LicenseType"] = self.licenseType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.newUnityRealNameAccount != nil {
                map["NewUnityRealNameAccount"] = self.newUnityRealNameAccount!
            }
            if self.processingEnterpriseCertify != nil {
                map["ProcessingEnterpriseCertify"] = self.processingEnterpriseCertify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountCertifyType"] as? String {
                self.accountCertifyType = value
            }
            if let value = dict["AuthAlipay"] as? String {
                self.authAlipay = value
            }
            if let value = dict["AuthAlipayDomain"] as? String {
                self.authAlipayDomain = value
            }
            if let value = dict["AuthAlipayLoginId"] as? String {
                self.authAlipayLoginId = value
            }
            if let value = dict["AuthBeiAnCid"] as? String {
                self.authBeiAnCid = value
            }
            if let value = dict["AuthDomain"] as? String {
                self.authDomain = value
            }
            if let value = dict["CertifiedFrom"] as? String {
                self.certifiedFrom = value
            }
            if let value = dict["CertifiedTime"] as? String {
                self.certifiedTime = value
            }
            if let value = dict["CertifyStatus"] as? Int32 {
                self.certifyStatus = value
            }
            if let value = dict["CicCertifyFrom"] as? Int32 {
                self.cicCertifyFrom = value
            }
            if let value = dict["CicCertifyProduct"] as? Int64 {
                self.cicCertifyProduct = value
            }
            if let value = dict["IsBankIDAuth"] as? Bool {
                self.isBankIDAuth = value
            }
            if let value = dict["IsCertified"] as? Bool {
                self.isCertified = value
            }
            if let value = dict["LicenseNumber"] as? String {
                self.licenseNumber = value
            }
            if let value = dict["LicenseType"] as? String {
                self.licenseType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NewUnityRealNameAccount"] as? String {
                self.newUnityRealNameAccount = value
            }
            if let value = dict["ProcessingEnterpriseCertify"] as? Bool {
                self.processingEnterpriseCertify = value
            }
        }
    }
    public var code: String?

    public var data: LoadRealNameInfoByPkResponseBody.Data?

    public var msg: String?

    public var requestId: String?

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
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = LoadRealNameInfoByPkResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class LoadRealNameInfoByPkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: LoadRealNameInfoByPkResponseBody?

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
            var model = LoadRealNameInfoByPkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MapFromHavanaBindIdRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaBindId: String?

    public var havanaBindStations: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaBindId != nil {
            map["HavanaBindId"] = self.havanaBindId!
        }
        if self.havanaBindStations != nil {
            map["HavanaBindStations"] = self.havanaBindStations!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaBindId"] as? String {
            self.havanaBindId = value
        }
        if let value = dict["HavanaBindStations"] as? [String: Any] {
            self.havanaBindStations = value
        }
    }
}

public class MapFromHavanaBindIdShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaBindId: String?

    public var havanaBindStationsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaBindId != nil {
            map["HavanaBindId"] = self.havanaBindId!
        }
        if self.havanaBindStationsShrink != nil {
            map["HavanaBindStations"] = self.havanaBindStationsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaBindId"] as? String {
            self.havanaBindId = value
        }
        if let value = dict["HavanaBindStations"] as? String {
            self.havanaBindStationsShrink = value
        }
    }
}

public class MapFromHavanaBindIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindHid: String?

        public var havanaBindId: String?

        public var havanaBindStation: String?

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
            if self.bindHid != nil {
                map["BindHid"] = self.bindHid!
            }
            if self.havanaBindId != nil {
                map["HavanaBindId"] = self.havanaBindId!
            }
            if self.havanaBindStation != nil {
                map["HavanaBindStation"] = self.havanaBindStation!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindHid"] as? String {
                self.bindHid = value
            }
            if let value = dict["HavanaBindId"] as? String {
                self.havanaBindId = value
            }
            if let value = dict["HavanaBindStation"] as? String {
                self.havanaBindStation = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var code: String?

    public var data: [MapFromHavanaBindIdResponseBody.Data]?

    public var httpCode: String?

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
            var tmp : [MapFromHavanaBindIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = MapFromHavanaBindIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpCode"] as? String {
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

public class MapFromHavanaBindIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MapFromHavanaBindIdResponseBody?

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
            var model = MapFromHavanaBindIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MapPkFromHidRequest : Tea.TeaModel {
    public var appName: String?

    public var bid: String?

    public var hid: String?

    public var mappingScenes: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.mappingScenes != nil {
            map["MappingScenes"] = self.mappingScenes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Hid"] as? String {
            self.hid = value
        }
        if let value = dict["MappingScenes"] as? String {
            self.mappingScenes = value
        }
    }
}

public class MapPkFromHidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hid: String?

        public var mappingSrc: String?

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
            if self.hid != nil {
                map["Hid"] = self.hid!
            }
            if self.mappingSrc != nil {
                map["MappingSrc"] = self.mappingSrc!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hid"] as? String {
                self.hid = value
            }
            if let value = dict["MappingSrc"] as? String {
                self.mappingSrc = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var code: String?

    public var data: MapPkFromHidResponseBody.Data?

    public var httpCode: String?

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
            var model = MapPkFromHidResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpCode"] as? String {
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

public class MapPkFromHidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MapPkFromHidResponseBody?

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
            var model = MapPkFromHidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MapPkToHidRequest : Tea.TeaModel {
    public var appName: String?

    public var mappingScenes: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mappingScenes != nil {
            map["MappingScenes"] = self.mappingScenes!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["MappingScenes"] as? String {
            self.mappingScenes = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class MapPkToHidResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var hid: String?

        public var mappingSrc: String?

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
            if self.hid != nil {
                map["Hid"] = self.hid!
            }
            if self.mappingSrc != nil {
                map["MappingSrc"] = self.mappingSrc!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Hid"] as? String {
                self.hid = value
            }
            if let value = dict["MappingSrc"] as? String {
                self.mappingSrc = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var code: String?

    public var data: MapPkToHidResponseBody.Data?

    public var httpCode: String?

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
            var model = MapPkToHidResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpCode"] as? String {
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

public class MapPkToHidResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MapPkToHidResponseBody?

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
            var model = MapPkToHidResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class MapToHavanaBindIdRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaBindStations: [String: Any]?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaBindStations != nil {
            map["HavanaBindStations"] = self.havanaBindStations!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaBindStations"] as? [String: Any] {
            self.havanaBindStations = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class MapToHavanaBindIdShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var havanaBindStationsShrink: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.havanaBindStationsShrink != nil {
            map["HavanaBindStations"] = self.havanaBindStationsShrink!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["HavanaBindStations"] as? String {
            self.havanaBindStationsShrink = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class MapToHavanaBindIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindHid: String?

        public var havanaBindId: String?

        public var havanaBindStation: String?

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
            if self.bindHid != nil {
                map["BindHid"] = self.bindHid!
            }
            if self.havanaBindId != nil {
                map["HavanaBindId"] = self.havanaBindId!
            }
            if self.havanaBindStation != nil {
                map["HavanaBindStation"] = self.havanaBindStation!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindHid"] as? String {
                self.bindHid = value
            }
            if let value = dict["HavanaBindId"] as? String {
                self.havanaBindId = value
            }
            if let value = dict["HavanaBindStation"] as? String {
                self.havanaBindStation = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
        }
    }
    public var code: String?

    public var data: [MapToHavanaBindIdResponseBody.Data]?

    public var httpCode: String?

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
            var tmp : [MapToHavanaBindIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = MapToHavanaBindIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpCode"] as? String {
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

public class MapToHavanaBindIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MapToHavanaBindIdResponseBody?

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
            var model = MapToHavanaBindIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyBizCategoryRequest : Tea.TeaModel {
    public var paramList: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramList != nil {
            map["ParamList"] = self.paramList!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamList"] as? String {
            self.paramList = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class ModifyBizCategoryResponseBody : Tea.TeaModel {
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

public class ModifyBizCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBizCategoryResponseBody?

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
            var model = ModifyBizCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyContacterRequest : Tea.TeaModel {
    public var contacterAddress: String?

    public var contacterDingding: String?

    public var contacterEmail: String?

    public var contacterId: Int64?

    public var contacterMobile: String?

    public var contacterName: String?

    public var contacterPosition: String?

    public var contacterStaffNo: String?

    public var contacterType: String?

    public var contacterWangwang: String?

    public var emailConfirmed: Bool?

    public var mobileConfirmed: Bool?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.contacterAddress != nil {
            map["ContacterAddress"] = self.contacterAddress!
        }
        if self.contacterDingding != nil {
            map["ContacterDingding"] = self.contacterDingding!
        }
        if self.contacterEmail != nil {
            map["ContacterEmail"] = self.contacterEmail!
        }
        if self.contacterId != nil {
            map["ContacterId"] = self.contacterId!
        }
        if self.contacterMobile != nil {
            map["ContacterMobile"] = self.contacterMobile!
        }
        if self.contacterName != nil {
            map["ContacterName"] = self.contacterName!
        }
        if self.contacterPosition != nil {
            map["ContacterPosition"] = self.contacterPosition!
        }
        if self.contacterStaffNo != nil {
            map["ContacterStaffNo"] = self.contacterStaffNo!
        }
        if self.contacterType != nil {
            map["ContacterType"] = self.contacterType!
        }
        if self.contacterWangwang != nil {
            map["ContacterWangwang"] = self.contacterWangwang!
        }
        if self.emailConfirmed != nil {
            map["EmailConfirmed"] = self.emailConfirmed!
        }
        if self.mobileConfirmed != nil {
            map["MobileConfirmed"] = self.mobileConfirmed!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContacterAddress"] as? String {
            self.contacterAddress = value
        }
        if let value = dict["ContacterDingding"] as? String {
            self.contacterDingding = value
        }
        if let value = dict["ContacterEmail"] as? String {
            self.contacterEmail = value
        }
        if let value = dict["ContacterId"] as? Int64 {
            self.contacterId = value
        }
        if let value = dict["ContacterMobile"] as? String {
            self.contacterMobile = value
        }
        if let value = dict["ContacterName"] as? String {
            self.contacterName = value
        }
        if let value = dict["ContacterPosition"] as? String {
            self.contacterPosition = value
        }
        if let value = dict["ContacterStaffNo"] as? String {
            self.contacterStaffNo = value
        }
        if let value = dict["ContacterType"] as? String {
            self.contacterType = value
        }
        if let value = dict["ContacterWangwang"] as? String {
            self.contacterWangwang = value
        }
        if let value = dict["EmailConfirmed"] as? Bool {
            self.emailConfirmed = value
        }
        if let value = dict["MobileConfirmed"] as? Bool {
            self.mobileConfirmed = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class ModifyContacterResponseBody : Tea.TeaModel {
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

public class ModifyContacterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyContacterResponseBody?

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
            var model = ModifyContacterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyCustomerInfoRequest : Tea.TeaModel {
    public var biz: String?

    public var customerCategory: String?

    public var customerSubCategory: String?

    public var userId: Int64?

    public var website: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.biz != nil {
            map["Biz"] = self.biz!
        }
        if self.customerCategory != nil {
            map["CustomerCategory"] = self.customerCategory!
        }
        if self.customerSubCategory != nil {
            map["CustomerSubCategory"] = self.customerSubCategory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.website != nil {
            map["Website"] = self.website!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Biz"] as? String {
            self.biz = value
        }
        if let value = dict["CustomerCategory"] as? String {
            self.customerCategory = value
        }
        if let value = dict["CustomerSubCategory"] as? String {
            self.customerSubCategory = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["Website"] as? String {
            self.website = value
        }
    }
}

public class ModifyCustomerInfoResponseBody : Tea.TeaModel {
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

public class ModifyCustomerInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyCustomerInfoResponseBody?

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
            var model = ModifyCustomerInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class OperateFinanceTaxRequest : Tea.TeaModel {
    public var financeTax: String?

    public var financeTaxCertificateImgName: String?

    public var HId: Int64?

    public var secondFinanceTax: String?

    public var secondFinanceTaxCertificateImgName: String?

    public var secondFinanceTaxCertificateImgUrl: String?

    public var financeTaxCertificateImgUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.financeTax != nil {
            map["FinanceTax"] = self.financeTax!
        }
        if self.financeTaxCertificateImgName != nil {
            map["FinanceTaxCertificateImgName"] = self.financeTaxCertificateImgName!
        }
        if self.HId != nil {
            map["HId"] = self.HId!
        }
        if self.secondFinanceTax != nil {
            map["SecondFinanceTax"] = self.secondFinanceTax!
        }
        if self.secondFinanceTaxCertificateImgName != nil {
            map["SecondFinanceTaxCertificateImgName"] = self.secondFinanceTaxCertificateImgName!
        }
        if self.secondFinanceTaxCertificateImgUrl != nil {
            map["SecondFinanceTaxCertificateImgUrl"] = self.secondFinanceTaxCertificateImgUrl!
        }
        if self.financeTaxCertificateImgUrl != nil {
            map["financeTaxCertificateImgUrl"] = self.financeTaxCertificateImgUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FinanceTax"] as? String {
            self.financeTax = value
        }
        if let value = dict["FinanceTaxCertificateImgName"] as? String {
            self.financeTaxCertificateImgName = value
        }
        if let value = dict["HId"] as? Int64 {
            self.HId = value
        }
        if let value = dict["SecondFinanceTax"] as? String {
            self.secondFinanceTax = value
        }
        if let value = dict["SecondFinanceTaxCertificateImgName"] as? String {
            self.secondFinanceTaxCertificateImgName = value
        }
        if let value = dict["SecondFinanceTaxCertificateImgUrl"] as? String {
            self.secondFinanceTaxCertificateImgUrl = value
        }
        if let value = dict["financeTaxCertificateImgUrl"] as? String {
            self.financeTaxCertificateImgUrl = value
        }
    }
}

public class OperateFinanceTaxResponseBody : Tea.TeaModel {
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

public class OperateFinanceTaxResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OperateFinanceTaxResponseBody?

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
            var model = OperateFinanceTaxResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountAddressInfoRequest : Tea.TeaModel {
    public var addressVersion: String?

    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressVersion != nil {
            map["AddressVersion"] = self.addressVersion!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressVersion"] as? String {
            self.addressVersion = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryAccountAddressInfoResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public class City : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class District : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Province : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var accountAttr: String?

        public var address: String?

        public var address2: String?

        public var address3: String?

        public var address4: String?

        public var address5: String?

        public var address6: String?

        public var city: QueryAccountAddressInfoResponseBody.ProfileInfo.City?

        public var district: QueryAccountAddressInfoResponseBody.ProfileInfo.District?

        public var email: String?

        public var havanaId: String?

        public var nationalityCode: String?

        public var postCode: String?

        public var province: QueryAccountAddressInfoResponseBody.ProfileInfo.Province?

        public var selfServicingBusinessRegNum: String?

        public var selfServicingIdentificationNum: String?

        public var trueName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.city?.validate()
            try self.district?.validate()
            try self.province?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountAttr != nil {
                map["AccountAttr"] = self.accountAttr!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.address2 != nil {
                map["Address2"] = self.address2!
            }
            if self.address3 != nil {
                map["Address3"] = self.address3!
            }
            if self.address4 != nil {
                map["Address4"] = self.address4!
            }
            if self.address5 != nil {
                map["Address5"] = self.address5!
            }
            if self.address6 != nil {
                map["Address6"] = self.address6!
            }
            if self.city != nil {
                map["City"] = self.city?.toMap()
            }
            if self.district != nil {
                map["District"] = self.district?.toMap()
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.havanaId != nil {
                map["HavanaId"] = self.havanaId!
            }
            if self.nationalityCode != nil {
                map["NationalityCode"] = self.nationalityCode!
            }
            if self.postCode != nil {
                map["PostCode"] = self.postCode!
            }
            if self.province != nil {
                map["Province"] = self.province?.toMap()
            }
            if self.selfServicingBusinessRegNum != nil {
                map["SelfServicingBusinessRegNum"] = self.selfServicingBusinessRegNum!
            }
            if self.selfServicingIdentificationNum != nil {
                map["SelfServicingIdentificationNum"] = self.selfServicingIdentificationNum!
            }
            if self.trueName != nil {
                map["TrueName"] = self.trueName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountAttr"] as? String {
                self.accountAttr = value
            }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Address2"] as? String {
                self.address2 = value
            }
            if let value = dict["Address3"] as? String {
                self.address3 = value
            }
            if let value = dict["Address4"] as? String {
                self.address4 = value
            }
            if let value = dict["Address5"] as? String {
                self.address5 = value
            }
            if let value = dict["Address6"] as? String {
                self.address6 = value
            }
            if let value = dict["City"] as? [String: Any?] {
                var model = QueryAccountAddressInfoResponseBody.ProfileInfo.City()
                model.fromMap(value)
                self.city = model
            }
            if let value = dict["District"] as? [String: Any?] {
                var model = QueryAccountAddressInfoResponseBody.ProfileInfo.District()
                model.fromMap(value)
                self.district = model
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["HavanaId"] as? String {
                self.havanaId = value
            }
            if let value = dict["NationalityCode"] as? String {
                self.nationalityCode = value
            }
            if let value = dict["PostCode"] as? String {
                self.postCode = value
            }
            if let value = dict["Province"] as? [String: Any?] {
                var model = QueryAccountAddressInfoResponseBody.ProfileInfo.Province()
                model.fromMap(value)
                self.province = model
            }
            if let value = dict["SelfServicingBusinessRegNum"] as? String {
                self.selfServicingBusinessRegNum = value
            }
            if let value = dict["SelfServicingIdentificationNum"] as? String {
                self.selfServicingIdentificationNum = value
            }
            if let value = dict["TrueName"] as? String {
                self.trueName = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var profileInfo: QueryAccountAddressInfoResponseBody.ProfileInfo?

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
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
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
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryAccountAddressInfoResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAccountAddressInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountAddressInfoResponseBody?

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
            var model = QueryAccountAddressInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountAddressInfoWithoutHavanaRequest : Tea.TeaModel {
    public var addressVersion: String?

    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addressVersion != nil {
            map["AddressVersion"] = self.addressVersion!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddressVersion"] as? String {
            self.addressVersion = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryAccountAddressInfoWithoutHavanaResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public class City : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Province : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var accountAttr: String?

        public var address: String?

        public var address2: String?

        public var address3: String?

        public var address4: String?

        public var address5: String?

        public var address6: String?

        public var city: QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo.City?

        public var havanaId: String?

        public var postCode: String?

        public var province: QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo.Province?

        public var trueName: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.city?.validate()
            try self.province?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountAttr != nil {
                map["AccountAttr"] = self.accountAttr!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.address2 != nil {
                map["Address2"] = self.address2!
            }
            if self.address3 != nil {
                map["Address3"] = self.address3!
            }
            if self.address4 != nil {
                map["Address4"] = self.address4!
            }
            if self.address5 != nil {
                map["Address5"] = self.address5!
            }
            if self.address6 != nil {
                map["Address6"] = self.address6!
            }
            if self.city != nil {
                map["City"] = self.city?.toMap()
            }
            if self.havanaId != nil {
                map["HavanaId"] = self.havanaId!
            }
            if self.postCode != nil {
                map["PostCode"] = self.postCode!
            }
            if self.province != nil {
                map["Province"] = self.province?.toMap()
            }
            if self.trueName != nil {
                map["TrueName"] = self.trueName!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountAttr"] as? String {
                self.accountAttr = value
            }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Address2"] as? String {
                self.address2 = value
            }
            if let value = dict["Address3"] as? String {
                self.address3 = value
            }
            if let value = dict["Address4"] as? String {
                self.address4 = value
            }
            if let value = dict["Address5"] as? String {
                self.address5 = value
            }
            if let value = dict["Address6"] as? String {
                self.address6 = value
            }
            if let value = dict["City"] as? [String: Any?] {
                var model = QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo.City()
                model.fromMap(value)
                self.city = model
            }
            if let value = dict["HavanaId"] as? String {
                self.havanaId = value
            }
            if let value = dict["PostCode"] as? String {
                self.postCode = value
            }
            if let value = dict["Province"] as? [String: Any?] {
                var model = QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo.Province()
                model.fromMap(value)
                self.province = model
            }
            if let value = dict["TrueName"] as? String {
                self.trueName = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var profileInfo: QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo?

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
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
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
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryAccountAddressInfoWithoutHavanaResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAccountAddressInfoWithoutHavanaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountAddressInfoWithoutHavanaResponseBody?

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
            var model = QueryAccountAddressInfoWithoutHavanaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountDeliveryAddressInfoRequest : Tea.TeaModel {
    public var appName: String?

    public var pk: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAccountDeliveryAddressInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class AreaDivision : Tea.TeaModel {
            public var divisionAbbName: String?

            public var divisionId: Int64?

            public var divisionLevel: Int64?

            public var divisionName: String?

            public var divisionTname: String?

            public var newDivisionId: Int64?

            public var parentId: Int64?

            public var pinyin: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.divisionAbbName != nil {
                    map["DivisionAbbName"] = self.divisionAbbName!
                }
                if self.divisionId != nil {
                    map["DivisionId"] = self.divisionId!
                }
                if self.divisionLevel != nil {
                    map["DivisionLevel"] = self.divisionLevel!
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                if self.divisionTname != nil {
                    map["DivisionTname"] = self.divisionTname!
                }
                if self.newDivisionId != nil {
                    map["NewDivisionId"] = self.newDivisionId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.pinyin != nil {
                    map["Pinyin"] = self.pinyin!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DivisionAbbName"] as? String {
                    self.divisionAbbName = value
                }
                if let value = dict["DivisionId"] as? Int64 {
                    self.divisionId = value
                }
                if let value = dict["DivisionLevel"] as? Int64 {
                    self.divisionLevel = value
                }
                if let value = dict["DivisionName"] as? String {
                    self.divisionName = value
                }
                if let value = dict["DivisionTname"] as? String {
                    self.divisionTname = value
                }
                if let value = dict["NewDivisionId"] as? Int64 {
                    self.newDivisionId = value
                }
                if let value = dict["ParentId"] as? Int64 {
                    self.parentId = value
                }
                if let value = dict["Pinyin"] as? String {
                    self.pinyin = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public class CityDivision : Tea.TeaModel {
            public var divisionAbbName: String?

            public var divisionId: Int64?

            public var divisionLevel: Int64?

            public var divisionName: String?

            public var divisionTname: String?

            public var newDivisionId: Int64?

            public var parentId: Int64?

            public var pinyin: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.divisionAbbName != nil {
                    map["DivisionAbbName"] = self.divisionAbbName!
                }
                if self.divisionId != nil {
                    map["DivisionId"] = self.divisionId!
                }
                if self.divisionLevel != nil {
                    map["DivisionLevel"] = self.divisionLevel!
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                if self.divisionTname != nil {
                    map["DivisionTname"] = self.divisionTname!
                }
                if self.newDivisionId != nil {
                    map["NewDivisionId"] = self.newDivisionId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.pinyin != nil {
                    map["Pinyin"] = self.pinyin!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DivisionAbbName"] as? String {
                    self.divisionAbbName = value
                }
                if let value = dict["DivisionId"] as? Int64 {
                    self.divisionId = value
                }
                if let value = dict["DivisionLevel"] as? Int64 {
                    self.divisionLevel = value
                }
                if let value = dict["DivisionName"] as? String {
                    self.divisionName = value
                }
                if let value = dict["DivisionTname"] as? String {
                    self.divisionTname = value
                }
                if let value = dict["NewDivisionId"] as? Int64 {
                    self.newDivisionId = value
                }
                if let value = dict["ParentId"] as? Int64 {
                    self.parentId = value
                }
                if let value = dict["Pinyin"] as? String {
                    self.pinyin = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public class ProviceDivision : Tea.TeaModel {
            public var divisionAbbName: String?

            public var divisionId: Int64?

            public var divisionLevel: Int64?

            public var divisionName: String?

            public var divisionTname: String?

            public var newDivisionId: Int64?

            public var parentId: Int64?

            public var pinyin: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.divisionAbbName != nil {
                    map["DivisionAbbName"] = self.divisionAbbName!
                }
                if self.divisionId != nil {
                    map["DivisionId"] = self.divisionId!
                }
                if self.divisionLevel != nil {
                    map["DivisionLevel"] = self.divisionLevel!
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                if self.divisionTname != nil {
                    map["DivisionTname"] = self.divisionTname!
                }
                if self.newDivisionId != nil {
                    map["NewDivisionId"] = self.newDivisionId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.pinyin != nil {
                    map["Pinyin"] = self.pinyin!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DivisionAbbName"] as? String {
                    self.divisionAbbName = value
                }
                if let value = dict["DivisionId"] as? Int64 {
                    self.divisionId = value
                }
                if let value = dict["DivisionLevel"] as? Int64 {
                    self.divisionLevel = value
                }
                if let value = dict["DivisionName"] as? String {
                    self.divisionName = value
                }
                if let value = dict["DivisionTname"] as? String {
                    self.divisionTname = value
                }
                if let value = dict["NewDivisionId"] as? Int64 {
                    self.newDivisionId = value
                }
                if let value = dict["ParentId"] as? Int64 {
                    self.parentId = value
                }
                if let value = dict["Pinyin"] as? String {
                    self.pinyin = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public class TownDivision : Tea.TeaModel {
            public var divisionAbbName: String?

            public var divisionId: Int64?

            public var divisionLevel: Int64?

            public var divisionName: String?

            public var divisionTname: String?

            public var newDivisionId: Int64?

            public var parentId: Int64?

            public var pinyin: String?

            public var remark: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.divisionAbbName != nil {
                    map["DivisionAbbName"] = self.divisionAbbName!
                }
                if self.divisionId != nil {
                    map["DivisionId"] = self.divisionId!
                }
                if self.divisionLevel != nil {
                    map["DivisionLevel"] = self.divisionLevel!
                }
                if self.divisionName != nil {
                    map["DivisionName"] = self.divisionName!
                }
                if self.divisionTname != nil {
                    map["DivisionTname"] = self.divisionTname!
                }
                if self.newDivisionId != nil {
                    map["NewDivisionId"] = self.newDivisionId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.pinyin != nil {
                    map["Pinyin"] = self.pinyin!
                }
                if self.remark != nil {
                    map["Remark"] = self.remark!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DivisionAbbName"] as? String {
                    self.divisionAbbName = value
                }
                if let value = dict["DivisionId"] as? Int64 {
                    self.divisionId = value
                }
                if let value = dict["DivisionLevel"] as? Int64 {
                    self.divisionLevel = value
                }
                if let value = dict["DivisionName"] as? String {
                    self.divisionName = value
                }
                if let value = dict["DivisionTname"] as? String {
                    self.divisionTname = value
                }
                if let value = dict["NewDivisionId"] as? Int64 {
                    self.newDivisionId = value
                }
                if let value = dict["ParentId"] as? Int64 {
                    self.parentId = value
                }
                if let value = dict["Pinyin"] as? String {
                    self.pinyin = value
                }
                if let value = dict["Remark"] as? String {
                    self.remark = value
                }
            }
        }
        public var address: String?

        public var areaDivision: QueryAccountDeliveryAddressInfoResponseBody.Data.AreaDivision?

        public var areaId: String?

        public var cityDivision: QueryAccountDeliveryAddressInfoResponseBody.Data.CityDivision?

        public var cityId: String?

        public var contacts: String?

        public var defaultAddress: Bool?

        public var email: String?

        public var mobile: String?

        public var phone: String?

        public var pk: String?

        public var postalcode: String?

        public var proviceDivision: QueryAccountDeliveryAddressInfoResponseBody.Data.ProviceDivision?

        public var proviceId: String?

        public var townDivision: QueryAccountDeliveryAddressInfoResponseBody.Data.TownDivision?

        public var townId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.areaDivision?.validate()
            try self.cityDivision?.validate()
            try self.proviceDivision?.validate()
            try self.townDivision?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.areaDivision != nil {
                map["AreaDivision"] = self.areaDivision?.toMap()
            }
            if self.areaId != nil {
                map["AreaId"] = self.areaId!
            }
            if self.cityDivision != nil {
                map["CityDivision"] = self.cityDivision?.toMap()
            }
            if self.cityId != nil {
                map["CityId"] = self.cityId!
            }
            if self.contacts != nil {
                map["Contacts"] = self.contacts!
            }
            if self.defaultAddress != nil {
                map["DefaultAddress"] = self.defaultAddress!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.postalcode != nil {
                map["Postalcode"] = self.postalcode!
            }
            if self.proviceDivision != nil {
                map["ProviceDivision"] = self.proviceDivision?.toMap()
            }
            if self.proviceId != nil {
                map["ProviceId"] = self.proviceId!
            }
            if self.townDivision != nil {
                map["TownDivision"] = self.townDivision?.toMap()
            }
            if self.townId != nil {
                map["TownId"] = self.townId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["AreaDivision"] as? [String: Any?] {
                var model = QueryAccountDeliveryAddressInfoResponseBody.Data.AreaDivision()
                model.fromMap(value)
                self.areaDivision = model
            }
            if let value = dict["AreaId"] as? String {
                self.areaId = value
            }
            if let value = dict["CityDivision"] as? [String: Any?] {
                var model = QueryAccountDeliveryAddressInfoResponseBody.Data.CityDivision()
                model.fromMap(value)
                self.cityDivision = model
            }
            if let value = dict["CityId"] as? String {
                self.cityId = value
            }
            if let value = dict["Contacts"] as? String {
                self.contacts = value
            }
            if let value = dict["DefaultAddress"] as? Bool {
                self.defaultAddress = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Postalcode"] as? String {
                self.postalcode = value
            }
            if let value = dict["ProviceDivision"] as? [String: Any?] {
                var model = QueryAccountDeliveryAddressInfoResponseBody.Data.ProviceDivision()
                model.fromMap(value)
                self.proviceDivision = model
            }
            if let value = dict["ProviceId"] as? String {
                self.proviceId = value
            }
            if let value = dict["TownDivision"] as? [String: Any?] {
                var model = QueryAccountDeliveryAddressInfoResponseBody.Data.TownDivision()
                model.fromMap(value)
                self.townDivision = model
            }
            if let value = dict["TownId"] as? String {
                self.townId = value
            }
        }
    }
    public var code: String?

    public var data: [QueryAccountDeliveryAddressInfoResponseBody.Data]?

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
            var tmp : [QueryAccountDeliveryAddressInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryAccountDeliveryAddressInfoResponseBody.Data()
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

public class QueryAccountDeliveryAddressInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountDeliveryAddressInfoResponseBody?

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
            var model = QueryAccountDeliveryAddressInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountProfileInfoRequest : Tea.TeaModel {
    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryAccountProfileInfoResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public class City : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class District : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Province : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var accountAttr: String?

        public var accountCertifyType: String?

        public var activeNotSetMobile: String?

        public var address: String?

        public var address2: String?

        public var address3: String?

        public var address4: String?

        public var address5: String?

        public var address6: String?

        public var alipayAccount: String?

        public var alipayUid: String?

        public var aliyunID: String?

        public var aliyunPK: String?

        public var authAlipay: String?

        public var authDomainUserId: String?

        public var b2bhid: String?

        public var bankId: String?

        public var bankName: String?

        public var beiAnAuthCId: String?

        public var beiAnIcpNumber: String?

        public var beiAnMobile: String?

        public var bindAlipayNo: String?

        public var certType: String?

        public var certifiedFrom: String?

        public var certifiedTime: String?

        public var city: QueryAccountProfileInfoResponseBody.ProfileInfo.City?

        public var contactMethod: String?

        public var createTime: String?

        public var district: QueryAccountProfileInfoResponseBody.ProfileInfo.District?

        public var eid: String?

        public var email: String?

        public var fax: String?

        public var firstName: String?

        public var fyl: String?

        public var havanaId: String?

        public var head: String?

        public var headUrl: String?

        public var IDNumber: String?

        public var isBankIDAuth: String?

        public var isCertified: String?

        public var lastName: String?

        public var mobile: String?

        public var nationalityCode: String?

        public var nickName: String?

        public var own: String?

        public var phone: String?

        public var postCode: String?

        public var preferredLanguage: String?

        public var processingEnterpriseCertify: Bool?

        public var province: QueryAccountProfileInfoResponseBody.ProfileInfo.Province?

        public var registerIP: String?

        public var securityMobile: String?

        public var securityQuestionExists: Bool?

        public var selfServicingBusinessRegNum: String?

        public var selfServicingIdentificationNum: String?

        public var showNickName: String?

        public var src: String?

        public var taobaoAccount: String?

        public var taobaoNickFromHavana: String?

        public var tbhid: String?

        public var trueName: String?

        public var updateTime: String?

        public var yahooEmail: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.city?.validate()
            try self.district?.validate()
            try self.province?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountAttr != nil {
                map["AccountAttr"] = self.accountAttr!
            }
            if self.accountCertifyType != nil {
                map["AccountCertifyType"] = self.accountCertifyType!
            }
            if self.activeNotSetMobile != nil {
                map["ActiveNotSetMobile"] = self.activeNotSetMobile!
            }
            if self.address != nil {
                map["Address"] = self.address!
            }
            if self.address2 != nil {
                map["Address2"] = self.address2!
            }
            if self.address3 != nil {
                map["Address3"] = self.address3!
            }
            if self.address4 != nil {
                map["Address4"] = self.address4!
            }
            if self.address5 != nil {
                map["Address5"] = self.address5!
            }
            if self.address6 != nil {
                map["Address6"] = self.address6!
            }
            if self.alipayAccount != nil {
                map["AlipayAccount"] = self.alipayAccount!
            }
            if self.alipayUid != nil {
                map["AlipayUid"] = self.alipayUid!
            }
            if self.aliyunID != nil {
                map["AliyunID"] = self.aliyunID!
            }
            if self.aliyunPK != nil {
                map["AliyunPK"] = self.aliyunPK!
            }
            if self.authAlipay != nil {
                map["AuthAlipay"] = self.authAlipay!
            }
            if self.authDomainUserId != nil {
                map["AuthDomainUserId"] = self.authDomainUserId!
            }
            if self.b2bhid != nil {
                map["B2bhid"] = self.b2bhid!
            }
            if self.bankId != nil {
                map["BankId"] = self.bankId!
            }
            if self.bankName != nil {
                map["BankName"] = self.bankName!
            }
            if self.beiAnAuthCId != nil {
                map["BeiAnAuthCId"] = self.beiAnAuthCId!
            }
            if self.beiAnIcpNumber != nil {
                map["BeiAnIcpNumber"] = self.beiAnIcpNumber!
            }
            if self.beiAnMobile != nil {
                map["BeiAnMobile"] = self.beiAnMobile!
            }
            if self.bindAlipayNo != nil {
                map["BindAlipayNo"] = self.bindAlipayNo!
            }
            if self.certType != nil {
                map["CertType"] = self.certType!
            }
            if self.certifiedFrom != nil {
                map["CertifiedFrom"] = self.certifiedFrom!
            }
            if self.certifiedTime != nil {
                map["CertifiedTime"] = self.certifiedTime!
            }
            if self.city != nil {
                map["City"] = self.city?.toMap()
            }
            if self.contactMethod != nil {
                map["ContactMethod"] = self.contactMethod!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.district != nil {
                map["District"] = self.district?.toMap()
            }
            if self.eid != nil {
                map["Eid"] = self.eid!
            }
            if self.email != nil {
                map["Email"] = self.email!
            }
            if self.fax != nil {
                map["Fax"] = self.fax!
            }
            if self.firstName != nil {
                map["FirstName"] = self.firstName!
            }
            if self.fyl != nil {
                map["Fyl"] = self.fyl!
            }
            if self.havanaId != nil {
                map["HavanaId"] = self.havanaId!
            }
            if self.head != nil {
                map["Head"] = self.head!
            }
            if self.headUrl != nil {
                map["HeadUrl"] = self.headUrl!
            }
            if self.IDNumber != nil {
                map["IDNumber"] = self.IDNumber!
            }
            if self.isBankIDAuth != nil {
                map["IsBankIDAuth"] = self.isBankIDAuth!
            }
            if self.isCertified != nil {
                map["IsCertified"] = self.isCertified!
            }
            if self.lastName != nil {
                map["LastName"] = self.lastName!
            }
            if self.mobile != nil {
                map["Mobile"] = self.mobile!
            }
            if self.nationalityCode != nil {
                map["NationalityCode"] = self.nationalityCode!
            }
            if self.nickName != nil {
                map["NickName"] = self.nickName!
            }
            if self.own != nil {
                map["Own"] = self.own!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.postCode != nil {
                map["PostCode"] = self.postCode!
            }
            if self.preferredLanguage != nil {
                map["PreferredLanguage"] = self.preferredLanguage!
            }
            if self.processingEnterpriseCertify != nil {
                map["ProcessingEnterpriseCertify"] = self.processingEnterpriseCertify!
            }
            if self.province != nil {
                map["Province"] = self.province?.toMap()
            }
            if self.registerIP != nil {
                map["RegisterIP"] = self.registerIP!
            }
            if self.securityMobile != nil {
                map["SecurityMobile"] = self.securityMobile!
            }
            if self.securityQuestionExists != nil {
                map["SecurityQuestionExists"] = self.securityQuestionExists!
            }
            if self.selfServicingBusinessRegNum != nil {
                map["SelfServicingBusinessRegNum"] = self.selfServicingBusinessRegNum!
            }
            if self.selfServicingIdentificationNum != nil {
                map["SelfServicingIdentificationNum"] = self.selfServicingIdentificationNum!
            }
            if self.showNickName != nil {
                map["ShowNickName"] = self.showNickName!
            }
            if self.src != nil {
                map["Src"] = self.src!
            }
            if self.taobaoAccount != nil {
                map["TaobaoAccount"] = self.taobaoAccount!
            }
            if self.taobaoNickFromHavana != nil {
                map["TaobaoNickFromHavana"] = self.taobaoNickFromHavana!
            }
            if self.tbhid != nil {
                map["Tbhid"] = self.tbhid!
            }
            if self.trueName != nil {
                map["TrueName"] = self.trueName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.yahooEmail != nil {
                map["YahooEmail"] = self.yahooEmail!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountAttr"] as? String {
                self.accountAttr = value
            }
            if let value = dict["AccountCertifyType"] as? String {
                self.accountCertifyType = value
            }
            if let value = dict["ActiveNotSetMobile"] as? String {
                self.activeNotSetMobile = value
            }
            if let value = dict["Address"] as? String {
                self.address = value
            }
            if let value = dict["Address2"] as? String {
                self.address2 = value
            }
            if let value = dict["Address3"] as? String {
                self.address3 = value
            }
            if let value = dict["Address4"] as? String {
                self.address4 = value
            }
            if let value = dict["Address5"] as? String {
                self.address5 = value
            }
            if let value = dict["Address6"] as? String {
                self.address6 = value
            }
            if let value = dict["AlipayAccount"] as? String {
                self.alipayAccount = value
            }
            if let value = dict["AlipayUid"] as? String {
                self.alipayUid = value
            }
            if let value = dict["AliyunID"] as? String {
                self.aliyunID = value
            }
            if let value = dict["AliyunPK"] as? String {
                self.aliyunPK = value
            }
            if let value = dict["AuthAlipay"] as? String {
                self.authAlipay = value
            }
            if let value = dict["AuthDomainUserId"] as? String {
                self.authDomainUserId = value
            }
            if let value = dict["B2bhid"] as? String {
                self.b2bhid = value
            }
            if let value = dict["BankId"] as? String {
                self.bankId = value
            }
            if let value = dict["BankName"] as? String {
                self.bankName = value
            }
            if let value = dict["BeiAnAuthCId"] as? String {
                self.beiAnAuthCId = value
            }
            if let value = dict["BeiAnIcpNumber"] as? String {
                self.beiAnIcpNumber = value
            }
            if let value = dict["BeiAnMobile"] as? String {
                self.beiAnMobile = value
            }
            if let value = dict["BindAlipayNo"] as? String {
                self.bindAlipayNo = value
            }
            if let value = dict["CertType"] as? String {
                self.certType = value
            }
            if let value = dict["CertifiedFrom"] as? String {
                self.certifiedFrom = value
            }
            if let value = dict["CertifiedTime"] as? String {
                self.certifiedTime = value
            }
            if let value = dict["City"] as? [String: Any?] {
                var model = QueryAccountProfileInfoResponseBody.ProfileInfo.City()
                model.fromMap(value)
                self.city = model
            }
            if let value = dict["ContactMethod"] as? String {
                self.contactMethod = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["District"] as? [String: Any?] {
                var model = QueryAccountProfileInfoResponseBody.ProfileInfo.District()
                model.fromMap(value)
                self.district = model
            }
            if let value = dict["Eid"] as? String {
                self.eid = value
            }
            if let value = dict["Email"] as? String {
                self.email = value
            }
            if let value = dict["Fax"] as? String {
                self.fax = value
            }
            if let value = dict["FirstName"] as? String {
                self.firstName = value
            }
            if let value = dict["Fyl"] as? String {
                self.fyl = value
            }
            if let value = dict["HavanaId"] as? String {
                self.havanaId = value
            }
            if let value = dict["Head"] as? String {
                self.head = value
            }
            if let value = dict["HeadUrl"] as? String {
                self.headUrl = value
            }
            if let value = dict["IDNumber"] as? String {
                self.IDNumber = value
            }
            if let value = dict["IsBankIDAuth"] as? String {
                self.isBankIDAuth = value
            }
            if let value = dict["IsCertified"] as? String {
                self.isCertified = value
            }
            if let value = dict["LastName"] as? String {
                self.lastName = value
            }
            if let value = dict["Mobile"] as? String {
                self.mobile = value
            }
            if let value = dict["NationalityCode"] as? String {
                self.nationalityCode = value
            }
            if let value = dict["NickName"] as? String {
                self.nickName = value
            }
            if let value = dict["Own"] as? String {
                self.own = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["PostCode"] as? String {
                self.postCode = value
            }
            if let value = dict["PreferredLanguage"] as? String {
                self.preferredLanguage = value
            }
            if let value = dict["ProcessingEnterpriseCertify"] as? Bool {
                self.processingEnterpriseCertify = value
            }
            if let value = dict["Province"] as? [String: Any?] {
                var model = QueryAccountProfileInfoResponseBody.ProfileInfo.Province()
                model.fromMap(value)
                self.province = model
            }
            if let value = dict["RegisterIP"] as? String {
                self.registerIP = value
            }
            if let value = dict["SecurityMobile"] as? String {
                self.securityMobile = value
            }
            if let value = dict["SecurityQuestionExists"] as? Bool {
                self.securityQuestionExists = value
            }
            if let value = dict["SelfServicingBusinessRegNum"] as? String {
                self.selfServicingBusinessRegNum = value
            }
            if let value = dict["SelfServicingIdentificationNum"] as? String {
                self.selfServicingIdentificationNum = value
            }
            if let value = dict["ShowNickName"] as? String {
                self.showNickName = value
            }
            if let value = dict["Src"] as? String {
                self.src = value
            }
            if let value = dict["TaobaoAccount"] as? String {
                self.taobaoAccount = value
            }
            if let value = dict["TaobaoNickFromHavana"] as? String {
                self.taobaoNickFromHavana = value
            }
            if let value = dict["Tbhid"] as? String {
                self.tbhid = value
            }
            if let value = dict["TrueName"] as? String {
                self.trueName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["YahooEmail"] as? String {
                self.yahooEmail = value
            }
        }
    }
    public var profileInfo: QueryAccountProfileInfoResponseBody.ProfileInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryAccountProfileInfoResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAccountProfileInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountProfileInfoResponseBody?

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
            var model = QueryAccountProfileInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountRealNameInfoRequest : Tea.TeaModel {
    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryAccountRealNameInfoResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public var accountCertifyType: String?

        public var authAlipay: String?

        public var authBeiAnCid: String?

        public var authDomain: String?

        public var certifiedFrom: String?

        public var certifiedTime: String?

        public var isBankIDAuth: String?

        public var isCertified: String?

        public var licenseNumber: String?

        public var licenseType: String?

        public var name: String?

        public var processingEnterpriseCertify: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountCertifyType != nil {
                map["AccountCertifyType"] = self.accountCertifyType!
            }
            if self.authAlipay != nil {
                map["AuthAlipay"] = self.authAlipay!
            }
            if self.authBeiAnCid != nil {
                map["AuthBeiAnCid"] = self.authBeiAnCid!
            }
            if self.authDomain != nil {
                map["AuthDomain"] = self.authDomain!
            }
            if self.certifiedFrom != nil {
                map["CertifiedFrom"] = self.certifiedFrom!
            }
            if self.certifiedTime != nil {
                map["CertifiedTime"] = self.certifiedTime!
            }
            if self.isBankIDAuth != nil {
                map["IsBankIDAuth"] = self.isBankIDAuth!
            }
            if self.isCertified != nil {
                map["IsCertified"] = self.isCertified!
            }
            if self.licenseNumber != nil {
                map["LicenseNumber"] = self.licenseNumber!
            }
            if self.licenseType != nil {
                map["LicenseType"] = self.licenseType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.processingEnterpriseCertify != nil {
                map["ProcessingEnterpriseCertify"] = self.processingEnterpriseCertify!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountCertifyType"] as? String {
                self.accountCertifyType = value
            }
            if let value = dict["AuthAlipay"] as? String {
                self.authAlipay = value
            }
            if let value = dict["AuthBeiAnCid"] as? String {
                self.authBeiAnCid = value
            }
            if let value = dict["AuthDomain"] as? String {
                self.authDomain = value
            }
            if let value = dict["CertifiedFrom"] as? String {
                self.certifiedFrom = value
            }
            if let value = dict["CertifiedTime"] as? String {
                self.certifiedTime = value
            }
            if let value = dict["IsBankIDAuth"] as? String {
                self.isBankIDAuth = value
            }
            if let value = dict["IsCertified"] as? String {
                self.isCertified = value
            }
            if let value = dict["LicenseNumber"] as? String {
                self.licenseNumber = value
            }
            if let value = dict["LicenseType"] as? String {
                self.licenseType = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProcessingEnterpriseCertify"] as? Bool {
                self.processingEnterpriseCertify = value
            }
        }
    }
    public var profileInfo: QueryAccountRealNameInfoResponseBody.ProfileInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryAccountRealNameInfoResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAccountRealNameInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountRealNameInfoResponseBody?

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
            var model = QueryAccountRealNameInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountSiteRequest : Tea.TeaModel {
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
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class QueryAccountSiteResponseBody : Tea.TeaModel {
    public var code: String?

    public var requestId: String?

    public var site: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.site != nil {
            map["Site"] = self.site!
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Site"] as? String {
            self.site = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAccountSiteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountSiteResponseBody?

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
            var model = QueryAccountSiteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAccountTrueNameRequest : Tea.TeaModel {
    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryAccountTrueNameResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public var trueName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.trueName != nil {
                map["TrueName"] = self.trueName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TrueName"] as? String {
                self.trueName = value
            }
        }
    }
    public var profileInfo: QueryAccountTrueNameResponseBody.ProfileInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryAccountTrueNameResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryAccountTrueNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAccountTrueNameResponseBody?

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
            var model = QueryAccountTrueNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAgAccountLoginPermissionRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class QueryAgAccountLoginPermissionResponseBody : Tea.TeaModel {
    public var code: String?

    public var hasLoginPermission: Bool?

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
        if self.hasLoginPermission != nil {
            map["HasLoginPermission"] = self.hasLoginPermission!
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
        if let value = dict["HasLoginPermission"] as? Bool {
            self.hasLoginPermission = value
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

public class QueryAgAccountLoginPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAgAccountLoginPermissionResponseBody?

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
            var model = QueryAgAccountLoginPermissionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAgRelationCountAndQuotaRequest : Tea.TeaModel {
    public var appName: String?

    public var callerBid: Int64?

    public var callerParentId: Int64?

    public var callerType: String?

    public var callerUid: Int64?

    public var mpk: String?

    public var nullObject: Bool?

    public var requestId: String?

    public var securityToken: String?

    public var sourceIp: String?

    public var stsTokenCallerBid: Int64?

    public var stsTokenCallerUid: Int64?

    public var stsTokenRoleId: Int64?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.callerBid != nil {
            map["CallerBid"] = self.callerBid!
        }
        if self.callerParentId != nil {
            map["CallerParentId"] = self.callerParentId!
        }
        if self.callerType != nil {
            map["CallerType"] = self.callerType!
        }
        if self.callerUid != nil {
            map["CallerUid"] = self.callerUid!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.nullObject != nil {
            map["NullObject"] = self.nullObject!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        if self.stsTokenCallerBid != nil {
            map["StsTokenCallerBid"] = self.stsTokenCallerBid!
        }
        if self.stsTokenCallerUid != nil {
            map["StsTokenCallerUid"] = self.stsTokenCallerUid!
        }
        if self.stsTokenRoleId != nil {
            map["StsTokenRoleId"] = self.stsTokenRoleId!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["CallerBid"] as? Int64 {
            self.callerBid = value
        }
        if let value = dict["CallerParentId"] as? Int64 {
            self.callerParentId = value
        }
        if let value = dict["CallerType"] as? String {
            self.callerType = value
        }
        if let value = dict["CallerUid"] as? Int64 {
            self.callerUid = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["NullObject"] as? Bool {
            self.nullObject = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityToken"] as? String {
            self.securityToken = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
        if let value = dict["StsTokenCallerBid"] as? Int64 {
            self.stsTokenCallerBid = value
        }
        if let value = dict["StsTokenCallerUid"] as? Int64 {
            self.stsTokenCallerUid = value
        }
        if let value = dict["StsTokenRoleId"] as? Int64 {
            self.stsTokenRoleId = value
        }
        if let value = dict["Version"] as? String {
            self.version = value
        }
    }
}

public class QueryAgRelationCountAndQuotaResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountCount: Int64?

        public var mpk: String?

        public var nullObject: Bool?

        public var quota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountCount != nil {
                map["AccountCount"] = self.accountCount!
            }
            if self.mpk != nil {
                map["Mpk"] = self.mpk!
            }
            if self.nullObject != nil {
                map["NullObject"] = self.nullObject!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountCount"] as? Int64 {
                self.accountCount = value
            }
            if let value = dict["Mpk"] as? String {
                self.mpk = value
            }
            if let value = dict["NullObject"] as? Bool {
                self.nullObject = value
            }
            if let value = dict["Quota"] as? Int32 {
                self.quota = value
            }
        }
    }
    public var code: String?

    public var data: QueryAgRelationCountAndQuotaResponseBody.Data?

    public var httpCode: String?

    public var message: String?

    public var nullObject: Bool?

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
        if self.nullObject != nil {
            map["NullObject"] = self.nullObject!
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
            var model = QueryAgRelationCountAndQuotaResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["HttpCode"] as? String {
            self.httpCode = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["NullObject"] as? Bool {
            self.nullObject = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAgRelationCountAndQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAgRelationCountAndQuotaResponseBody?

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
            var model = QueryAgRelationCountAndQuotaResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryAgSecurityMobileRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class QueryAgSecurityMobileResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var securityMobile: String?

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
        if self.securityMobile != nil {
            map["SecurityMobile"] = self.securityMobile!
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
        if let value = dict["SecurityMobile"] as? String {
            self.securityMobile = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryAgSecurityMobileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryAgSecurityMobileResponseBody?

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
            var model = QueryAgSecurityMobileResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryBindsByOuterIdRequest : Tea.TeaModel {
    public var appName: String?

    public var minorOuterId: String?

    public var outerId: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.minorOuterId != nil {
            map["MinorOuterId"] = self.minorOuterId!
        }
        if self.outerId != nil {
            map["OuterId"] = self.outerId!
        }
        if self.tenantId != nil {
            map["TenantId"] = self.tenantId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["MinorOuterId"] as? String {
            self.minorOuterId = value
        }
        if let value = dict["OuterId"] as? String {
            self.outerId = value
        }
        if let value = dict["TenantId"] as? String {
            self.tenantId = value
        }
    }
}

public class QueryBindsByOuterIdResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindData: [String: Any]?

        public var minorOuterId: String?

        public var outerId: String?

        public var pk: String?

        public var status: String?

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
            if self.bindData != nil {
                map["BindData"] = self.bindData!
            }
            if self.minorOuterId != nil {
                map["MinorOuterId"] = self.minorOuterId!
            }
            if self.outerId != nil {
                map["OuterId"] = self.outerId!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindData"] as? [String: Any] {
                self.bindData = value
            }
            if let value = dict["MinorOuterId"] as? String {
                self.minorOuterId = value
            }
            if let value = dict["OuterId"] as? String {
                self.outerId = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
        }
    }
    public var code: String?

    public var data: [QueryBindsByOuterIdResponseBody.Data]?

    public var httpCode: String?

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
            var tmp : [QueryBindsByOuterIdResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryBindsByOuterIdResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpCode"] as? String {
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

public class QueryBindsByOuterIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBindsByOuterIdResponseBody?

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
            var model = QueryBindsByOuterIdResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryBindsByPkRequest : Tea.TeaModel {
    public var appName: String?

    public var pk: String?

    public var tenantIds: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.tenantIds != nil {
            map["TenantIds"] = self.tenantIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["TenantIds"] as? [String: Any] {
            self.tenantIds = value
        }
    }
}

public class QueryBindsByPkShrinkRequest : Tea.TeaModel {
    public var appName: String?

    public var pk: String?

    public var tenantIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.tenantIdsShrink != nil {
            map["TenantIds"] = self.tenantIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["TenantIds"] as? String {
            self.tenantIdsShrink = value
        }
    }
}

public class QueryBindsByPkResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bindData: [String: Any]?

        public var minorOuterId: String?

        public var outerId: String?

        public var pk: String?

        public var status: String?

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
            if self.bindData != nil {
                map["BindData"] = self.bindData!
            }
            if self.minorOuterId != nil {
                map["MinorOuterId"] = self.minorOuterId!
            }
            if self.outerId != nil {
                map["OuterId"] = self.outerId!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BindData"] as? [String: Any] {
                self.bindData = value
            }
            if let value = dict["MinorOuterId"] as? String {
                self.minorOuterId = value
            }
            if let value = dict["OuterId"] as? String {
                self.outerId = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
        }
    }
    public var code: String?

    public var data: [QueryBindsByPkResponseBody.Data]?

    public var httpCode: String?

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
            var tmp : [QueryBindsByPkResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryBindsByPkResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["HttpCode"] as? String {
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

public class QueryBindsByPkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryBindsByPkResponseBody?

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
            var model = QueryBindsByPkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryCustomerLabelRequest : Tea.TeaModel {
    public var labelSeries: String?

    public var PK: Int64?

    public var token: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelSeries != nil {
            map["LabelSeries"] = self.labelSeries!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LabelSeries"] as? String {
            self.labelSeries = value
        }
        if let value = dict["PK"] as? Int64 {
            self.PK = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class QueryCustomerLabelResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class CustomerLabel : Tea.TeaModel {
            public var label: String?

            public var labelSeries: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.labelSeries != nil {
                    map["LabelSeries"] = self.labelSeries!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["LabelSeries"] as? String {
                    self.labelSeries = value
                }
            }
        }
        public var customerLabel: [QueryCustomerLabelResponseBody.Data.CustomerLabel]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.customerLabel != nil {
                var tmp : [Any] = []
                for k in self.customerLabel! {
                    tmp.append(k.toMap())
                }
                map["CustomerLabel"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CustomerLabel"] as? [Any?] {
                var tmp : [QueryCustomerLabelResponseBody.Data.CustomerLabel] = []
                for v in value {
                    if v != nil {
                        var model = QueryCustomerLabelResponseBody.Data.CustomerLabel()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.customerLabel = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryCustomerLabelResponseBody.Data?

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
            var model = QueryCustomerLabelResponseBody.Data()
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

public class QueryCustomerLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryCustomerLabelResponseBody?

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
            var model = QueryCustomerLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryDeleteTaskCheckDataRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var appName: String?

    public var longLang: String?

    public var mpk: String?

    public var pk: String?

    public var taskId: String?

    public var taskType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.longLang != nil {
            map["LongLang"] = self.longLang!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["LongLang"] as? String {
            self.longLang = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class QueryDeleteTaskCheckDataResponseBody : Tea.TeaModel {
    public class TaskCheckDataDtoList : Tea.TeaModel {
        public var checkerDesc: String?

        public var checkerName: String?

        public var checkerUniKey: String?

        public var dependencyLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.checkerDesc != nil {
                map["CheckerDesc"] = self.checkerDesc!
            }
            if self.checkerName != nil {
                map["CheckerName"] = self.checkerName!
            }
            if self.checkerUniKey != nil {
                map["CheckerUniKey"] = self.checkerUniKey!
            }
            if self.dependencyLevel != nil {
                map["DependencyLevel"] = self.dependencyLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CheckerDesc"] as? String {
                self.checkerDesc = value
            }
            if let value = dict["CheckerName"] as? String {
                self.checkerName = value
            }
            if let value = dict["CheckerUniKey"] as? String {
                self.checkerUniKey = value
            }
            if let value = dict["DependencyLevel"] as? String {
                self.dependencyLevel = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var taskCheckDataDtoList: [QueryDeleteTaskCheckDataResponseBody.TaskCheckDataDtoList]?

    public override init() {
        super.init()
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
        if self.taskCheckDataDtoList != nil {
            var tmp : [Any] = []
            for k in self.taskCheckDataDtoList! {
                tmp.append(k.toMap())
            }
            map["TaskCheckDataDtoList"] = tmp
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
        if let value = dict["TaskCheckDataDtoList"] as? [Any?] {
            var tmp : [QueryDeleteTaskCheckDataResponseBody.TaskCheckDataDtoList] = []
            for v in value {
                if v != nil {
                    var model = QueryDeleteTaskCheckDataResponseBody.TaskCheckDataDtoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.taskCheckDataDtoList = tmp
        }
    }
}

public class QueryDeleteTaskCheckDataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryDeleteTaskCheckDataResponseBody?

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
            var model = QueryDeleteTaskCheckDataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEncryptedAccountProfileInfoRequest : Tea.TeaModel {
    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryEncryptedAccountProfileInfoResponseBody : Tea.TeaModel {
    public class EncryptedProfileInfo : Tea.TeaModel {
        public var encryptedAliyunID: String?

        public var encryptedEmail: String?

        public var encryptedMobile: String?

        public var encryptedSecurityMobile: String?

        public var isAliyunIdAnEmail: Bool?

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
            if self.encryptedAliyunID != nil {
                map["EncryptedAliyunID"] = self.encryptedAliyunID!
            }
            if self.encryptedEmail != nil {
                map["EncryptedEmail"] = self.encryptedEmail!
            }
            if self.encryptedMobile != nil {
                map["EncryptedMobile"] = self.encryptedMobile!
            }
            if self.encryptedSecurityMobile != nil {
                map["EncryptedSecurityMobile"] = self.encryptedSecurityMobile!
            }
            if self.isAliyunIdAnEmail != nil {
                map["IsAliyunIdAnEmail"] = self.isAliyunIdAnEmail!
            }
            if self.pk != nil {
                map["pk"] = self.pk!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EncryptedAliyunID"] as? String {
                self.encryptedAliyunID = value
            }
            if let value = dict["EncryptedEmail"] as? String {
                self.encryptedEmail = value
            }
            if let value = dict["EncryptedMobile"] as? String {
                self.encryptedMobile = value
            }
            if let value = dict["EncryptedSecurityMobile"] as? String {
                self.encryptedSecurityMobile = value
            }
            if let value = dict["IsAliyunIdAnEmail"] as? Bool {
                self.isAliyunIdAnEmail = value
            }
            if let value = dict["pk"] as? String {
                self.pk = value
            }
        }
    }
    public var encryptedProfileInfo: QueryEncryptedAccountProfileInfoResponseBody.EncryptedProfileInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.encryptedProfileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptedProfileInfo != nil {
            map["EncryptedProfileInfo"] = self.encryptedProfileInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptedProfileInfo"] as? [String: Any?] {
            var model = QueryEncryptedAccountProfileInfoResponseBody.EncryptedProfileInfo()
            model.fromMap(value)
            self.encryptedProfileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class QueryEncryptedAccountProfileInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEncryptedAccountProfileInfoResponseBody?

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
            var model = QueryEncryptedAccountProfileInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEnterpriseInfoRequest : Tea.TeaModel {
    public var enterpriseVersion: String?

    public var havanaId: String?

    public var PK: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.enterpriseVersion != nil {
            map["EnterpriseVersion"] = self.enterpriseVersion!
        }
        if self.havanaId != nil {
            map["HavanaId"] = self.havanaId!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnterpriseVersion"] as? String {
            self.enterpriseVersion = value
        }
        if let value = dict["HavanaId"] as? String {
            self.havanaId = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
    }
}

public class QueryEnterpriseInfoResponseBody : Tea.TeaModel {
    public class ProfileInfo : Tea.TeaModel {
        public class City : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public class Province : Tea.TeaModel {
            public var id: String?

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
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
            }
        }
        public var alias: String?

        public var aliyunPK: String?

        public var auditStatus: String?

        public var businessLicenseImgSrc: String?

        public var businessLicenseNumber: String?

        public var businessLicenseType: String?

        public var certifiedFrom: String?

        public var certifiedTime: String?

        public var city: QueryEnterpriseInfoResponseBody.ProfileInfo.City?

        public var createTime: String?

        public var detailAddress: String?

        public var EInterpriseSize: String?

        public var enterpriseEntity: String?

        public var entityIDNumber: String?

        public var extend: String?

        public var fax: String?

        public var name: String?

        public var phone: String?

        public var postalCode: String?

        public var profile: String?

        public var province: QueryEnterpriseInfoResponseBody.ProfileInfo.Province?

        public var updateTime: String?

        public var years: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.city?.validate()
            try self.province?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.alias != nil {
                map["Alias"] = self.alias!
            }
            if self.aliyunPK != nil {
                map["AliyunPK"] = self.aliyunPK!
            }
            if self.auditStatus != nil {
                map["AuditStatus"] = self.auditStatus!
            }
            if self.businessLicenseImgSrc != nil {
                map["BusinessLicenseImgSrc"] = self.businessLicenseImgSrc!
            }
            if self.businessLicenseNumber != nil {
                map["BusinessLicenseNumber"] = self.businessLicenseNumber!
            }
            if self.businessLicenseType != nil {
                map["BusinessLicenseType"] = self.businessLicenseType!
            }
            if self.certifiedFrom != nil {
                map["CertifiedFrom"] = self.certifiedFrom!
            }
            if self.certifiedTime != nil {
                map["CertifiedTime"] = self.certifiedTime!
            }
            if self.city != nil {
                map["City"] = self.city?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.detailAddress != nil {
                map["DetailAddress"] = self.detailAddress!
            }
            if self.EInterpriseSize != nil {
                map["EInterpriseSize"] = self.EInterpriseSize!
            }
            if self.enterpriseEntity != nil {
                map["EnterpriseEntity"] = self.enterpriseEntity!
            }
            if self.entityIDNumber != nil {
                map["EntityIDNumber"] = self.entityIDNumber!
            }
            if self.extend != nil {
                map["Extend"] = self.extend!
            }
            if self.fax != nil {
                map["Fax"] = self.fax!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.phone != nil {
                map["Phone"] = self.phone!
            }
            if self.postalCode != nil {
                map["PostalCode"] = self.postalCode!
            }
            if self.profile != nil {
                map["Profile"] = self.profile!
            }
            if self.province != nil {
                map["Province"] = self.province?.toMap()
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.years != nil {
                map["Years"] = self.years!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Alias"] as? String {
                self.alias = value
            }
            if let value = dict["AliyunPK"] as? String {
                self.aliyunPK = value
            }
            if let value = dict["AuditStatus"] as? String {
                self.auditStatus = value
            }
            if let value = dict["BusinessLicenseImgSrc"] as? String {
                self.businessLicenseImgSrc = value
            }
            if let value = dict["BusinessLicenseNumber"] as? String {
                self.businessLicenseNumber = value
            }
            if let value = dict["BusinessLicenseType"] as? String {
                self.businessLicenseType = value
            }
            if let value = dict["CertifiedFrom"] as? String {
                self.certifiedFrom = value
            }
            if let value = dict["CertifiedTime"] as? String {
                self.certifiedTime = value
            }
            if let value = dict["City"] as? [String: Any?] {
                var model = QueryEnterpriseInfoResponseBody.ProfileInfo.City()
                model.fromMap(value)
                self.city = model
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DetailAddress"] as? String {
                self.detailAddress = value
            }
            if let value = dict["EInterpriseSize"] as? String {
                self.EInterpriseSize = value
            }
            if let value = dict["EnterpriseEntity"] as? String {
                self.enterpriseEntity = value
            }
            if let value = dict["EntityIDNumber"] as? String {
                self.entityIDNumber = value
            }
            if let value = dict["Extend"] as? String {
                self.extend = value
            }
            if let value = dict["Fax"] as? String {
                self.fax = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Phone"] as? String {
                self.phone = value
            }
            if let value = dict["PostalCode"] as? String {
                self.postalCode = value
            }
            if let value = dict["Profile"] as? String {
                self.profile = value
            }
            if let value = dict["Province"] as? [String: Any?] {
                var model = QueryEnterpriseInfoResponseBody.ProfileInfo.Province()
                model.fromMap(value)
                self.province = model
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["Years"] as? String {
                self.years = value
            }
        }
    }
    public var code: String?

    public var message: String?

    public var profileInfo: QueryEnterpriseInfoResponseBody.ProfileInfo?

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
        try self.profileInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.profileInfo != nil {
            map["ProfileInfo"] = self.profileInfo?.toMap()
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
        if let value = dict["ProfileInfo"] as? [String: Any?] {
            var model = QueryEnterpriseInfoResponseBody.ProfileInfo()
            model.fromMap(value)
            self.profileInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class QueryEnterpriseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnterpriseInfoResponseBody?

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
            var model = QueryEnterpriseInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryEnumConfigByTypeRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class QueryEnumConfigByTypeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class EnumConfig : Tea.TeaModel {
            public var enumName: String?

            public var enumValue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.enumName != nil {
                    map["enumName"] = self.enumName!
                }
                if self.enumValue != nil {
                    map["enumValue"] = self.enumValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["enumName"] as? String {
                    self.enumName = value
                }
                if let value = dict["enumValue"] as? String {
                    self.enumValue = value
                }
            }
        }
        public var enumConfig: [QueryEnumConfigByTypeResponseBody.Data.EnumConfig]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enumConfig != nil {
                var tmp : [Any] = []
                for k in self.enumConfig! {
                    tmp.append(k.toMap())
                }
                map["EnumConfig"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnumConfig"] as? [Any?] {
                var tmp : [QueryEnumConfigByTypeResponseBody.Data.EnumConfig] = []
                for v in value {
                    if v != nil {
                        var model = QueryEnumConfigByTypeResponseBody.Data.EnumConfig()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.enumConfig = tmp
            }
        }
    }
    public var code: String?

    public var data: QueryEnumConfigByTypeResponseBody.Data?

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
            var model = QueryEnumConfigByTypeResponseBody.Data()
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

public class QueryEnumConfigByTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryEnumConfigByTypeResponseBody?

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
            var model = QueryEnumConfigByTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QueryOneKeyDeleteBlockListRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class QueryOneKeyDeleteBlockListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var blockCode: String?

        public var blockMsg: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.blockCode != nil {
                map["BlockCode"] = self.blockCode!
            }
            if self.blockMsg != nil {
                map["BlockMsg"] = self.blockMsg!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BlockCode"] as? String {
                self.blockCode = value
            }
            if let value = dict["BlockMsg"] as? String {
                self.blockMsg = value
            }
        }
    }
    public var code: String?

    public var data: [QueryOneKeyDeleteBlockListResponseBody.Data]?

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
            var tmp : [QueryOneKeyDeleteBlockListResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = QueryOneKeyDeleteBlockListResponseBody.Data()
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

public class QueryOneKeyDeleteBlockListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryOneKeyDeleteBlockListResponseBody?

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
            var model = QueryOneKeyDeleteBlockListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class QuerySecurityInfoRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class QuerySecurityInfoResponseBody : Tea.TeaModel {
    public class AccountSecurityInfoDto : Tea.TeaModel {
        public var aliyunId: String?

        public var name: String?

        public var nationalityCode: String?

        public var pk: String?

        public var profileType: String?

        public var securityEmail: String?

        public var securityMobile: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliyunId != nil {
                map["AliyunId"] = self.aliyunId!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nationalityCode != nil {
                map["NationalityCode"] = self.nationalityCode!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.profileType != nil {
                map["ProfileType"] = self.profileType!
            }
            if self.securityEmail != nil {
                map["SecurityEmail"] = self.securityEmail!
            }
            if self.securityMobile != nil {
                map["SecurityMobile"] = self.securityMobile!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliyunId"] as? String {
                self.aliyunId = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["NationalityCode"] as? String {
                self.nationalityCode = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["ProfileType"] as? String {
                self.profileType = value
            }
            if let value = dict["SecurityEmail"] as? String {
                self.securityEmail = value
            }
            if let value = dict["SecurityMobile"] as? String {
                self.securityMobile = value
            }
        }
    }
    public var accountSecurityInfoDto: QuerySecurityInfoResponseBody.AccountSecurityInfoDto?

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
        try self.accountSecurityInfoDto?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountSecurityInfoDto != nil {
            map["AccountSecurityInfoDto"] = self.accountSecurityInfoDto?.toMap()
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
        if let value = dict["AccountSecurityInfoDto"] as? [String: Any?] {
            var model = QuerySecurityInfoResponseBody.AccountSecurityInfoDto()
            model.fromMap(value)
            self.accountSecurityInfoDto = model
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

public class QuerySecurityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySecurityInfoResponseBody?

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
            var model = QuerySecurityInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RegisterInternalAccountForBucRequest : Tea.TeaModel {
    public var bid: String?

    public var email: String?

    public var isEmailConfirmed: Bool?

    public var isMobileConfirmed: Bool?

    public var isMobileLogin: Bool?

    public var mobile: String?

    public var nationalityCode: String?

    public var plainPassword: String?

    public var preferredLanguage: String?

    public var accountTypeCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.email != nil {
            map["Email"] = self.email!
        }
        if self.isEmailConfirmed != nil {
            map["IsEmailConfirmed"] = self.isEmailConfirmed!
        }
        if self.isMobileConfirmed != nil {
            map["IsMobileConfirmed"] = self.isMobileConfirmed!
        }
        if self.isMobileLogin != nil {
            map["IsMobileLogin"] = self.isMobileLogin!
        }
        if self.mobile != nil {
            map["Mobile"] = self.mobile!
        }
        if self.nationalityCode != nil {
            map["NationalityCode"] = self.nationalityCode!
        }
        if self.plainPassword != nil {
            map["PlainPassword"] = self.plainPassword!
        }
        if self.preferredLanguage != nil {
            map["PreferredLanguage"] = self.preferredLanguage!
        }
        if self.accountTypeCode != nil {
            map["accountTypeCode"] = self.accountTypeCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Email"] as? String {
            self.email = value
        }
        if let value = dict["IsEmailConfirmed"] as? Bool {
            self.isEmailConfirmed = value
        }
        if let value = dict["IsMobileConfirmed"] as? Bool {
            self.isMobileConfirmed = value
        }
        if let value = dict["IsMobileLogin"] as? Bool {
            self.isMobileLogin = value
        }
        if let value = dict["Mobile"] as? String {
            self.mobile = value
        }
        if let value = dict["NationalityCode"] as? String {
            self.nationalityCode = value
        }
        if let value = dict["PlainPassword"] as? String {
            self.plainPassword = value
        }
        if let value = dict["PreferredLanguage"] as? String {
            self.preferredLanguage = value
        }
        if let value = dict["accountTypeCode"] as? String {
            self.accountTypeCode = value
        }
    }
}

public class RegisterInternalAccountForBucResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountStatus: String?

        public var accountStructure: String?

        public var extendInfo: String?

        public var havanaId: String?

        public var lastLoginTime: String?

        public var ownerBid: String?

        public var parentPk: String?

        public var partnerPk: String?

        public var pk: String?

        public var site: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountStatus != nil {
                map["AccountStatus"] = self.accountStatus!
            }
            if self.accountStructure != nil {
                map["AccountStructure"] = self.accountStructure!
            }
            if self.extendInfo != nil {
                map["ExtendInfo"] = self.extendInfo!
            }
            if self.havanaId != nil {
                map["HavanaId"] = self.havanaId!
            }
            if self.lastLoginTime != nil {
                map["LastLoginTime"] = self.lastLoginTime!
            }
            if self.ownerBid != nil {
                map["OwnerBid"] = self.ownerBid!
            }
            if self.parentPk != nil {
                map["ParentPk"] = self.parentPk!
            }
            if self.partnerPk != nil {
                map["PartnerPk"] = self.partnerPk!
            }
            if self.pk != nil {
                map["Pk"] = self.pk!
            }
            if self.site != nil {
                map["Site"] = self.site!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountStatus"] as? String {
                self.accountStatus = value
            }
            if let value = dict["AccountStructure"] as? String {
                self.accountStructure = value
            }
            if let value = dict["ExtendInfo"] as? String {
                self.extendInfo = value
            }
            if let value = dict["HavanaId"] as? String {
                self.havanaId = value
            }
            if let value = dict["LastLoginTime"] as? String {
                self.lastLoginTime = value
            }
            if let value = dict["OwnerBid"] as? String {
                self.ownerBid = value
            }
            if let value = dict["ParentPk"] as? String {
                self.parentPk = value
            }
            if let value = dict["PartnerPk"] as? String {
                self.partnerPk = value
            }
            if let value = dict["Pk"] as? String {
                self.pk = value
            }
            if let value = dict["Site"] as? String {
                self.site = value
            }
        }
    }
    public var code: String?

    public var data: RegisterInternalAccountForBucResponseBody.Data?

    public var localizedMessage: String?

    public var message: String?

    public var msg: String?

    public var requestId: String?

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
        if self.localizedMessage != nil {
            map["LocalizedMessage"] = self.localizedMessage!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Code"] as? String {
            self.code = value
        }
        if let value = dict["Data"] as? [String: Any?] {
            var model = RegisterInternalAccountForBucResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["LocalizedMessage"] as? String {
            self.localizedMessage = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RegisterInternalAccountForBucResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RegisterInternalAccountForBucResponseBody?

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
            var model = RegisterInternalAccountForBucResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseAgAccountRequest : Tea.TeaModel {
    public var mpk: String?

    public var pk: String?

    public var releaseReason: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.releaseReason != nil {
            map["ReleaseReason"] = self.releaseReason!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["ReleaseReason"] as? String {
            self.releaseReason = value
        }
    }
}

public class ReleaseAgAccountResponseBody : Tea.TeaModel {
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

public class ReleaseAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseAgAccountResponseBody?

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
            var model = ReleaseAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendAsyncCreateAgAccountRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class ResendAsyncCreateAgAccountResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: String?

    public var traceNo: String?

    public override init() {
        super.init()
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
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class ResendAsyncCreateAgAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendAsyncCreateAgAccountResponseBody?

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
            var model = ResendAsyncCreateAgAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ResendAsyncModifyLoginEmailRequest : Tea.TeaModel {
    public var mpk: String?

    public var traceNo: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class ResendAsyncModifyLoginEmailResponseBody : Tea.TeaModel {
    public var code: String?

    public var message: String?

    public var requestId: String?

    public var success: Bool?

    public var traceNo: String?

    public override init() {
        super.init()
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
        if self.traceNo != nil {
            map["TraceNo"] = self.traceNo!
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
        if let value = dict["TraceNo"] as? String {
            self.traceNo = value
        }
    }
}

public class ResendAsyncModifyLoginEmailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResendAsyncModifyLoginEmailResponseBody?

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
            var model = ResendAsyncModifyLoginEmailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SeparateAgRelationRequest : Tea.TeaModel {
    public var mpk: String?

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
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
    }
}

public class SeparateAgRelationResponseBody : Tea.TeaModel {
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

public class SeparateAgRelationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SeparateAgRelationResponseBody?

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
            var model = SeparateAgRelationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetCacheOperateSyncRequest : Tea.TeaModel {
    public var exceptVersion: Int32?

    public var expireSeconds: Int32?

    public var key: String?

    public var setType: String?

    public var valueClazz: String?

    public var valueString: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exceptVersion != nil {
            map["ExceptVersion"] = self.exceptVersion!
        }
        if self.expireSeconds != nil {
            map["ExpireSeconds"] = self.expireSeconds!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.setType != nil {
            map["SetType"] = self.setType!
        }
        if self.valueClazz != nil {
            map["ValueClazz"] = self.valueClazz!
        }
        if self.valueString != nil {
            map["ValueString"] = self.valueString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExceptVersion"] as? Int32 {
            self.exceptVersion = value
        }
        if let value = dict["ExpireSeconds"] as? Int32 {
            self.expireSeconds = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["SetType"] as? String {
            self.setType = value
        }
        if let value = dict["ValueClazz"] as? String {
            self.valueClazz = value
        }
        if let value = dict["ValueString"] as? String {
            self.valueString = value
        }
    }
}

public class SetCacheOperateSyncResponseBody : Tea.TeaModel {
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

public class SetCacheOperateSyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetCacheOperateSyncResponseBody?

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
            var model = SetCacheOperateSyncResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAccountAddressInfoRequest : Tea.TeaModel {
    public var address: String?

    public var address2: String?

    public var cityJsonString: [String: Any]?

    public var districtJsonString: [String: Any]?

    public var PK: String?

    public var postCode: String?

    public var provinceJsonString: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.address2 != nil {
            map["Address2"] = self.address2!
        }
        if self.cityJsonString != nil {
            map["CityJsonString"] = self.cityJsonString!
        }
        if self.districtJsonString != nil {
            map["DistrictJsonString"] = self.districtJsonString!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.postCode != nil {
            map["PostCode"] = self.postCode!
        }
        if self.provinceJsonString != nil {
            map["ProvinceJsonString"] = self.provinceJsonString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Address2"] as? String {
            self.address2 = value
        }
        if let value = dict["CityJsonString"] as? [String: Any] {
            self.cityJsonString = value
        }
        if let value = dict["DistrictJsonString"] as? [String: Any] {
            self.districtJsonString = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["PostCode"] as? String {
            self.postCode = value
        }
        if let value = dict["ProvinceJsonString"] as? [String: Any] {
            self.provinceJsonString = value
        }
    }
}

public class UpdateAccountAddressInfoShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var address2: String?

    public var cityJsonStringShrink: String?

    public var districtJsonStringShrink: String?

    public var PK: String?

    public var postCode: String?

    public var provinceJsonStringShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.address2 != nil {
            map["Address2"] = self.address2!
        }
        if self.cityJsonStringShrink != nil {
            map["CityJsonString"] = self.cityJsonStringShrink!
        }
        if self.districtJsonStringShrink != nil {
            map["DistrictJsonString"] = self.districtJsonStringShrink!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.postCode != nil {
            map["PostCode"] = self.postCode!
        }
        if self.provinceJsonStringShrink != nil {
            map["ProvinceJsonString"] = self.provinceJsonStringShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Address2"] as? String {
            self.address2 = value
        }
        if let value = dict["CityJsonString"] as? String {
            self.cityJsonStringShrink = value
        }
        if let value = dict["DistrictJsonString"] as? String {
            self.districtJsonStringShrink = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["PostCode"] as? String {
            self.postCode = value
        }
        if let value = dict["ProvinceJsonString"] as? String {
            self.provinceJsonStringShrink = value
        }
    }
}

public class UpdateAccountAddressInfoResponseBody : Tea.TeaModel {
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

public class UpdateAccountAddressInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountAddressInfoResponseBody?

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
            var model = UpdateAccountAddressInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAccountProfileInfoRequest : Tea.TeaModel {
    public var accountAttribute: String?

    public var address: String?

    public var address2: String?

    public var bindAlipayNo: String?

    public var certType: String?

    public var cityJsonString: [String: Any]?

    public var contactMethod: String?

    public var districtJsonString: [String: Any]?

    public var fax: String?

    public var firstName: String?

    public var head: String?

    public var headColor: String?

    public var lastName: String?

    public var PK: String?

    public var phone: String?

    public var postCode: String?

    public var provinceJsonString: [String: Any]?

    public var selfServicingBusinessRegNum: String?

    public var selfServicingIdentificationNum: String?

    public var trueName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountAttribute != nil {
            map["AccountAttribute"] = self.accountAttribute!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.address2 != nil {
            map["Address2"] = self.address2!
        }
        if self.bindAlipayNo != nil {
            map["BindAlipayNo"] = self.bindAlipayNo!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.cityJsonString != nil {
            map["CityJsonString"] = self.cityJsonString!
        }
        if self.contactMethod != nil {
            map["ContactMethod"] = self.contactMethod!
        }
        if self.districtJsonString != nil {
            map["DistrictJsonString"] = self.districtJsonString!
        }
        if self.fax != nil {
            map["Fax"] = self.fax!
        }
        if self.firstName != nil {
            map["FirstName"] = self.firstName!
        }
        if self.head != nil {
            map["Head"] = self.head!
        }
        if self.headColor != nil {
            map["HeadColor"] = self.headColor!
        }
        if self.lastName != nil {
            map["LastName"] = self.lastName!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.postCode != nil {
            map["PostCode"] = self.postCode!
        }
        if self.provinceJsonString != nil {
            map["ProvinceJsonString"] = self.provinceJsonString!
        }
        if self.selfServicingBusinessRegNum != nil {
            map["SelfServicingBusinessRegNum"] = self.selfServicingBusinessRegNum!
        }
        if self.selfServicingIdentificationNum != nil {
            map["SelfServicingIdentificationNum"] = self.selfServicingIdentificationNum!
        }
        if self.trueName != nil {
            map["TrueName"] = self.trueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountAttribute"] as? String {
            self.accountAttribute = value
        }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Address2"] as? String {
            self.address2 = value
        }
        if let value = dict["BindAlipayNo"] as? String {
            self.bindAlipayNo = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CityJsonString"] as? [String: Any] {
            self.cityJsonString = value
        }
        if let value = dict["ContactMethod"] as? String {
            self.contactMethod = value
        }
        if let value = dict["DistrictJsonString"] as? [String: Any] {
            self.districtJsonString = value
        }
        if let value = dict["Fax"] as? String {
            self.fax = value
        }
        if let value = dict["FirstName"] as? String {
            self.firstName = value
        }
        if let value = dict["Head"] as? String {
            self.head = value
        }
        if let value = dict["HeadColor"] as? String {
            self.headColor = value
        }
        if let value = dict["LastName"] as? String {
            self.lastName = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PostCode"] as? String {
            self.postCode = value
        }
        if let value = dict["ProvinceJsonString"] as? [String: Any] {
            self.provinceJsonString = value
        }
        if let value = dict["SelfServicingBusinessRegNum"] as? String {
            self.selfServicingBusinessRegNum = value
        }
        if let value = dict["SelfServicingIdentificationNum"] as? String {
            self.selfServicingIdentificationNum = value
        }
        if let value = dict["TrueName"] as? String {
            self.trueName = value
        }
    }
}

public class UpdateAccountProfileInfoShrinkRequest : Tea.TeaModel {
    public var accountAttribute: String?

    public var address: String?

    public var address2: String?

    public var bindAlipayNo: String?

    public var certType: String?

    public var cityJsonStringShrink: String?

    public var contactMethod: String?

    public var districtJsonStringShrink: String?

    public var fax: String?

    public var firstName: String?

    public var head: String?

    public var headColor: String?

    public var lastName: String?

    public var PK: String?

    public var phone: String?

    public var postCode: String?

    public var provinceJsonStringShrink: String?

    public var selfServicingBusinessRegNum: String?

    public var selfServicingIdentificationNum: String?

    public var trueName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountAttribute != nil {
            map["AccountAttribute"] = self.accountAttribute!
        }
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.address2 != nil {
            map["Address2"] = self.address2!
        }
        if self.bindAlipayNo != nil {
            map["BindAlipayNo"] = self.bindAlipayNo!
        }
        if self.certType != nil {
            map["CertType"] = self.certType!
        }
        if self.cityJsonStringShrink != nil {
            map["CityJsonString"] = self.cityJsonStringShrink!
        }
        if self.contactMethod != nil {
            map["ContactMethod"] = self.contactMethod!
        }
        if self.districtJsonStringShrink != nil {
            map["DistrictJsonString"] = self.districtJsonStringShrink!
        }
        if self.fax != nil {
            map["Fax"] = self.fax!
        }
        if self.firstName != nil {
            map["FirstName"] = self.firstName!
        }
        if self.head != nil {
            map["Head"] = self.head!
        }
        if self.headColor != nil {
            map["HeadColor"] = self.headColor!
        }
        if self.lastName != nil {
            map["LastName"] = self.lastName!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.postCode != nil {
            map["PostCode"] = self.postCode!
        }
        if self.provinceJsonStringShrink != nil {
            map["ProvinceJsonString"] = self.provinceJsonStringShrink!
        }
        if self.selfServicingBusinessRegNum != nil {
            map["SelfServicingBusinessRegNum"] = self.selfServicingBusinessRegNum!
        }
        if self.selfServicingIdentificationNum != nil {
            map["SelfServicingIdentificationNum"] = self.selfServicingIdentificationNum!
        }
        if self.trueName != nil {
            map["TrueName"] = self.trueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountAttribute"] as? String {
            self.accountAttribute = value
        }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Address2"] as? String {
            self.address2 = value
        }
        if let value = dict["BindAlipayNo"] as? String {
            self.bindAlipayNo = value
        }
        if let value = dict["CertType"] as? String {
            self.certType = value
        }
        if let value = dict["CityJsonString"] as? String {
            self.cityJsonStringShrink = value
        }
        if let value = dict["ContactMethod"] as? String {
            self.contactMethod = value
        }
        if let value = dict["DistrictJsonString"] as? String {
            self.districtJsonStringShrink = value
        }
        if let value = dict["Fax"] as? String {
            self.fax = value
        }
        if let value = dict["FirstName"] as? String {
            self.firstName = value
        }
        if let value = dict["Head"] as? String {
            self.head = value
        }
        if let value = dict["HeadColor"] as? String {
            self.headColor = value
        }
        if let value = dict["LastName"] as? String {
            self.lastName = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["PostCode"] as? String {
            self.postCode = value
        }
        if let value = dict["ProvinceJsonString"] as? String {
            self.provinceJsonStringShrink = value
        }
        if let value = dict["SelfServicingBusinessRegNum"] as? String {
            self.selfServicingBusinessRegNum = value
        }
        if let value = dict["SelfServicingIdentificationNum"] as? String {
            self.selfServicingIdentificationNum = value
        }
        if let value = dict["TrueName"] as? String {
            self.trueName = value
        }
    }
}

public class UpdateAccountProfileInfoResponseBody : Tea.TeaModel {
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

public class UpdateAccountProfileInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAccountProfileInfoResponseBody?

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
            var model = UpdateAccountProfileInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgAccountAddressInfoRequest : Tea.TeaModel {
    public var address: String?

    public var address2: String?

    public var appName: String?

    public var city: String?

    public var mpk: String?

    public var PK: String?

    public var postCode: String?

    public var province: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.address2 != nil {
            map["Address2"] = self.address2!
        }
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.city != nil {
            map["City"] = self.city!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.postCode != nil {
            map["PostCode"] = self.postCode!
        }
        if self.province != nil {
            map["Province"] = self.province!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Address2"] as? String {
            self.address2 = value
        }
        if let value = dict["AppName"] as? String {
            self.appName = value
        }
        if let value = dict["City"] as? String {
            self.city = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["PostCode"] as? String {
            self.postCode = value
        }
        if let value = dict["Province"] as? String {
            self.province = value
        }
    }
}

public class UpdateAgAccountAddressInfoResponseBody : Tea.TeaModel {
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

public class UpdateAgAccountAddressInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgAccountAddressInfoResponseBody?

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
            var model = UpdateAgAccountAddressInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAgServiceStatusRequest : Tea.TeaModel {
    public var agAccountType: String?

    public var mpk: String?

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
        if self.agAccountType != nil {
            map["AgAccountType"] = self.agAccountType!
        }
        if self.mpk != nil {
            map["Mpk"] = self.mpk!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AgAccountType"] as? String {
            self.agAccountType = value
        }
        if let value = dict["Mpk"] as? String {
            self.mpk = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class UpdateAgServiceStatusResponseBody : Tea.TeaModel {
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

public class UpdateAgServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAgServiceStatusResponseBody?

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
            var model = UpdateAgServiceStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomerCategoryRequest : Tea.TeaModel {
    public var paramList: String?

    public var userId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.paramList != nil {
            map["ParamList"] = self.paramList!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ParamList"] as? String {
            self.paramList = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
    }
}

public class UpdateCustomerCategoryResponseBody : Tea.TeaModel {
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

public class UpdateCustomerCategoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomerCategoryResponseBody?

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
            var model = UpdateCustomerCategoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateCustomerInformationRequest : Tea.TeaModel {
    public var biz: String?

    public var customerCategory: String?

    public var customerSubCategory: String?

    public var userId: Int64?

    public var website: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.biz != nil {
            map["Biz"] = self.biz!
        }
        if self.customerCategory != nil {
            map["CustomerCategory"] = self.customerCategory!
        }
        if self.customerSubCategory != nil {
            map["CustomerSubCategory"] = self.customerSubCategory!
        }
        if self.userId != nil {
            map["UserId"] = self.userId!
        }
        if self.website != nil {
            map["Website"] = self.website!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Biz"] as? String {
            self.biz = value
        }
        if let value = dict["CustomerCategory"] as? String {
            self.customerCategory = value
        }
        if let value = dict["CustomerSubCategory"] as? String {
            self.customerSubCategory = value
        }
        if let value = dict["UserId"] as? Int64 {
            self.userId = value
        }
        if let value = dict["Website"] as? String {
            self.website = value
        }
    }
}

public class UpdateCustomerInformationResponseBody : Tea.TeaModel {
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

public class UpdateCustomerInformationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateCustomerInformationResponseBody?

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
            var model = UpdateCustomerInformationResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateOrInsertEnterpriseInfoRequest : Tea.TeaModel {
    public var address: String?

    public var alias: String?

    public var cityJsonString: [String: Any]?

    public var enterpriseSize: String?

    public var fax: String?

    public var name: String?

    public var PK: String?

    public var phone: String?

    public var provinceJsonString: [String: Any]?

    public var years: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.cityJsonString != nil {
            map["CityJsonString"] = self.cityJsonString!
        }
        if self.enterpriseSize != nil {
            map["EnterpriseSize"] = self.enterpriseSize!
        }
        if self.fax != nil {
            map["Fax"] = self.fax!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.provinceJsonString != nil {
            map["ProvinceJsonString"] = self.provinceJsonString!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["CityJsonString"] as? [String: Any] {
            self.cityJsonString = value
        }
        if let value = dict["EnterpriseSize"] as? String {
            self.enterpriseSize = value
        }
        if let value = dict["Fax"] as? String {
            self.fax = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProvinceJsonString"] as? [String: Any] {
            self.provinceJsonString = value
        }
        if let value = dict["Years"] as? String {
            self.years = value
        }
    }
}

public class UpdateOrInsertEnterpriseInfoShrinkRequest : Tea.TeaModel {
    public var address: String?

    public var alias: String?

    public var cityJsonStringShrink: String?

    public var enterpriseSize: String?

    public var fax: String?

    public var name: String?

    public var PK: String?

    public var phone: String?

    public var provinceJsonStringShrink: String?

    public var years: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.address != nil {
            map["Address"] = self.address!
        }
        if self.alias != nil {
            map["Alias"] = self.alias!
        }
        if self.cityJsonStringShrink != nil {
            map["CityJsonString"] = self.cityJsonStringShrink!
        }
        if self.enterpriseSize != nil {
            map["EnterpriseSize"] = self.enterpriseSize!
        }
        if self.fax != nil {
            map["Fax"] = self.fax!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.PK != nil {
            map["PK"] = self.PK!
        }
        if self.phone != nil {
            map["Phone"] = self.phone!
        }
        if self.provinceJsonStringShrink != nil {
            map["ProvinceJsonString"] = self.provinceJsonStringShrink!
        }
        if self.years != nil {
            map["Years"] = self.years!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Address"] as? String {
            self.address = value
        }
        if let value = dict["Alias"] as? String {
            self.alias = value
        }
        if let value = dict["CityJsonString"] as? String {
            self.cityJsonStringShrink = value
        }
        if let value = dict["EnterpriseSize"] as? String {
            self.enterpriseSize = value
        }
        if let value = dict["Fax"] as? String {
            self.fax = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PK"] as? String {
            self.PK = value
        }
        if let value = dict["Phone"] as? String {
            self.phone = value
        }
        if let value = dict["ProvinceJsonString"] as? String {
            self.provinceJsonStringShrink = value
        }
        if let value = dict["Years"] as? String {
            self.years = value
        }
    }
}

public class UpdateOrInsertEnterpriseInfoResponseBody : Tea.TeaModel {
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

public class UpdateOrInsertEnterpriseInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateOrInsertEnterpriseInfoResponseBody?

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
            var model = UpdateOrInsertEnterpriseInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DoLogicalDeleteResourceRequest : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["GmtWakeup"] as? String {
            self.gmtWakeup = value
        }
        if let value = dict["Hid"] as? Int64 {
            self.hid = value
        }
        if let value = dict["Interrupt"] as? Bool {
            self.interrupt = value
        }
        if let value = dict["Invoker"] as? String {
            self.invoker = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskExtraData"] as? String {
            self.taskExtraData = value
        }
        if let value = dict["TaskIdentifier"] as? String {
            self.taskIdentifier = value
        }
    }
}

public class DoLogicalDeleteResourceResponseBody : Tea.TeaModel {
    public var bid: String?

    public var country: String?

    public var gmtWakeup: String?

    public var hid: Int64?

    public var interrupt: Bool?

    public var invoker: String?

    public var message: String?

    public var pk: String?

    public var success: Bool?

    public var taskExtraData: String?

    public var taskIdentifier: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.bid != nil {
            map["Bid"] = self.bid!
        }
        if self.country != nil {
            map["Country"] = self.country!
        }
        if self.gmtWakeup != nil {
            map["GmtWakeup"] = self.gmtWakeup!
        }
        if self.hid != nil {
            map["Hid"] = self.hid!
        }
        if self.interrupt != nil {
            map["Interrupt"] = self.interrupt!
        }
        if self.invoker != nil {
            map["Invoker"] = self.invoker!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.pk != nil {
            map["Pk"] = self.pk!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskExtraData != nil {
            map["TaskExtraData"] = self.taskExtraData!
        }
        if self.taskIdentifier != nil {
            map["TaskIdentifier"] = self.taskIdentifier!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Bid"] as? String {
            self.bid = value
        }
        if let value = dict["Country"] as? String {
            self.country = value
        }
        if let value = dict["GmtWakeup"] as? String {
            self.gmtWakeup = value
        }
        if let value = dict["Hid"] as? Int64 {
            self.hid = value
        }
        if let value = dict["Interrupt"] as? Bool {
            self.interrupt = value
        }
        if let value = dict["Invoker"] as? String {
            self.invoker = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Pk"] as? String {
            self.pk = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskExtraData"] as? String {
            self.taskExtraData = value
        }
        if let value = dict["TaskIdentifier"] as? String {
            self.taskIdentifier = value
        }
    }
}

public class DoLogicalDeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DoLogicalDeleteResourceResponseBody?

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
            var model = DoLogicalDeleteResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
