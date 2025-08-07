import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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

public class ReadAllMessageRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

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
        if self.classId != nil {
            map["ClassId"] = self.classId!
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
        if let value = dict["ClassId"] as? Int64 {
            self.classId = value
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

public class ReadMessageListRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var appName: String?

    public var bizName: String?

    public var callerProtocol: String?

    public var classId: Int64?

    public var clientSource: String?

    public var content: String?

    public var cookies: String?

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
