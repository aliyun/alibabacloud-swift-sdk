import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ChangeAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var drdsInstanceId: String?

    public var password: String?

    public override init() {
        super.init()
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
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class ChangeAccountPasswordResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeAccountPasswordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ChangeInstanceAzoneRequest : Tea.TeaModel {
    public var changeVSwitch: Bool?

    public var drdsInstanceId: String?

    public var drdsRegionId: String?

    public var newVSwitch: String?

    public var originAzoneId: String?

    public var targetAzoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.changeVSwitch != nil {
            map["ChangeVSwitch"] = self.changeVSwitch!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.drdsRegionId != nil {
            map["DrdsRegionId"] = self.drdsRegionId!
        }
        if self.newVSwitch != nil {
            map["NewVSwitch"] = self.newVSwitch!
        }
        if self.originAzoneId != nil {
            map["OriginAzoneId"] = self.originAzoneId!
        }
        if self.targetAzoneId != nil {
            map["TargetAzoneId"] = self.targetAzoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChangeVSwitch"] as? Bool {
            self.changeVSwitch = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["DrdsRegionId"] as? String {
            self.drdsRegionId = value
        }
        if let value = dict["NewVSwitch"] as? String {
            self.newVSwitch = value
        }
        if let value = dict["OriginAzoneId"] as? String {
            self.originAzoneId = value
        }
        if let value = dict["TargetAzoneId"] as? String {
            self.targetAzoneId = value
        }
    }
}

public class ChangeInstanceAzoneResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ChangeInstanceAzoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ChangeInstanceAzoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ChangeInstanceAzoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckDrdsDbNameRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class CheckDrdsDbNameResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckDrdsDbNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDrdsDbNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDrdsDbNameResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckExpandStatusRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class CheckExpandStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var isActive: Bool?

        public var msg: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isActive != nil {
                map["IsActive"] = self.isActive!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["IsActive"] as? Bool {
                self.isActive = value
            }
            if let value = dict["Msg"] as? String {
                self.msg = value
            }
        }
    }
    public var data: CheckExpandStatusResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CheckExpandStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckExpandStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckExpandStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckExpandStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CheckSqlAuditEnableStatusRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class CheckSqlAuditEnableStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CheckSqlAuditEnableStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckSqlAuditEnableStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckSqlAuditEnableStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDrdsDBRequest : Tea.TeaModel {
    public class InstDbName : Tea.TeaModel {
        public var dbInstanceId: String?

        public var shardDbName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.shardDbName != nil {
                map["ShardDbName"] = self.shardDbName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["ShardDbName"] as? [String] {
                self.shardDbName = value
            }
        }
    }
    public class RdsSuperAccount : Tea.TeaModel {
        public var accountName: String?

        public var dbInstanceId: String?

        public var password: String?

        public override init() {
            super.init()
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
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccountName"] as? String {
                self.accountName = value
            }
            if let value = dict["DbInstanceId"] as? String {
                self.dbInstanceId = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
        }
    }
    public var accountName: String?

    public var dbInstType: String?

    public var dbInstanceIsCreating: Bool?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var encode: String?

    public var instDbName: [CreateDrdsDBRequest.InstDbName]?

    public var password: String?

    public var rdsInstance: [String]?

    public var rdsSuperAccount: [CreateDrdsDBRequest.RdsSuperAccount]?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.dbInstanceIsCreating != nil {
            map["DbInstanceIsCreating"] = self.dbInstanceIsCreating!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.encode != nil {
            map["Encode"] = self.encode!
        }
        if self.instDbName != nil {
            var tmp : [Any] = []
            for k in self.instDbName! {
                tmp.append(k.toMap())
            }
            map["InstDbName"] = tmp
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.rdsInstance != nil {
            map["RdsInstance"] = self.rdsInstance!
        }
        if self.rdsSuperAccount != nil {
            var tmp : [Any] = []
            for k in self.rdsSuperAccount! {
                tmp.append(k.toMap())
            }
            map["RdsSuperAccount"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DbInstanceIsCreating"] as? Bool {
            self.dbInstanceIsCreating = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Encode"] as? String {
            self.encode = value
        }
        if let value = dict["InstDbName"] as? [Any?] {
            var tmp : [CreateDrdsDBRequest.InstDbName] = []
            for v in value {
                if v != nil {
                    var model = CreateDrdsDBRequest.InstDbName()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instDbName = tmp
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["RdsInstance"] as? [String] {
            self.rdsInstance = value
        }
        if let value = dict["RdsSuperAccount"] as? [Any?] {
            var tmp : [CreateDrdsDBRequest.RdsSuperAccount] = []
            for v in value {
                if v != nil {
                    var model = CreateDrdsDBRequest.RdsSuperAccount()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rdsSuperAccount = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class CreateDrdsDBResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDrdsDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDrdsDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDrdsDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateDrdsInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var duration: Int32?

    public var instanceSeries: String?

    public var isAutoRenew: Bool?

    public var masterInstId: String?

    public var mySQLVersion: Int32?

    public var payType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var specification: String?

    public var type: String?

    public var vpcId: String?

    public var vswitchId: String?

    public var zoneId: String?

    public var isHa: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.instanceSeries != nil {
            map["InstanceSeries"] = self.instanceSeries!
        }
        if self.isAutoRenew != nil {
            map["IsAutoRenew"] = self.isAutoRenew!
        }
        if self.masterInstId != nil {
            map["MasterInstId"] = self.masterInstId!
        }
        if self.mySQLVersion != nil {
            map["MySQLVersion"] = self.mySQLVersion!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.quantity != nil {
            map["Quantity"] = self.quantity!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.specification != nil {
            map["Specification"] = self.specification!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["VswitchId"] = self.vswitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        if self.isHa != nil {
            map["isHa"] = self.isHa!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["InstanceSeries"] as? String {
            self.instanceSeries = value
        }
        if let value = dict["IsAutoRenew"] as? Bool {
            self.isAutoRenew = value
        }
        if let value = dict["MasterInstId"] as? String {
            self.masterInstId = value
        }
        if let value = dict["MySQLVersion"] as? Int32 {
            self.mySQLVersion = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["PricingCycle"] as? String {
            self.pricingCycle = value
        }
        if let value = dict["Quantity"] as? Int32 {
            self.quantity = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Specification"] as? String {
            self.specification = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["VswitchId"] as? String {
            self.vswitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
        if let value = dict["isHa"] as? Bool {
            self.isHa = value
        }
    }
}

public class CreateDrdsInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DrdsInstanceIdList : Tea.TeaModel {
            public var drdsInstanceIdList: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.drdsInstanceIdList != nil {
                    map["drdsInstanceIdList"] = self.drdsInstanceIdList!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["drdsInstanceIdList"] as? [String] {
                    self.drdsInstanceIdList = value
                }
            }
        }
        public var drdsInstanceIdList: CreateDrdsInstanceResponseBody.Data.DrdsInstanceIdList?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.drdsInstanceIdList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drdsInstanceIdList != nil {
                map["DrdsInstanceIdList"] = self.drdsInstanceIdList?.toMap()
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DrdsInstanceIdList"] as? [String: Any?] {
                var model = CreateDrdsInstanceResponseBody.Data.DrdsInstanceIdList()
                model.fromMap(value)
                self.drdsInstanceIdList = model
            }
            if let value = dict["OrderId"] as? Int64 {
                self.orderId = value
            }
        }
    }
    public var data: CreateDrdsInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = CreateDrdsInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateDrdsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDrdsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDrdsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceAccountRequest : Tea.TeaModel {
    public class DbPrivilege : Tea.TeaModel {
        public var dbName: String?

        public var privilege: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.privilege != nil {
                map["Privilege"] = self.privilege!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["Privilege"] as? String {
                self.privilege = value
            }
        }
    }
    public var accountName: String?

    public var dbPrivilege: [CreateInstanceAccountRequest.DbPrivilege]?

    public var drdsInstanceId: String?

    public var password: String?

    public override init() {
        super.init()
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
        if self.dbPrivilege != nil {
            var tmp : [Any] = []
            for k in self.dbPrivilege! {
                tmp.append(k.toMap())
            }
            map["DbPrivilege"] = tmp
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DbPrivilege"] as? [Any?] {
            var tmp : [CreateInstanceAccountRequest.DbPrivilege] = []
            for v in value {
                if v != nil {
                    var model = CreateInstanceAccountRequest.DbPrivilege()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbPrivilege = tmp
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class CreateInstanceAccountResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateInstanceInternetAddressRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateInstanceInternetAddressResponseBody : Tea.TeaModel {
    public var code: Int32?

    public var data: Bool?

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
        if let value = dict["Code"] as? Int32 {
            self.code = value
        }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateInstanceInternetAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateInstanceInternetAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateInstanceInternetAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateOrderForRdsRequest : Tea.TeaModel {
    public var params: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class CreateOrderForRdsResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateOrderForRdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateOrderForRdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateOrderForRdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateShardTaskRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var sourceTableName: String?

    public var targetTableName: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceTableName != nil {
            map["SourceTableName"] = self.sourceTableName!
        }
        if self.targetTableName != nil {
            map["TargetTableName"] = self.targetTableName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceTableName"] as? String {
            self.sourceTableName = value
        }
        if let value = dict["TargetTableName"] as? String {
            self.targetTableName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class CreateShardTaskResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateShardTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateShardTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateShardTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackMenuRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeBackMenuResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var menuName: String?

            public var support: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.menuName != nil {
                    map["MenuName"] = self.menuName!
                }
                if self.support != nil {
                    map["Support"] = self.support!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MenuName"] as? String {
                    self.menuName = value
                }
                if let value = dict["Support"] as? Bool {
                    self.support = value
                }
            }
        }
        public var list: [DescribeBackMenuResponseBody.List.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["list"] as? [Any?] {
                var tmp : [DescribeBackMenuResponseBody.List.List] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackMenuResponseBody.List.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var list: DescribeBackMenuResponseBody.List?

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
        try self.list?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            map["List"] = self.list?.toMap()
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
        if let value = dict["List"] as? [String: Any?] {
            var model = DescribeBackMenuResponseBody.List()
            model.fromMap(value)
            self.list = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackMenuResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackMenuResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackMenuResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupDbsRequest : Tea.TeaModel {
    public var backupId: String?

    public var drdsInstanceId: String?

    public var preferredRestoreTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.preferredRestoreTime != nil {
            map["PreferredRestoreTime"] = self.preferredRestoreTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PreferredRestoreTime"] as? String {
            self.preferredRestoreTime = value
        }
    }
}

public class DescribeBackupDbsResponseBody : Tea.TeaModel {
    public class DbNames : Tea.TeaModel {
        public var dbName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["dbName"] = self.dbName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dbName"] as? [String] {
                self.dbName = value
            }
        }
    }
    public var dbNames: DescribeBackupDbsResponseBody.DbNames?

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
        try self.dbNames?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbNames != nil {
            map["DbNames"] = self.dbNames?.toMap()
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
        if let value = dict["DbNames"] as? [String: Any?] {
            var model = DescribeBackupDbsResponseBody.DbNames()
            model.fromMap(value)
            self.dbNames = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupDbsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupLocalRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeBackupLocalResponseBody : Tea.TeaModel {
    public class BackupPolicyDO : Tea.TeaModel {
        public var backupAppName: String?

        public var backupDbName: String?

        public var backupLevel: String?

        public var backupLog: String?

        public var backupMode: String?

        public var backupPolicyMode: String?

        public var backupRetentionPeriod: Int64?

        public var backupType: String?

        public var dataBackupRetentionPeriod: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var highSpaceUsageProtection: Int64?

        public var localLogRetentionHours: Int64?

        public var localLogRetentionSpace: Int64?

        public var logBackupRetentionPeriod: Int64?

        public var nextBackupActuallyTime: String?

        public var preferredBackupPeriod: String?

        public var preferredBackupTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupAppName != nil {
                map["BackupAppName"] = self.backupAppName!
            }
            if self.backupDbName != nil {
                map["BackupDbName"] = self.backupDbName!
            }
            if self.backupLevel != nil {
                map["BackupLevel"] = self.backupLevel!
            }
            if self.backupLog != nil {
                map["BackupLog"] = self.backupLog!
            }
            if self.backupMode != nil {
                map["BackupMode"] = self.backupMode!
            }
            if self.backupPolicyMode != nil {
                map["BackupPolicyMode"] = self.backupPolicyMode!
            }
            if self.backupRetentionPeriod != nil {
                map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.dataBackupRetentionPeriod != nil {
                map["DataBackupRetentionPeriod"] = self.dataBackupRetentionPeriod!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.highSpaceUsageProtection != nil {
                map["HighSpaceUsageProtection"] = self.highSpaceUsageProtection!
            }
            if self.localLogRetentionHours != nil {
                map["LocalLogRetentionHours"] = self.localLogRetentionHours!
            }
            if self.localLogRetentionSpace != nil {
                map["LocalLogRetentionSpace"] = self.localLogRetentionSpace!
            }
            if self.logBackupRetentionPeriod != nil {
                map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
            }
            if self.nextBackupActuallyTime != nil {
                map["NextBackupActuallyTime"] = self.nextBackupActuallyTime!
            }
            if self.preferredBackupPeriod != nil {
                map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
            }
            if self.preferredBackupTime != nil {
                map["PreferredBackupTime"] = self.preferredBackupTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupAppName"] as? String {
                self.backupAppName = value
            }
            if let value = dict["BackupDbName"] as? String {
                self.backupDbName = value
            }
            if let value = dict["BackupLevel"] as? String {
                self.backupLevel = value
            }
            if let value = dict["BackupLog"] as? String {
                self.backupLog = value
            }
            if let value = dict["BackupMode"] as? String {
                self.backupMode = value
            }
            if let value = dict["BackupPolicyMode"] as? String {
                self.backupPolicyMode = value
            }
            if let value = dict["BackupRetentionPeriod"] as? Int64 {
                self.backupRetentionPeriod = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DataBackupRetentionPeriod"] as? Int64 {
                self.dataBackupRetentionPeriod = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["HighSpaceUsageProtection"] as? Int64 {
                self.highSpaceUsageProtection = value
            }
            if let value = dict["LocalLogRetentionHours"] as? Int64 {
                self.localLogRetentionHours = value
            }
            if let value = dict["LocalLogRetentionSpace"] as? Int64 {
                self.localLogRetentionSpace = value
            }
            if let value = dict["LogBackupRetentionPeriod"] as? Int64 {
                self.logBackupRetentionPeriod = value
            }
            if let value = dict["NextBackupActuallyTime"] as? String {
                self.nextBackupActuallyTime = value
            }
            if let value = dict["PreferredBackupPeriod"] as? String {
                self.preferredBackupPeriod = value
            }
            if let value = dict["PreferredBackupTime"] as? String {
                self.preferredBackupTime = value
            }
        }
    }
    public var backupPolicyDO: DescribeBackupLocalResponseBody.BackupPolicyDO?

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
        try self.backupPolicyDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPolicyDO != nil {
            map["BackupPolicyDO"] = self.backupPolicyDO?.toMap()
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
        if let value = dict["BackupPolicyDO"] as? [String: Any?] {
            var model = DescribeBackupLocalResponseBody.BackupPolicyDO()
            model.fromMap(value)
            self.backupPolicyDO = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupLocalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupLocalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupLocalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public class BackupPolicyDO : Tea.TeaModel {
        public var backupAppName: String?

        public var backupDbName: String?

        public var backupLevel: String?

        public var backupLog: String?

        public var backupMode: String?

        public var backupPolicyMode: String?

        public var backupRetentionPeriod: Int64?

        public var backupType: String?

        public var dataBackupRetentionPeriod: Int64?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var highSpaceUsageProtection: Int64?

        public var localLogRetentionHours: Int64?

        public var localLogRetentionSpace: Int64?

        public var logBackupRetentionPeriod: Int64?

        public var nextBackupActuallyTime: String?

        public var preferredBackupPeriod: String?

        public var preferredBackupTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupAppName != nil {
                map["BackupAppName"] = self.backupAppName!
            }
            if self.backupDbName != nil {
                map["BackupDbName"] = self.backupDbName!
            }
            if self.backupLevel != nil {
                map["BackupLevel"] = self.backupLevel!
            }
            if self.backupLog != nil {
                map["BackupLog"] = self.backupLog!
            }
            if self.backupMode != nil {
                map["BackupMode"] = self.backupMode!
            }
            if self.backupPolicyMode != nil {
                map["BackupPolicyMode"] = self.backupPolicyMode!
            }
            if self.backupRetentionPeriod != nil {
                map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
            }
            if self.backupType != nil {
                map["BackupType"] = self.backupType!
            }
            if self.dataBackupRetentionPeriod != nil {
                map["DataBackupRetentionPeriod"] = self.dataBackupRetentionPeriod!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.highSpaceUsageProtection != nil {
                map["HighSpaceUsageProtection"] = self.highSpaceUsageProtection!
            }
            if self.localLogRetentionHours != nil {
                map["LocalLogRetentionHours"] = self.localLogRetentionHours!
            }
            if self.localLogRetentionSpace != nil {
                map["LocalLogRetentionSpace"] = self.localLogRetentionSpace!
            }
            if self.logBackupRetentionPeriod != nil {
                map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
            }
            if self.nextBackupActuallyTime != nil {
                map["NextBackupActuallyTime"] = self.nextBackupActuallyTime!
            }
            if self.preferredBackupPeriod != nil {
                map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
            }
            if self.preferredBackupTime != nil {
                map["PreferredBackupTime"] = self.preferredBackupTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackupAppName"] as? String {
                self.backupAppName = value
            }
            if let value = dict["BackupDbName"] as? String {
                self.backupDbName = value
            }
            if let value = dict["BackupLevel"] as? String {
                self.backupLevel = value
            }
            if let value = dict["BackupLog"] as? String {
                self.backupLog = value
            }
            if let value = dict["BackupMode"] as? String {
                self.backupMode = value
            }
            if let value = dict["BackupPolicyMode"] as? String {
                self.backupPolicyMode = value
            }
            if let value = dict["BackupRetentionPeriod"] as? Int64 {
                self.backupRetentionPeriod = value
            }
            if let value = dict["BackupType"] as? String {
                self.backupType = value
            }
            if let value = dict["DataBackupRetentionPeriod"] as? Int64 {
                self.dataBackupRetentionPeriod = value
            }
            if let value = dict["GmtCreate"] as? Int64 {
                self.gmtCreate = value
            }
            if let value = dict["GmtModified"] as? Int64 {
                self.gmtModified = value
            }
            if let value = dict["HighSpaceUsageProtection"] as? Int64 {
                self.highSpaceUsageProtection = value
            }
            if let value = dict["LocalLogRetentionHours"] as? Int64 {
                self.localLogRetentionHours = value
            }
            if let value = dict["LocalLogRetentionSpace"] as? Int64 {
                self.localLogRetentionSpace = value
            }
            if let value = dict["LogBackupRetentionPeriod"] as? Int64 {
                self.logBackupRetentionPeriod = value
            }
            if let value = dict["NextBackupActuallyTime"] as? String {
                self.nextBackupActuallyTime = value
            }
            if let value = dict["PreferredBackupPeriod"] as? String {
                self.preferredBackupPeriod = value
            }
            if let value = dict["PreferredBackupTime"] as? String {
                self.preferredBackupTime = value
            }
        }
    }
    public var backupPolicyDO: DescribeBackupPolicyResponseBody.BackupPolicyDO?

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
        try self.backupPolicyDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupPolicyDO != nil {
            map["BackupPolicyDO"] = self.backupPolicyDO?.toMap()
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
        if let value = dict["BackupPolicyDO"] as? [String: Any?] {
            var model = DescribeBackupPolicyResponseBody.BackupPolicyDO()
            model.fromMap(value)
            self.backupPolicyDO = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupSetsRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var endTime: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeBackupSetsResponseBody : Tea.TeaModel {
    public class BackupSets : Tea.TeaModel {
        public class BackupSet : Tea.TeaModel {
            public class BackupDbs : Tea.TeaModel {
                public var backupDb: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.backupDb != nil {
                        map["backupDb"] = self.backupDb!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["backupDb"] as? [String] {
                        self.backupDb = value
                    }
                }
            }
            public var backupConsitentTime: String?

            public var backupDbs: DescribeBackupSetsResponseBody.BackupSets.BackupSet.BackupDbs?

            public var backupEndTime: Int64?

            public var backupLevel: String?

            public var backupMode: String?

            public var backupStartTime: Int64?

            public var backupTotalSize: String?

            public var backupType: String?

            public var enableRecovery: Bool?

            public var id: String?

            public var status: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.backupDbs?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupConsitentTime != nil {
                    map["BackupConsitentTime"] = self.backupConsitentTime!
                }
                if self.backupDbs != nil {
                    map["BackupDbs"] = self.backupDbs?.toMap()
                }
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupLevel != nil {
                    map["BackupLevel"] = self.backupLevel!
                }
                if self.backupMode != nil {
                    map["BackupMode"] = self.backupMode!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupTotalSize != nil {
                    map["BackupTotalSize"] = self.backupTotalSize!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                if self.enableRecovery != nil {
                    map["EnableRecovery"] = self.enableRecovery!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BackupConsitentTime"] as? String {
                    self.backupConsitentTime = value
                }
                if let value = dict["BackupDbs"] as? [String: Any?] {
                    var model = DescribeBackupSetsResponseBody.BackupSets.BackupSet.BackupDbs()
                    model.fromMap(value)
                    self.backupDbs = model
                }
                if let value = dict["BackupEndTime"] as? Int64 {
                    self.backupEndTime = value
                }
                if let value = dict["BackupLevel"] as? String {
                    self.backupLevel = value
                }
                if let value = dict["BackupMode"] as? String {
                    self.backupMode = value
                }
                if let value = dict["BackupStartTime"] as? Int64 {
                    self.backupStartTime = value
                }
                if let value = dict["BackupTotalSize"] as? String {
                    self.backupTotalSize = value
                }
                if let value = dict["BackupType"] as? String {
                    self.backupType = value
                }
                if let value = dict["EnableRecovery"] as? Bool {
                    self.enableRecovery = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["Status"] as? Int64 {
                    self.status = value
                }
            }
        }
        public var backupSet: [DescribeBackupSetsResponseBody.BackupSets.BackupSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backupSet != nil {
                var tmp : [Any] = []
                for k in self.backupSet! {
                    tmp.append(k.toMap())
                }
                map["backupSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["backupSet"] as? [Any?] {
                var tmp : [DescribeBackupSetsResponseBody.BackupSets.BackupSet] = []
                for v in value {
                    if v != nil {
                        var model = DescribeBackupSetsResponseBody.BackupSets.BackupSet()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.backupSet = tmp
            }
        }
    }
    public var backupSets: DescribeBackupSetsResponseBody.BackupSets?

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
        try self.backupSets?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupSets != nil {
            map["BackupSets"] = self.backupSets?.toMap()
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
        if let value = dict["BackupSets"] as? [String: Any?] {
            var model = DescribeBackupSetsResponseBody.BackupSets()
            model.fromMap(value)
            self.backupSets = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupSetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupSetsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupSetsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBackupTimesRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeBackupTimesResponseBody : Tea.TeaModel {
    public class RestoreTime : Tea.TeaModel {
        public var endTime: String?

        public var startTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endTime != nil {
                map["EndTime"] = self.endTime!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EndTime"] as? String {
                self.endTime = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
        }
    }
    public var requestId: String?

    public var restoreTime: DescribeBackupTimesResponseBody.RestoreTime?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreTime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreTime"] as? [String: Any?] {
            var model = DescribeBackupTimesResponseBody.RestoreTime()
            model.fromMap(value)
            self.restoreTime = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeBackupTimesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupTimesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupTimesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBroadcastTablesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeBroadcastTablesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var broadcast: Bool?

        public var broadcastType: String?

        public var dbInstType: Int32?

        public var isShard: Bool?

        public var status: Int32?

        public var table: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.broadcast != nil {
                map["Broadcast"] = self.broadcast!
            }
            if self.broadcastType != nil {
                map["BroadcastType"] = self.broadcastType!
            }
            if self.dbInstType != nil {
                map["DbInstType"] = self.dbInstType!
            }
            if self.isShard != nil {
                map["IsShard"] = self.isShard!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Broadcast"] as? Bool {
                self.broadcast = value
            }
            if let value = dict["BroadcastType"] as? String {
                self.broadcastType = value
            }
            if let value = dict["DbInstType"] as? Int32 {
                self.dbInstType = value
            }
            if let value = dict["IsShard"] as? Bool {
                self.isShard = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Table"] as? String {
                self.table = value
            }
        }
    }
    public var isShard: Bool?

    public var list: [DescribeBroadcastTablesResponseBody.List]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isShard != nil {
            map["IsShard"] = self.isShard!
        }
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["IsShard"] as? Bool {
            self.isShard = value
        }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DescribeBroadcastTablesResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = DescribeBroadcastTablesResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeBroadcastTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBroadcastTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBroadcastTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDbInstanceDbsRequest : Tea.TeaModel {
    public var accountName: String?

    public var dbInstType: String?

    public var dbInstanceId: String?

    public var drdsInstanceId: String?

    public var password: String?

    public override init() {
        super.init()
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
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
    }
}

public class DescribeDbInstanceDbsResponseBody : Tea.TeaModel {
    public class Databases : Tea.TeaModel {
        public class Database : Tea.TeaModel {
            public var dbName: String?

            public var description_: String?

            public var status: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbName"] as? String {
                    self.dbName = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Status"] as? Int32 {
                    self.status = value
                }
            }
        }
        public var database: [DescribeDbInstanceDbsResponseBody.Databases.Database]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.database != nil {
                var tmp : [Any] = []
                for k in self.database! {
                    tmp.append(k.toMap())
                }
                map["Database"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Database"] as? [Any?] {
                var tmp : [DescribeDbInstanceDbsResponseBody.Databases.Database] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDbInstanceDbsResponseBody.Databases.Database()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.database = tmp
            }
        }
    }
    public var databases: DescribeDbInstanceDbsResponseBody.Databases?

    public var requestId: String?

    public var success: Bool?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.databases?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.databases != nil {
            map["Databases"] = self.databases?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Databases"] as? [String: Any?] {
            var model = DescribeDbInstanceDbsResponseBody.Databases()
            model.fromMap(value)
            self.databases = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
        }
    }
}

public class DescribeDbInstanceDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDbInstanceDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDbInstanceDbsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDbInstancesRequest : Tea.TeaModel {
    public var dbInstType: String?

    public var drdsInstanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var search: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.search != nil {
            map["Search"] = self.search!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Search"] as? String {
            self.search = value
        }
    }
}

public class DescribeDbInstancesResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class DBInstance : Tea.TeaModel {
            public class ReadOnlyDBInstanceId : Tea.TeaModel {
                public var readOnlyDBInstanceId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.readOnlyDBInstanceId != nil {
                        map["ReadOnlyDBInstanceId"] = self.readOnlyDBInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ReadOnlyDBInstanceId"] as? [String] {
                        self.readOnlyDBInstanceId = value
                    }
                }
            }
            public var allowAllCategory: Bool?

            public var DBInstanceDescription: String?

            public var DBInstanceId: String?

            public var DBInstanceStatus: Int32?

            public var DBInstanceType: String?

            public var engine: String?

            public var engineVersion: String?

            public var instanceNetworkType: String?

            public var readOnlyDBInstanceId: DescribeDbInstancesResponseBody.Items.DBInstance.ReadOnlyDBInstanceId?

            public var regionId: String?

            public var zoneId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.readOnlyDBInstanceId?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowAllCategory != nil {
                    map["AllowAllCategory"] = self.allowAllCategory!
                }
                if self.DBInstanceDescription != nil {
                    map["DBInstanceDescription"] = self.DBInstanceDescription!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.DBInstanceType != nil {
                    map["DBInstanceType"] = self.DBInstanceType!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.instanceNetworkType != nil {
                    map["InstanceNetworkType"] = self.instanceNetworkType!
                }
                if self.readOnlyDBInstanceId != nil {
                    map["ReadOnlyDBInstanceId"] = self.readOnlyDBInstanceId?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowAllCategory"] as? Bool {
                    self.allowAllCategory = value
                }
                if let value = dict["DBInstanceDescription"] as? String {
                    self.DBInstanceDescription = value
                }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["DBInstanceStatus"] as? Int32 {
                    self.DBInstanceStatus = value
                }
                if let value = dict["DBInstanceType"] as? String {
                    self.DBInstanceType = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["InstanceNetworkType"] as? String {
                    self.instanceNetworkType = value
                }
                if let value = dict["ReadOnlyDBInstanceId"] as? [String: Any?] {
                    var model = DescribeDbInstancesResponseBody.Items.DBInstance.ReadOnlyDBInstanceId()
                    model.fromMap(value)
                    self.readOnlyDBInstanceId = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
            }
        }
        public var DBInstance: [DescribeDbInstancesResponseBody.Items.DBInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstance != nil {
                var tmp : [Any] = []
                for k in self.DBInstance! {
                    tmp.append(k.toMap())
                }
                map["DBInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstance"] as? [Any?] {
                var tmp : [DescribeDbInstancesResponseBody.Items.DBInstance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDbInstancesResponseBody.Items.DBInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.DBInstance = tmp
            }
        }
    }
    public var items: DescribeDbInstancesResponseBody.Items?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeDbInstancesResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDbInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDbInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDbInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDBRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var dbInstType: String?

        public var dbName: String?

        public var instRole: String?

        public var mode: String?

        public var schema: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dbInstType != nil {
                map["DbInstType"] = self.dbInstType!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.instRole != nil {
                map["InstRole"] = self.instRole!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.schema != nil {
                map["Schema"] = self.schema!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["DbInstType"] as? String {
                self.dbInstType = value
            }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["InstRole"] as? String {
                self.instRole = value
            }
            if let value = dict["Mode"] as? String {
                self.mode = value
            }
            if let value = dict["Schema"] as? String {
                self.schema = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
        }
    }
    public var data: DescribeDrdsDBResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDrdsDBResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDBResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDBClusterRequest : Tea.TeaModel {
    public var dbInstanceId: String?

    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsDBClusterResponseBody : Tea.TeaModel {
    public class DbInstance : Tea.TeaModel {
        public class DBNodes : Tea.TeaModel {
            public class DBNode : Tea.TeaModel {
                public var DBNodeId: String?

                public var DBNodeRole: String?

                public var DBNodeStatus: String?

                public var zoneId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.DBNodeId != nil {
                        map["DBNodeId"] = self.DBNodeId!
                    }
                    if self.DBNodeRole != nil {
                        map["DBNodeRole"] = self.DBNodeRole!
                    }
                    if self.DBNodeStatus != nil {
                        map["DBNodeStatus"] = self.DBNodeStatus!
                    }
                    if self.zoneId != nil {
                        map["ZoneId"] = self.zoneId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DBNodeId"] as? String {
                        self.DBNodeId = value
                    }
                    if let value = dict["DBNodeRole"] as? String {
                        self.DBNodeRole = value
                    }
                    if let value = dict["DBNodeStatus"] as? String {
                        self.DBNodeStatus = value
                    }
                    if let value = dict["ZoneId"] as? String {
                        self.zoneId = value
                    }
                }
            }
            public var DBNode: [DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes.DBNode]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DBNode != nil {
                    var tmp : [Any] = []
                    for k in self.DBNode! {
                        tmp.append(k.toMap())
                    }
                    map["DBNode"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DBNode"] as? [Any?] {
                    var tmp : [DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes.DBNode] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes.DBNode()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.DBNode = tmp
                }
            }
        }
        public class Endpoints : Tea.TeaModel {
            public class Endpoint : Tea.TeaModel {
                public var endpointId: String?

                public var nodeIds: String?

                public var readWeight: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.endpointId != nil {
                        map["EndpointId"] = self.endpointId!
                    }
                    if self.nodeIds != nil {
                        map["NodeIds"] = self.nodeIds!
                    }
                    if self.readWeight != nil {
                        map["ReadWeight"] = self.readWeight!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EndpointId"] as? String {
                        self.endpointId = value
                    }
                    if let value = dict["NodeIds"] as? String {
                        self.nodeIds = value
                    }
                    if let value = dict["ReadWeight"] as? Int32 {
                        self.readWeight = value
                    }
                }
            }
            public var endpoint: [DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints.Endpoint]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.endpoint != nil {
                    var tmp : [Any] = []
                    for k in self.endpoint! {
                        tmp.append(k.toMap())
                    }
                    map["Endpoint"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Endpoint"] as? [Any?] {
                    var tmp : [DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints.Endpoint] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints.Endpoint()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.endpoint = tmp
                }
            }
        }
        public var DBInstanceId: String?

        public var DBInstanceStatus: String?

        public var DBNodes: DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes?

        public var dbInstType: String?

        public var endpoints: DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints?

        public var engine: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var networkType: String?

        public var payType: String?

        public var port: Int32?

        public var rdsInstType: String?

        public var readMode: String?

        public var remainDays: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.DBNodes?.validate()
            try self.endpoints?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBInstanceStatus != nil {
                map["DBInstanceStatus"] = self.DBInstanceStatus!
            }
            if self.DBNodes != nil {
                map["DBNodes"] = self.DBNodes?.toMap()
            }
            if self.dbInstType != nil {
                map["DbInstType"] = self.dbInstType!
            }
            if self.endpoints != nil {
                map["Endpoints"] = self.endpoints?.toMap()
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.rdsInstType != nil {
                map["RdsInstType"] = self.rdsInstType!
            }
            if self.readMode != nil {
                map["ReadMode"] = self.readMode!
            }
            if self.remainDays != nil {
                map["RemainDays"] = self.remainDays!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DBInstanceStatus"] as? String {
                self.DBInstanceStatus = value
            }
            if let value = dict["DBNodes"] as? [String: Any?] {
                var model = DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes()
                model.fromMap(value)
                self.DBNodes = model
            }
            if let value = dict["DbInstType"] as? String {
                self.dbInstType = value
            }
            if let value = dict["Endpoints"] as? [String: Any?] {
                var model = DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints()
                model.fromMap(value)
                self.endpoints = model
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["RdsInstType"] as? String {
                self.rdsInstType = value
            }
            if let value = dict["ReadMode"] as? String {
                self.readMode = value
            }
            if let value = dict["RemainDays"] as? String {
                self.remainDays = value
            }
        }
    }
    public var dbInstance: DescribeDrdsDBClusterResponseBody.DbInstance?

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
        try self.dbInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstance != nil {
            map["DbInstance"] = self.dbInstance?.toMap()
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
        if let value = dict["DbInstance"] as? [String: Any?] {
            var model = DescribeDrdsDBClusterResponseBody.DbInstance()
            model.fromMap(value)
            self.dbInstance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsDBClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDBClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDBClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDBIpWhiteListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var groupName: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsDBIpWhiteListResponseBody : Tea.TeaModel {
    public class IpWhiteList : Tea.TeaModel {
        public var ip: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Ip"] as? [String] {
                self.ip = value
            }
        }
    }
    public var ipWhiteList: DescribeDrdsDBIpWhiteListResponseBody.IpWhiteList?

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
        try self.ipWhiteList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ipWhiteList != nil {
            map["IpWhiteList"] = self.ipWhiteList?.toMap()
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
        if let value = dict["IpWhiteList"] as? [String: Any?] {
            var model = DescribeDrdsDBIpWhiteListResponseBody.IpWhiteList()
            model.fromMap(value)
            self.ipWhiteList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsDBIpWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDBIpWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDBIpWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDBsRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsDBsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Db : Tea.TeaModel {
            public var createTime: String?

            public var dbInstType: String?

            public var dbName: String?

            public var mode: String?

            public var schema: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dbInstType != nil {
                    map["DbInstType"] = self.dbInstType!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DbInstType"] as? String {
                    self.dbInstType = value
                }
                if let value = dict["DbName"] as? String {
                    self.dbName = value
                }
                if let value = dict["Mode"] as? String {
                    self.mode = value
                }
                if let value = dict["Schema"] as? String {
                    self.schema = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
            }
        }
        public var db: [DescribeDrdsDBsResponseBody.Data.Db]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.db != nil {
                var tmp : [Any] = []
                for k in self.db! {
                    tmp.append(k.toMap())
                }
                map["Db"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Db"] as? [Any?] {
                var tmp : [DescribeDrdsDBsResponseBody.Data.Db] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsDBsResponseBody.Data.Db()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.db = tmp
            }
        }
    }
    public var data: DescribeDrdsDBsResponseBody.Data?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: Bool?

    public var total: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDrdsDBsResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
        }
    }
}

public class DescribeDrdsDBsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDBsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDBsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDbInstanceRequest : Tea.TeaModel {
    public var dbInstanceId: String?

    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsDbInstanceResponseBody : Tea.TeaModel {
    public class DbInstance : Tea.TeaModel {
        public class ReadOnlyInstances : Tea.TeaModel {
            public class ReadOnlyInstance : Tea.TeaModel {
                public var connectUrl: String?

                public var DBInstanceId: String?

                public var DBInstanceStatus: String?

                public var dbInstType: String?

                public var dmInstanceId: String?

                public var engine: String?

                public var engineVersion: String?

                public var expireTime: String?

                public var networkType: String?

                public var payType: String?

                public var port: Int32?

                public var rdsInstType: String?

                public var readWeight: Int32?

                public var remainDays: String?

                public var versionAction: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connectUrl != nil {
                        map["ConnectUrl"] = self.connectUrl!
                    }
                    if self.DBInstanceId != nil {
                        map["DBInstanceId"] = self.DBInstanceId!
                    }
                    if self.DBInstanceStatus != nil {
                        map["DBInstanceStatus"] = self.DBInstanceStatus!
                    }
                    if self.dbInstType != nil {
                        map["DbInstType"] = self.dbInstType!
                    }
                    if self.dmInstanceId != nil {
                        map["DmInstanceId"] = self.dmInstanceId!
                    }
                    if self.engine != nil {
                        map["Engine"] = self.engine!
                    }
                    if self.engineVersion != nil {
                        map["EngineVersion"] = self.engineVersion!
                    }
                    if self.expireTime != nil {
                        map["ExpireTime"] = self.expireTime!
                    }
                    if self.networkType != nil {
                        map["NetworkType"] = self.networkType!
                    }
                    if self.payType != nil {
                        map["PayType"] = self.payType!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.rdsInstType != nil {
                        map["RdsInstType"] = self.rdsInstType!
                    }
                    if self.readWeight != nil {
                        map["ReadWeight"] = self.readWeight!
                    }
                    if self.remainDays != nil {
                        map["RemainDays"] = self.remainDays!
                    }
                    if self.versionAction != nil {
                        map["VersionAction"] = self.versionAction!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ConnectUrl"] as? String {
                        self.connectUrl = value
                    }
                    if let value = dict["DBInstanceId"] as? String {
                        self.DBInstanceId = value
                    }
                    if let value = dict["DBInstanceStatus"] as? String {
                        self.DBInstanceStatus = value
                    }
                    if let value = dict["DbInstType"] as? String {
                        self.dbInstType = value
                    }
                    if let value = dict["DmInstanceId"] as? String {
                        self.dmInstanceId = value
                    }
                    if let value = dict["Engine"] as? String {
                        self.engine = value
                    }
                    if let value = dict["EngineVersion"] as? String {
                        self.engineVersion = value
                    }
                    if let value = dict["ExpireTime"] as? String {
                        self.expireTime = value
                    }
                    if let value = dict["NetworkType"] as? String {
                        self.networkType = value
                    }
                    if let value = dict["PayType"] as? String {
                        self.payType = value
                    }
                    if let value = dict["Port"] as? Int32 {
                        self.port = value
                    }
                    if let value = dict["RdsInstType"] as? String {
                        self.rdsInstType = value
                    }
                    if let value = dict["ReadWeight"] as? Int32 {
                        self.readWeight = value
                    }
                    if let value = dict["RemainDays"] as? String {
                        self.remainDays = value
                    }
                    if let value = dict["VersionAction"] as? Int32 {
                        self.versionAction = value
                    }
                }
            }
            public var readOnlyInstance: [DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances.ReadOnlyInstance]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.readOnlyInstance != nil {
                    var tmp : [Any] = []
                    for k in self.readOnlyInstance! {
                        tmp.append(k.toMap())
                    }
                    map["ReadOnlyInstance"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ReadOnlyInstance"] as? [Any?] {
                    var tmp : [DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances.ReadOnlyInstance] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances.ReadOnlyInstance()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.readOnlyInstance = tmp
                }
            }
        }
        public var connectUrl: String?

        public var DBInstanceId: String?

        public var DBInstanceStatus: String?

        public var dbInstType: String?

        public var dmInstanceId: String?

        public var engine: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var networkType: String?

        public var payType: String?

        public var port: Int32?

        public var rdsInstType: String?

        public var readOnlyInstances: DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances?

        public var readWeight: Int32?

        public var remainDays: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.readOnlyInstances?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectUrl != nil {
                map["ConnectUrl"] = self.connectUrl!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBInstanceStatus != nil {
                map["DBInstanceStatus"] = self.DBInstanceStatus!
            }
            if self.dbInstType != nil {
                map["DbInstType"] = self.dbInstType!
            }
            if self.dmInstanceId != nil {
                map["DmInstanceId"] = self.dmInstanceId!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.rdsInstType != nil {
                map["RdsInstType"] = self.rdsInstType!
            }
            if self.readOnlyInstances != nil {
                map["ReadOnlyInstances"] = self.readOnlyInstances?.toMap()
            }
            if self.readWeight != nil {
                map["ReadWeight"] = self.readWeight!
            }
            if self.remainDays != nil {
                map["RemainDays"] = self.remainDays!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ConnectUrl"] as? String {
                self.connectUrl = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DBInstanceStatus"] as? String {
                self.DBInstanceStatus = value
            }
            if let value = dict["DbInstType"] as? String {
                self.dbInstType = value
            }
            if let value = dict["DmInstanceId"] as? String {
                self.dmInstanceId = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpireTime"] as? String {
                self.expireTime = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["PayType"] as? String {
                self.payType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
            if let value = dict["RdsInstType"] as? String {
                self.rdsInstType = value
            }
            if let value = dict["ReadOnlyInstances"] as? [String: Any?] {
                var model = DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances()
                model.fromMap(value)
                self.readOnlyInstances = model
            }
            if let value = dict["ReadWeight"] as? Int32 {
                self.readWeight = value
            }
            if let value = dict["RemainDays"] as? String {
                self.remainDays = value
            }
        }
    }
    public var dbInstance: DescribeDrdsDbInstanceResponseBody.DbInstance?

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
        try self.dbInstance?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstance != nil {
            map["DbInstance"] = self.dbInstance?.toMap()
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
        if let value = dict["DbInstance"] as? [String: Any?] {
            var model = DescribeDrdsDbInstanceResponseBody.DbInstance()
            model.fromMap(value)
            self.dbInstance = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsDbInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDbInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDbInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDbInstancesRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
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
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class DescribeDrdsDbInstancesResponseBody : Tea.TeaModel {
    public class DbInstances : Tea.TeaModel {
        public class DbInstance : Tea.TeaModel {
            public class ReadOnlyInstances : Tea.TeaModel {
                public class ReadOnlyInstance : Tea.TeaModel {
                    public var connectUrl: String?

                    public var DBInstanceStatus: String?

                    public var dbInstType: String?

                    public var dmInstanceId: String?

                    public var engine: String?

                    public var engineVersion: String?

                    public var expireTime: String?

                    public var instanceName: String?

                    public var networkType: String?

                    public var payType: String?

                    public var port: Int32?

                    public var rdsInstType: String?

                    public var readWeight: Int32?

                    public var remainDays: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.connectUrl != nil {
                            map["ConnectUrl"] = self.connectUrl!
                        }
                        if self.DBInstanceStatus != nil {
                            map["DBInstanceStatus"] = self.DBInstanceStatus!
                        }
                        if self.dbInstType != nil {
                            map["DbInstType"] = self.dbInstType!
                        }
                        if self.dmInstanceId != nil {
                            map["DmInstanceId"] = self.dmInstanceId!
                        }
                        if self.engine != nil {
                            map["Engine"] = self.engine!
                        }
                        if self.engineVersion != nil {
                            map["EngineVersion"] = self.engineVersion!
                        }
                        if self.expireTime != nil {
                            map["ExpireTime"] = self.expireTime!
                        }
                        if self.instanceName != nil {
                            map["InstanceName"] = self.instanceName!
                        }
                        if self.networkType != nil {
                            map["NetworkType"] = self.networkType!
                        }
                        if self.payType != nil {
                            map["PayType"] = self.payType!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.rdsInstType != nil {
                            map["RdsInstType"] = self.rdsInstType!
                        }
                        if self.readWeight != nil {
                            map["ReadWeight"] = self.readWeight!
                        }
                        if self.remainDays != nil {
                            map["RemainDays"] = self.remainDays!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["ConnectUrl"] as? String {
                            self.connectUrl = value
                        }
                        if let value = dict["DBInstanceStatus"] as? String {
                            self.DBInstanceStatus = value
                        }
                        if let value = dict["DbInstType"] as? String {
                            self.dbInstType = value
                        }
                        if let value = dict["DmInstanceId"] as? String {
                            self.dmInstanceId = value
                        }
                        if let value = dict["Engine"] as? String {
                            self.engine = value
                        }
                        if let value = dict["EngineVersion"] as? String {
                            self.engineVersion = value
                        }
                        if let value = dict["ExpireTime"] as? String {
                            self.expireTime = value
                        }
                        if let value = dict["InstanceName"] as? String {
                            self.instanceName = value
                        }
                        if let value = dict["NetworkType"] as? String {
                            self.networkType = value
                        }
                        if let value = dict["PayType"] as? String {
                            self.payType = value
                        }
                        if let value = dict["Port"] as? Int32 {
                            self.port = value
                        }
                        if let value = dict["RdsInstType"] as? String {
                            self.rdsInstType = value
                        }
                        if let value = dict["ReadWeight"] as? Int32 {
                            self.readWeight = value
                        }
                        if let value = dict["RemainDays"] as? Int32 {
                            self.remainDays = value
                        }
                    }
                }
                public var readOnlyInstance: [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances.ReadOnlyInstance]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.readOnlyInstance != nil {
                        var tmp : [Any] = []
                        for k in self.readOnlyInstance! {
                            tmp.append(k.toMap())
                        }
                        map["ReadOnlyInstance"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ReadOnlyInstance"] as? [Any?] {
                        var tmp : [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances.ReadOnlyInstance] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances.ReadOnlyInstance()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.readOnlyInstance = tmp
                    }
                }
            }
            public var connectUrl: String?

            public var DBInstanceId: String?

            public var DBInstanceStatus: String?

            public var dbInstType: String?

            public var dmInstanceId: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var networkType: String?

            public var payType: String?

            public var port: Int32?

            public var rdsInstType: String?

            public var readOnlyInstances: DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances?

            public var readWeight: Int32?

            public var remainDays: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.readOnlyInstances?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectUrl != nil {
                    map["ConnectUrl"] = self.connectUrl!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.dbInstType != nil {
                    map["DbInstType"] = self.dbInstType!
                }
                if self.dmInstanceId != nil {
                    map["DmInstanceId"] = self.dmInstanceId!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.rdsInstType != nil {
                    map["RdsInstType"] = self.rdsInstType!
                }
                if self.readOnlyInstances != nil {
                    map["ReadOnlyInstances"] = self.readOnlyInstances?.toMap()
                }
                if self.readWeight != nil {
                    map["ReadWeight"] = self.readWeight!
                }
                if self.remainDays != nil {
                    map["RemainDays"] = self.remainDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectUrl"] as? String {
                    self.connectUrl = value
                }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["DBInstanceStatus"] as? String {
                    self.DBInstanceStatus = value
                }
                if let value = dict["DbInstType"] as? String {
                    self.dbInstType = value
                }
                if let value = dict["DmInstanceId"] as? String {
                    self.dmInstanceId = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["ExpireTime"] as? String {
                    self.expireTime = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["RdsInstType"] as? String {
                    self.rdsInstType = value
                }
                if let value = dict["ReadOnlyInstances"] as? [String: Any?] {
                    var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances()
                    model.fromMap(value)
                    self.readOnlyInstances = model
                }
                if let value = dict["ReadWeight"] as? Int32 {
                    self.readWeight = value
                }
                if let value = dict["RemainDays"] as? Int32 {
                    self.remainDays = value
                }
            }
        }
        public var dbInstance: [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbInstance != nil {
                var tmp : [Any] = []
                for k in self.dbInstance! {
                    tmp.append(k.toMap())
                }
                map["DbInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbInstance"] as? [Any?] {
                var tmp : [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dbInstance = tmp
            }
        }
    }
    public var dbInstances: DescribeDrdsDbInstancesResponseBody.DbInstances?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: Bool?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dbInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstances != nil {
            map["DbInstances"] = self.dbInstances?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstances"] as? [String: Any?] {
            var model = DescribeDrdsDbInstancesResponseBody.DbInstances()
            model.fromMap(value)
            self.dbInstances = model
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
        }
    }
}

public class DescribeDrdsDbInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDbInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDbInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsDbRdsNameListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsDbRdsNameListResponseBody : Tea.TeaModel {
    public class InstanceNameList : Tea.TeaModel {
        public var instanceName: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceName"] as? [String] {
                self.instanceName = value
            }
        }
    }
    public var instanceNameList: DescribeDrdsDbRdsNameListResponseBody.InstanceNameList?

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
        try self.instanceNameList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceNameList != nil {
            map["InstanceNameList"] = self.instanceNameList?.toMap()
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
        if let value = dict["InstanceNameList"] as? [String: Any?] {
            var model = DescribeDrdsDbRdsNameListResponseBody.InstanceNameList()
            model.fromMap(value)
            self.instanceNameList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsDbRdsNameListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsDbRdsNameListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsDbRdsNameListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ReadOnlyDBInstanceIds : Tea.TeaModel {
            public var readOnlyDBInstanceId: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.readOnlyDBInstanceId != nil {
                    map["ReadOnlyDBInstanceId"] = self.readOnlyDBInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ReadOnlyDBInstanceId"] as? [String] {
                    self.readOnlyDBInstanceId = value
                }
            }
        }
        public class Vips : Tea.TeaModel {
            public class Vip : Tea.TeaModel {
                public var dns: String?

                public var expireDays: Int64?

                public var port: String?

                public var removeWeight: Bool?

                public var type: String?

                public var vpcId: String?

                public var vswitchId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dns != nil {
                        map["Dns"] = self.dns!
                    }
                    if self.expireDays != nil {
                        map["ExpireDays"] = self.expireDays!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.removeWeight != nil {
                        map["RemoveWeight"] = self.removeWeight!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    if self.vswitchId != nil {
                        map["VswitchId"] = self.vswitchId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Dns"] as? String {
                        self.dns = value
                    }
                    if let value = dict["ExpireDays"] as? Int64 {
                        self.expireDays = value
                    }
                    if let value = dict["Port"] as? String {
                        self.port = value
                    }
                    if let value = dict["RemoveWeight"] as? Bool {
                        self.removeWeight = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                    if let value = dict["VswitchId"] as? String {
                        self.vswitchId = value
                    }
                }
            }
            public var vip: [DescribeDrdsInstanceResponseBody.Data.Vips.Vip]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vip != nil {
                    var tmp : [Any] = []
                    for k in self.vip! {
                        tmp.append(k.toMap())
                    }
                    map["Vip"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Vip"] as? [Any?] {
                    var tmp : [DescribeDrdsInstanceResponseBody.Data.Vips.Vip] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeDrdsInstanceResponseBody.Data.Vips.Vip()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.vip = tmp
                }
            }
        }
        public var commodityCode: String?

        public var createTime: Int64?

        public var description_: String?

        public var drdsInstanceId: String?

        public var expireDate: Int64?

        public var instRole: String?

        public var instanceSeries: String?

        public var instanceSpec: String?

        public var label: String?

        public var machineType: String?

        public var masterInstanceId: String?

        public var mysqlVersion: Int32?

        public var networkType: String?

        public var orderInstanceId: String?

        public var productVersion: String?

        public var readOnlyDBInstanceIds: DescribeDrdsInstanceResponseBody.Data.ReadOnlyDBInstanceIds?

        public var regionId: String?

        public var resourceGroupId: String?

        public var status: String?

        public var storageType: String?

        public var type: String?

        public var version: Int64?

        public var versionAction: String?

        public var vips: DescribeDrdsInstanceResponseBody.Data.Vips?

        public var vpcCloudInstanceId: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.readOnlyDBInstanceIds?.validate()
            try self.vips?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.drdsInstanceId != nil {
                map["DrdsInstanceId"] = self.drdsInstanceId!
            }
            if self.expireDate != nil {
                map["ExpireDate"] = self.expireDate!
            }
            if self.instRole != nil {
                map["InstRole"] = self.instRole!
            }
            if self.instanceSeries != nil {
                map["InstanceSeries"] = self.instanceSeries!
            }
            if self.instanceSpec != nil {
                map["InstanceSpec"] = self.instanceSpec!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.machineType != nil {
                map["MachineType"] = self.machineType!
            }
            if self.masterInstanceId != nil {
                map["MasterInstanceId"] = self.masterInstanceId!
            }
            if self.mysqlVersion != nil {
                map["MysqlVersion"] = self.mysqlVersion!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.orderInstanceId != nil {
                map["OrderInstanceId"] = self.orderInstanceId!
            }
            if self.productVersion != nil {
                map["ProductVersion"] = self.productVersion!
            }
            if self.readOnlyDBInstanceIds != nil {
                map["ReadOnlyDBInstanceIds"] = self.readOnlyDBInstanceIds?.toMap()
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.versionAction != nil {
                map["VersionAction"] = self.versionAction!
            }
            if self.vips != nil {
                map["Vips"] = self.vips?.toMap()
            }
            if self.vpcCloudInstanceId != nil {
                map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CommodityCode"] as? String {
                self.commodityCode = value
            }
            if let value = dict["CreateTime"] as? Int64 {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["DrdsInstanceId"] as? String {
                self.drdsInstanceId = value
            }
            if let value = dict["ExpireDate"] as? Int64 {
                self.expireDate = value
            }
            if let value = dict["InstRole"] as? String {
                self.instRole = value
            }
            if let value = dict["InstanceSeries"] as? String {
                self.instanceSeries = value
            }
            if let value = dict["InstanceSpec"] as? String {
                self.instanceSpec = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["MachineType"] as? String {
                self.machineType = value
            }
            if let value = dict["MasterInstanceId"] as? String {
                self.masterInstanceId = value
            }
            if let value = dict["MysqlVersion"] as? Int32 {
                self.mysqlVersion = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["OrderInstanceId"] as? String {
                self.orderInstanceId = value
            }
            if let value = dict["ProductVersion"] as? String {
                self.productVersion = value
            }
            if let value = dict["ReadOnlyDBInstanceIds"] as? [String: Any?] {
                var model = DescribeDrdsInstanceResponseBody.Data.ReadOnlyDBInstanceIds()
                model.fromMap(value)
                self.readOnlyDBInstanceIds = model
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Version"] as? Int64 {
                self.version = value
            }
            if let value = dict["VersionAction"] as? String {
                self.versionAction = value
            }
            if let value = dict["Vips"] as? [String: Any?] {
                var model = DescribeDrdsInstanceResponseBody.Data.Vips()
                model.fromMap(value)
                self.vips = model
            }
            if let value = dict["VpcCloudInstanceId"] as? String {
                self.vpcCloudInstanceId = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var data: DescribeDrdsInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDrdsInstanceResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceDbMonitorRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var endTime: Int64?

    public var key: String?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDrdsInstanceDbMonitorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var date: Int64?

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
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? Int64 {
                    self.date = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var key: String?

        public var unit: String?

        public var values: [DescribeDrdsInstanceDbMonitorResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data.Values] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsInstanceDbMonitorResponseBody.Data.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var data: [DescribeDrdsInstanceDbMonitorResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDrdsInstanceDbMonitorResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsInstanceDbMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceDbMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceDbMonitorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceLevelTasksRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsInstanceLevelTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var allowCancel: Bool?

            public var errMsg: String?

            public var gmtCreate: Int64?

            public var progress: Int32?

            public var progressDescription: String?

            public var showProgress: Bool?

            public var targetId: Int64?

            public var taskName: String?

            public var taskPhase: String?

            public var taskStatus: Int32?

            public var taskType: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allowCancel != nil {
                    map["AllowCancel"] = self.allowCancel!
                }
                if self.errMsg != nil {
                    map["ErrMsg"] = self.errMsg!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.progressDescription != nil {
                    map["ProgressDescription"] = self.progressDescription!
                }
                if self.showProgress != nil {
                    map["ShowProgress"] = self.showProgress!
                }
                if self.targetId != nil {
                    map["TargetId"] = self.targetId!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskPhase != nil {
                    map["TaskPhase"] = self.taskPhase!
                }
                if self.taskStatus != nil {
                    map["TaskStatus"] = self.taskStatus!
                }
                if self.taskType != nil {
                    map["TaskType"] = self.taskType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllowCancel"] as? Bool {
                    self.allowCancel = value
                }
                if let value = dict["ErrMsg"] as? String {
                    self.errMsg = value
                }
                if let value = dict["GmtCreate"] as? Int64 {
                    self.gmtCreate = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["ProgressDescription"] as? String {
                    self.progressDescription = value
                }
                if let value = dict["ShowProgress"] as? Bool {
                    self.showProgress = value
                }
                if let value = dict["TargetId"] as? Int64 {
                    self.targetId = value
                }
                if let value = dict["TaskName"] as? String {
                    self.taskName = value
                }
                if let value = dict["TaskPhase"] as? String {
                    self.taskPhase = value
                }
                if let value = dict["TaskStatus"] as? Int32 {
                    self.taskStatus = value
                }
                if let value = dict["TaskType"] as? Int32 {
                    self.taskType = value
                }
            }
        }
        public var task: [DescribeDrdsInstanceLevelTasksResponseBody.Tasks.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["Task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Task"] as? [Any?] {
                var tmp : [DescribeDrdsInstanceLevelTasksResponseBody.Tasks.Task] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsInstanceLevelTasksResponseBody.Tasks.Task()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.task = tmp
            }
        }
    }
    public var requestId: String?

    public var success: Bool?

    public var tasks: DescribeDrdsInstanceLevelTasksResponseBody.Tasks?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tasks != nil {
            map["Tasks"] = self.tasks?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tasks"] as? [String: Any?] {
            var model = DescribeDrdsInstanceLevelTasksResponseBody.Tasks()
            model.fromMap(value)
            self.tasks = model
        }
    }
}

public class DescribeDrdsInstanceLevelTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceLevelTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceLevelTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceMonitorRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var endTime: Int64?

    public var key: String?

    public var periodMultiple: Int32?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.periodMultiple != nil {
            map["PeriodMultiple"] = self.periodMultiple!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Key"] as? String {
            self.key = value
        }
        if let value = dict["PeriodMultiple"] as? Int32 {
            self.periodMultiple = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDrdsInstanceMonitorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var date: Int64?

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
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? Int64 {
                    self.date = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var key: String?

        public var nodeNum: Int32?

        public var unit: String?

        public var values: [DescribeDrdsInstanceMonitorResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["NodeNum"] as? Int32 {
                self.nodeNum = value
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data.Values] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsInstanceMonitorResponseBody.Data.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var data: [DescribeDrdsInstanceMonitorResponseBody.Data]?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeDrdsInstanceMonitorResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeDrdsInstanceMonitorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceMonitorResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceMonitorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceVersionRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsInstanceVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var instanceVersion: String?

        public var newestVersion: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceVersion != nil {
                map["InstanceVersion"] = self.instanceVersion!
            }
            if self.newestVersion != nil {
                map["NewestVersion"] = self.newestVersion!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceVersion"] as? String {
                self.instanceVersion = value
            }
            if let value = dict["NewestVersion"] as? String {
                self.newestVersion = value
            }
        }
    }
    public var data: DescribeDrdsInstanceVersionResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDrdsInstanceVersionResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsInstanceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsInstancesRequest : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var description_: String?

    public var expired: Bool?

    public var mix: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var productVersion: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var tag: [DescribeDrdsInstancesRequest.Tag]?

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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.expired != nil {
            map["Expired"] = self.expired!
        }
        if self.mix != nil {
            map["Mix"] = self.mix!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.productVersion != nil {
            map["ProductVersion"] = self.productVersion!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Expired"] as? Bool {
            self.expired = value
        }
        if let value = dict["Mix"] as? Bool {
            self.mix = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ProductVersion"] as? String {
            self.productVersion = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeDrdsInstancesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeDrdsInstancesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeDrdsInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public class ReadOnlyDBInstanceIds : Tea.TeaModel {
                public var readOnlyDBInstanceId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.readOnlyDBInstanceId != nil {
                        map["ReadOnlyDBInstanceId"] = self.readOnlyDBInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ReadOnlyDBInstanceId"] as? [String] {
                        self.readOnlyDBInstanceId = value
                    }
                }
            }
            public class Vips : Tea.TeaModel {
                public class Vip : Tea.TeaModel {
                    public var IP: String?

                    public var port: String?

                    public var type: String?

                    public var vpcId: String?

                    public var vswitchId: String?

                    public var dns: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.IP != nil {
                            map["IP"] = self.IP!
                        }
                        if self.port != nil {
                            map["Port"] = self.port!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vswitchId != nil {
                            map["VswitchId"] = self.vswitchId!
                        }
                        if self.dns != nil {
                            map["dns"] = self.dns!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["IP"] as? String {
                            self.IP = value
                        }
                        if let value = dict["Port"] as? String {
                            self.port = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
                        }
                        if let value = dict["VpcId"] as? String {
                            self.vpcId = value
                        }
                        if let value = dict["VswitchId"] as? String {
                            self.vswitchId = value
                        }
                        if let value = dict["dns"] as? String {
                            self.dns = value
                        }
                    }
                }
                public var vip: [DescribeDrdsInstancesResponseBody.Instances.Instance.Vips.Vip]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vip != nil {
                        var tmp : [Any] = []
                        for k in self.vip! {
                            tmp.append(k.toMap())
                        }
                        map["Vip"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Vip"] as? [Any?] {
                        var tmp : [DescribeDrdsInstancesResponseBody.Instances.Instance.Vips.Vip] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeDrdsInstancesResponseBody.Instances.Instance.Vips.Vip()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.vip = tmp
                    }
                }
            }
            public var commodityCode: String?

            public var createTime: Int64?

            public var description_: String?

            public var drdsInstanceId: String?

            public var expireDate: Int64?

            public var instRole: String?

            public var instanceSeries: String?

            public var instanceSpec: String?

            public var label: String?

            public var machineType: String?

            public var masterInstanceId: String?

            public var networkType: String?

            public var orderInstanceId: String?

            public var productVersion: String?

            public var readOnlyDBInstanceIds: DescribeDrdsInstancesResponseBody.Instances.Instance.ReadOnlyDBInstanceIds?

            public var regionId: String?

            public var resourceGroupId: String?

            public var status: String?

            public var type: String?

            public var version: Int64?

            public var versionAction: String?

            public var vips: DescribeDrdsInstancesResponseBody.Instances.Instance.Vips?

            public var vpcCloudInstanceId: String?

            public var vpcId: String?

            public var zoneId: String?

            public var series: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.readOnlyDBInstanceIds?.validate()
                try self.vips?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commodityCode != nil {
                    map["CommodityCode"] = self.commodityCode!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.drdsInstanceId != nil {
                    map["DrdsInstanceId"] = self.drdsInstanceId!
                }
                if self.expireDate != nil {
                    map["ExpireDate"] = self.expireDate!
                }
                if self.instRole != nil {
                    map["InstRole"] = self.instRole!
                }
                if self.instanceSeries != nil {
                    map["InstanceSeries"] = self.instanceSeries!
                }
                if self.instanceSpec != nil {
                    map["InstanceSpec"] = self.instanceSpec!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.machineType != nil {
                    map["MachineType"] = self.machineType!
                }
                if self.masterInstanceId != nil {
                    map["MasterInstanceId"] = self.masterInstanceId!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.orderInstanceId != nil {
                    map["OrderInstanceId"] = self.orderInstanceId!
                }
                if self.productVersion != nil {
                    map["ProductVersion"] = self.productVersion!
                }
                if self.readOnlyDBInstanceIds != nil {
                    map["ReadOnlyDBInstanceIds"] = self.readOnlyDBInstanceIds?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                if self.versionAction != nil {
                    map["VersionAction"] = self.versionAction!
                }
                if self.vips != nil {
                    map["Vips"] = self.vips?.toMap()
                }
                if self.vpcCloudInstanceId != nil {
                    map["VpcCloudInstanceId"] = self.vpcCloudInstanceId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.series != nil {
                    map["series"] = self.series!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CommodityCode"] as? String {
                    self.commodityCode = value
                }
                if let value = dict["CreateTime"] as? Int64 {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["DrdsInstanceId"] as? String {
                    self.drdsInstanceId = value
                }
                if let value = dict["ExpireDate"] as? Int64 {
                    self.expireDate = value
                }
                if let value = dict["InstRole"] as? String {
                    self.instRole = value
                }
                if let value = dict["InstanceSeries"] as? String {
                    self.instanceSeries = value
                }
                if let value = dict["InstanceSpec"] as? String {
                    self.instanceSpec = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["MachineType"] as? String {
                    self.machineType = value
                }
                if let value = dict["MasterInstanceId"] as? String {
                    self.masterInstanceId = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["OrderInstanceId"] as? String {
                    self.orderInstanceId = value
                }
                if let value = dict["ProductVersion"] as? String {
                    self.productVersion = value
                }
                if let value = dict["ReadOnlyDBInstanceIds"] as? [String: Any?] {
                    var model = DescribeDrdsInstancesResponseBody.Instances.Instance.ReadOnlyDBInstanceIds()
                    model.fromMap(value)
                    self.readOnlyDBInstanceIds = model
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? Int64 {
                    self.version = value
                }
                if let value = dict["VersionAction"] as? String {
                    self.versionAction = value
                }
                if let value = dict["Vips"] as? [String: Any?] {
                    var model = DescribeDrdsInstancesResponseBody.Instances.Instance.Vips()
                    model.fromMap(value)
                    self.vips = model
                }
                if let value = dict["VpcCloudInstanceId"] as? String {
                    self.vpcCloudInstanceId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
                }
                if let value = dict["series"] as? String {
                    self.series = value
                }
            }
        }
        public var instance: [DescribeDrdsInstancesResponseBody.Instances.Instance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instance != nil {
                var tmp : [Any] = []
                for k in self.instance! {
                    tmp.append(k.toMap())
                }
                map["Instance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Instance"] as? [Any?] {
                var tmp : [DescribeDrdsInstancesResponseBody.Instances.Instance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsInstancesResponseBody.Instances.Instance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instance = tmp
            }
        }
    }
    public var instances: DescribeDrdsInstancesResponseBody.Instances?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["Instances"] = self.instances?.toMap()
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
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Instances"] as? [String: Any?] {
            var model = DescribeDrdsInstancesResponseBody.Instances()
            model.fromMap(value)
            self.instances = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeDrdsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsParamsRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var paramLevel: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.paramLevel != nil {
            map["ParamLevel"] = self.paramLevel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["ParamLevel"] as? String {
            self.paramLevel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeDrdsParamsResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var dbName: String?

        public var needRestart: Bool?

        public var paramDefaultValue: String?

        public var paramDesc: String?

        public var paramEnglishName: String?

        public var paramLevel: String?

        public var paramName: String?

        public var paramRanges: String?

        public var paramType: String?

        public var paramValue: String?

        public var paramVariableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.needRestart != nil {
                map["NeedRestart"] = self.needRestart!
            }
            if self.paramDefaultValue != nil {
                map["ParamDefaultValue"] = self.paramDefaultValue!
            }
            if self.paramDesc != nil {
                map["ParamDesc"] = self.paramDesc!
            }
            if self.paramEnglishName != nil {
                map["ParamEnglishName"] = self.paramEnglishName!
            }
            if self.paramLevel != nil {
                map["ParamLevel"] = self.paramLevel!
            }
            if self.paramName != nil {
                map["ParamName"] = self.paramName!
            }
            if self.paramRanges != nil {
                map["ParamRanges"] = self.paramRanges!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.paramValue != nil {
                map["ParamValue"] = self.paramValue!
            }
            if self.paramVariableName != nil {
                map["ParamVariableName"] = self.paramVariableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["NeedRestart"] as? Bool {
                self.needRestart = value
            }
            if let value = dict["ParamDefaultValue"] as? String {
                self.paramDefaultValue = value
            }
            if let value = dict["ParamDesc"] as? String {
                self.paramDesc = value
            }
            if let value = dict["ParamEnglishName"] as? String {
                self.paramEnglishName = value
            }
            if let value = dict["ParamLevel"] as? String {
                self.paramLevel = value
            }
            if let value = dict["ParamName"] as? String {
                self.paramName = value
            }
            if let value = dict["ParamRanges"] as? String {
                self.paramRanges = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["ParamValue"] as? String {
                self.paramValue = value
            }
            if let value = dict["ParamVariableName"] as? String {
                self.paramVariableName = value
            }
        }
    }
    public var list: [DescribeDrdsParamsResponseBody.List]?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if let value = dict["List"] as? [Any?] {
            var tmp : [DescribeDrdsParamsResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = DescribeDrdsParamsResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsParamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsRdsInstancesRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsRdsInstancesResponseBody : Tea.TeaModel {
    public class DbInstances : Tea.TeaModel {
        public class DbInstance : Tea.TeaModel {
            public var connectUrl: String?

            public var DBInstanceCPU: String?

            public var DBInstanceClassType: String?

            public var DBInstanceId: String?

            public var DBInstanceMemory: Int64?

            public var DBInstanceStatus: String?

            public var DBInstanceStorage: Int64?

            public var dbInstType: String?

            public var dmInstanceId: String?

            public var engine: String?

            public var engineVersion: String?

            public var lockMode: Int32?

            public var lockReason: String?

            public var networkType: String?

            public var payType: String?

            public var port: Int32?

            public var rdsInstType: String?

            public var readWeight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectUrl != nil {
                    map["ConnectUrl"] = self.connectUrl!
                }
                if self.DBInstanceCPU != nil {
                    map["DBInstanceCPU"] = self.DBInstanceCPU!
                }
                if self.DBInstanceClassType != nil {
                    map["DBInstanceClassType"] = self.DBInstanceClassType!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.DBInstanceMemory != nil {
                    map["DBInstanceMemory"] = self.DBInstanceMemory!
                }
                if self.DBInstanceStatus != nil {
                    map["DBInstanceStatus"] = self.DBInstanceStatus!
                }
                if self.DBInstanceStorage != nil {
                    map["DBInstanceStorage"] = self.DBInstanceStorage!
                }
                if self.dbInstType != nil {
                    map["DbInstType"] = self.dbInstType!
                }
                if self.dmInstanceId != nil {
                    map["DmInstanceId"] = self.dmInstanceId!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.engineVersion != nil {
                    map["EngineVersion"] = self.engineVersion!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.rdsInstType != nil {
                    map["RdsInstType"] = self.rdsInstType!
                }
                if self.readWeight != nil {
                    map["ReadWeight"] = self.readWeight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ConnectUrl"] as? String {
                    self.connectUrl = value
                }
                if let value = dict["DBInstanceCPU"] as? String {
                    self.DBInstanceCPU = value
                }
                if let value = dict["DBInstanceClassType"] as? String {
                    self.DBInstanceClassType = value
                }
                if let value = dict["DBInstanceId"] as? String {
                    self.DBInstanceId = value
                }
                if let value = dict["DBInstanceMemory"] as? Int64 {
                    self.DBInstanceMemory = value
                }
                if let value = dict["DBInstanceStatus"] as? String {
                    self.DBInstanceStatus = value
                }
                if let value = dict["DBInstanceStorage"] as? Int64 {
                    self.DBInstanceStorage = value
                }
                if let value = dict["DbInstType"] as? String {
                    self.dbInstType = value
                }
                if let value = dict["DmInstanceId"] as? String {
                    self.dmInstanceId = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["EngineVersion"] as? String {
                    self.engineVersion = value
                }
                if let value = dict["LockMode"] as? Int32 {
                    self.lockMode = value
                }
                if let value = dict["LockReason"] as? String {
                    self.lockReason = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
                }
                if let value = dict["PayType"] as? String {
                    self.payType = value
                }
                if let value = dict["Port"] as? Int32 {
                    self.port = value
                }
                if let value = dict["RdsInstType"] as? String {
                    self.rdsInstType = value
                }
                if let value = dict["ReadWeight"] as? Int32 {
                    self.readWeight = value
                }
            }
        }
        public var dbInstance: [DescribeDrdsRdsInstancesResponseBody.DbInstances.DbInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbInstance != nil {
                var tmp : [Any] = []
                for k in self.dbInstance! {
                    tmp.append(k.toMap())
                }
                map["DbInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbInstance"] as? [Any?] {
                var tmp : [DescribeDrdsRdsInstancesResponseBody.DbInstances.DbInstance] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsRdsInstancesResponseBody.DbInstances.DbInstance()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dbInstance = tmp
            }
        }
    }
    public var dbInstances: DescribeDrdsRdsInstancesResponseBody.DbInstances?

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
        try self.dbInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstances != nil {
            map["DbInstances"] = self.dbInstances?.toMap()
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
        if let value = dict["DbInstances"] as? [String: Any?] {
            var model = DescribeDrdsRdsInstancesResponseBody.DbInstances()
            model.fromMap(value)
            self.dbInstances = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsRdsInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsRdsInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsRdsInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsShardingDbsRequest : Tea.TeaModel {
    public var dbName: String?

    public var dbNamePattern: String?

    public var drdsInstanceId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbNamePattern != nil {
            map["DbNamePattern"] = self.dbNamePattern!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
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
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DbNamePattern"] as? String {
            self.dbNamePattern = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
    }
}

public class DescribeDrdsShardingDbsResponseBody : Tea.TeaModel {
    public class ShardingDbs : Tea.TeaModel {
        public class ShardingDb : Tea.TeaModel {
            public var blockingTimeout: Int32?

            public var connectUrl: String?

            public var connectionProperties: String?

            public var dbInstanceId: String?

            public var dbStatus: String?

            public var dbType: String?

            public var groupName: String?

            public var idleTimeOut: Int32?

            public var maxPoolSize: Int32?

            public var minPoolSize: Int32?

            public var preparedStatementCacheSize: Int32?

            public var shardingDbName: String?

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
                if self.blockingTimeout != nil {
                    map["BlockingTimeout"] = self.blockingTimeout!
                }
                if self.connectUrl != nil {
                    map["ConnectUrl"] = self.connectUrl!
                }
                if self.connectionProperties != nil {
                    map["ConnectionProperties"] = self.connectionProperties!
                }
                if self.dbInstanceId != nil {
                    map["DbInstanceId"] = self.dbInstanceId!
                }
                if self.dbStatus != nil {
                    map["DbStatus"] = self.dbStatus!
                }
                if self.dbType != nil {
                    map["DbType"] = self.dbType!
                }
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.idleTimeOut != nil {
                    map["IdleTimeOut"] = self.idleTimeOut!
                }
                if self.maxPoolSize != nil {
                    map["MaxPoolSize"] = self.maxPoolSize!
                }
                if self.minPoolSize != nil {
                    map["MinPoolSize"] = self.minPoolSize!
                }
                if self.preparedStatementCacheSize != nil {
                    map["PreparedStatementCacheSize"] = self.preparedStatementCacheSize!
                }
                if self.shardingDbName != nil {
                    map["ShardingDbName"] = self.shardingDbName!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BlockingTimeout"] as? Int32 {
                    self.blockingTimeout = value
                }
                if let value = dict["ConnectUrl"] as? String {
                    self.connectUrl = value
                }
                if let value = dict["ConnectionProperties"] as? String {
                    self.connectionProperties = value
                }
                if let value = dict["DbInstanceId"] as? String {
                    self.dbInstanceId = value
                }
                if let value = dict["DbStatus"] as? String {
                    self.dbStatus = value
                }
                if let value = dict["DbType"] as? String {
                    self.dbType = value
                }
                if let value = dict["GroupName"] as? String {
                    self.groupName = value
                }
                if let value = dict["IdleTimeOut"] as? Int32 {
                    self.idleTimeOut = value
                }
                if let value = dict["MaxPoolSize"] as? Int32 {
                    self.maxPoolSize = value
                }
                if let value = dict["MinPoolSize"] as? Int32 {
                    self.minPoolSize = value
                }
                if let value = dict["PreparedStatementCacheSize"] as? Int32 {
                    self.preparedStatementCacheSize = value
                }
                if let value = dict["ShardingDbName"] as? String {
                    self.shardingDbName = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
                }
            }
        }
        public var shardingDb: [DescribeDrdsShardingDbsResponseBody.ShardingDbs.ShardingDb]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.shardingDb != nil {
                var tmp : [Any] = []
                for k in self.shardingDb! {
                    tmp.append(k.toMap())
                }
                map["ShardingDb"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ShardingDb"] as? [Any?] {
                var tmp : [DescribeDrdsShardingDbsResponseBody.ShardingDbs.ShardingDb] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsShardingDbsResponseBody.ShardingDbs.ShardingDb()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.shardingDb = tmp
            }
        }
    }
    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var shardingDbs: DescribeDrdsShardingDbsResponseBody.ShardingDbs?

    public var success: Bool?

    public var total: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.shardingDbs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shardingDbs != nil {
            map["ShardingDbs"] = self.shardingDbs?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ShardingDbs"] as? [String: Any?] {
            var model = DescribeDrdsShardingDbsResponseBody.ShardingDbs()
            model.fromMap(value)
            self.shardingDbs = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? String {
            self.total = value
        }
    }
}

public class DescribeDrdsShardingDbsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsShardingDbsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsShardingDbsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsSlowSqlsRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var endTime: Int64?

    public var exeTime: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.exeTime != nil {
            map["ExeTime"] = self.exeTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["ExeTime"] as? Int64 {
            self.exeTime = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeDrdsSlowSqlsResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public class Item : Tea.TeaModel {
            public var host: String?

            public var responseTime: Int64?

            public var schema: String?

            public var sendTime: Int64?

            public var sql: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.responseTime != nil {
                    map["ResponseTime"] = self.responseTime!
                }
                if self.schema != nil {
                    map["Schema"] = self.schema!
                }
                if self.sendTime != nil {
                    map["SendTime"] = self.sendTime!
                }
                if self.sql != nil {
                    map["Sql"] = self.sql!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
                if let value = dict["ResponseTime"] as? Int64 {
                    self.responseTime = value
                }
                if let value = dict["Schema"] as? String {
                    self.schema = value
                }
                if let value = dict["SendTime"] as? Int64 {
                    self.sendTime = value
                }
                if let value = dict["Sql"] as? String {
                    self.sql = value
                }
            }
        }
        public var item: [DescribeDrdsSlowSqlsResponseBody.Items.Item]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Item"] as? [Any?] {
                var tmp : [DescribeDrdsSlowSqlsResponseBody.Items.Item] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsSlowSqlsResponseBody.Items.Item()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.item = tmp
            }
        }
    }
    public var items: DescribeDrdsSlowSqlsResponseBody.Items?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.items?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.items != nil {
            map["Items"] = self.items?.toMap()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Items"] as? [String: Any?] {
            var model = DescribeDrdsSlowSqlsResponseBody.Items()
            model.fromMap(value)
            self.items = model
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeDrdsSlowSqlsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsSlowSqlsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsSlowSqlsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsSqlAuditStatusRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeDrdsSqlAuditStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var dbName: String?

            public var detailed: String?

            public var enabled: String?

            public var extraAliUid: Int64?

            public var extraSlsLogStore: String?

            public var extraSlsProject: String?

            public var extraWriteEnabled: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.detailed != nil {
                    map["Detailed"] = self.detailed!
                }
                if self.enabled != nil {
                    map["Enabled"] = self.enabled!
                }
                if self.extraAliUid != nil {
                    map["ExtraAliUid"] = self.extraAliUid!
                }
                if self.extraSlsLogStore != nil {
                    map["ExtraSlsLogStore"] = self.extraSlsLogStore!
                }
                if self.extraSlsProject != nil {
                    map["ExtraSlsProject"] = self.extraSlsProject!
                }
                if self.extraWriteEnabled != nil {
                    map["ExtraWriteEnabled"] = self.extraWriteEnabled!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbName"] as? String {
                    self.dbName = value
                }
                if let value = dict["Detailed"] as? String {
                    self.detailed = value
                }
                if let value = dict["Enabled"] as? String {
                    self.enabled = value
                }
                if let value = dict["ExtraAliUid"] as? Int64 {
                    self.extraAliUid = value
                }
                if let value = dict["ExtraSlsLogStore"] as? String {
                    self.extraSlsLogStore = value
                }
                if let value = dict["ExtraSlsProject"] as? String {
                    self.extraSlsProject = value
                }
                if let value = dict["ExtraWriteEnabled"] as? Bool {
                    self.extraWriteEnabled = value
                }
            }
        }
        public var data: [DescribeDrdsSqlAuditStatusResponseBody.Data.Data]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["Data"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [DescribeDrdsSqlAuditStatusResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsSqlAuditStatusResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
        }
    }
    public var data: DescribeDrdsSqlAuditStatusResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeDrdsSqlAuditStatusResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeDrdsSqlAuditStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsSqlAuditStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsSqlAuditStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeDrdsTasksRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class DescribeDrdsTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public class Task : Tea.TeaModel {
            public var content: String?

            public var id: Int64?

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
                if self.content != nil {
                    map["Content"] = self.content!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Content"] as? String {
                    self.content = value
                }
                if let value = dict["Id"] as? Int64 {
                    self.id = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var task: [DescribeDrdsTasksResponseBody.Tasks.Task]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.task != nil {
                var tmp : [Any] = []
                for k in self.task! {
                    tmp.append(k.toMap())
                }
                map["Task"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Task"] as? [Any?] {
                var tmp : [DescribeDrdsTasksResponseBody.Tasks.Task] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDrdsTasksResponseBody.Tasks.Task()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.task = tmp
            }
        }
    }
    public var requestId: String?

    public var success: Bool?

    public var tasks: DescribeDrdsTasksResponseBody.Tasks?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tasks != nil {
            map["Tasks"] = self.tasks?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Tasks"] as? [String: Any?] {
            var model = DescribeDrdsTasksResponseBody.Tasks()
            model.fromMap(value)
            self.tasks = model
        }
    }
}

public class DescribeDrdsTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsTasksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsTasksResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeExpandLogicTableInfoListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeExpandLogicTableInfoListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var shardDbKey: String?

            public var shardTbKey: String?

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
                if self.shardDbKey != nil {
                    map["ShardDbKey"] = self.shardDbKey!
                }
                if self.shardTbKey != nil {
                    map["ShardTbKey"] = self.shardTbKey!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ShardDbKey"] as? String {
                    self.shardDbKey = value
                }
                if let value = dict["ShardTbKey"] as? String {
                    self.shardTbKey = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
            }
        }
        public var data: [DescribeExpandLogicTableInfoListResponseBody.Data.Data]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.data! {
                    tmp.append(k.toMap())
                }
                map["data"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["data"] as? [Any?] {
                var tmp : [DescribeExpandLogicTableInfoListResponseBody.Data.Data] = []
                for v in value {
                    if v != nil {
                        var model = DescribeExpandLogicTableInfoListResponseBody.Data.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
        }
    }
    public var data: DescribeExpandLogicTableInfoListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeExpandLogicTableInfoListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeExpandLogicTableInfoListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExpandLogicTableInfoListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeExpandLogicTableInfoListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeHotDbListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeHotDbListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public class InstanceDb : Tea.TeaModel {
                public class HotDbList : Tea.TeaModel {
                    public var data: [String]?

                    public override init() {
                        super.init()
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
                            map["data"] = self.data!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["data"] as? [String] {
                            self.data = value
                        }
                    }
                }
                public var hotDbList: DescribeHotDbListResponseBody.Data.List.InstanceDb.HotDbList?

                public var instanceName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.hotDbList?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.hotDbList != nil {
                        map["HotDbList"] = self.hotDbList?.toMap()
                    }
                    if self.instanceName != nil {
                        map["InstanceName"] = self.instanceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HotDbList"] as? [String: Any?] {
                        var model = DescribeHotDbListResponseBody.Data.List.InstanceDb.HotDbList()
                        model.fromMap(value)
                        self.hotDbList = model
                    }
                    if let value = dict["InstanceName"] as? String {
                        self.instanceName = value
                    }
                }
            }
            public var instanceDb: [DescribeHotDbListResponseBody.Data.List.InstanceDb]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceDb != nil {
                    var tmp : [Any] = []
                    for k in self.instanceDb! {
                        tmp.append(k.toMap())
                    }
                    map["InstanceDb"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceDb"] as? [Any?] {
                    var tmp : [DescribeHotDbListResponseBody.Data.List.InstanceDb] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeHotDbListResponseBody.Data.List.InstanceDb()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.instanceDb = tmp
                }
            }
        }
        public var list: DescribeHotDbListResponseBody.Data.List?

        public var randomCode: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.list?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                map["List"] = self.list?.toMap()
            }
            if self.randomCode != nil {
                map["RandomCode"] = self.randomCode!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [String: Any?] {
                var model = DescribeHotDbListResponseBody.Data.List()
                model.fromMap(value)
                self.list = model
            }
            if let value = dict["RandomCode"] as? String {
                self.randomCode = value
            }
        }
    }
    public var data: DescribeHotDbListResponseBody.Data?

    public var msg: String?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.msg != nil {
            map["Msg"] = self.msg!
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeHotDbListResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeHotDbListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHotDbListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHotDbListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstDbLogInfoRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeInstDbLogInfoResponseBody : Tea.TeaModel {
    public class LogTimeRange : Tea.TeaModel {
        public var supportLatestTime: Int64?

        public var supportOldestTime: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.supportLatestTime != nil {
                map["SupportLatestTime"] = self.supportLatestTime!
            }
            if self.supportOldestTime != nil {
                map["SupportOldestTime"] = self.supportOldestTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SupportLatestTime"] as? Int64 {
                self.supportLatestTime = value
            }
            if let value = dict["SupportOldestTime"] as? Int64 {
                self.supportOldestTime = value
            }
        }
    }
    public var logTimeRange: DescribeInstDbLogInfoResponseBody.LogTimeRange?

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
        try self.logTimeRange?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logTimeRange != nil {
            map["LogTimeRange"] = self.logTimeRange?.toMap()
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
        if let value = dict["LogTimeRange"] as? [String: Any?] {
            var model = DescribeInstDbLogInfoResponseBody.LogTimeRange()
            model.fromMap(value)
            self.logTimeRange = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeInstDbLogInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstDbLogInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstDbLogInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstDbSlsInfoRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeInstDbSlsInfoResponseBody : Tea.TeaModel {
    public class AuditInfo : Tea.TeaModel {
        public var logStore: String?

        public var project: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logStore != nil {
                map["LogStore"] = self.logStore!
            }
            if self.project != nil {
                map["Project"] = self.project!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LogStore"] as? String {
                self.logStore = value
            }
            if let value = dict["Project"] as? String {
                self.project = value
            }
        }
    }
    public var auditInfo: DescribeInstDbSlsInfoResponseBody.AuditInfo?

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
        try self.auditInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.auditInfo != nil {
            map["AuditInfo"] = self.auditInfo?.toMap()
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
        if let value = dict["AuditInfo"] as? [String: Any?] {
            var model = DescribeInstDbSlsInfoResponseBody.AuditInfo()
            model.fromMap(value)
            self.auditInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeInstDbSlsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstDbSlsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstDbSlsInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceAccountsRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeInstanceAccountsResponseBody : Tea.TeaModel {
    public class InstanceAccounts : Tea.TeaModel {
        public class InstanceAccount : Tea.TeaModel {
            public class DbPrivileges : Tea.TeaModel {
                public class DbPrivilege : Tea.TeaModel {
                    public var dbName: String?

                    public var privilege: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.dbName != nil {
                            map["DbName"] = self.dbName!
                        }
                        if self.privilege != nil {
                            map["Privilege"] = self.privilege!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DbName"] as? String {
                            self.dbName = value
                        }
                        if let value = dict["Privilege"] as? String {
                            self.privilege = value
                        }
                    }
                }
                public var dbPrivilege: [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges.DbPrivilege]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dbPrivilege != nil {
                        var tmp : [Any] = []
                        for k in self.dbPrivilege! {
                            tmp.append(k.toMap())
                        }
                        map["DbPrivilege"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DbPrivilege"] as? [Any?] {
                        var tmp : [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges.DbPrivilege] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges.DbPrivilege()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.dbPrivilege = tmp
                    }
                }
            }
            public var accountName: String?

            public var accountType: Int32?

            public var dbPrivileges: DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges?

            public var description_: String?

            public var host: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dbPrivileges?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountName != nil {
                    map["AccountName"] = self.accountName!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.dbPrivileges != nil {
                    map["DbPrivileges"] = self.dbPrivileges?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AccountType"] as? Int32 {
                    self.accountType = value
                }
                if let value = dict["DbPrivileges"] as? [String: Any?] {
                    var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges()
                    model.fromMap(value)
                    self.dbPrivileges = model
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Host"] as? String {
                    self.host = value
                }
            }
        }
        public var instanceAccount: [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceAccount != nil {
                var tmp : [Any] = []
                for k in self.instanceAccount! {
                    tmp.append(k.toMap())
                }
                map["InstanceAccount"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceAccount"] as? [Any?] {
                var tmp : [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instanceAccount = tmp
            }
        }
    }
    public var instanceAccounts: DescribeInstanceAccountsResponseBody.InstanceAccounts?

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
        try self.instanceAccounts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceAccounts != nil {
            map["InstanceAccounts"] = self.instanceAccounts?.toMap()
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
        if let value = dict["InstanceAccounts"] as? [String: Any?] {
            var model = DescribeInstanceAccountsResponseBody.InstanceAccounts()
            model.fromMap(value)
            self.instanceAccounts = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeInstanceAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceAccountsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceSwitchAzoneRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeInstanceSwitchAzoneResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public class TargetAzones : Tea.TeaModel {
            public var targetAzone: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.targetAzone != nil {
                    map["TargetAzone"] = self.targetAzone!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["TargetAzone"] as? [String] {
                    self.targetAzone = value
                }
            }
        }
        public var originAzoneId: String?

        public var regionId: String?

        public var switchAble: Bool?

        public var targetAzones: DescribeInstanceSwitchAzoneResponseBody.Result.TargetAzones?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.targetAzones?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.originAzoneId != nil {
                map["OriginAzoneId"] = self.originAzoneId!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.switchAble != nil {
                map["SwitchAble"] = self.switchAble!
            }
            if self.targetAzones != nil {
                map["TargetAzones"] = self.targetAzones?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OriginAzoneId"] as? String {
                self.originAzoneId = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SwitchAble"] as? Bool {
                self.switchAble = value
            }
            if let value = dict["TargetAzones"] as? [String: Any?] {
                var model = DescribeInstanceSwitchAzoneResponseBody.Result.TargetAzones()
                model.fromMap(value)
                self.targetAzones = model
            }
        }
    }
    public var requestId: String?

    public var result: DescribeInstanceSwitchAzoneResponseBody.Result?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? [String: Any?] {
            var model = DescribeInstanceSwitchAzoneResponseBody.Result()
            model.fromMap(value)
            self.result = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeInstanceSwitchAzoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSwitchAzoneResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceSwitchAzoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeInstanceSwitchNetworkRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeInstanceSwitchNetworkResponseBody : Tea.TeaModel {
    public class VpcInfos : Tea.TeaModel {
        public class VpcInfo : Tea.TeaModel {
            public class VswitchInfos : Tea.TeaModel {
                public class VswitchInfo : Tea.TeaModel {
                    public var azoneId: String?

                    public var drdsSupported: Bool?

                    public var vpcId: String?

                    public var vswitchId: String?

                    public var vswitchName: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.azoneId != nil {
                            map["AzoneId"] = self.azoneId!
                        }
                        if self.drdsSupported != nil {
                            map["DrdsSupported"] = self.drdsSupported!
                        }
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vswitchId != nil {
                            map["VswitchId"] = self.vswitchId!
                        }
                        if self.vswitchName != nil {
                            map["VswitchName"] = self.vswitchName!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["AzoneId"] as? String {
                            self.azoneId = value
                        }
                        if let value = dict["DrdsSupported"] as? Bool {
                            self.drdsSupported = value
                        }
                        if let value = dict["VpcId"] as? String {
                            self.vpcId = value
                        }
                        if let value = dict["VswitchId"] as? String {
                            self.vswitchId = value
                        }
                        if let value = dict["VswitchName"] as? String {
                            self.vswitchName = value
                        }
                    }
                }
                public var vswitchInfo: [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos.VswitchInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vswitchInfo != nil {
                        var tmp : [Any] = []
                        for k in self.vswitchInfo! {
                            tmp.append(k.toMap())
                        }
                        map["VswitchInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VswitchInfo"] as? [Any?] {
                        var tmp : [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos.VswitchInfo] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos.VswitchInfo()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.vswitchInfo = tmp
                    }
                }
            }
            public var regionId: String?

            public var vpcId: String?

            public var vpcName: String?

            public var vswitchInfos: DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.vswitchInfos?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcName != nil {
                    map["VpcName"] = self.vpcName!
                }
                if self.vswitchInfos != nil {
                    map["VswitchInfos"] = self.vswitchInfos?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["VpcName"] as? String {
                    self.vpcName = value
                }
                if let value = dict["VswitchInfos"] as? [String: Any?] {
                    var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos()
                    model.fromMap(value)
                    self.vswitchInfos = model
                }
            }
        }
        public var vpcInfo: [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vpcInfo != nil {
                var tmp : [Any] = []
                for k in self.vpcInfo! {
                    tmp.append(k.toMap())
                }
                map["VpcInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["VpcInfo"] as? [Any?] {
                var tmp : [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo] = []
                for v in value {
                    if v != nil {
                        var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.vpcInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var success: Bool?

    public var vpcInfos: DescribeInstanceSwitchNetworkResponseBody.VpcInfos?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vpcInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.vpcInfos != nil {
            map["VpcInfos"] = self.vpcInfos?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["VpcInfos"] as? [String: Any?] {
            var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos()
            model.fromMap(value)
            self.vpcInfos = model
        }
    }
}

public class DescribeInstanceSwitchNetworkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeInstanceSwitchNetworkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeInstanceSwitchNetworkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribePreCheckResultRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

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
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DescribePreCheckResultResponseBody : Tea.TeaModel {
    public class PreCheckResult : Tea.TeaModel {
        public class SubCheckItems : Tea.TeaModel {
            public var errorMsgCode: String?

            public var errorMsgParams: [String]?

            public var preCheckItemName: String?

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
                if self.errorMsgCode != nil {
                    map["ErrorMsgCode"] = self.errorMsgCode!
                }
                if self.errorMsgParams != nil {
                    map["ErrorMsgParams"] = self.errorMsgParams!
                }
                if self.preCheckItemName != nil {
                    map["PreCheckItemName"] = self.preCheckItemName!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ErrorMsgCode"] as? String {
                    self.errorMsgCode = value
                }
                if let value = dict["ErrorMsgParams"] as? [String] {
                    self.errorMsgParams = value
                }
                if let value = dict["PreCheckItemName"] as? String {
                    self.preCheckItemName = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
            }
        }
        public var preCheckName: String?

        public var state: String?

        public var subCheckItems: [DescribePreCheckResultResponseBody.PreCheckResult.SubCheckItems]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.preCheckName != nil {
                map["PreCheckName"] = self.preCheckName!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.subCheckItems != nil {
                var tmp : [Any] = []
                for k in self.subCheckItems! {
                    tmp.append(k.toMap())
                }
                map["SubCheckItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PreCheckName"] as? String {
                self.preCheckName = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["SubCheckItems"] as? [Any?] {
                var tmp : [DescribePreCheckResultResponseBody.PreCheckResult.SubCheckItems] = []
                for v in value {
                    if v != nil {
                        var model = DescribePreCheckResultResponseBody.PreCheckResult.SubCheckItems()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.subCheckItems = tmp
            }
        }
    }
    public var preCheckResult: DescribePreCheckResultResponseBody.PreCheckResult?

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
        try self.preCheckResult?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.preCheckResult != nil {
            map["PreCheckResult"] = self.preCheckResult?.toMap()
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
        if let value = dict["PreCheckResult"] as? [String: Any?] {
            var model = DescribePreCheckResultResponseBody.PreCheckResult()
            model.fromMap(value)
            self.preCheckResult = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribePreCheckResultResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePreCheckResultResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribePreCheckResultResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRDSPerformanceRequest : Tea.TeaModel {
    public var dbInstType: String?

    public var drdsInstanceId: String?

    public var endTime: Int64?

    public var keys: String?

    public var rdsInstanceId: String?

    public var startTime: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        if self.rdsInstanceId != nil {
            map["RdsInstanceId"] = self.rdsInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? Int64 {
            self.endTime = value
        }
        if let value = dict["Keys"] as? String {
            self.keys = value
        }
        if let value = dict["RdsInstanceId"] as? String {
            self.rdsInstanceId = value
        }
        if let value = dict["StartTime"] as? Int64 {
            self.startTime = value
        }
    }
}

public class DescribeRDSPerformanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Values : Tea.TeaModel {
            public var date: Int64?

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
                if self.date != nil {
                    map["Date"] = self.date!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Date"] as? Int64 {
                    self.date = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var key: String?

        public var nodeName: String?

        public var nodeNum: Int32?

        public var unit: String?

        public var values: [DescribeRDSPerformanceResponseBody.Data.Values]?

        public override init() {
            super.init()
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
            if self.nodeName != nil {
                map["NodeName"] = self.nodeName!
            }
            if self.nodeNum != nil {
                map["NodeNum"] = self.nodeNum!
            }
            if self.unit != nil {
                map["Unit"] = self.unit!
            }
            if self.values != nil {
                var tmp : [Any] = []
                for k in self.values! {
                    tmp.append(k.toMap())
                }
                map["Values"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["NodeName"] as? String {
                self.nodeName = value
            }
            if let value = dict["NodeNum"] as? Int32 {
                self.nodeNum = value
            }
            if let value = dict["Unit"] as? String {
                self.unit = value
            }
            if let value = dict["Values"] as? [Any?] {
                var tmp : [DescribeRDSPerformanceResponseBody.Data.Values] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRDSPerformanceResponseBody.Data.Values()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.values = tmp
            }
        }
    }
    public var data: [DescribeRDSPerformanceResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeRDSPerformanceResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeRDSPerformanceResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRDSPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRDSPerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRDSPerformanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRdsCommodityRequest : Tea.TeaModel {
    public var commodityCode: String?

    public var drdsInstanceId: String?

    public var orderType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commodityCode != nil {
            map["CommodityCode"] = self.commodityCode!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CommodityCode"] as? String {
            self.commodityCode = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
    }
}

public class DescribeRdsCommodityResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRdsCommodityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsCommodityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRdsCommodityResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRdsPerformanceSummaryRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var rdsInstanceId: [String]?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.rdsInstanceId != nil {
            map["RdsInstanceId"] = self.rdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RdsInstanceId"] as? [String] {
            self.rdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRdsPerformanceSummaryResponseBody : Tea.TeaModel {
    public class RdsPerformanceInfos : Tea.TeaModel {
        public var activeSessions: Int32?

        public var cpu: Double?

        public var iops: Double?

        public var rdsId: String?

        public var spaceUsage: Int64?

        public var totalSessions: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeSessions != nil {
                map["ActiveSessions"] = self.activeSessions!
            }
            if self.cpu != nil {
                map["Cpu"] = self.cpu!
            }
            if self.iops != nil {
                map["Iops"] = self.iops!
            }
            if self.rdsId != nil {
                map["RdsId"] = self.rdsId!
            }
            if self.spaceUsage != nil {
                map["SpaceUsage"] = self.spaceUsage!
            }
            if self.totalSessions != nil {
                map["TotalSessions"] = self.totalSessions!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ActiveSessions"] as? Int32 {
                self.activeSessions = value
            }
            if let value = dict["Cpu"] as? Double {
                self.cpu = value
            }
            if let value = dict["Iops"] as? Double {
                self.iops = value
            }
            if let value = dict["RdsId"] as? String {
                self.rdsId = value
            }
            if let value = dict["SpaceUsage"] as? Int64 {
                self.spaceUsage = value
            }
            if let value = dict["TotalSessions"] as? Int32 {
                self.totalSessions = value
            }
        }
    }
    public var rdsPerformanceInfos: [DescribeRdsPerformanceSummaryResponseBody.RdsPerformanceInfos]?

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
        if self.rdsPerformanceInfos != nil {
            var tmp : [Any] = []
            for k in self.rdsPerformanceInfos! {
                tmp.append(k.toMap())
            }
            map["RdsPerformanceInfos"] = tmp
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
        if let value = dict["RdsPerformanceInfos"] as? [Any?] {
            var tmp : [DescribeRdsPerformanceSummaryResponseBody.RdsPerformanceInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeRdsPerformanceSummaryResponseBody.RdsPerformanceInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.rdsPerformanceInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRdsPerformanceSummaryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsPerformanceSummaryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRdsPerformanceSummaryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRdsSuperAccountInstancesRequest : Tea.TeaModel {
    public var dbInstType: String?

    public var drdsInstanceId: String?

    public var rdsInstance: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.rdsInstance != nil {
            map["RdsInstance"] = self.rdsInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RdsInstance"] as? [String] {
            self.rdsInstance = value
        }
    }
}

public class DescribeRdsSuperAccountInstancesResponseBody : Tea.TeaModel {
    public class DbInstances : Tea.TeaModel {
        public var dbInstance: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbInstance != nil {
                map["DbInstance"] = self.dbInstance!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbInstance"] as? [String] {
                self.dbInstance = value
            }
        }
    }
    public var dbInstances: DescribeRdsSuperAccountInstancesResponseBody.DbInstances?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dbInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstances != nil {
            map["DbInstances"] = self.dbInstances?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstances"] as? [String: Any?] {
            var model = DescribeRdsSuperAccountInstancesResponseBody.DbInstances()
            model.fromMap(value)
            self.dbInstances = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeRdsSuperAccountInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsSuperAccountInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRdsSuperAccountInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRecycleBinStatusRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRecycleBinStatusResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var status: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRecycleBinStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecycleBinStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRecycleBinStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRecycleBinTablesRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeRecycleBinTablesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var originalTableName: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.originalTableName != nil {
                map["OriginalTableName"] = self.originalTableName!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["OriginalTableName"] as? String {
                self.originalTableName = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public var data: [DescribeRecycleBinTablesResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [DescribeRecycleBinTablesResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = DescribeRecycleBinTablesResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRecycleBinTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRecycleBinTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRecycleBinTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRestoreOrderRequest : Tea.TeaModel {
    public var backupDbNames: String?

    public var backupId: String?

    public var backupLevel: String?

    public var backupMode: String?

    public var drdsInstanceId: String?

    public var preferredBackupTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupDbNames != nil {
            map["BackupDbNames"] = self.backupDbNames!
        }
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.backupLevel != nil {
            map["BackupLevel"] = self.backupLevel!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupDbNames"] as? String {
            self.backupDbNames = value
        }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["BackupLevel"] as? String {
            self.backupLevel = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
    }
}

public class DescribeRestoreOrderResponseBody : Tea.TeaModel {
    public class RestoreOrderDO : Tea.TeaModel {
        public class DrdsOrderDOList : Tea.TeaModel {
            public class DrdsOrderDOList : Tea.TeaModel {
                public var azoneId: String?

                public var instSpec: String?

                public var network: String?

                public var regionId: String?

                public var VSwtichId: String?

                public var vpcId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.azoneId != nil {
                        map["AzoneId"] = self.azoneId!
                    }
                    if self.instSpec != nil {
                        map["InstSpec"] = self.instSpec!
                    }
                    if self.network != nil {
                        map["Network"] = self.network!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.VSwtichId != nil {
                        map["VSwtichId"] = self.VSwtichId!
                    }
                    if self.vpcId != nil {
                        map["VpcId"] = self.vpcId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AzoneId"] as? String {
                        self.azoneId = value
                    }
                    if let value = dict["InstSpec"] as? String {
                        self.instSpec = value
                    }
                    if let value = dict["Network"] as? String {
                        self.network = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["VSwtichId"] as? String {
                        self.VSwtichId = value
                    }
                    if let value = dict["VpcId"] as? String {
                        self.vpcId = value
                    }
                }
            }
            public var drdsOrderDOList: [DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList.DrdsOrderDOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.drdsOrderDOList != nil {
                    var tmp : [Any] = []
                    for k in self.drdsOrderDOList! {
                        tmp.append(k.toMap())
                    }
                    map["DrdsOrderDOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DrdsOrderDOList"] as? [Any?] {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList.DrdsOrderDOList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList.DrdsOrderDOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.drdsOrderDOList = tmp
                }
            }
        }
        public class PolarOrderDOList : Tea.TeaModel {
            public class PolarOrderDOList : Tea.TeaModel {
                public var azoneId: String?

                public var dbInstanceStorage: String?

                public var engine: String?

                public var instanceClass: String?

                public var network: String?

                public var num: Int64?

                public var regionId: String?

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
                    if self.azoneId != nil {
                        map["AzoneId"] = self.azoneId!
                    }
                    if self.dbInstanceStorage != nil {
                        map["DbInstanceStorage"] = self.dbInstanceStorage!
                    }
                    if self.engine != nil {
                        map["Engine"] = self.engine!
                    }
                    if self.instanceClass != nil {
                        map["InstanceClass"] = self.instanceClass!
                    }
                    if self.network != nil {
                        map["Network"] = self.network!
                    }
                    if self.num != nil {
                        map["Num"] = self.num!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AzoneId"] as? String {
                        self.azoneId = value
                    }
                    if let value = dict["DbInstanceStorage"] as? String {
                        self.dbInstanceStorage = value
                    }
                    if let value = dict["Engine"] as? String {
                        self.engine = value
                    }
                    if let value = dict["InstanceClass"] as? String {
                        self.instanceClass = value
                    }
                    if let value = dict["Network"] as? String {
                        self.network = value
                    }
                    if let value = dict["Num"] as? Int64 {
                        self.num = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var polarOrderDOList: [DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList.PolarOrderDOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.polarOrderDOList != nil {
                    var tmp : [Any] = []
                    for k in self.polarOrderDOList! {
                        tmp.append(k.toMap())
                    }
                    map["PolarOrderDOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["PolarOrderDOList"] as? [Any?] {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList.PolarOrderDOList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList.PolarOrderDOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.polarOrderDOList = tmp
                }
            }
        }
        public class RdsOrderDOList : Tea.TeaModel {
            public class RdsOrderDOList : Tea.TeaModel {
                public var azoneId: String?

                public var dbInstanceStorage: String?

                public var engine: String?

                public var instanceClass: String?

                public var network: String?

                public var num: Int64?

                public var regionId: String?

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
                    if self.azoneId != nil {
                        map["AzoneId"] = self.azoneId!
                    }
                    if self.dbInstanceStorage != nil {
                        map["DbInstanceStorage"] = self.dbInstanceStorage!
                    }
                    if self.engine != nil {
                        map["Engine"] = self.engine!
                    }
                    if self.instanceClass != nil {
                        map["InstanceClass"] = self.instanceClass!
                    }
                    if self.network != nil {
                        map["Network"] = self.network!
                    }
                    if self.num != nil {
                        map["Num"] = self.num!
                    }
                    if self.regionId != nil {
                        map["RegionId"] = self.regionId!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AzoneId"] as? String {
                        self.azoneId = value
                    }
                    if let value = dict["DbInstanceStorage"] as? String {
                        self.dbInstanceStorage = value
                    }
                    if let value = dict["Engine"] as? String {
                        self.engine = value
                    }
                    if let value = dict["InstanceClass"] as? String {
                        self.instanceClass = value
                    }
                    if let value = dict["Network"] as? String {
                        self.network = value
                    }
                    if let value = dict["Num"] as? Int64 {
                        self.num = value
                    }
                    if let value = dict["RegionId"] as? String {
                        self.regionId = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var rdsOrderDOList: [DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList.RdsOrderDOList]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.rdsOrderDOList != nil {
                    var tmp : [Any] = []
                    for k in self.rdsOrderDOList! {
                        tmp.append(k.toMap())
                    }
                    map["RdsOrderDOList"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RdsOrderDOList"] as? [Any?] {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList.RdsOrderDOList] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList.RdsOrderDOList()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.rdsOrderDOList = tmp
                }
            }
        }
        public var drdsOrderDOList: DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList?

        public var polarOrderDOList: DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList?

        public var rdsOrderDOList: DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.drdsOrderDOList?.validate()
            try self.polarOrderDOList?.validate()
            try self.rdsOrderDOList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drdsOrderDOList != nil {
                map["DrdsOrderDOList"] = self.drdsOrderDOList?.toMap()
            }
            if self.polarOrderDOList != nil {
                map["PolarOrderDOList"] = self.polarOrderDOList?.toMap()
            }
            if self.rdsOrderDOList != nil {
                map["RdsOrderDOList"] = self.rdsOrderDOList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DrdsOrderDOList"] as? [String: Any?] {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList()
                model.fromMap(value)
                self.drdsOrderDOList = model
            }
            if let value = dict["PolarOrderDOList"] as? [String: Any?] {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList()
                model.fromMap(value)
                self.polarOrderDOList = model
            }
            if let value = dict["RdsOrderDOList"] as? [String: Any?] {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList()
                model.fromMap(value)
                self.rdsOrderDOList = model
            }
        }
    }
    public var requestId: String?

    public var restoreOrderDO: DescribeRestoreOrderResponseBody.RestoreOrderDO?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.restoreOrderDO?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.restoreOrderDO != nil {
            map["RestoreOrderDO"] = self.restoreOrderDO?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["RestoreOrderDO"] as? [String: Any?] {
            var model = DescribeRestoreOrderResponseBody.RestoreOrderDO()
            model.fromMap(value)
            self.restoreOrderDO = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeRestoreOrderResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRestoreOrderResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRestoreOrderResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeShardTaskInfoRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var sourceTableName: String?

    public var targetTableName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceTableName != nil {
            map["SourceTableName"] = self.sourceTableName!
        }
        if self.targetTableName != nil {
            map["TargetTableName"] = self.targetTableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceTableName"] as? String {
            self.sourceTableName = value
        }
        if let value = dict["TargetTableName"] as? String {
            self.targetTableName = value
        }
    }
}

public class DescribeShardTaskInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Full : Tea.TeaModel {
            public var expired: Int32?

            public var progress: Int32?

            public var startTime: String?

            public var total: Int32?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                if self.tps != nil {
                    map["Tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Expired"] as? Int32 {
                    self.expired = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
                if let value = dict["Tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public class FullCheck : Tea.TeaModel {
            public var expired: Int32?

            public var progress: Int32?

            public var startTime: String?

            public var total: Int32?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                if self.tps != nil {
                    map["Tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Expired"] as? Int32 {
                    self.expired = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
                if let value = dict["Tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public class FullRevise : Tea.TeaModel {
            public var expired: Int32?

            public var progress: Int32?

            public var startTime: String?

            public var total: Int32?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                if self.tps != nil {
                    map["Tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Expired"] as? Int32 {
                    self.expired = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
                if let value = dict["Tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public class Increment : Tea.TeaModel {
            public var delay: Int32?

            public var startTime: String?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.delay != nil {
                    map["Delay"] = self.delay!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.tps != nil {
                    map["Tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Delay"] as? Int32 {
                    self.delay = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public class Review : Tea.TeaModel {
            public var expired: Int32?

            public var progress: Int32?

            public var startTime: String?

            public var total: Int32?

            public var tps: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.total != nil {
                    map["Total"] = self.total!
                }
                if self.tps != nil {
                    map["Tps"] = self.tps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Expired"] as? Int32 {
                    self.expired = value
                }
                if let value = dict["Progress"] as? Int32 {
                    self.progress = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Total"] as? Int32 {
                    self.total = value
                }
                if let value = dict["Tps"] as? Int32 {
                    self.tps = value
                }
            }
        }
        public var expired: String?

        public var full: DescribeShardTaskInfoResponseBody.Data.Full?

        public var fullCheck: DescribeShardTaskInfoResponseBody.Data.FullCheck?

        public var fullRevise: DescribeShardTaskInfoResponseBody.Data.FullRevise?

        public var increment: DescribeShardTaskInfoResponseBody.Data.Increment?

        public var progress: String?

        public var review: DescribeShardTaskInfoResponseBody.Data.Review?

        public var sourceTableName: String?

        public var stage: String?

        public var status: String?

        public var targetTableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.full?.validate()
            try self.fullCheck?.validate()
            try self.fullRevise?.validate()
            try self.increment?.validate()
            try self.review?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expired != nil {
                map["Expired"] = self.expired!
            }
            if self.full != nil {
                map["Full"] = self.full?.toMap()
            }
            if self.fullCheck != nil {
                map["FullCheck"] = self.fullCheck?.toMap()
            }
            if self.fullRevise != nil {
                map["FullRevise"] = self.fullRevise?.toMap()
            }
            if self.increment != nil {
                map["Increment"] = self.increment?.toMap()
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.review != nil {
                map["Review"] = self.review?.toMap()
            }
            if self.sourceTableName != nil {
                map["SourceTableName"] = self.sourceTableName!
            }
            if self.stage != nil {
                map["Stage"] = self.stage!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.targetTableName != nil {
                map["TargetTableName"] = self.targetTableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Expired"] as? String {
                self.expired = value
            }
            if let value = dict["Full"] as? [String: Any?] {
                var model = DescribeShardTaskInfoResponseBody.Data.Full()
                model.fromMap(value)
                self.full = model
            }
            if let value = dict["FullCheck"] as? [String: Any?] {
                var model = DescribeShardTaskInfoResponseBody.Data.FullCheck()
                model.fromMap(value)
                self.fullCheck = model
            }
            if let value = dict["FullRevise"] as? [String: Any?] {
                var model = DescribeShardTaskInfoResponseBody.Data.FullRevise()
                model.fromMap(value)
                self.fullRevise = model
            }
            if let value = dict["Increment"] as? [String: Any?] {
                var model = DescribeShardTaskInfoResponseBody.Data.Increment()
                model.fromMap(value)
                self.increment = model
            }
            if let value = dict["Progress"] as? String {
                self.progress = value
            }
            if let value = dict["Review"] as? [String: Any?] {
                var model = DescribeShardTaskInfoResponseBody.Data.Review()
                model.fromMap(value)
                self.review = model
            }
            if let value = dict["SourceTableName"] as? String {
                self.sourceTableName = value
            }
            if let value = dict["Stage"] as? String {
                self.stage = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TargetTableName"] as? String {
                self.targetTableName = value
            }
        }
    }
    public var data: DescribeShardTaskInfoResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeShardTaskInfoResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeShardTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeShardTaskInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeShardTaskInfoResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSqlFlashbakTaskRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DescribeSqlFlashbakTaskResponseBody : Tea.TeaModel {
    public class SqlFlashbackTasks : Tea.TeaModel {
        public class SqlFlashbackTask : Tea.TeaModel {
            public var dbName: String?

            public var downloadUrl: String?

            public var expireTime: Int64?

            public var gmtCreate: Int64?

            public var gmtModified: Int64?

            public var id: Int64?

            public var instId: String?

            public var recallProgress: Int32?

            public var recallRestoreType: Int32?

            public var recallStatus: Int32?

            public var recallType: Int32?

            public var searchEndTime: Int64?

            public var searchStartTime: Int64?

            public var sqlCounter: Int64?

            public var sqlPk: String?

            public var sqlType: String?

            public var tableName: String?

            public var traceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.downloadUrl != nil {
                    map["DownloadUrl"] = self.downloadUrl!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
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
                if self.instId != nil {
                    map["InstId"] = self.instId!
                }
                if self.recallProgress != nil {
                    map["RecallProgress"] = self.recallProgress!
                }
                if self.recallRestoreType != nil {
                    map["RecallRestoreType"] = self.recallRestoreType!
                }
                if self.recallStatus != nil {
                    map["RecallStatus"] = self.recallStatus!
                }
                if self.recallType != nil {
                    map["RecallType"] = self.recallType!
                }
                if self.searchEndTime != nil {
                    map["SearchEndTime"] = self.searchEndTime!
                }
                if self.searchStartTime != nil {
                    map["SearchStartTime"] = self.searchStartTime!
                }
                if self.sqlCounter != nil {
                    map["SqlCounter"] = self.sqlCounter!
                }
                if self.sqlPk != nil {
                    map["SqlPk"] = self.sqlPk!
                }
                if self.sqlType != nil {
                    map["SqlType"] = self.sqlType!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.traceId != nil {
                    map["TraceId"] = self.traceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DbName"] as? String {
                    self.dbName = value
                }
                if let value = dict["DownloadUrl"] as? String {
                    self.downloadUrl = value
                }
                if let value = dict["ExpireTime"] as? Int64 {
                    self.expireTime = value
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
                if let value = dict["InstId"] as? String {
                    self.instId = value
                }
                if let value = dict["RecallProgress"] as? Int32 {
                    self.recallProgress = value
                }
                if let value = dict["RecallRestoreType"] as? Int32 {
                    self.recallRestoreType = value
                }
                if let value = dict["RecallStatus"] as? Int32 {
                    self.recallStatus = value
                }
                if let value = dict["RecallType"] as? Int32 {
                    self.recallType = value
                }
                if let value = dict["SearchEndTime"] as? Int64 {
                    self.searchEndTime = value
                }
                if let value = dict["SearchStartTime"] as? Int64 {
                    self.searchStartTime = value
                }
                if let value = dict["SqlCounter"] as? Int64 {
                    self.sqlCounter = value
                }
                if let value = dict["SqlPk"] as? String {
                    self.sqlPk = value
                }
                if let value = dict["SqlType"] as? String {
                    self.sqlType = value
                }
                if let value = dict["TableName"] as? String {
                    self.tableName = value
                }
                if let value = dict["TraceId"] as? String {
                    self.traceId = value
                }
            }
        }
        public var sqlFlashbackTask: [DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks.SqlFlashbackTask]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sqlFlashbackTask != nil {
                var tmp : [Any] = []
                for k in self.sqlFlashbackTask! {
                    tmp.append(k.toMap())
                }
                map["SqlFlashbackTask"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SqlFlashbackTask"] as? [Any?] {
                var tmp : [DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks.SqlFlashbackTask] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks.SqlFlashbackTask()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.sqlFlashbackTask = tmp
            }
        }
    }
    public var requestId: String?

    public var sqlFlashbackTasks: DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sqlFlashbackTasks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sqlFlashbackTasks != nil {
            map["SqlFlashbackTasks"] = self.sqlFlashbackTasks?.toMap()
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SqlFlashbackTasks"] as? [String: Any?] {
            var model = DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks()
            model.fromMap(value)
            self.sqlFlashbackTasks = model
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeSqlFlashbakTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSqlFlashbakTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSqlFlashbakTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTableRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class DescribeTableResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class List : Tea.TeaModel {
            public var columnName: String?

            public var columnType: String?

            public var extra: String?

            public var index: String?

            public var isAllowNull: String?

            public var isPk: String?

            public override init() {
                super.init()
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
                if self.columnType != nil {
                    map["ColumnType"] = self.columnType!
                }
                if self.extra != nil {
                    map["Extra"] = self.extra!
                }
                if self.index != nil {
                    map["Index"] = self.index!
                }
                if self.isAllowNull != nil {
                    map["IsAllowNull"] = self.isAllowNull!
                }
                if self.isPk != nil {
                    map["IsPk"] = self.isPk!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ColumnName"] as? String {
                    self.columnName = value
                }
                if let value = dict["ColumnType"] as? String {
                    self.columnType = value
                }
                if let value = dict["Extra"] as? String {
                    self.extra = value
                }
                if let value = dict["Index"] as? String {
                    self.index = value
                }
                if let value = dict["IsAllowNull"] as? String {
                    self.isAllowNull = value
                }
                if let value = dict["IsPk"] as? String {
                    self.isPk = value
                }
            }
        }
        public var list: [DescribeTableResponseBody.Data.List]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.list != nil {
                var tmp : [Any] = []
                for k in self.list! {
                    tmp.append(k.toMap())
                }
                map["List"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["List"] as? [Any?] {
                var tmp : [DescribeTableResponseBody.Data.List] = []
                for v in value {
                    if v != nil {
                        var model = DescribeTableResponseBody.Data.List()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.list = tmp
            }
        }
    }
    public var data: DescribeTableResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
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
        if let value = dict["Data"] as? [String: Any?] {
            var model = DescribeTableResponseBody.Data()
            model.fromMap(value)
            self.data = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DescribeTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTableListByTypeRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

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
        if self.currentPage != nil {
            map["CurrentPage"] = self.currentPage!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableType != nil {
            map["TableType"] = self.tableType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableType"] as? String {
            self.tableType = value
        }
    }
}

public class DescribeTableListByTypeResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var property: String?

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
            if self.property != nil {
                map["Property"] = self.property!
            }
            if self.tableName != nil {
                map["TableName"] = self.tableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Property"] as? String {
                self.property = value
            }
            if let value = dict["TableName"] as? String {
                self.tableName = value
            }
        }
    }
    public var list: [DescribeTableListByTypeResponseBody.List]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DescribeTableListByTypeResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = DescribeTableListByTypeResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeTableListByTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTableListByTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTableListByTypeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeTablesRequest : Tea.TeaModel {
    public var currentPage: Int32?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var pageSize: Int32?

    public var query: String?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.query != nil {
            map["Query"] = self.query!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentPage"] as? Int32 {
            self.currentPage = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Query"] as? String {
            self.query = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class DescribeTablesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var allowFullTableScan: Bool?

        public var broadcast: Bool?

        public var dbInstType: Int32?

        public var isLocked: Bool?

        public var isShard: Bool?

        public var shardKey: String?

        public var status: Int32?

        public var table: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowFullTableScan != nil {
                map["AllowFullTableScan"] = self.allowFullTableScan!
            }
            if self.broadcast != nil {
                map["Broadcast"] = self.broadcast!
            }
            if self.dbInstType != nil {
                map["DbInstType"] = self.dbInstType!
            }
            if self.isLocked != nil {
                map["IsLocked"] = self.isLocked!
            }
            if self.isShard != nil {
                map["IsShard"] = self.isShard!
            }
            if self.shardKey != nil {
                map["ShardKey"] = self.shardKey!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.table != nil {
                map["Table"] = self.table!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllowFullTableScan"] as? Bool {
                self.allowFullTableScan = value
            }
            if let value = dict["Broadcast"] as? Bool {
                self.broadcast = value
            }
            if let value = dict["DbInstType"] as? Int32 {
                self.dbInstType = value
            }
            if let value = dict["IsLocked"] as? Bool {
                self.isLocked = value
            }
            if let value = dict["IsShard"] as? Bool {
                self.isShard = value
            }
            if let value = dict["ShardKey"] as? String {
                self.shardKey = value
            }
            if let value = dict["Status"] as? Int32 {
                self.status = value
            }
            if let value = dict["Table"] as? String {
                self.table = value
            }
        }
    }
    public var list: [DescribeTablesResponseBody.List]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

    public var total: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.total != nil {
            map["Total"] = self.total!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["List"] as? [Any?] {
            var tmp : [DescribeTablesResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = DescribeTablesResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["Total"] as? Int32 {
            self.total = value
        }
    }
}

public class DescribeTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DisableSqlAuditRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class DisableSqlAuditResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DisableSqlAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableSqlAuditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DisableSqlAuditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableInstanceIpv6AddressRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class EnableInstanceIpv6AddressResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class EnableInstanceIpv6AddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInstanceIpv6AddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableInstanceIpv6AddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSqlAuditRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var isRecall: Bool?

    public var recallEndTimestamp: String?

    public var recallStartTimestamp: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.isRecall != nil {
            map["IsRecall"] = self.isRecall!
        }
        if self.recallEndTimestamp != nil {
            map["RecallEndTimestamp"] = self.recallEndTimestamp!
        }
        if self.recallStartTimestamp != nil {
            map["RecallStartTimestamp"] = self.recallStartTimestamp!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["IsRecall"] as? Bool {
            self.isRecall = value
        }
        if let value = dict["RecallEndTimestamp"] as? String {
            self.recallEndTimestamp = value
        }
        if let value = dict["RecallStartTimestamp"] as? String {
            self.recallStartTimestamp = value
        }
    }
}

public class EnableSqlAuditResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableSqlAuditResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSqlAuditResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableSqlAuditResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class EnableSqlFlashbackMatchSwitchRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class EnableSqlFlashbackMatchSwitchResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class EnableSqlFlashbackMatchSwitchResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableSqlFlashbackMatchSwitchResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableSqlFlashbackMatchSwitchResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class FlashbackRecycleBinTableRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class FlashbackRecycleBinTableResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class FlashbackRecycleBinTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FlashbackRecycleBinTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FlashbackRecycleBinTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetDrdsDbRdsRelationInfoRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class GetDrdsDbRdsRelationInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var rdsInstanceId: String?

        public var readOnlyInstanceInfo: [String]?

        public var usedInstanceId: String?

        public var usedInstanceType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rdsInstanceId != nil {
                map["RdsInstanceId"] = self.rdsInstanceId!
            }
            if self.readOnlyInstanceInfo != nil {
                map["ReadOnlyInstanceInfo"] = self.readOnlyInstanceInfo!
            }
            if self.usedInstanceId != nil {
                map["UsedInstanceId"] = self.usedInstanceId!
            }
            if self.usedInstanceType != nil {
                map["UsedInstanceType"] = self.usedInstanceType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RdsInstanceId"] as? String {
                self.rdsInstanceId = value
            }
            if let value = dict["ReadOnlyInstanceInfo"] as? [String] {
                self.readOnlyInstanceInfo = value
            }
            if let value = dict["UsedInstanceId"] as? String {
                self.usedInstanceId = value
            }
            if let value = dict["UsedInstanceType"] as? String {
                self.usedInstanceType = value
            }
        }
    }
    public var data: [GetDrdsDbRdsRelationInfoResponseBody.Data]?

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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if let value = dict["Data"] as? [Any?] {
            var tmp : [GetDrdsDbRdsRelationInfoResponseBody.Data] = []
            for v in value {
                if v != nil {
                    var model = GetDrdsDbRdsRelationInfoResponseBody.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class GetDrdsDbRdsRelationInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDrdsDbRdsRelationInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDrdsDbRdsRelationInfoResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ResourceId"] as? String {
                    self.resourceId = value
                }
                if let value = dict["ResourceType"] as? String {
                    self.resourceType = value
                }
                if let value = dict["TagKey"] as? String {
                    self.tagKey = value
                }
                if let value = dict["TagValue"] as? String {
                    self.tagValue = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["TagResource"] as? [Any?] {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in value {
                    if v != nil {
                        var model = ListTagResourcesResponseBody.TagResources.TagResource()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.tagResource = tmp
            }
        }
    }
    public var nextToken: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.tagResources != nil {
            map["TagResources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TagResources"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListTagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ManagePrivateRdsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var drdsInstanceId: String?

    public var params: String?

    public var rdsAction: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.params != nil {
            map["Params"] = self.params!
        }
        if self.rdsAction != nil {
            map["RdsAction"] = self.rdsAction!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Params"] as? String {
            self.params = value
        }
        if let value = dict["RdsAction"] as? String {
            self.rdsAction = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ManagePrivateRdsResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ManagePrivateRdsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ManagePrivateRdsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ManagePrivateRdsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var accountName: String?

    public var description_: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyAccountDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyAccountPrivilegeRequest : Tea.TeaModel {
    public class DbPrivilege : Tea.TeaModel {
        public var dbName: String?

        public var privilege: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.privilege != nil {
                map["Privilege"] = self.privilege!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["Privilege"] as? String {
                self.privilege = value
            }
        }
    }
    public var accountName: String?

    public var dbPrivilege: [ModifyAccountPrivilegeRequest.DbPrivilege]?

    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
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
        if self.dbPrivilege != nil {
            var tmp : [Any] = []
            for k in self.dbPrivilege! {
                tmp.append(k.toMap())
            }
            map["DbPrivilege"] = tmp
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DbPrivilege"] as? [Any?] {
            var tmp : [ModifyAccountPrivilegeRequest.DbPrivilege] = []
            for v in value {
                if v != nil {
                    var model = ModifyAccountPrivilegeRequest.DbPrivilege()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dbPrivilege = tmp
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ModifyAccountPrivilegeResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyAccountPrivilegeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountPrivilegeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountPrivilegeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDrdsInstanceDescriptionRequest : Tea.TeaModel {
    public var description_: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
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
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class ModifyDrdsInstanceDescriptionResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDrdsInstanceDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDrdsInstanceDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDrdsInstanceDescriptionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyDrdsIpWhiteListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var groupAttribute: String?

    public var groupName: String?

    public var ipWhiteList: String?

    public var mode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.groupAttribute != nil {
            map["GroupAttribute"] = self.groupAttribute!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.ipWhiteList != nil {
            map["IpWhiteList"] = self.ipWhiteList!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["GroupAttribute"] as? String {
            self.groupAttribute = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IpWhiteList"] as? String {
            self.ipWhiteList = value
        }
        if let value = dict["Mode"] as? Bool {
            self.mode = value
        }
    }
}

public class ModifyDrdsIpWhiteListResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyDrdsIpWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDrdsIpWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDrdsIpWhiteListResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyPolarDbReadWeightRequest : Tea.TeaModel {
    public var dbInstanceId: String?

    public var dbName: String?

    public var dbNodeIds: String?

    public var drdsInstanceId: String?

    public var weights: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbNodeIds != nil {
            map["DbNodeIds"] = self.dbNodeIds!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.weights != nil {
            map["Weights"] = self.weights!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstanceId"] as? String {
            self.dbInstanceId = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DbNodeIds"] as? String {
            self.dbNodeIds = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["Weights"] as? String {
            self.weights = value
        }
    }
}

public class ModifyPolarDbReadWeightResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyPolarDbReadWeightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolarDbReadWeightResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyPolarDbReadWeightResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyRdsReadWeightRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var instanceNames: String?

    public var weights: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.instanceNames != nil {
            map["InstanceNames"] = self.instanceNames!
        }
        if self.weights != nil {
            map["Weights"] = self.weights!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["InstanceNames"] as? String {
            self.instanceNames = value
        }
        if let value = dict["Weights"] as? String {
            self.weights = value
        }
    }
}

public class ModifyRdsReadWeightResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ModifyRdsReadWeightResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRdsReadWeightResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyRdsReadWeightResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class PutStartBackupRequest : Tea.TeaModel {
    public var backupDbNames: String?

    public var backupLevel: String?

    public var backupMode: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupDbNames != nil {
            map["BackupDbNames"] = self.backupDbNames!
        }
        if self.backupLevel != nil {
            map["BackupLevel"] = self.backupLevel!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupDbNames"] as? String {
            self.backupDbNames = value
        }
        if let value = dict["BackupLevel"] as? String {
            self.backupLevel = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class PutStartBackupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class PutStartBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PutStartBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PutStartBackupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RefreshDrdsAtomUrlRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RefreshDrdsAtomUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RefreshDrdsAtomUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RefreshDrdsAtomUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RefreshDrdsAtomUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseInstanceInternetAddressRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ReleaseInstanceInternetAddressResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReleaseInstanceInternetAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseInstanceInternetAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseInstanceInternetAddressResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveBackupsSetRequest : Tea.TeaModel {
    public var backupId: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RemoveBackupsSetResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveBackupsSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveBackupsSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveBackupsSetResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDrdsDbRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RemoveDrdsDbResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveDrdsDbResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDrdsDbResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveDrdsDbResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDrdsDbFailedRecordRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RemoveDrdsDbFailedRecordResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? Bool {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveDrdsDbFailedRecordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDrdsDbFailedRecordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveDrdsDbFailedRecordResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveDrdsInstanceRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RemoveDrdsInstanceResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveDrdsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveDrdsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveDrdsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveInstanceAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
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
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RemoveInstanceAccountResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveInstanceAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveInstanceAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveInstanceAccountResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RemoveRecycleBinTableRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
    }
}

public class RemoveRecycleBinTableResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class RemoveRecycleBinTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveRecycleBinTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveRecycleBinTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartDrdsInstanceRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class RestartDrdsInstanceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class RestartDrdsInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDrdsInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartDrdsInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RollbackInstanceVersionRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class RollbackInstanceVersionResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RollbackInstanceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RollbackInstanceVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RollbackInstanceVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetBackupLocalRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var highSpaceUsageProtection: String?

    public var localLogRetentionHours: String?

    public var localLogRetentionSpace: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.highSpaceUsageProtection != nil {
            map["HighSpaceUsageProtection"] = self.highSpaceUsageProtection!
        }
        if self.localLogRetentionHours != nil {
            map["LocalLogRetentionHours"] = self.localLogRetentionHours!
        }
        if self.localLogRetentionSpace != nil {
            map["LocalLogRetentionSpace"] = self.localLogRetentionSpace!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["HighSpaceUsageProtection"] as? String {
            self.highSpaceUsageProtection = value
        }
        if let value = dict["LocalLogRetentionHours"] as? String {
            self.localLogRetentionHours = value
        }
        if let value = dict["LocalLogRetentionSpace"] as? String {
            self.localLogRetentionSpace = value
        }
    }
}

public class SetBackupLocalResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetBackupLocalResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetBackupLocalResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetBackupLocalResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetBackupPolicyRequest : Tea.TeaModel {
    public var backupDbNames: String?

    public var backupLevel: String?

    public var backupLog: String?

    public var backupMode: String?

    public var dataBackupRetentionPeriod: String?

    public var drdsInstanceId: String?

    public var logBackupRetentionPeriod: String?

    public var preferredBackupEndTime: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupStartTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupDbNames != nil {
            map["BackupDbNames"] = self.backupDbNames!
        }
        if self.backupLevel != nil {
            map["BackupLevel"] = self.backupLevel!
        }
        if self.backupLog != nil {
            map["BackupLog"] = self.backupLog!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.dataBackupRetentionPeriod != nil {
            map["DataBackupRetentionPeriod"] = self.dataBackupRetentionPeriod!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.logBackupRetentionPeriod != nil {
            map["LogBackupRetentionPeriod"] = self.logBackupRetentionPeriod!
        }
        if self.preferredBackupEndTime != nil {
            map["PreferredBackupEndTime"] = self.preferredBackupEndTime!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupStartTime != nil {
            map["PreferredBackupStartTime"] = self.preferredBackupStartTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupDbNames"] as? String {
            self.backupDbNames = value
        }
        if let value = dict["BackupLevel"] as? String {
            self.backupLevel = value
        }
        if let value = dict["BackupLog"] as? String {
            self.backupLog = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["DataBackupRetentionPeriod"] as? String {
            self.dataBackupRetentionPeriod = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["LogBackupRetentionPeriod"] as? String {
            self.logBackupRetentionPeriod = value
        }
        if let value = dict["PreferredBackupEndTime"] as? String {
            self.preferredBackupEndTime = value
        }
        if let value = dict["PreferredBackupPeriod"] as? String {
            self.preferredBackupPeriod = value
        }
        if let value = dict["PreferredBackupStartTime"] as? String {
            self.preferredBackupStartTime = value
        }
    }
}

public class SetBackupPolicyResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetBackupPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetupBroadcastTablesRequest : Tea.TeaModel {
    public var active: Bool?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var tableName: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.active != nil {
            map["Active"] = self.active!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Active"] as? Bool {
            self.active = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? [String] {
            self.tableName = value
        }
    }
}

public class SetupBroadcastTablesResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetupBroadcastTablesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetupBroadcastTablesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetupBroadcastTablesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetupDrdsParamsRequest : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var dbName: String?

        public var paramRanges: String?

        public var paramType: String?

        public var paramValue: String?

        public var paramVariableName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.paramRanges != nil {
                map["ParamRanges"] = self.paramRanges!
            }
            if self.paramType != nil {
                map["ParamType"] = self.paramType!
            }
            if self.paramValue != nil {
                map["ParamValue"] = self.paramValue!
            }
            if self.paramVariableName != nil {
                map["ParamVariableName"] = self.paramVariableName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbName"] as? String {
                self.dbName = value
            }
            if let value = dict["ParamRanges"] as? String {
                self.paramRanges = value
            }
            if let value = dict["ParamType"] as? String {
                self.paramType = value
            }
            if let value = dict["ParamValue"] as? String {
                self.paramValue = value
            }
            if let value = dict["ParamVariableName"] as? String {
                self.paramVariableName = value
            }
        }
    }
    public var data: [SetupDrdsParamsRequest.Data]?

    public var drdsInstanceId: String?

    public var paramLevel: String?

    public var regionId: String?

    public override init() {
        super.init()
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
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.paramLevel != nil {
            map["ParamLevel"] = self.paramLevel!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? [Any?] {
            var tmp : [SetupDrdsParamsRequest.Data] = []
            for v in value {
                if v != nil {
                    var model = SetupDrdsParamsRequest.Data()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.data = tmp
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["ParamLevel"] as? String {
            self.paramLevel = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SetupDrdsParamsResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetupDrdsParamsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetupDrdsParamsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetupDrdsParamsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetupRecycleBinStatusRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var statusAction: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.statusAction != nil {
            map["StatusAction"] = self.statusAction!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["StatusAction"] as? String {
            self.statusAction = value
        }
    }
}

public class SetupRecycleBinStatusResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetupRecycleBinStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetupRecycleBinStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetupRecycleBinStatusResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SetupTableRequest : Tea.TeaModel {
    public var allowFullTableScan: Bool?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var tableName: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowFullTableScan != nil {
            map["AllowFullTableScan"] = self.allowFullTableScan!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllowFullTableScan"] as? Bool {
            self.allowFullTableScan = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["TableName"] as? [String] {
            self.tableName = value
        }
    }
}

public class SetupTableResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SetupTableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetupTableResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SetupTableResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartRestoreRequest : Tea.TeaModel {
    public var backupDbNames: String?

    public var backupId: String?

    public var backupLevel: String?

    public var backupMode: String?

    public var drdsInstanceId: String?

    public var preferredBackupTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backupDbNames != nil {
            map["BackupDbNames"] = self.backupDbNames!
        }
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.backupLevel != nil {
            map["BackupLevel"] = self.backupLevel!
        }
        if self.backupMode != nil {
            map["BackupMode"] = self.backupMode!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BackupDbNames"] as? String {
            self.backupDbNames = value
        }
        if let value = dict["BackupId"] as? String {
            self.backupId = value
        }
        if let value = dict["BackupLevel"] as? String {
            self.backupLevel = value
        }
        if let value = dict["BackupMode"] as? String {
            self.backupMode = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PreferredBackupTime"] as? String {
            self.preferredBackupTime = value
        }
    }
}

public class StartRestoreResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var result: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Result"] as? String {
            self.result = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class StartRestoreResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartRestoreResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartRestoreResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitCleanTaskRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var expandType: String?

    public var jobId: String?

    public var parentJobId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.expandType != nil {
            map["ExpandType"] = self.expandType!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.parentJobId != nil {
            map["ParentJobId"] = self.parentJobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["ExpandType"] as? String {
            self.expandType = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["ParentJobId"] as? String {
            self.parentJobId = value
        }
    }
}

public class SubmitCleanTaskResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitCleanTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitCleanTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitCleanTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitHotExpandPreCheckTaskRequest : Tea.TeaModel {
    public var dbInstType: String?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var tableList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.tableList != nil {
            map["TableList"] = self.tableList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["TableList"] as? [String] {
            self.tableList = value
        }
    }
}

public class SubmitHotExpandPreCheckTaskResponseBody : Tea.TeaModel {
    public var msg: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SubmitHotExpandPreCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitHotExpandPreCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitHotExpandPreCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitHotExpandTaskRequest : Tea.TeaModel {
    public class ExtendedMapping : Tea.TeaModel {
        public var srcDb: String?

        public var srcInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.srcDb != nil {
                map["SrcDb"] = self.srcDb!
            }
            if self.srcInstanceId != nil {
                map["SrcInstanceId"] = self.srcInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SrcDb"] as? String {
                self.srcDb = value
            }
            if let value = dict["SrcInstanceId"] as? String {
                self.srcInstanceId = value
            }
        }
    }
    public class InstanceDbMapping : Tea.TeaModel {
        public var dbList: String?

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
            if self.dbList != nil {
                map["DbList"] = self.dbList!
            }
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbList"] as? String {
                self.dbList = value
            }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
        }
    }
    public class Mapping : Tea.TeaModel {
        public var dbShardColumn: String?

        public var hotDbName: String?

        public var hotTableName: String?

        public var logicTable: String?

        public var shardDbValue: String?

        public var shardTbValue: String?

        public var tbShardColumn: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbShardColumn != nil {
                map["DbShardColumn"] = self.dbShardColumn!
            }
            if self.hotDbName != nil {
                map["HotDbName"] = self.hotDbName!
            }
            if self.hotTableName != nil {
                map["HotTableName"] = self.hotTableName!
            }
            if self.logicTable != nil {
                map["LogicTable"] = self.logicTable!
            }
            if self.shardDbValue != nil {
                map["ShardDbValue"] = self.shardDbValue!
            }
            if self.shardTbValue != nil {
                map["ShardTbValue"] = self.shardTbValue!
            }
            if self.tbShardColumn != nil {
                map["TbShardColumn"] = self.tbShardColumn!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DbShardColumn"] as? String {
                self.dbShardColumn = value
            }
            if let value = dict["HotDbName"] as? String {
                self.hotDbName = value
            }
            if let value = dict["HotTableName"] as? String {
                self.hotTableName = value
            }
            if let value = dict["LogicTable"] as? String {
                self.logicTable = value
            }
            if let value = dict["ShardDbValue"] as? String {
                self.shardDbValue = value
            }
            if let value = dict["ShardTbValue"] as? String {
                self.shardTbValue = value
            }
            if let value = dict["TbShardColumn"] as? String {
                self.tbShardColumn = value
            }
        }
    }
    public class SupperAccountMapping : Tea.TeaModel {
        public var instanceName: String?

        public var supperAccount: String?

        public var supperPassword: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.supperAccount != nil {
                map["SupperAccount"] = self.supperAccount!
            }
            if self.supperPassword != nil {
                map["SupperPassword"] = self.supperPassword!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceName"] as? String {
                self.instanceName = value
            }
            if let value = dict["SupperAccount"] as? String {
                self.supperAccount = value
            }
            if let value = dict["SupperPassword"] as? String {
                self.supperPassword = value
            }
        }
    }
    public var dbName: String?

    public var drdsInstanceId: String?

    public var extendedMapping: [SubmitHotExpandTaskRequest.ExtendedMapping]?

    public var instanceDbMapping: [SubmitHotExpandTaskRequest.InstanceDbMapping]?

    public var mapping: [SubmitHotExpandTaskRequest.Mapping]?

    public var supperAccountMapping: [SubmitHotExpandTaskRequest.SupperAccountMapping]?

    public var taskDesc: String?

    public var taskName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.extendedMapping != nil {
            var tmp : [Any] = []
            for k in self.extendedMapping! {
                tmp.append(k.toMap())
            }
            map["ExtendedMapping"] = tmp
        }
        if self.instanceDbMapping != nil {
            var tmp : [Any] = []
            for k in self.instanceDbMapping! {
                tmp.append(k.toMap())
            }
            map["InstanceDbMapping"] = tmp
        }
        if self.mapping != nil {
            var tmp : [Any] = []
            for k in self.mapping! {
                tmp.append(k.toMap())
            }
            map["Mapping"] = tmp
        }
        if self.supperAccountMapping != nil {
            var tmp : [Any] = []
            for k in self.supperAccountMapping! {
                tmp.append(k.toMap())
            }
            map["SupperAccountMapping"] = tmp
        }
        if self.taskDesc != nil {
            map["TaskDesc"] = self.taskDesc!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["ExtendedMapping"] as? [Any?] {
            var tmp : [SubmitHotExpandTaskRequest.ExtendedMapping] = []
            for v in value {
                if v != nil {
                    var model = SubmitHotExpandTaskRequest.ExtendedMapping()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.extendedMapping = tmp
        }
        if let value = dict["InstanceDbMapping"] as? [Any?] {
            var tmp : [SubmitHotExpandTaskRequest.InstanceDbMapping] = []
            for v in value {
                if v != nil {
                    var model = SubmitHotExpandTaskRequest.InstanceDbMapping()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceDbMapping = tmp
        }
        if let value = dict["Mapping"] as? [Any?] {
            var tmp : [SubmitHotExpandTaskRequest.Mapping] = []
            for v in value {
                if v != nil {
                    var model = SubmitHotExpandTaskRequest.Mapping()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mapping = tmp
        }
        if let value = dict["SupperAccountMapping"] as? [Any?] {
            var tmp : [SubmitHotExpandTaskRequest.SupperAccountMapping] = []
            for v in value {
                if v != nil {
                    var model = SubmitHotExpandTaskRequest.SupperAccountMapping()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.supperAccountMapping = tmp
        }
        if let value = dict["TaskDesc"] as? String {
            self.taskDesc = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class SubmitHotExpandTaskResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SubmitHotExpandTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitHotExpandTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitHotExpandTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSmoothExpandPreCheckRequest : Tea.TeaModel {
    public var dbInstType: String?

    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbInstType != nil {
            map["DbInstType"] = self.dbInstType!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbInstType"] as? String {
            self.dbInstType = value
        }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class SubmitSmoothExpandPreCheckResponseBody : Tea.TeaModel {
    public var msg: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SubmitSmoothExpandPreCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSmoothExpandPreCheckResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSmoothExpandPreCheckResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSmoothExpandPreCheckTaskRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
    }
}

public class SubmitSmoothExpandPreCheckTaskResponseBody : Tea.TeaModel {
    public var msg: String?

    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msg != nil {
            map["Msg"] = self.msg!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Msg"] as? String {
            self.msg = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SubmitSmoothExpandPreCheckTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSmoothExpandPreCheckTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSmoothExpandPreCheckTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SubmitSqlFlashbackTaskRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var endTime: String?

    public var recallRestoreType: Int32?

    public var recallType: Int32?

    public var sqlPk: String?

    public var sqlType: String?

    public var startTime: String?

    public var tableName: String?

    public var traceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.recallRestoreType != nil {
            map["RecallRestoreType"] = self.recallRestoreType!
        }
        if self.recallType != nil {
            map["RecallType"] = self.recallType!
        }
        if self.sqlPk != nil {
            map["SqlPk"] = self.sqlPk!
        }
        if self.sqlType != nil {
            map["SqlType"] = self.sqlType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.tableName != nil {
            map["TableName"] = self.tableName!
        }
        if self.traceId != nil {
            map["TraceId"] = self.traceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["RecallRestoreType"] as? Int32 {
            self.recallRestoreType = value
        }
        if let value = dict["RecallType"] as? Int32 {
            self.recallType = value
        }
        if let value = dict["SqlPk"] as? String {
            self.sqlPk = value
        }
        if let value = dict["SqlType"] as? String {
            self.sqlType = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["TableName"] as? String {
            self.tableName = value
        }
        if let value = dict["TraceId"] as? String {
            self.traceId = value
        }
    }
}

public class SubmitSqlFlashbackTaskResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

    public var taskId: Int64?

    public override init() {
        super.init()
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? Int64 {
            self.taskId = value
        }
    }
}

public class SubmitSqlFlashbackTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitSqlFlashbackTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SubmitSqlFlashbackTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class SwitchGlobalBroadcastTypeRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class SwitchGlobalBroadcastTypeResponseBody : Tea.TeaModel {
    public var data: Bool?

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
        if let value = dict["Data"] as? Bool {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class SwitchGlobalBroadcastTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SwitchGlobalBroadcastTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SwitchGlobalBroadcastTypeResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Key"] as? String {
                self.key = value
            }
            if let value = dict["Value"] as? String {
                self.value = value
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = TagResourcesRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
    }
}

public class TagResourcesResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = TagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.tagKey != nil {
            map["TagKey"] = self.tagKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["TagKey"] as? [String] {
            self.tagKey = value
        }
    }
}

public class UntagResourcesResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = UntagResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateInstanceNetworkRequest : Tea.TeaModel {
    public var classicExpiredDays: Int32?

    public var drdsInstanceId: String?

    public var retainClassic: Bool?

    public var srcInstanceNetworkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.classicExpiredDays != nil {
            map["ClassicExpiredDays"] = self.classicExpiredDays!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.retainClassic != nil {
            map["RetainClassic"] = self.retainClassic!
        }
        if self.srcInstanceNetworkType != nil {
            map["SrcInstanceNetworkType"] = self.srcInstanceNetworkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClassicExpiredDays"] as? Int32 {
            self.classicExpiredDays = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RetainClassic"] as? Bool {
            self.retainClassic = value
        }
        if let value = dict["SrcInstanceNetworkType"] as? String {
            self.srcInstanceNetworkType = value
        }
    }
}

public class UpdateInstanceNetworkResponseBody : Tea.TeaModel {
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
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateInstanceNetworkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateInstanceNetworkResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateInstanceNetworkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdatePrivateRdsClassRequest : Tea.TeaModel {
    public var autoUseCoupon: Bool?

    public var DBInstanceId: String?

    public var drdsInstanceId: String?

    public var prePayDuration: Int32?

    public var rdsClass: String?

    public var storage: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoUseCoupon != nil {
            map["AutoUseCoupon"] = self.autoUseCoupon!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.prePayDuration != nil {
            map["PrePayDuration"] = self.prePayDuration!
        }
        if self.rdsClass != nil {
            map["RdsClass"] = self.rdsClass!
        }
        if self.storage != nil {
            map["Storage"] = self.storage!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoUseCoupon"] as? Bool {
            self.autoUseCoupon = value
        }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["PrePayDuration"] as? Int32 {
            self.prePayDuration = value
        }
        if let value = dict["RdsClass"] as? String {
            self.rdsClass = value
        }
        if let value = dict["Storage"] as? String {
            self.storage = value
        }
    }
}

public class UpdatePrivateRdsClassResponseBody : Tea.TeaModel {
    public var data: String?

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
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdatePrivateRdsClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdatePrivateRdsClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdatePrivateRdsClassResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceGroupAttributeRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var newResourceGroupId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.newResourceGroupId != nil {
            map["NewResourceGroupId"] = self.newResourceGroupId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["NewResourceGroupId"] as? String {
            self.newResourceGroupId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpdateResourceGroupAttributeResponseBody : Tea.TeaModel {
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

public class UpdateResourceGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateResourceGroupAttributeResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeHiStoreInstanceRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var historeInstanceId: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.historeInstanceId != nil {
            map["HistoreInstanceId"] = self.historeInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["HistoreInstanceId"] as? String {
            self.historeInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class UpgradeHiStoreInstanceResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeHiStoreInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeHiStoreInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeHiStoreInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpgradeInstanceVersionRequest : Tea.TeaModel {
    public var drdsInstanceId: String?

    public var regionId: String?

    public var rpm: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.rpm != nil {
            map["Rpm"] = self.rpm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["Rpm"] as? String {
            self.rpm = value
        }
    }
}

public class UpgradeInstanceVersionResponseBody : Tea.TeaModel {
    public var data: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? String {
            self.data = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpgradeInstanceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeInstanceVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeInstanceVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ValidateShardTaskRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var regionId: String?

    public var sourceTableName: String?

    public var targetTableName: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.sourceTableName != nil {
            map["SourceTableName"] = self.sourceTableName!
        }
        if self.targetTableName != nil {
            map["TargetTableName"] = self.targetTableName!
        }
        if self.taskType != nil {
            map["TaskType"] = self.taskType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbName"] as? String {
            self.dbName = value
        }
        if let value = dict["DrdsInstanceId"] as? String {
            self.drdsInstanceId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["SourceTableName"] as? String {
            self.sourceTableName = value
        }
        if let value = dict["TargetTableName"] as? String {
            self.targetTableName = value
        }
        if let value = dict["TaskType"] as? String {
            self.taskType = value
        }
    }
}

public class ValidateShardTaskResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var item: String?

        public var result: Int32?

        public override init() {
            super.init()
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
                map["Item"] = self.item!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Item"] as? String {
                self.item = value
            }
            if let value = dict["Result"] as? Int32 {
                self.result = value
            }
        }
    }
    public var list: [ValidateShardTaskResponseBody.List]?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["List"] = tmp
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
        if let value = dict["List"] as? [Any?] {
            var tmp : [ValidateShardTaskResponseBody.List] = []
            for v in value {
                if v != nil {
                    var model = ValidateShardTaskResponseBody.List()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.list = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class ValidateShardTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ValidateShardTaskResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ValidateShardTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
