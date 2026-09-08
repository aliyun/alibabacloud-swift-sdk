import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CheckDataMaskingInstanceRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class CheckDataMaskingInstanceResponseBody : Tea.TeaModel {
    public var errorCode: String?

    public var errorMessage: String?

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
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CheckDataMaskingInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDataMaskingInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDataMaskingInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDataMaskingRuleRequest : Tea.TeaModel {
    public class SubRuleList : Tea.TeaModel {
        public var columns: String?

        public var dbName: String?

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
            if self.columns != nil {
                map["Columns"] = self.columns!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Columns"] as? String {
                self.columns = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public class UserList : Tea.TeaModel {
        public var accountId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
        }
    }
    public var encAlgorithm: String?

    public var encryptionKeyId: String?

    public var encryptionKeyMode: String?

    public var engineType: String?

    public var expireTime: Int64?

    public var expireTimeOperation: String?

    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var riskHandleId: Int64?

    public var subRuleList: [CreateDataMaskingRuleRequest.SubRuleList]?

    public var userList: [CreateDataMaskingRuleRequest.UserList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encAlgorithm != nil {
            map["EncAlgorithm"] = self.encAlgorithm!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.encryptionKeyMode != nil {
            map["EncryptionKeyMode"] = self.encryptionKeyMode!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeOperation != nil {
            map["ExpireTimeOperation"] = self.expireTimeOperation!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskHandleId != nil {
            map["RiskHandleId"] = self.riskHandleId!
        }
        if self.subRuleList != nil {
            var tmp : [Any] = []
            for k in self.subRuleList! {
                tmp.append(k.toMap())
            }
            map["SubRuleList"] = tmp
        }
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["UserList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncAlgorithm"] as? String {
            self.encAlgorithm = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["EncryptionKeyMode"] as? String {
            self.encryptionKeyMode = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeOperation"] as? String {
            self.expireTimeOperation = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskHandleId"] as? Int64 {
            self.riskHandleId = value
        }
        if let value = dict["SubRuleList"] as? [Any?] {
            var tmp : [CreateDataMaskingRuleRequest.SubRuleList] = []
            for v in value {
                if v != nil {
                    var model = CreateDataMaskingRuleRequest.SubRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subRuleList = tmp
        }
        if let value = dict["UserList"] as? [Any?] {
            var tmp : [CreateDataMaskingRuleRequest.UserList] = []
            for v in value {
                if v != nil {
                    var model = CreateDataMaskingRuleRequest.UserList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userList = tmp
        }
    }
}

public class CreateDataMaskingRuleShrinkRequest : Tea.TeaModel {
    public var encAlgorithm: String?

    public var encryptionKeyId: String?

    public var encryptionKeyMode: String?

    public var engineType: String?

    public var expireTime: Int64?

    public var expireTimeOperation: String?

    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var riskHandleId: Int64?

    public var subRuleListShrink: String?

    public var userListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encAlgorithm != nil {
            map["EncAlgorithm"] = self.encAlgorithm!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.encryptionKeyMode != nil {
            map["EncryptionKeyMode"] = self.encryptionKeyMode!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeOperation != nil {
            map["ExpireTimeOperation"] = self.expireTimeOperation!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskHandleId != nil {
            map["RiskHandleId"] = self.riskHandleId!
        }
        if self.subRuleListShrink != nil {
            map["SubRuleList"] = self.subRuleListShrink!
        }
        if self.userListShrink != nil {
            map["UserList"] = self.userListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncAlgorithm"] as? String {
            self.encAlgorithm = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["EncryptionKeyMode"] as? String {
            self.encryptionKeyMode = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeOperation"] as? String {
            self.expireTimeOperation = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskHandleId"] as? Int64 {
            self.riskHandleId = value
        }
        if let value = dict["SubRuleList"] as? String {
            self.subRuleListShrink = value
        }
        if let value = dict["UserList"] as? String {
            self.userListShrink = value
        }
    }
}

public class CreateDataMaskingRuleResponseBody : Tea.TeaModel {
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

public class CreateDataMaskingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDataMaskingRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDataMaskingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteDataMaskingRuleRequest : Tea.TeaModel {
    public class SubRuleList : Tea.TeaModel {
        public var columns: String?

        public var dbName: String?

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
            if self.columns != nil {
                map["Columns"] = self.columns!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Columns"] as? String {
                self.columns = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public var engineType: String?

    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var subRuleList: [DeleteDataMaskingRuleRequest.SubRuleList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.subRuleList != nil {
            var tmp : [Any] = []
            for k in self.subRuleList! {
                tmp.append(k.toMap())
            }
            map["SubRuleList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["SubRuleList"] as? [Any?] {
            var tmp : [DeleteDataMaskingRuleRequest.SubRuleList] = []
            for v in value {
                if v != nil {
                    var model = DeleteDataMaskingRuleRequest.SubRuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.subRuleList = tmp
        }
    }
}

public class DeleteDataMaskingRuleShrinkRequest : Tea.TeaModel {
    public var engineType: String?

    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var subRuleListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.subRuleListShrink != nil {
            map["SubRuleList"] = self.subRuleListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["SubRuleList"] as? String {
            self.subRuleListShrink = value
        }
    }
}

public class DeleteDataMaskingRuleResponseBody : Tea.TeaModel {
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

public class DeleteDataMaskingRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDataMaskingRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDataMaskingRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataMaskingAccountCountRequest : Tea.TeaModel {
    public var lang: String?

    public var productIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
    }
}

public class GetDataMaskingAccountCountResponseBody : Tea.TeaModel {
    public class AccountCount : Tea.TeaModel {
        public var fullAccessCount: Int64?

        public var noneAccessCount: Int64?

        public var restrictedAccessCount: Int64?

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
            if self.fullAccessCount != nil {
                map["FullAccessCount"] = self.fullAccessCount!
            }
            if self.noneAccessCount != nil {
                map["NoneAccessCount"] = self.noneAccessCount!
            }
            if self.restrictedAccessCount != nil {
                map["RestrictedAccessCount"] = self.restrictedAccessCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FullAccessCount"] as? Int64 {
                self.fullAccessCount = value
            }
            if let value = dict["NoneAccessCount"] as? Int64 {
                self.noneAccessCount = value
            }
            if let value = dict["RestrictedAccessCount"] as? Int64 {
                self.restrictedAccessCount = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var accountCount: GetDataMaskingAccountCountResponseBody.AccountCount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accountCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountCount != nil {
            map["AccountCount"] = self.accountCount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountCount"] as? [String: Any?] {
            var model = GetDataMaskingAccountCountResponseBody.AccountCount()
            model.fromMap(value)
            self.accountCount = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDataMaskingAccountCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataMaskingAccountCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataMaskingAccountCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDataMaskingColumnCountRequest : Tea.TeaModel {
    public var lang: String?

    public var productIds: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class GetDataMaskingColumnCountResponseBody : Tea.TeaModel {
    public class ColumnCount : Tea.TeaModel {
        public var maskedCount: Int64?

        public var maskingFailedCount: Int64?

        public var sensitiveCount: Int64?

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
            if self.maskedCount != nil {
                map["MaskedCount"] = self.maskedCount!
            }
            if self.maskingFailedCount != nil {
                map["MaskingFailedCount"] = self.maskingFailedCount!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MaskedCount"] as? Int64 {
                self.maskedCount = value
            }
            if let value = dict["MaskingFailedCount"] as? Int64 {
                self.maskingFailedCount = value
            }
            if let value = dict["SensitiveCount"] as? Int64 {
                self.sensitiveCount = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public var columnCount: GetDataMaskingColumnCountResponseBody.ColumnCount?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.columnCount?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnCount != nil {
            map["ColumnCount"] = self.columnCount?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnCount"] as? [String: Any?] {
            var model = GetDataMaskingColumnCountResponseBody.ColumnCount()
            model.fromMap(value)
            self.columnCount = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetDataMaskingColumnCountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDataMaskingColumnCountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDataMaskingColumnCountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetInstanceAttributeRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class GetInstanceAttributeResponseBody : Tea.TeaModel {
    public var currentKernelVersion: String?

    public var engine: String?

    public var engineVersion: String?

    public var errorCode: String?

    public var errorMessage: String?

    public var kmsEncryptionSupported: Bool?

    public var maintainEndTime: Int64?

    public var maintainStartTime: Int64?

    public var requestId: String?

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
        if self.currentKernelVersion != nil {
            map["CurrentKernelVersion"] = self.currentKernelVersion!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.errorCode != nil {
            map["ErrorCode"] = self.errorCode!
        }
        if self.errorMessage != nil {
            map["ErrorMessage"] = self.errorMessage!
        }
        if self.kmsEncryptionSupported != nil {
            map["KmsEncryptionSupported"] = self.kmsEncryptionSupported!
        }
        if self.maintainEndTime != nil {
            map["MaintainEndTime"] = self.maintainEndTime!
        }
        if self.maintainStartTime != nil {
            map["MaintainStartTime"] = self.maintainStartTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentKernelVersion"] as? String {
            self.currentKernelVersion = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["EngineVersion"] as? String {
            self.engineVersion = value
        }
        if let value = dict["ErrorCode"] as? String {
            self.errorCode = value
        }
        if let value = dict["ErrorMessage"] as? String {
            self.errorMessage = value
        }
        if let value = dict["KmsEncryptionSupported"] as? Bool {
            self.kmsEncryptionSupported = value
        }
        if let value = dict["MaintainEndTime"] as? Int64 {
            self.maintainEndTime = value
        }
        if let value = dict["MaintainStartTime"] as? Int64 {
            self.maintainStartTime = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class GetInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetInstanceAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListColumnsRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dataAssetSourceId: String?

    public var dataSourceName: String?

    public var engineType: String?

    public var instanceName: String?

    public var lang: String?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var tableName: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataAssetSourceId != nil {
            map["DataAssetSourceId"] = self.dataAssetSourceId!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DataAssetSourceId"] as? String {
            self.dataAssetSourceId = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var creationTime: Int64?

        public var dataAssetSourceId: String?

        public var dataSourceName: String?

        public var dataType: String?

        public var engineType: String?

        public var instanceName: String?

        public var maskingStatus: Int32?

        public var name: String?

        public var productCode: String?

        public var regionId: String?

        public var revisionId: Int64?

        public var revisionStatus: Int64?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

        public var schemaName: String?

        public var sensitive: Bool?

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
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataAssetSourceId != nil {
                map["DataAssetSourceId"] = self.dataAssetSourceId!
            }
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.revisionId != nil {
                map["RevisionId"] = self.revisionId!
            }
            if self.revisionStatus != nil {
                map["RevisionStatus"] = self.revisionStatus!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.schemaName != nil {
                map["SchemaName"] = self.schemaName!
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataAssetSourceId"] as? String {
                self.dataAssetSourceId = value
            }
            if let value = dict["DataSourceName"] as? String {
                self.dataSourceName = value
            }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["MaskingStatus"] as? Int32 {
                self.maskingStatus = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RevisionId"] as? Int64 {
                self.revisionId = value
            }
            if let value = dict["RevisionStatus"] as? Int64 {
                self.revisionStatus = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["SchemaName"] as? String {
                self.schemaName = value
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListColumnsResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListColumnsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListColumnsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataAssetAccountsRequest : Tea.TeaModel {
    public var accountName: String?

    public var authRole: String?

    public var bizType: String?

    public var currentPage: Int32?

    public var instanceId: String?

    public var lang: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.authRole != nil {
            map["AuthRole"] = self.authRole!
        }
        if self.bizType != nil {
            map["BizType"] = self.bizType!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AuthRole"] as? String {
            self.authRole = value
        }
        if let value = dict["BizType"] as? String {
            self.bizType = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
    }
}

public class ListDataAssetAccountsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var accountName: String?

        public var aliUid: Int64?

        public var authRole: String?

        public var encryptionKeyMode: String?

        public var engineType: String?

        public var expireTime: Int64?

        public var id: Int64?

        public var instanceId: String?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
            }
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.authRole != nil {
                map["AuthRole"] = self.authRole!
            }
            if self.encryptionKeyMode != nil {
                map["EncryptionKeyMode"] = self.encryptionKeyMode!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["AliUid"] as? Int64 {
                self.aliUid = value
            }
            if let value = dict["AuthRole"] as? String {
                self.authRole = value
            }
            if let value = dict["EncryptionKeyMode"] as? String {
                self.encryptionKeyMode = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ExpireTime"] as? Int64 {
                self.expireTime = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListDataAssetAccountsResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListDataAssetAccountsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListDataAssetAccountsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataAssetAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataAssetAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataAssetAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataMaskingColumnsRequest : Tea.TeaModel {
    public var columnName: String?

    public var currentPage: Int32?

    public var dbName: String?

    public var engineType: String?

    public var instanceId: String?

    public var lang: String?

    public var maskingStatus: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var productIds: String?

    public var riskLeveLId: Int64?

    public var riskLevelIds: String?

    public var tableName: String?

    public var templateId: Int64?

    public var templateRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maskingStatus != nil {
            map["MaskingStatus"] = self.maskingStatus!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.riskLeveLId != nil {
            map["RiskLeveLId"] = self.riskLeveLId!
        }
        if self.riskLevelIds != nil {
            map["RiskLevelIds"] = self.riskLevelIds!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateRuleIds != nil {
            map["TemplateRuleIds"] = self.templateRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnName"] as? String {
            self.columnName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaskingStatus"] as? String {
            self.maskingStatus = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
        if let value = dict["RiskLeveLId"] as? Int64 {
            self.riskLeveLId = value
        }
        if let value = dict["RiskLevelIds"] as? String {
            self.riskLevelIds = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateRuleIds"] as? String {
            self.templateRuleIds = value
        }
    }
}

public class ListDataMaskingColumnsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class ModelTags : Tea.TeaModel {
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
        public var dataType: String?

        public var dbName: String?

        public var engineType: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var id: String?

        public var instanceId: String?

        public var maskingStatus: String?

        public var modelTags: [ListDataMaskingColumnsResponseBody.Items.ModelTags]?

        public var name: String?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleId: Int64?

        public var ruleName: String?

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
            if self.dataType != nil {
                map["DataType"] = self.dataType!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.maskingStatus != nil {
                map["MaskingStatus"] = self.maskingStatus!
            }
            if self.modelTags != nil {
                var tmp : [Any] = []
                for k in self.modelTags! {
                    tmp.append(k.toMap())
                }
                map["ModelTags"] = tmp
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataType"] as? String {
                self.dataType = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MaskingStatus"] as? String {
                self.maskingStatus = value
            }
            if let value = dict["ModelTags"] as? [Any?] {
                var tmp : [ListDataMaskingColumnsResponseBody.Items.ModelTags] = []
                for v in value {
                    if v != nil {
                        var model = ListDataMaskingColumnsResponseBody.Items.ModelTags()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.modelTags = tmp
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleId"] as? Int64 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListDataMaskingColumnsResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListDataMaskingColumnsResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListDataMaskingColumnsResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataMaskingColumnsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataMaskingColumnsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataMaskingColumnsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataMaskingEncryptionAlgorithmsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class ListDataMaskingEncryptionAlgorithmsResponseBody : Tea.TeaModel {
    public class Algorithms : Tea.TeaModel {
        public var errorCode: String?

        public var errorMessage: String?

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
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var algorithms: [ListDataMaskingEncryptionAlgorithmsResponseBody.Algorithms]?

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
        if self.algorithms != nil {
            var tmp : [Any] = []
            for k in self.algorithms! {
                tmp.append(k.toMap())
            }
            map["Algorithms"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Algorithms"] as? [Any?] {
            var tmp : [ListDataMaskingEncryptionAlgorithmsResponseBody.Algorithms] = []
            for v in value {
                if v != nil {
                    var model = ListDataMaskingEncryptionAlgorithmsResponseBody.Algorithms()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.algorithms = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListDataMaskingEncryptionAlgorithmsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataMaskingEncryptionAlgorithmsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataMaskingEncryptionAlgorithmsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataMaskingInstancesRequest : Tea.TeaModel {
    public var columnName: String?

    public var currentPage: Int32?

    public var dbName: String?

    public var engineType: String?

    public var instanceId: String?

    public var lang: String?

    public var maskingStatus: String?

    public var modelTagId: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var productIds: String?

    public var riskLevelId: Int64?

    public var riskLevelIds: String?

    public var tableName: String?

    public var templateId: Int64?

    public var templateRuleIds: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.columnName != nil {
            map["ColumnName"] = self.columnName!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.engineType != nil {
            map["EngineType"] = self.engineType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maskingStatus != nil {
            map["MaskingStatus"] = self.maskingStatus!
        }
        if self.modelTagId != nil {
            map["ModelTagId"] = self.modelTagId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.productIds != nil {
            map["ProductIds"] = self.productIds!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.riskLevelIds != nil {
            map["RiskLevelIds"] = self.riskLevelIds!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.templateRuleIds != nil {
            map["TemplateRuleIds"] = self.templateRuleIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ColumnName"] as? String {
            self.columnName = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["EngineType"] as? String {
            self.engineType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaskingStatus"] as? String {
            self.maskingStatus = value
        }
        if let value = dict["ModelTagId"] as? String {
            self.modelTagId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["ProductIds"] as? String {
            self.productIds = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RiskLevelIds"] as? String {
            self.riskLevelIds = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
        if let value = dict["TemplateRuleIds"] as? String {
            self.templateRuleIds = value
        }
    }
}

public class ListDataMaskingInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var encryptionAlgorithm: String?

        public var encryptionKeyId: String?

        public var engineType: String?

        public var fullAccessAccountCount: Int32?

        public var instanceId: String?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.encryptionAlgorithm != nil {
                map["EncryptionAlgorithm"] = self.encryptionAlgorithm!
            }
            if self.encryptionKeyId != nil {
                map["EncryptionKeyId"] = self.encryptionKeyId!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.fullAccessAccountCount != nil {
                map["FullAccessAccountCount"] = self.fullAccessAccountCount!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EncryptionAlgorithm"] as? String {
                self.encryptionAlgorithm = value
            }
            if let value = dict["EncryptionKeyId"] as? String {
                self.encryptionKeyId = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["FullAccessAccountCount"] as? Int32 {
                self.fullAccessAccountCount = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListDataMaskingInstancesResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListDataMaskingInstancesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListDataMaskingInstancesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataMaskingInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataMaskingInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataMaskingInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListDataSourcesRequest : Tea.TeaModel {
    public var connectStatus: String?

    public var currentPage: Int32?

    public var dataAssetId: String?

    public var dataSourceId: String?

    public var dbName: String?

    public var identifyStatus: String?

    public var instanceId: String?

    public var lang: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var sourceIp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectStatus != nil {
            map["ConnectStatus"] = self.connectStatus!
        }
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataAssetId != nil {
            map["DataAssetId"] = self.dataAssetId!
        }
        if self.dataSourceId != nil {
            map["DataSourceId"] = self.dataSourceId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.identifyStatus != nil {
            map["IdentifyStatus"] = self.identifyStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.sourceIp != nil {
            map["SourceIp"] = self.sourceIp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ConnectStatus"] as? String {
            self.connectStatus = value
        }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DataAssetId"] as? String {
            self.dataAssetId = value
        }
        if let value = dict["DataSourceId"] as? String {
            self.dataSourceId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["IdentifyStatus"] as? String {
            self.identifyStatus = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["SourceIp"] as? String {
            self.sourceIp = value
        }
    }
}

public class ListDataSourcesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var connectStatus: String?

        public var dataAssetId: String?

        public var dataSourceId: String?

        public var dataSourceSize: Int64?

        public var dbName: String?

        public var description_: String?

        public var engineType: String?

        public var errorCode: String?

        public var errorMessage: String?

        public var id: Int64?

        public var identifyStatus: String?

        public var instanceId: String?

        public var memberAccount: Int64?

        public var port: Int64?

        public var productCode: String?

        public var productId: Int64?

        public var regionId: String?

        public var regionName: String?

        public var resourceGroupId: String?

        public var tenantId: String?

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
            if self.connectStatus != nil {
                map["ConnectStatus"] = self.connectStatus!
            }
            if self.dataAssetId != nil {
                map["DataAssetId"] = self.dataAssetId!
            }
            if self.dataSourceId != nil {
                map["DataSourceId"] = self.dataSourceId!
            }
            if self.dataSourceSize != nil {
                map["DataSourceSize"] = self.dataSourceSize!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.engineType != nil {
                map["EngineType"] = self.engineType!
            }
            if self.errorCode != nil {
                map["ErrorCode"] = self.errorCode!
            }
            if self.errorMessage != nil {
                map["ErrorMessage"] = self.errorMessage!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.identifyStatus != nil {
                map["IdentifyStatus"] = self.identifyStatus!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.memberAccount != nil {
                map["MemberAccount"] = self.memberAccount!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.productId != nil {
                map["ProductId"] = self.productId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.tenantId != nil {
                map["TenantId"] = self.tenantId!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectStatus"] as? String {
                self.connectStatus = value
            }
            if let value = dict["DataAssetId"] as? String {
                self.dataAssetId = value
            }
            if let value = dict["DataSourceId"] as? String {
                self.dataSourceId = value
            }
            if let value = dict["DataSourceSize"] as? Int64 {
                self.dataSourceSize = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["EngineType"] as? String {
                self.engineType = value
            }
            if let value = dict["ErrorCode"] as? String {
                self.errorCode = value
            }
            if let value = dict["ErrorMessage"] as? String {
                self.errorMessage = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["IdentifyStatus"] as? String {
                self.identifyStatus = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MemberAccount"] as? Int64 {
                self.memberAccount = value
            }
            if let value = dict["Port"] as? Int64 {
                self.port = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["ProductId"] as? Int64 {
                self.productId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["TenantId"] as? String {
                self.tenantId = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListDataSourcesResponseBody.Items]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListDataSourcesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListDataSourcesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDataSourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListIdentifyModelsRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var filterAuditModel: Bool?

    public var lang: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.filterAuditModel != nil {
            map["FilterAuditModel"] = self.filterAuditModel!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["FilterAuditModel"] as? Bool {
            self.filterAuditModel = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListIdentifyModelsResponseBody : Tea.TeaModel {
    public class RuleList : Tea.TeaModel {
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
    public var requestId: String?

    public var ruleList: [ListIdentifyModelsResponseBody.RuleList]?

    public override init() {
        super.init()
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
        if self.ruleList != nil {
            var tmp : [Any] = []
            for k in self.ruleList! {
                tmp.append(k.toMap())
            }
            map["RuleList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleList"] as? [Any?] {
            var tmp : [ListIdentifyModelsResponseBody.RuleList] = []
            for v in value {
                if v != nil {
                    var model = ListIdentifyModelsResponseBody.RuleList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleList = tmp
        }
    }
}

public class ListIdentifyModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListIdentifyModelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListIdentifyModelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListKmsKeysRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class ListKmsKeysResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var aliasName: String?

        public var keyId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliasName != nil {
                map["AliasName"] = self.aliasName!
            }
            if self.keyId != nil {
                map["KeyId"] = self.keyId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AliasName"] as? String {
                self.aliasName = value
            }
            if let value = dict["KeyId"] as? String {
                self.keyId = value
            }
        }
    }
    public var items: [ListKmsKeysResponseBody.Items]?

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
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListKmsKeysResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListKmsKeysResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListKmsKeysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListKmsKeysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListKmsKeysResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMiniEngineVersionsRequest : Tea.TeaModel {
    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class ListMiniEngineVersionsResponseBody : Tea.TeaModel {
    public class KernelVersions : Tea.TeaModel {
        public var kernelReleaseType: String?

        public var kernelVersion: String?

        public var kernelVersionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kernelReleaseType != nil {
                map["KernelReleaseType"] = self.kernelReleaseType!
            }
            if self.kernelVersion != nil {
                map["KernelVersion"] = self.kernelVersion!
            }
            if self.kernelVersionName != nil {
                map["KernelVersionName"] = self.kernelVersionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KernelReleaseType"] as? String {
                self.kernelReleaseType = value
            }
            if let value = dict["KernelVersion"] as? String {
                self.kernelVersion = value
            }
            if let value = dict["KernelVersionName"] as? String {
                self.kernelVersionName = value
            }
        }
    }
    public var kernelVersions: [ListMiniEngineVersionsResponseBody.KernelVersions]?

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
        if self.kernelVersions != nil {
            var tmp : [Any] = []
            for k in self.kernelVersions! {
                tmp.append(k.toMap())
            }
            map["KernelVersions"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["KernelVersions"] as? [Any?] {
            var tmp : [ListMiniEngineVersionsResponseBody.KernelVersions] = []
            for v in value {
                if v != nil {
                    var model = ListMiniEngineVersionsResponseBody.KernelVersions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.kernelVersions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListMiniEngineVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMiniEngineVersionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMiniEngineVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var audited: Bool?

    public var identified: Bool?

    public var lang: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.audited != nil {
            map["Audited"] = self.audited!
        }
        if self.identified != nil {
            map["Identified"] = self.identified!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Audited"] as? Bool {
            self.audited = value
        }
        if let value = dict["Identified"] as? Bool {
            self.identified = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class RegionList : Tea.TeaModel {
        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var regionList: [ListRegionsResponseBody.RegionList]?

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
        if self.regionList != nil {
            var tmp : [Any] = []
            for k in self.regionList! {
                tmp.append(k.toMap())
            }
            map["RegionList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionList"] as? [Any?] {
            var tmp : [ListRegionsResponseBody.RegionList] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.RegionList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regionList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRiskLevelsRequest : Tea.TeaModel {
    public var featureType: Int32?

    public var lang: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListRiskLevelsResponseBody : Tea.TeaModel {
    public class RiskLevelList : Tea.TeaModel {
        public var description_: String?

        public var id: Int64?

        public var name: String?

        public var referenceNum: Int32?

        public override init() {
            super.init()
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
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.referenceNum != nil {
                map["ReferenceNum"] = self.referenceNum!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ReferenceNum"] as? Int32 {
                self.referenceNum = value
            }
        }
    }
    public var requestId: String?

    public var riskLevelList: [ListRiskLevelsResponseBody.RiskLevelList]?

    public override init() {
        super.init()
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
        if self.riskLevelList != nil {
            var tmp : [Any] = []
            for k in self.riskLevelList! {
                tmp.append(k.toMap())
            }
            map["RiskLevelList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RiskLevelList"] as? [Any?] {
            var tmp : [ListRiskLevelsResponseBody.RiskLevelList] = []
            for v in value {
                if v != nil {
                    var model = ListRiskLevelsResponseBody.RiskLevelList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.riskLevelList = tmp
        }
    }
}

public class ListRiskLevelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRiskLevelsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRiskLevelsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTablesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dataAssetSourceId: String?

    public var dataSourceName: String?

    public var lang: String?

    public var marker: Int64?

    public var name: String?

    public var pageSize: Int32?

    public var productCode: String?

    public var productId: Int64?

    public var riskLevelId: Int64?

    public var ruleId: Int64?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dataAssetSourceId != nil {
            map["DataAssetSourceId"] = self.dataAssetSourceId!
        }
        if self.dataSourceName != nil {
            map["DataSourceName"] = self.dataSourceName!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.riskLevelId != nil {
            map["RiskLevelId"] = self.riskLevelId!
        }
        if self.ruleId != nil {
            map["RuleId"] = self.ruleId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DataAssetSourceId"] as? String {
            self.dataAssetSourceId = value
        }
        if let value = dict["DataSourceName"] as? String {
            self.dataSourceName = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["Marker"] as? Int64 {
            self.marker = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["RiskLevelId"] as? Int64 {
            self.riskLevelId = value
        }
        if let value = dict["RuleId"] as? Int64 {
            self.ruleId = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListTablesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class RuleList : Tea.TeaModel {
            public var count: Int64?

            public var name: String?

            public var riskLevelId: Int64?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.riskLevelId != nil {
                    map["RiskLevelId"] = self.riskLevelId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Count"] as? Int64 {
                    self.count = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RiskLevelId"] as? Int64 {
                    self.riskLevelId = value
                }
            }
        }
        public var comment: String?

        public var creationTime: Int64?

        public var dataAssetSourceId: String?

        public var dataSourceName: String?

        public var instanceDescription: String?

        public var name: String?

        public var owner: String?

        public var productCode: String?

        public var riskLevelId: Int64?

        public var riskLevelName: String?

        public var ruleList: [ListTablesResponseBody.Items.RuleList]?

        public var sensitive: Bool?

        public var sensitiveCount: Int32?

        public var sensitiveRatio: String?

        public var tenantName: String?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.creationTime != nil {
                map["CreationTime"] = self.creationTime!
            }
            if self.dataAssetSourceId != nil {
                map["DataAssetSourceId"] = self.dataAssetSourceId!
            }
            if self.dataSourceName != nil {
                map["DataSourceName"] = self.dataSourceName!
            }
            if self.instanceDescription != nil {
                map["InstanceDescription"] = self.instanceDescription!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.productCode != nil {
                map["ProductCode"] = self.productCode!
            }
            if self.riskLevelId != nil {
                map["RiskLevelId"] = self.riskLevelId!
            }
            if self.riskLevelName != nil {
                map["RiskLevelName"] = self.riskLevelName!
            }
            if self.ruleList != nil {
                var tmp : [Any] = []
                for k in self.ruleList! {
                    tmp.append(k.toMap())
                }
                map["RuleList"] = tmp
            }
            if self.sensitive != nil {
                map["Sensitive"] = self.sensitive!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.sensitiveRatio != nil {
                map["SensitiveRatio"] = self.sensitiveRatio!
            }
            if self.tenantName != nil {
                map["TenantName"] = self.tenantName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["CreationTime"] as? Int64 {
                self.creationTime = value
            }
            if let value = dict["DataAssetSourceId"] as? String {
                self.dataAssetSourceId = value
            }
            if let value = dict["DataSourceName"] as? String {
                self.dataSourceName = value
            }
            if let value = dict["InstanceDescription"] as? String {
                self.instanceDescription = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Owner"] as? String {
                self.owner = value
            }
            if let value = dict["ProductCode"] as? String {
                self.productCode = value
            }
            if let value = dict["RiskLevelId"] as? Int64 {
                self.riskLevelId = value
            }
            if let value = dict["RiskLevelName"] as? String {
                self.riskLevelName = value
            }
            if let value = dict["RuleList"] as? [Any?] {
                var tmp : [ListTablesResponseBody.Items.RuleList] = []
                for v in value {
                    if v != nil {
                        var model = ListTablesResponseBody.Items.RuleList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleList = tmp
            }
            if let value = dict["Sensitive"] as? Bool {
                self.sensitive = value
            }
            if let value = dict["SensitiveCount"] as? Int32 {
                self.sensitiveCount = value
            }
            if let value = dict["SensitiveRatio"] as? String {
                self.sensitiveRatio = value
            }
            if let value = dict["TenantName"] as? String {
                self.tenantName = value
            }
            if let value = dict["TotalCount"] as? Int32 {
                self.totalCount = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListTablesResponseBody.Items]?

    public var marker: String?

    public var nextMarker: String?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var truncated: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.items != nil {
            var tmp : [Any] = []
            for k in self.items! {
                tmp.append(k.toMap())
            }
            map["Items"] = tmp
        }
        if self.marker != nil {
            map["Marker"] = self.marker!
        }
        if self.nextMarker != nil {
            map["NextMarker"] = self.nextMarker!
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
        if self.truncated != nil {
            map["Truncated"] = self.truncated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListTablesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTablesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["Marker"] as? String {
            self.marker = value
        }
        if let value = dict["NextMarker"] as? String {
            self.nextMarker = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Truncated"] as? String {
            self.truncated = value
        }
    }
}

public class ListTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTemplatesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var featureType: Int32?

    public var lang: String?

    public var pageSize: Int32?

    public var usageScenario: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.featureType != nil {
            map["FeatureType"] = self.featureType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.usageScenario != nil {
            map["UsageScenario"] = self.usageScenario!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["FeatureType"] as? Int32 {
            self.featureType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["UsageScenario"] as? Int32 {
            self.usageScenario = value
        }
    }
}

public class ListTemplatesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var currentRiskLevel: Int32?

        public var description_: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var id: Int64?

        public var maxCategoryLevel: Int32?

        public var maxRiskLevel: Int32?

        public var name: String?

        public var status: Int32?

        public var supportEdit: Int32?

        public var type: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.currentRiskLevel != nil {
                map["CurrentRiskLevel"] = self.currentRiskLevel!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.maxCategoryLevel != nil {
                map["MaxCategoryLevel"] = self.maxCategoryLevel!
            }
            if self.maxRiskLevel != nil {
                map["MaxRiskLevel"] = self.maxRiskLevel!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.supportEdit != nil {
                map["SupportEdit"] = self.supportEdit!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CurrentRiskLevel"] as? Int32 {
                self.currentRiskLevel = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["Id"] as? Int64 {
                self.id = value
            }
            if let value = dict["MaxCategoryLevel"] as? Int32 {
                self.maxCategoryLevel = value
            }
            if let value = dict["MaxRiskLevel"] as? Int32 {
                self.maxRiskLevel = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["SupportEdit"] as? Int32 {
                self.supportEdit = value
            }
            if let value = dict["Type"] as? Int32 {
                self.type = value
            }
        }
    }
    public var currentPage: Int32?

    public var items: [ListTemplatesResponseBody.Items]?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["Items"] as? [Any?] {
            var tmp : [ListTemplatesResponseBody.Items] = []
            for v in value {
                if v != nil {
                    var model = ListTemplatesResponseBody.Items()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.items = tmp
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTotalSensitiveInfoRequest : Tea.TeaModel {
    public var countType: Int32?

    public var lang: String?

    public var productCode: String?

    public var productCodeList: String?

    public var templateId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.countType != nil {
            map["CountType"] = self.countType!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productCodeList != nil {
            map["ProductCodeList"] = self.productCodeList!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CountType"] as? Int32 {
            self.countType = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductCodeList"] as? String {
            self.productCodeList = value
        }
        if let value = dict["TemplateId"] as? Int64 {
            self.templateId = value
        }
    }
}

public class ListTotalSensitiveInfoResponseBody : Tea.TeaModel {
    public class DataCountDOList : Tea.TeaModel {
        public class DataCountDOList : Tea.TeaModel {
            public var date: Int64?

            public var sensitiveCount: Int64?

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
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.sensitiveCount != nil {
                    map["SensitiveCount"] = self.sensitiveCount!
                }
                if self.totalCount != nil {
                    map["TotalCount"] = self.totalCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? Int64 {
                    self.date = value
                }
                if let value = dict["SensitiveCount"] as? Int64 {
                    self.sensitiveCount = value
                }
                if let value = dict["TotalCount"] as? Int64 {
                    self.totalCount = value
                }
            }
        }
        public class RuleInfoList : Tea.TeaModel {
            public var ruleCount: Int64?

            public var ruleId: Int64?

            public var ruleName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ruleCount != nil {
                    map["RuleCount"] = self.ruleCount!
                }
                if self.ruleId != nil {
                    map["RuleId"] = self.ruleId!
                }
                if self.ruleName != nil {
                    map["RuleName"] = self.ruleName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RuleCount"] as? Int64 {
                    self.ruleCount = value
                }
                if let value = dict["RuleId"] as? Int64 {
                    self.ruleId = value
                }
                if let value = dict["RuleName"] as? String {
                    self.ruleName = value
                }
            }
        }
        public var dataCountDOList: [ListTotalSensitiveInfoResponseBody.DataCountDOList.DataCountDOList]?

        public var date: Int64?

        public var regionId: String?

        public var ruleInfoList: [ListTotalSensitiveInfoResponseBody.DataCountDOList.RuleInfoList]?

        public var s0Count: Int64?

        public var s10Count: Int64?

        public var s1Count: Int64?

        public var s2Count: Int64?

        public var s3Count: Int64?

        public var s4Count: Int64?

        public var s5Count: Int64?

        public var s6Count: Int64?

        public var s7Count: Int64?

        public var s8Count: Int64?

        public var s9Count: Int64?

        public var sensitiveCount: Int64?

        public var structFlag: Int32?

        public var templateId: Int64?

        public var templateName: String?

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
            if self.dataCountDOList != nil {
                var tmp : [Any] = []
                for k in self.dataCountDOList! {
                    tmp.append(k.toMap())
                }
                map["DataCountDOList"] = tmp
            }
            if self.date != nil {
                map["Date"] = self.date!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.ruleInfoList != nil {
                var tmp : [Any] = []
                for k in self.ruleInfoList! {
                    tmp.append(k.toMap())
                }
                map["RuleInfoList"] = tmp
            }
            if self.s0Count != nil {
                map["S0Count"] = self.s0Count!
            }
            if self.s10Count != nil {
                map["S10Count"] = self.s10Count!
            }
            if self.s1Count != nil {
                map["S1Count"] = self.s1Count!
            }
            if self.s2Count != nil {
                map["S2Count"] = self.s2Count!
            }
            if self.s3Count != nil {
                map["S3Count"] = self.s3Count!
            }
            if self.s4Count != nil {
                map["S4Count"] = self.s4Count!
            }
            if self.s5Count != nil {
                map["S5Count"] = self.s5Count!
            }
            if self.s6Count != nil {
                map["S6Count"] = self.s6Count!
            }
            if self.s7Count != nil {
                map["S7Count"] = self.s7Count!
            }
            if self.s8Count != nil {
                map["S8Count"] = self.s8Count!
            }
            if self.s9Count != nil {
                map["S9Count"] = self.s9Count!
            }
            if self.sensitiveCount != nil {
                map["SensitiveCount"] = self.sensitiveCount!
            }
            if self.structFlag != nil {
                map["StructFlag"] = self.structFlag!
            }
            if self.templateId != nil {
                map["TemplateId"] = self.templateId!
            }
            if self.templateName != nil {
                map["TemplateName"] = self.templateName!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DataCountDOList"] as? [Any?] {
                var tmp : [ListTotalSensitiveInfoResponseBody.DataCountDOList.DataCountDOList] = []
                for v in value {
                    if v != nil {
                        var model = ListTotalSensitiveInfoResponseBody.DataCountDOList.DataCountDOList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dataCountDOList = tmp
            }
            if let value = dict["Date"] as? Int64 {
                self.date = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RuleInfoList"] as? [Any?] {
                var tmp : [ListTotalSensitiveInfoResponseBody.DataCountDOList.RuleInfoList] = []
                for v in value {
                    if v != nil {
                        var model = ListTotalSensitiveInfoResponseBody.DataCountDOList.RuleInfoList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.ruleInfoList = tmp
            }
            if let value = dict["S0Count"] as? Int64 {
                self.s0Count = value
            }
            if let value = dict["S10Count"] as? Int64 {
                self.s10Count = value
            }
            if let value = dict["S1Count"] as? Int64 {
                self.s1Count = value
            }
            if let value = dict["S2Count"] as? Int64 {
                self.s2Count = value
            }
            if let value = dict["S3Count"] as? Int64 {
                self.s3Count = value
            }
            if let value = dict["S4Count"] as? Int64 {
                self.s4Count = value
            }
            if let value = dict["S5Count"] as? Int64 {
                self.s5Count = value
            }
            if let value = dict["S6Count"] as? Int64 {
                self.s6Count = value
            }
            if let value = dict["S7Count"] as? Int64 {
                self.s7Count = value
            }
            if let value = dict["S8Count"] as? Int64 {
                self.s8Count = value
            }
            if let value = dict["S9Count"] as? Int64 {
                self.s9Count = value
            }
            if let value = dict["SensitiveCount"] as? Int64 {
                self.sensitiveCount = value
            }
            if let value = dict["StructFlag"] as? Int32 {
                self.structFlag = value
            }
            if let value = dict["TemplateId"] as? Int64 {
                self.templateId = value
            }
            if let value = dict["TemplateName"] as? String {
                self.templateName = value
            }
            if let value = dict["TotalCount"] as? Int64 {
                self.totalCount = value
            }
        }
    }
    public class RuleInfoList : Tea.TeaModel {
        public var ruleCount: Int64?

        public var ruleId: Int32?

        public var ruleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ruleCount != nil {
                map["RuleCount"] = self.ruleCount!
            }
            if self.ruleId != nil {
                map["RuleId"] = self.ruleId!
            }
            if self.ruleName != nil {
                map["RuleName"] = self.ruleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RuleCount"] as? Int64 {
                self.ruleCount = value
            }
            if let value = dict["RuleId"] as? Int32 {
                self.ruleId = value
            }
            if let value = dict["RuleName"] as? String {
                self.ruleName = value
            }
        }
    }
    public var dataCountDOList: [ListTotalSensitiveInfoResponseBody.DataCountDOList]?

    public var dbCount: Int64?

    public var instanceCount: Int64?

    public var requestId: String?

    public var ruleInfoList: [ListTotalSensitiveInfoResponseBody.RuleInfoList]?

    public var s0Count: Int64?

    public var s10Count: Int64?

    public var s1Count: Int64?

    public var s2Count: Int64?

    public var s3Count: Int64?

    public var s4Count: Int64?

    public var s5Count: Int64?

    public var s6Count: Int64?

    public var s7Count: Int64?

    public var s8Count: Int64?

    public var s9Count: Int64?

    public var sensitiveCount: Int64?

    public var sensitiveDbCount: Int64?

    public var sensitiveInstanceCount: Int64?

    public var sensitiveUnStructSize: Int64?

    public var subSensitiveCount: Int64?

    public var subTotalCount: Int64?

    public var totalCount: Int64?

    public var unStructSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dataCountDOList != nil {
            var tmp : [Any] = []
            for k in self.dataCountDOList! {
                tmp.append(k.toMap())
            }
            map["DataCountDOList"] = tmp
        }
        if self.dbCount != nil {
            map["DbCount"] = self.dbCount!
        }
        if self.instanceCount != nil {
            map["InstanceCount"] = self.instanceCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.ruleInfoList != nil {
            var tmp : [Any] = []
            for k in self.ruleInfoList! {
                tmp.append(k.toMap())
            }
            map["RuleInfoList"] = tmp
        }
        if self.s0Count != nil {
            map["S0Count"] = self.s0Count!
        }
        if self.s10Count != nil {
            map["S10Count"] = self.s10Count!
        }
        if self.s1Count != nil {
            map["S1Count"] = self.s1Count!
        }
        if self.s2Count != nil {
            map["S2Count"] = self.s2Count!
        }
        if self.s3Count != nil {
            map["S3Count"] = self.s3Count!
        }
        if self.s4Count != nil {
            map["S4Count"] = self.s4Count!
        }
        if self.s5Count != nil {
            map["S5Count"] = self.s5Count!
        }
        if self.s6Count != nil {
            map["S6Count"] = self.s6Count!
        }
        if self.s7Count != nil {
            map["S7Count"] = self.s7Count!
        }
        if self.s8Count != nil {
            map["S8Count"] = self.s8Count!
        }
        if self.s9Count != nil {
            map["S9Count"] = self.s9Count!
        }
        if self.sensitiveCount != nil {
            map["SensitiveCount"] = self.sensitiveCount!
        }
        if self.sensitiveDbCount != nil {
            map["SensitiveDbCount"] = self.sensitiveDbCount!
        }
        if self.sensitiveInstanceCount != nil {
            map["SensitiveInstanceCount"] = self.sensitiveInstanceCount!
        }
        if self.sensitiveUnStructSize != nil {
            map["SensitiveUnStructSize"] = self.sensitiveUnStructSize!
        }
        if self.subSensitiveCount != nil {
            map["SubSensitiveCount"] = self.subSensitiveCount!
        }
        if self.subTotalCount != nil {
            map["SubTotalCount"] = self.subTotalCount!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.unStructSize != nil {
            map["UnStructSize"] = self.unStructSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataCountDOList"] as? [Any?] {
            var tmp : [ListTotalSensitiveInfoResponseBody.DataCountDOList] = []
            for v in value {
                if v != nil {
                    var model = ListTotalSensitiveInfoResponseBody.DataCountDOList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataCountDOList = tmp
        }
        if let value = dict["DbCount"] as? Int64 {
            self.dbCount = value
        }
        if let value = dict["InstanceCount"] as? Int64 {
            self.instanceCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RuleInfoList"] as? [Any?] {
            var tmp : [ListTotalSensitiveInfoResponseBody.RuleInfoList] = []
            for v in value {
                if v != nil {
                    var model = ListTotalSensitiveInfoResponseBody.RuleInfoList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ruleInfoList = tmp
        }
        if let value = dict["S0Count"] as? Int64 {
            self.s0Count = value
        }
        if let value = dict["S10Count"] as? Int64 {
            self.s10Count = value
        }
        if let value = dict["S1Count"] as? Int64 {
            self.s1Count = value
        }
        if let value = dict["S2Count"] as? Int64 {
            self.s2Count = value
        }
        if let value = dict["S3Count"] as? Int64 {
            self.s3Count = value
        }
        if let value = dict["S4Count"] as? Int64 {
            self.s4Count = value
        }
        if let value = dict["S5Count"] as? Int64 {
            self.s5Count = value
        }
        if let value = dict["S6Count"] as? Int64 {
            self.s6Count = value
        }
        if let value = dict["S7Count"] as? Int64 {
            self.s7Count = value
        }
        if let value = dict["S8Count"] as? Int64 {
            self.s8Count = value
        }
        if let value = dict["S9Count"] as? Int64 {
            self.s9Count = value
        }
        if let value = dict["SensitiveCount"] as? Int64 {
            self.sensitiveCount = value
        }
        if let value = dict["SensitiveDbCount"] as? Int64 {
            self.sensitiveDbCount = value
        }
        if let value = dict["SensitiveInstanceCount"] as? Int64 {
            self.sensitiveInstanceCount = value
        }
        if let value = dict["SensitiveUnStructSize"] as? Int64 {
            self.sensitiveUnStructSize = value
        }
        if let value = dict["SubSensitiveCount"] as? Int64 {
            self.subSensitiveCount = value
        }
        if let value = dict["SubTotalCount"] as? Int64 {
            self.subTotalCount = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["UnStructSize"] as? Int64 {
            self.unStructSize = value
        }
    }
}

public class ListTotalSensitiveInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTotalSensitiveInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListTotalSensitiveInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SyncDataAssetsRequest : Tea.TeaModel {
    public var lang: String?

    public var productCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
    }
}

public class SyncDataAssetsResponseBody : Tea.TeaModel {
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

public class SyncDataAssetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncDataAssetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SyncDataAssetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataMaskingEncryptionAlgorithmRequest : Tea.TeaModel {
    public var encryptionAlgorithm: String?

    public var encryptionKeyId: String?

    public var instanceId: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.encryptionAlgorithm != nil {
            map["EncryptionAlgorithm"] = self.encryptionAlgorithm!
        }
        if self.encryptionKeyId != nil {
            map["EncryptionKeyId"] = self.encryptionKeyId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EncryptionAlgorithm"] as? String {
            self.encryptionAlgorithm = value
        }
        if let value = dict["EncryptionKeyId"] as? String {
            self.encryptionKeyId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
    }
}

public class UpdateDataMaskingEncryptionAlgorithmResponseBody : Tea.TeaModel {
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

public class UpdateDataMaskingEncryptionAlgorithmResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataMaskingEncryptionAlgorithmResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataMaskingEncryptionAlgorithmResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateDataMaskingUsersRequest : Tea.TeaModel {
    public class UserList : Tea.TeaModel {
        public var accountId: String?

        public var instanceId: String?

        public override init() {
            super.init()
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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
        }
    }
    public var authRole: String?

    public var expireTime: Int64?

    public var expireTimeOperation: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var userList: [UpdateDataMaskingUsersRequest.UserList]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authRole != nil {
            map["AuthRole"] = self.authRole!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeOperation != nil {
            map["ExpireTimeOperation"] = self.expireTimeOperation!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.userList != nil {
            var tmp : [Any] = []
            for k in self.userList! {
                tmp.append(k.toMap())
            }
            map["UserList"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthRole"] as? String {
            self.authRole = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeOperation"] as? String {
            self.expireTimeOperation = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["UserList"] as? [Any?] {
            var tmp : [UpdateDataMaskingUsersRequest.UserList] = []
            for v in value {
                if v != nil {
                    var model = UpdateDataMaskingUsersRequest.UserList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.userList = tmp
        }
    }
}

public class UpdateDataMaskingUsersShrinkRequest : Tea.TeaModel {
    public var authRole: String?

    public var expireTime: Int64?

    public var expireTimeOperation: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var userListShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.authRole != nil {
            map["AuthRole"] = self.authRole!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.expireTimeOperation != nil {
            map["ExpireTimeOperation"] = self.expireTimeOperation!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.userListShrink != nil {
            map["UserList"] = self.userListShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AuthRole"] as? String {
            self.authRole = value
        }
        if let value = dict["ExpireTime"] as? Int64 {
            self.expireTime = value
        }
        if let value = dict["ExpireTimeOperation"] as? String {
            self.expireTimeOperation = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["UserList"] as? String {
            self.userListShrink = value
        }
    }
}

public class UpdateDataMaskingUsersResponseBody : Tea.TeaModel {
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

public class UpdateDataMaskingUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateDataMaskingUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateDataMaskingUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeKernelVersionRequest : Tea.TeaModel {
    public var instanceId: String?

    public var kernelVersion: String?

    public var lang: String?

    public var productCode: String?

    public var productId: Int64?

    public var switchTime: Int64?

    public var upgradeTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.kernelVersion != nil {
            map["KernelVersion"] = self.kernelVersion!
        }
        if self.lang != nil {
            map["Lang"] = self.lang!
        }
        if self.productCode != nil {
            map["ProductCode"] = self.productCode!
        }
        if self.productId != nil {
            map["ProductId"] = self.productId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.upgradeTime != nil {
            map["UpgradeTime"] = self.upgradeTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["KernelVersion"] as? String {
            self.kernelVersion = value
        }
        if let value = dict["Lang"] as? String {
            self.lang = value
        }
        if let value = dict["ProductCode"] as? String {
            self.productCode = value
        }
        if let value = dict["ProductId"] as? Int64 {
            self.productId = value
        }
        if let value = dict["SwitchTime"] as? Int64 {
            self.switchTime = value
        }
        if let value = dict["UpgradeTime"] as? String {
            self.upgradeTime = value
        }
    }
}

public class UpgradeKernelVersionResponseBody : Tea.TeaModel {
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

public class UpgradeKernelVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeKernelVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeKernelVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
