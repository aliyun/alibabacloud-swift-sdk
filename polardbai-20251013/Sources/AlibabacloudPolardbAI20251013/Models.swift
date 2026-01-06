import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChatBIConfigCreateRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class ChatBIConfigCreateResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigCreateResponseBody?

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
            var model = ChatBIConfigCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIConfigDeleteRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class ChatBIConfigDeleteResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigDeleteResponseBody?

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
            var model = ChatBIConfigDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIConfigDeleteEntryRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var id: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class ChatBIConfigDeleteEntryResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigDeleteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigDeleteEntryResponseBody?

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
            var model = ChatBIConfigDeleteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIConfigQueryEntriesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var id: Int32?

    public var instanceName: String?

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
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ChatBIConfigQueryEntriesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigQueryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigQueryEntriesResponseBody?

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
            var model = ChatBIConfigQueryEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIConfigQueryTablesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var inputField: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.inputField != nil {
            map["InputField"] = self.inputField!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InputField"] as? String {
            self.inputField = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class ChatBIConfigQueryTablesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigQueryTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigQueryTablesResponseBody?

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
            var model = ChatBIConfigQueryTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIConfigUpdateEntryRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var formulaFunction: String?

    public var id: Int32?

    public var instanceName: String?

    public var isFunctional: Int32?

    public var queryFunction: String?

    public var sqlCondition: String?

    public var sqlFunction: String?

    public var textCondition: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.formulaFunction != nil {
            map["FormulaFunction"] = self.formulaFunction!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isFunctional != nil {
            map["IsFunctional"] = self.isFunctional!
        }
        if self.queryFunction != nil {
            map["QueryFunction"] = self.queryFunction!
        }
        if self.sqlCondition != nil {
            map["SqlCondition"] = self.sqlCondition!
        }
        if self.sqlFunction != nil {
            map["SqlFunction"] = self.sqlFunction!
        }
        if self.textCondition != nil {
            map["TextCondition"] = self.textCondition!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FormulaFunction"] as? String {
            self.formulaFunction = value
        }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["IsFunctional"] as? Int32 {
            self.isFunctional = value
        }
        if let value = dict["QueryFunction"] as? String {
            self.queryFunction = value
        }
        if let value = dict["SqlCondition"] as? String {
            self.sqlCondition = value
        }
        if let value = dict["SqlFunction"] as? String {
            self.sqlFunction = value
        }
        if let value = dict["TextCondition"] as? String {
            self.textCondition = value
        }
    }
}

public class ChatBIConfigUpdateEntryResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIConfigUpdateEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIConfigUpdateEntryResponseBody?

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
            var model = ChatBIConfigUpdateEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIFileTemplateDownloadRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var instanceName: String?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class ChatBIFileTemplateDownloadResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIFileTemplateDownloadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIFileTemplateDownloadResponseBody?

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
            var model = ChatBIFileTemplateDownloadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIFileUploadRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var fileName: String?

    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
    }
}

public class ChatBIFileUploadResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIFileUploadResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIFileUploadResponseBody?

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
            var model = ChatBIFileUploadResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIFileUploadCallbackRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var characterSetName: String?

    public var dbName: String?

    public var fileName: String?

    public var instanceName: String?

    public var tableName: String?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.characterSetName != nil {
            map["CharacterSetName"] = self.characterSetName!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.fileName != nil {
            map["FileName"] = self.fileName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["CharacterSetName"] as? String {
            self.characterSetName = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["FileName"] as? String {
            self.fileName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class ChatBIFileUploadCallbackResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIFileUploadCallbackResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIFileUploadCallbackResponseBody?

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
            var model = ChatBIFileUploadCallbackResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternCreateRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableNameSuffix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableNameSuffix != nil {
            map["TableNameSuffix"] = self.tableNameSuffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableNameSuffix"] as? String {
            self.tableNameSuffix = value
        }
    }
}

public class ChatBIPatternCreateResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternCreateResponseBody?

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
            var model = ChatBIPatternCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternDeleteRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBIPatternDeleteResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternDeleteResponseBody?

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
            var model = ChatBIPatternDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternDeleteEntryRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var id: String?

    public var instanceName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Id"] as? String {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBIPatternDeleteEntryResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternDeleteEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternDeleteEntryResponseBody?

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
            var model = ChatBIPatternDeleteEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternIndexCreateRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var patternTableName: String?

    public var tableNameSuffix: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.patternTableName != nil {
            map["PatternTableName"] = self.patternTableName!
        }
        if self.tableNameSuffix != nil {
            map["TableNameSuffix"] = self.tableNameSuffix!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PatternTableName"] as? String {
            self.patternTableName = value
        }
        if let value = dict["TableNameSuffix"] as? String {
            self.tableNameSuffix = value
        }
    }
}

public class ChatBIPatternIndexCreateResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternIndexCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternIndexCreateResponseBody?

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
            var model = ChatBIPatternIndexCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternIndexDeleteRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBIPatternIndexDeleteResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternIndexDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternIndexDeleteResponseBody?

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
            var model = ChatBIPatternIndexDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternIndexQueryTablesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var inputField: String?

    public var instanceName: String?

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
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.inputField != nil {
            map["InputField"] = self.inputField!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InputField"] as? String {
            self.inputField = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ChatBIPatternIndexQueryTablesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternIndexQueryTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternIndexQueryTablesResponseBody?

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
            var model = ChatBIPatternIndexQueryTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternQueryEntriesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var id: Int32?

    public var instanceName: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBIPatternQueryEntriesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternQueryEntriesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternQueryEntriesResponseBody?

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
            var model = ChatBIPatternQueryEntriesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternQueryTablesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var inputField: String?

    public var instanceName: String?

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
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.inputField != nil {
            map["InputField"] = self.inputField!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InputField"] as? String {
            self.inputField = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ChatBIPatternQueryTablesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternQueryTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternQueryTablesResponseBody?

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
            var model = ChatBIPatternQueryTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPatternUpdateEntryRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var id: Int32?

    public var instanceName: String?

    public var patternDescription: String?

    public var patternParams: String?

    public var patternQuestion: String?

    public var patternSql: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.id != nil {
            map["Id"] = self.id!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.patternDescription != nil {
            map["PatternDescription"] = self.patternDescription!
        }
        if self.patternParams != nil {
            map["PatternParams"] = self.patternParams!
        }
        if self.patternQuestion != nil {
            map["PatternQuestion"] = self.patternQuestion!
        }
        if self.patternSql != nil {
            map["PatternSql"] = self.patternSql!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["Id"] as? Int32 {
            self.id = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PatternDescription"] as? String {
            self.patternDescription = value
        }
        if let value = dict["PatternParams"] as? String {
            self.patternParams = value
        }
        if let value = dict["PatternQuestion"] as? String {
            self.patternQuestion = value
        }
        if let value = dict["PatternSql"] as? String {
            self.patternSql = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBIPatternUpdateEntryResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPatternUpdateEntryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPatternUpdateEntryResponseBody?

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
            var model = ChatBIPatternUpdateEntryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIPredictSseRequest : Tea.TeaModel {
    public class Parameters : Tea.TeaModel {
        public var patternIndexThreshold: Double?

        public var patternIndexTop: Int32?

        public var resultType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.patternIndexThreshold != nil {
                map["PatternIndexThreshold"] = self.patternIndexThreshold!
            }
            if self.patternIndexTop != nil {
                map["PatternIndexTop"] = self.patternIndexTop!
            }
            if self.resultType != nil {
                map["ResultType"] = self.resultType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PatternIndexThreshold"] as? Double {
                self.patternIndexThreshold = value
            }
            if let value = dict["PatternIndexTop"] as? Int32 {
                self.patternIndexTop = value
            }
            if let value = dict["ResultType"] as? String {
                self.resultType = value
            }
        }
    }
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var generateChart: Bool?

    public var generateSummary: Bool?

    public var instanceName: String?

    public var parameters: ChatBIPredictSseRequest.Parameters?

    public var patternIndexTableName: String?

    public var question: String?

    public var schemaIndexTableName: String?

    public var selectData: Bool?

    public var thinkingMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.parameters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.generateChart != nil {
            map["GenerateChart"] = self.generateChart!
        }
        if self.generateSummary != nil {
            map["GenerateSummary"] = self.generateSummary!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters?.toMap()
        }
        if self.patternIndexTableName != nil {
            map["PatternIndexTableName"] = self.patternIndexTableName!
        }
        if self.question != nil {
            map["Question"] = self.question!
        }
        if self.schemaIndexTableName != nil {
            map["SchemaIndexTableName"] = self.schemaIndexTableName!
        }
        if self.selectData != nil {
            map["SelectData"] = self.selectData!
        }
        if self.thinkingMode != nil {
            map["ThinkingMode"] = self.thinkingMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["GenerateChart"] as? Bool {
            self.generateChart = value
        }
        if let value = dict["GenerateSummary"] as? Bool {
            self.generateSummary = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Parameters"] as? [String: Any?] {
            var model = ChatBIPredictSseRequest.Parameters()
            model.fromMap(value)
            self.parameters = model
        }
        if let value = dict["PatternIndexTableName"] as? String {
            self.patternIndexTableName = value
        }
        if let value = dict["Question"] as? String {
            self.question = value
        }
        if let value = dict["SchemaIndexTableName"] as? String {
            self.schemaIndexTableName = value
        }
        if let value = dict["SelectData"] as? Bool {
            self.selectData = value
        }
        if let value = dict["ThinkingMode"] as? Bool {
            self.thinkingMode = value
        }
    }
}

public class ChatBIPredictSseShrinkRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var generateChart: Bool?

    public var generateSummary: Bool?

    public var instanceName: String?

    public var parametersShrink: String?

    public var patternIndexTableName: String?

    public var question: String?

    public var schemaIndexTableName: String?

    public var selectData: Bool?

    public var thinkingMode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.generateChart != nil {
            map["GenerateChart"] = self.generateChart!
        }
        if self.generateSummary != nil {
            map["GenerateSummary"] = self.generateSummary!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.parametersShrink != nil {
            map["Parameters"] = self.parametersShrink!
        }
        if self.patternIndexTableName != nil {
            map["PatternIndexTableName"] = self.patternIndexTableName!
        }
        if self.question != nil {
            map["Question"] = self.question!
        }
        if self.schemaIndexTableName != nil {
            map["SchemaIndexTableName"] = self.schemaIndexTableName!
        }
        if self.selectData != nil {
            map["SelectData"] = self.selectData!
        }
        if self.thinkingMode != nil {
            map["ThinkingMode"] = self.thinkingMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["GenerateChart"] as? Bool {
            self.generateChart = value
        }
        if let value = dict["GenerateSummary"] as? Bool {
            self.generateSummary = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Parameters"] as? String {
            self.parametersShrink = value
        }
        if let value = dict["PatternIndexTableName"] as? String {
            self.patternIndexTableName = value
        }
        if let value = dict["Question"] as? String {
            self.question = value
        }
        if let value = dict["SchemaIndexTableName"] as? String {
            self.schemaIndexTableName = value
        }
        if let value = dict["SelectData"] as? Bool {
            self.selectData = value
        }
        if let value = dict["ThinkingMode"] as? Bool {
            self.thinkingMode = value
        }
    }
}

public class ChatBIPredictSseResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIPredictSseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIPredictSseResponseBody?

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
            var model = ChatBIPredictSseResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBISchemaIndexCreateRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var columnsExcluded: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableNameSuffix: String?

    public var tablesIncluded: String?

    public var toSample: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.columnsExcluded != nil {
            map["ColumnsExcluded"] = self.columnsExcluded!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableNameSuffix != nil {
            map["TableNameSuffix"] = self.tableNameSuffix!
        }
        if self.tablesIncluded != nil {
            map["TablesIncluded"] = self.tablesIncluded!
        }
        if self.toSample != nil {
            map["ToSample"] = self.toSample!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["ColumnsExcluded"] as? String {
            self.columnsExcluded = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableNameSuffix"] as? String {
            self.tableNameSuffix = value
        }
        if let value = dict["TablesIncluded"] as? String {
            self.tablesIncluded = value
        }
        if let value = dict["ToSample"] as? Int32 {
            self.toSample = value
        }
    }
}

public class ChatBISchemaIndexCreateResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBISchemaIndexCreateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBISchemaIndexCreateResponseBody?

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
            var model = ChatBISchemaIndexCreateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBISchemaIndexDeleteRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class ChatBISchemaIndexDeleteResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBISchemaIndexDeleteResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBISchemaIndexDeleteResponseBody?

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
            var model = ChatBISchemaIndexDeleteResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBISchemaIndexQueryTablesRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var inputField: String?

    public var instanceName: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.inputField != nil {
            map["InputField"] = self.inputField!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InputField"] as? String {
            self.inputField = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ChatBISchemaIndexQueryTablesResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBISchemaIndexQueryTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBISchemaIndexQueryTablesResponseBody?

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
            var model = ChatBISchemaIndexQueryTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChatBIUpdateTableValidationColumnsRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var dbName: String?

    public var instanceName: String?

    public var tableName: String?

    public var tableType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class ChatBIUpdateTableValidationColumnsResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChatBIUpdateTableValidationColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChatBIUpdateTableValidationColumnsResponseBody?

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
            var model = ChatBIUpdateTableValidationColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMultimodalDatasetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetDescription: String?

    public var datasetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetDescription != nil {
            map["DatasetDescription"] = self.datasetDescription!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetDescription"] as? String {
            self.datasetDescription = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
    }
}

public class CreateMultimodalDatasetResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMultimodalDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultimodalDatasetResponseBody?

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
            var model = CreateMultimodalDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMultimodalDatasetEmbeddingRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetId: String?

    public var model: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.model != nil {
            map["Model"] = self.model!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["Model"] as? String {
            self.model = value
        }
    }
}

public class CreateMultimodalDatasetEmbeddingResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMultimodalDatasetEmbeddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultimodalDatasetEmbeddingResponseBody?

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
            var model = CreateMultimodalDatasetEmbeddingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMultimodalSearchTaskRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetIds: [String]?

    public var embeddingModel: String?

    public var query: String?

    public var searchModel: String?

    public var topK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetIds != nil {
            map["DatasetIds"] = self.datasetIds!
        }
        if self.embeddingModel != nil {
            map["EmbeddingModel"] = self.embeddingModel!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchModel != nil {
            map["SearchModel"] = self.searchModel!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetIds"] as? [String] {
            self.datasetIds = value
        }
        if let value = dict["EmbeddingModel"] as? String {
            self.embeddingModel = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SearchModel"] as? String {
            self.searchModel = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
    }
}

public class CreateMultimodalSearchTaskShrinkRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetIdsShrink: String?

    public var embeddingModel: String?

    public var query: String?

    public var searchModel: String?

    public var topK: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetIdsShrink != nil {
            map["DatasetIds"] = self.datasetIdsShrink!
        }
        if self.embeddingModel != nil {
            map["EmbeddingModel"] = self.embeddingModel!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.searchModel != nil {
            map["SearchModel"] = self.searchModel!
        }
        if self.topK != nil {
            map["TopK"] = self.topK!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetIds"] as? String {
            self.datasetIdsShrink = value
        }
        if let value = dict["EmbeddingModel"] as? String {
            self.embeddingModel = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["SearchModel"] as? String {
            self.searchModel = value
        }
        if let value = dict["TopK"] as? Int32 {
            self.topK = value
        }
    }
}

public class CreateMultimodalSearchTaskResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateMultimodalSearchTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMultimodalSearchTaskResponseBody?

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
            var model = CreateMultimodalSearchTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMultimodalDatasetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
    }
}

public class DeleteMultimodalDatasetResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteMultimodalDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMultimodalDatasetResponseBody?

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
            var model = DeleteMultimodalDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteMultimodalEmbeddingRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var embedding: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.embedding != nil {
            map["Embedding"] = self.embedding!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Embedding"] as? String {
            self.embedding = value
        }
    }
}

public class DeleteMultimodalEmbeddingResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteMultimodalEmbeddingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMultimodalEmbeddingResponseBody?

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
            var model = DeleteMultimodalEmbeddingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DownloadMultimodalSearchTaskResultMetadataRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DownloadMultimodalSearchTaskResultMetadataResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DownloadMultimodalSearchTaskResultMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadMultimodalSearchTaskResultMetadataResponseBody?

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
            var model = DownloadMultimodalSearchTaskResultMetadataResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetUserTokenRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var password: String?

    public var username: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.username != nil {
            map["Username"] = self.username!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["Username"] as? String {
            self.username = value
        }
    }
}

public class GetUserTokenResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetUserTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserTokenResponseBody?

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
            var model = GetUserTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultimodalDatasetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var inputField: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.inputField != nil {
            map["InputField"] = self.inputField!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["InputField"] as? String {
            self.inputField = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMultimodalDatasetResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMultimodalDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultimodalDatasetResponseBody?

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
            var model = ListMultimodalDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultimodalEmbeddingModelRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMultimodalEmbeddingModelResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMultimodalEmbeddingModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultimodalEmbeddingModelResponseBody?

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
            var model = ListMultimodalEmbeddingModelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultimodalSearchTaskRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListMultimodalSearchTaskResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMultimodalSearchTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultimodalSearchTaskResponseBody?

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
            var model = ListMultimodalSearchTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMultimodalSearchTaskResultRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class ListMultimodalSearchTaskResultResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ListMultimodalSearchTaskResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMultimodalSearchTaskResultResponseBody?

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
            var model = ListMultimodalSearchTaskResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateMultimodalDatasetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetDescription: String?

    public var datasetId: String?

    public var datasetName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetDescription != nil {
            map["DatasetDescription"] = self.datasetDescription!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.datasetName != nil {
            map["DatasetName"] = self.datasetName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetDescription"] as? String {
            self.datasetDescription = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["DatasetName"] as? String {
            self.datasetName = value
        }
    }
}

public class UpdateMultimodalDatasetResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateMultimodalDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateMultimodalDatasetResponseBody?

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
            var model = UpdateMultimodalDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UploadOSSMultimodalDatasetRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var datasetId: String?

    public var ossUrl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.datasetId != nil {
            map["DatasetId"] = self.datasetId!
        }
        if self.ossUrl != nil {
            map["OssUrl"] = self.ossUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DatasetId"] as? String {
            self.datasetId = value
        }
        if let value = dict["OssUrl"] as? String {
            self.ossUrl = value
        }
    }
}

public class UploadOSSMultimodalDatasetResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UploadOSSMultimodalDatasetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UploadOSSMultimodalDatasetResponseBody?

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
            var model = UploadOSSMultimodalDatasetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateDatabaseUserTokenRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var DBClusterId: String?

    public var DBName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
        if let value = dict["DBName"] as? String {
            self.DBName = value
        }
    }
}

public class ValidateDatabaseUserTokenResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateDatabaseUserTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateDatabaseUserTokenResponseBody?

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
            var model = ValidateDatabaseUserTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateUserTokenRequest : Tea.TeaModel {
    public var authMessage: String?

    public var authType: String?

    public var DBClusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authMessage != nil {
            map["AuthMessage"] = self.authMessage!
        }
        if self.authType != nil {
            map["AuthType"] = self.authType!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthMessage"] as? String {
            self.authMessage = value
        }
        if let value = dict["AuthType"] as? String {
            self.authType = value
        }
        if let value = dict["DBClusterId"] as? String {
            self.DBClusterId = value
        }
    }
}

public class ValidateUserTokenResponseBody : Tea.TeaModel {
    public var data: Any?

    public var errCode: String?

    public var errMessage: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.errCode != nil {
            map["ErrCode"] = self.errCode!
        }
        if self.errMessage != nil {
            map["ErrMessage"] = self.errMessage!
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
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ErrCode"] as? String {
            self.errCode = value
        }
        if let value = dict["ErrMessage"] as? String {
            self.errMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateUserTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateUserTokenResponseBody?

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
            var model = ValidateUserTokenResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
