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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChangeVSwitch") && dict["ChangeVSwitch"] != nil {
            self.changeVSwitch = dict["ChangeVSwitch"] as! Bool
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("DrdsRegionId") && dict["DrdsRegionId"] != nil {
            self.drdsRegionId = dict["DrdsRegionId"] as! String
        }
        if dict.keys.contains("NewVSwitch") && dict["NewVSwitch"] != nil {
            self.newVSwitch = dict["NewVSwitch"] as! String
        }
        if dict.keys.contains("OriginAzoneId") && dict["OriginAzoneId"] != nil {
            self.originAzoneId = dict["OriginAzoneId"] as! String
        }
        if dict.keys.contains("TargetAzoneId") && dict["TargetAzoneId"] != nil {
            self.targetAzoneId = dict["TargetAzoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ChangeInstanceAzoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckDrdsDbNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsActive") && dict["IsActive"] != nil {
                self.isActive = dict["IsActive"] as! Bool
            }
            if dict.keys.contains("Msg") && dict["Msg"] != nil {
                self.msg = dict["Msg"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CheckExpandStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckExpandStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CheckSqlAuditEnableStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("ShardDbName") && dict["ShardDbName"] != nil {
                self.shardDbName = dict["ShardDbName"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("Password") && dict["Password"] != nil {
                self.password = dict["Password"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DbInstanceIsCreating") && dict["DbInstanceIsCreating"] != nil {
            self.dbInstanceIsCreating = dict["DbInstanceIsCreating"] as! Bool
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Encode") && dict["Encode"] != nil {
            self.encode = dict["Encode"] as! String
        }
        if dict.keys.contains("InstDbName") && dict["InstDbName"] != nil {
            var tmp : [CreateDrdsDBRequest.InstDbName] = []
            for v in dict["InstDbName"] as! [Any] {
                var model = CreateDrdsDBRequest.InstDbName()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instDbName = tmp
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RdsInstance") && dict["RdsInstance"] != nil {
            self.rdsInstance = dict["RdsInstance"] as! [String]
        }
        if dict.keys.contains("RdsSuperAccount") && dict["RdsSuperAccount"] != nil {
            var tmp : [CreateDrdsDBRequest.RdsSuperAccount] = []
            for v in dict["RdsSuperAccount"] as! [Any] {
                var model = CreateDrdsDBRequest.RdsSuperAccount()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rdsSuperAccount = tmp
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDrdsDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceSeries") && dict["InstanceSeries"] != nil {
            self.instanceSeries = dict["InstanceSeries"] as! String
        }
        if dict.keys.contains("IsAutoRenew") && dict["IsAutoRenew"] != nil {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("MasterInstId") && dict["MasterInstId"] != nil {
            self.masterInstId = dict["MasterInstId"] as! String
        }
        if dict.keys.contains("MySQLVersion") && dict["MySQLVersion"] != nil {
            self.mySQLVersion = dict["MySQLVersion"] as! Int32
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") && dict["Quantity"] != nil {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Specification") && dict["Specification"] != nil {
            self.specification = dict["Specification"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
        if dict.keys.contains("isHa") && dict["isHa"] != nil {
            self.isHa = dict["isHa"] as! Bool
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("drdsInstanceIdList") && dict["drdsInstanceIdList"] != nil {
                    self.drdsInstanceIdList = dict["drdsInstanceIdList"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DrdsInstanceIdList") && dict["DrdsInstanceIdList"] != nil {
                var model = CreateDrdsInstanceResponseBody.Data.DrdsInstanceIdList()
                model.fromMap(dict["DrdsInstanceIdList"] as! [String: Any])
                self.drdsInstanceIdList = model
            }
            if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                self.orderId = dict["OrderId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = CreateDrdsInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Privilege") && dict["Privilege"] != nil {
                self.privilege = dict["Privilege"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbPrivilege") && dict["DbPrivilege"] != nil {
            var tmp : [CreateInstanceAccountRequest.DbPrivilege] = []
            for v in dict["DbPrivilege"] as! [Any] {
                var model = CreateInstanceAccountRequest.DbPrivilege()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dbPrivilege = tmp
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Code") && dict["Code"] != nil {
            self.code = dict["Code"] as! Int32
        }
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateInstanceInternetAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateOrderForRdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceTableName") && dict["SourceTableName"] != nil {
            self.sourceTableName = dict["SourceTableName"] as! String
        }
        if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
            self.targetTableName = dict["TargetTableName"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateShardTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MenuName") && dict["MenuName"] != nil {
                    self.menuName = dict["MenuName"] as! String
                }
                if dict.keys.contains("Support") && dict["Support"] != nil {
                    self.support = dict["Support"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("list") && dict["list"] != nil {
                var tmp : [DescribeBackMenuResponseBody.List.List] = []
                for v in dict["list"] as! [Any] {
                    var model = DescribeBackMenuResponseBody.List.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") && dict["List"] != nil {
            var model = DescribeBackMenuResponseBody.List()
            model.fromMap(dict["List"] as! [String: Any])
            self.list = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackMenuResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PreferredRestoreTime") && dict["PreferredRestoreTime"] != nil {
            self.preferredRestoreTime = dict["PreferredRestoreTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dbName") && dict["dbName"] != nil {
                self.dbName = dict["dbName"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbNames") && dict["DbNames"] != nil {
            var model = DescribeBackupDbsResponseBody.DbNames()
            model.fromMap(dict["DbNames"] as! [String: Any])
            self.dbNames = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupDbsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupAppName") && dict["BackupAppName"] != nil {
                self.backupAppName = dict["BackupAppName"] as! String
            }
            if dict.keys.contains("BackupDbName") && dict["BackupDbName"] != nil {
                self.backupDbName = dict["BackupDbName"] as! String
            }
            if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
                self.backupLevel = dict["BackupLevel"] as! String
            }
            if dict.keys.contains("BackupLog") && dict["BackupLog"] != nil {
                self.backupLog = dict["BackupLog"] as! String
            }
            if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                self.backupMode = dict["BackupMode"] as! String
            }
            if dict.keys.contains("BackupPolicyMode") && dict["BackupPolicyMode"] != nil {
                self.backupPolicyMode = dict["BackupPolicyMode"] as! String
            }
            if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
                self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DataBackupRetentionPeriod") && dict["DataBackupRetentionPeriod"] != nil {
                self.dataBackupRetentionPeriod = dict["DataBackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("HighSpaceUsageProtection") && dict["HighSpaceUsageProtection"] != nil {
                self.highSpaceUsageProtection = dict["HighSpaceUsageProtection"] as! Int64
            }
            if dict.keys.contains("LocalLogRetentionHours") && dict["LocalLogRetentionHours"] != nil {
                self.localLogRetentionHours = dict["LocalLogRetentionHours"] as! Int64
            }
            if dict.keys.contains("LocalLogRetentionSpace") && dict["LocalLogRetentionSpace"] != nil {
                self.localLogRetentionSpace = dict["LocalLogRetentionSpace"] as! Int64
            }
            if dict.keys.contains("LogBackupRetentionPeriod") && dict["LogBackupRetentionPeriod"] != nil {
                self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("NextBackupActuallyTime") && dict["NextBackupActuallyTime"] != nil {
                self.nextBackupActuallyTime = dict["NextBackupActuallyTime"] as! String
            }
            if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
                self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
            }
            if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
                self.preferredBackupTime = dict["PreferredBackupTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPolicyDO") && dict["BackupPolicyDO"] != nil {
            var model = DescribeBackupLocalResponseBody.BackupPolicyDO()
            model.fromMap(dict["BackupPolicyDO"] as! [String: Any])
            self.backupPolicyDO = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupLocalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackupAppName") && dict["BackupAppName"] != nil {
                self.backupAppName = dict["BackupAppName"] as! String
            }
            if dict.keys.contains("BackupDbName") && dict["BackupDbName"] != nil {
                self.backupDbName = dict["BackupDbName"] as! String
            }
            if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
                self.backupLevel = dict["BackupLevel"] as! String
            }
            if dict.keys.contains("BackupLog") && dict["BackupLog"] != nil {
                self.backupLog = dict["BackupLog"] as! String
            }
            if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                self.backupMode = dict["BackupMode"] as! String
            }
            if dict.keys.contains("BackupPolicyMode") && dict["BackupPolicyMode"] != nil {
                self.backupPolicyMode = dict["BackupPolicyMode"] as! String
            }
            if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
                self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                self.backupType = dict["BackupType"] as! String
            }
            if dict.keys.contains("DataBackupRetentionPeriod") && dict["DataBackupRetentionPeriod"] != nil {
                self.dataBackupRetentionPeriod = dict["DataBackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("HighSpaceUsageProtection") && dict["HighSpaceUsageProtection"] != nil {
                self.highSpaceUsageProtection = dict["HighSpaceUsageProtection"] as! Int64
            }
            if dict.keys.contains("LocalLogRetentionHours") && dict["LocalLogRetentionHours"] != nil {
                self.localLogRetentionHours = dict["LocalLogRetentionHours"] as! Int64
            }
            if dict.keys.contains("LocalLogRetentionSpace") && dict["LocalLogRetentionSpace"] != nil {
                self.localLogRetentionSpace = dict["LocalLogRetentionSpace"] as! Int64
            }
            if dict.keys.contains("LogBackupRetentionPeriod") && dict["LogBackupRetentionPeriod"] != nil {
                self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! Int64
            }
            if dict.keys.contains("NextBackupActuallyTime") && dict["NextBackupActuallyTime"] != nil {
                self.nextBackupActuallyTime = dict["NextBackupActuallyTime"] as! String
            }
            if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
                self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
            }
            if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
                self.preferredBackupTime = dict["PreferredBackupTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupPolicyDO") && dict["BackupPolicyDO"] != nil {
            var model = DescribeBackupPolicyResponseBody.BackupPolicyDO()
            model.fromMap(dict["BackupPolicyDO"] as! [String: Any])
            self.backupPolicyDO = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("backupDb") && dict["backupDb"] != nil {
                        self.backupDb = dict["backupDb"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupConsitentTime") && dict["BackupConsitentTime"] != nil {
                    self.backupConsitentTime = dict["BackupConsitentTime"] as! String
                }
                if dict.keys.contains("BackupDbs") && dict["BackupDbs"] != nil {
                    var model = DescribeBackupSetsResponseBody.BackupSets.BackupSet.BackupDbs()
                    model.fromMap(dict["BackupDbs"] as! [String: Any])
                    self.backupDbs = model
                }
                if dict.keys.contains("BackupEndTime") && dict["BackupEndTime"] != nil {
                    self.backupEndTime = dict["BackupEndTime"] as! Int64
                }
                if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
                    self.backupLevel = dict["BackupLevel"] as! String
                }
                if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                    self.backupMode = dict["BackupMode"] as! String
                }
                if dict.keys.contains("BackupStartTime") && dict["BackupStartTime"] != nil {
                    self.backupStartTime = dict["BackupStartTime"] as! Int64
                }
                if dict.keys.contains("BackupTotalSize") && dict["BackupTotalSize"] != nil {
                    self.backupTotalSize = dict["BackupTotalSize"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
                if dict.keys.contains("EnableRecovery") && dict["EnableRecovery"] != nil {
                    self.enableRecovery = dict["EnableRecovery"] as! Bool
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("backupSet") && dict["backupSet"] != nil {
                var tmp : [DescribeBackupSetsResponseBody.BackupSets.BackupSet] = []
                for v in dict["backupSet"] as! [Any] {
                    var model = DescribeBackupSetsResponseBody.BackupSets.BackupSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupSets") && dict["BackupSets"] != nil {
            var model = DescribeBackupSetsResponseBody.BackupSets()
            model.fromMap(dict["BackupSets"] as! [String: Any])
            self.backupSets = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupSetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                self.endTime = dict["EndTime"] as! String
            }
            if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreTime") && dict["RestoreTime"] != nil {
            var model = DescribeBackupTimesResponseBody.RestoreTime()
            model.fromMap(dict["RestoreTime"] as! [String: Any])
            self.restoreTime = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBackupTimesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Broadcast") && dict["Broadcast"] != nil {
                self.broadcast = dict["Broadcast"] as! Bool
            }
            if dict.keys.contains("BroadcastType") && dict["BroadcastType"] != nil {
                self.broadcastType = dict["BroadcastType"] as! String
            }
            if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                self.dbInstType = dict["DbInstType"] as! Int32
            }
            if dict.keys.contains("IsShard") && dict["IsShard"] != nil {
                self.isShard = dict["IsShard"] as! Bool
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IsShard") && dict["IsShard"] != nil {
            self.isShard = dict["IsShard"] as! Bool
        }
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [DescribeBroadcastTablesResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = DescribeBroadcastTablesResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeBroadcastTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Password") && dict["Password"] != nil {
            self.password = dict["Password"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Database") && dict["Database"] != nil {
                var tmp : [DescribeDbInstanceDbsResponseBody.Databases.Database] = []
                for v in dict["Database"] as! [Any] {
                    var model = DescribeDbInstanceDbsResponseBody.Databases.Database()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Databases") && dict["Databases"] != nil {
            var model = DescribeDbInstanceDbsResponseBody.Databases()
            model.fromMap(dict["Databases"] as! [String: Any])
            self.databases = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDbInstanceDbsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Search") && dict["Search"] != nil {
            self.search = dict["Search"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ReadOnlyDBInstanceId") && dict["ReadOnlyDBInstanceId"] != nil {
                        self.readOnlyDBInstanceId = dict["ReadOnlyDBInstanceId"] as! [String]
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowAllCategory") && dict["AllowAllCategory"] != nil {
                    self.allowAllCategory = dict["AllowAllCategory"] as! Bool
                }
                if dict.keys.contains("DBInstanceDescription") && dict["DBInstanceDescription"] != nil {
                    self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
                }
                if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! Int32
                }
                if dict.keys.contains("DBInstanceType") && dict["DBInstanceType"] != nil {
                    self.DBInstanceType = dict["DBInstanceType"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("InstanceNetworkType") && dict["InstanceNetworkType"] != nil {
                    self.instanceNetworkType = dict["InstanceNetworkType"] as! String
                }
                if dict.keys.contains("ReadOnlyDBInstanceId") && dict["ReadOnlyDBInstanceId"] != nil {
                    var model = DescribeDbInstancesResponseBody.Items.DBInstance.ReadOnlyDBInstanceId()
                    model.fromMap(dict["ReadOnlyDBInstanceId"] as! [String: Any])
                    self.readOnlyDBInstanceId = model
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstance") && dict["DBInstance"] != nil {
                var tmp : [DescribeDbInstancesResponseBody.Items.DBInstance] = []
                for v in dict["DBInstance"] as! [Any] {
                    var model = DescribeDbInstancesResponseBody.Items.DBInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeDbInstancesResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDbInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                self.dbInstType = dict["DbInstType"] as! String
            }
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("InstRole") && dict["InstRole"] != nil {
                self.instRole = dict["InstRole"] as! String
            }
            if dict.keys.contains("Mode") && dict["Mode"] != nil {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Schema") && dict["Schema"] != nil {
                self.schema = dict["Schema"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDrdsDBResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DBNodeId") && dict["DBNodeId"] != nil {
                        self.DBNodeId = dict["DBNodeId"] as! String
                    }
                    if dict.keys.contains("DBNodeRole") && dict["DBNodeRole"] != nil {
                        self.DBNodeRole = dict["DBNodeRole"] as! String
                    }
                    if dict.keys.contains("DBNodeStatus") && dict["DBNodeStatus"] != nil {
                        self.DBNodeStatus = dict["DBNodeStatus"] as! String
                    }
                    if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                        self.zoneId = dict["ZoneId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBNode") && dict["DBNode"] != nil {
                    var tmp : [DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes.DBNode] = []
                    for v in dict["DBNode"] as! [Any] {
                        var model = DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes.DBNode()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EndpointId") && dict["EndpointId"] != nil {
                        self.endpointId = dict["EndpointId"] as! String
                    }
                    if dict.keys.contains("NodeIds") && dict["NodeIds"] != nil {
                        self.nodeIds = dict["NodeIds"] as! String
                    }
                    if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                        self.readWeight = dict["ReadWeight"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Endpoint") && dict["Endpoint"] != nil {
                    var tmp : [DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints.Endpoint] = []
                    for v in dict["Endpoint"] as! [Any] {
                        var model = DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints.Endpoint()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
            }
            if dict.keys.contains("DBNodes") && dict["DBNodes"] != nil {
                var model = DescribeDrdsDBClusterResponseBody.DbInstance.DBNodes()
                model.fromMap(dict["DBNodes"] as! [String: Any])
                self.DBNodes = model
            }
            if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                self.dbInstType = dict["DbInstType"] as! String
            }
            if dict.keys.contains("Endpoints") && dict["Endpoints"] != nil {
                var model = DescribeDrdsDBClusterResponseBody.DbInstance.Endpoints()
                model.fromMap(dict["Endpoints"] as! [String: Any])
                self.endpoints = model
            }
            if dict.keys.contains("Engine") && dict["Engine"] != nil {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                self.rdsInstType = dict["RdsInstType"] as! String
            }
            if dict.keys.contains("ReadMode") && dict["ReadMode"] != nil {
                self.readMode = dict["ReadMode"] as! String
            }
            if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                self.remainDays = dict["RemainDays"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstance") && dict["DbInstance"] != nil {
            var model = DescribeDrdsDBClusterResponseBody.DbInstance()
            model.fromMap(dict["DbInstance"] as! [String: Any])
            self.dbInstance = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDBClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("IpWhiteList") && dict["IpWhiteList"] != nil {
            var model = DescribeDrdsDBIpWhiteListResponseBody.IpWhiteList()
            model.fromMap(dict["IpWhiteList"] as! [String: Any])
            self.ipWhiteList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDBIpWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                    self.dbInstType = dict["DbInstType"] as! String
                }
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("Mode") && dict["Mode"] != nil {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("Schema") && dict["Schema"] != nil {
                    self.schema = dict["Schema"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Db") && dict["Db"] != nil {
                var tmp : [DescribeDrdsDBsResponseBody.Data.Db] = []
                for v in dict["Db"] as! [Any] {
                    var model = DescribeDrdsDBsResponseBody.Data.Db()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDrdsDBsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDBsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                        self.connectUrl = dict["ConnectUrl"] as! String
                    }
                    if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                        self.DBInstanceId = dict["DBInstanceId"] as! String
                    }
                    if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                        self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                    }
                    if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                        self.dbInstType = dict["DbInstType"] as! String
                    }
                    if dict.keys.contains("DmInstanceId") && dict["DmInstanceId"] != nil {
                        self.dmInstanceId = dict["DmInstanceId"] as! String
                    }
                    if dict.keys.contains("Engine") && dict["Engine"] != nil {
                        self.engine = dict["Engine"] as! String
                    }
                    if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                        self.engineVersion = dict["EngineVersion"] as! String
                    }
                    if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                        self.expireTime = dict["ExpireTime"] as! String
                    }
                    if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                        self.networkType = dict["NetworkType"] as! String
                    }
                    if dict.keys.contains("PayType") && dict["PayType"] != nil {
                        self.payType = dict["PayType"] as! String
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                        self.rdsInstType = dict["RdsInstType"] as! String
                    }
                    if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                        self.readWeight = dict["ReadWeight"] as! Int32
                    }
                    if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                        self.remainDays = dict["RemainDays"] as! String
                    }
                    if dict.keys.contains("VersionAction") && dict["VersionAction"] != nil {
                        self.versionAction = dict["VersionAction"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReadOnlyInstance") && dict["ReadOnlyInstance"] != nil {
                    var tmp : [DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances.ReadOnlyInstance] = []
                    for v in dict["ReadOnlyInstance"] as! [Any] {
                        var model = DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances.ReadOnlyInstance()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                self.connectUrl = dict["ConnectUrl"] as! String
            }
            if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
            }
            if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                self.dbInstType = dict["DbInstType"] as! String
            }
            if dict.keys.contains("DmInstanceId") && dict["DmInstanceId"] != nil {
                self.dmInstanceId = dict["DmInstanceId"] as! String
            }
            if dict.keys.contains("Engine") && dict["Engine"] != nil {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("PayType") && dict["PayType"] != nil {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                self.rdsInstType = dict["RdsInstType"] as! String
            }
            if dict.keys.contains("ReadOnlyInstances") && dict["ReadOnlyInstances"] != nil {
                var model = DescribeDrdsDbInstanceResponseBody.DbInstance.ReadOnlyInstances()
                model.fromMap(dict["ReadOnlyInstances"] as! [String: Any])
                self.readOnlyInstances = model
            }
            if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                self.readWeight = dict["ReadWeight"] as! Int32
            }
            if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                self.remainDays = dict["RemainDays"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstance") && dict["DbInstance"] != nil {
            var model = DescribeDrdsDbInstanceResponseBody.DbInstance()
            model.fromMap(dict["DbInstance"] as! [String: Any])
            self.dbInstance = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDbInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                            self.connectUrl = dict["ConnectUrl"] as! String
                        }
                        if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                            self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                        }
                        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                            self.dbInstType = dict["DbInstType"] as! String
                        }
                        if dict.keys.contains("DmInstanceId") && dict["DmInstanceId"] != nil {
                            self.dmInstanceId = dict["DmInstanceId"] as! String
                        }
                        if dict.keys.contains("Engine") && dict["Engine"] != nil {
                            self.engine = dict["Engine"] as! String
                        }
                        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                            self.engineVersion = dict["EngineVersion"] as! String
                        }
                        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                            self.expireTime = dict["ExpireTime"] as! String
                        }
                        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                            self.instanceName = dict["InstanceName"] as! String
                        }
                        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                            self.networkType = dict["NetworkType"] as! String
                        }
                        if dict.keys.contains("PayType") && dict["PayType"] != nil {
                            self.payType = dict["PayType"] as! String
                        }
                        if dict.keys.contains("Port") && dict["Port"] != nil {
                            self.port = dict["Port"] as! Int32
                        }
                        if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                            self.rdsInstType = dict["RdsInstType"] as! String
                        }
                        if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                            self.readWeight = dict["ReadWeight"] as! Int32
                        }
                        if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                            self.remainDays = dict["RemainDays"] as! Int32
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ReadOnlyInstance") && dict["ReadOnlyInstance"] != nil {
                        var tmp : [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances.ReadOnlyInstance] = []
                        for v in dict["ReadOnlyInstance"] as! [Any] {
                            var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances.ReadOnlyInstance()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                    self.connectUrl = dict["ConnectUrl"] as! String
                }
                if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                }
                if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                    self.dbInstType = dict["DbInstType"] as! String
                }
                if dict.keys.contains("DmInstanceId") && dict["DmInstanceId"] != nil {
                    self.dmInstanceId = dict["DmInstanceId"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                    self.rdsInstType = dict["RdsInstType"] as! String
                }
                if dict.keys.contains("ReadOnlyInstances") && dict["ReadOnlyInstances"] != nil {
                    var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance.ReadOnlyInstances()
                    model.fromMap(dict["ReadOnlyInstances"] as! [String: Any])
                    self.readOnlyInstances = model
                }
                if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                    self.readWeight = dict["ReadWeight"] as! Int32
                }
                if dict.keys.contains("RemainDays") && dict["RemainDays"] != nil {
                    self.remainDays = dict["RemainDays"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbInstance") && dict["DbInstance"] != nil {
                var tmp : [DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance] = []
                for v in dict["DbInstance"] as! [Any] {
                    var model = DescribeDrdsDbInstancesResponseBody.DbInstances.DbInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstances") && dict["DbInstances"] != nil {
            var model = DescribeDrdsDbInstancesResponseBody.DbInstances()
            model.fromMap(dict["DbInstances"] as! [String: Any])
            self.dbInstances = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDbInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsDbRdsNameListRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceNameList") && dict["InstanceNameList"] != nil {
            var model = DescribeDrdsDbRdsNameListResponseBody.InstanceNameList()
            model.fromMap(dict["InstanceNameList"] as! [String: Any])
            self.instanceNameList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsDbRdsNameListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ReadOnlyDBInstanceId") && dict["ReadOnlyDBInstanceId"] != nil {
                    self.readOnlyDBInstanceId = dict["ReadOnlyDBInstanceId"] as! [String]
                }
            }
        }
        public class Vips : Tea.TeaModel {
            public class Vip : Tea.TeaModel {
                public var dns: String?

                public var expireDays: Int64?

                public var port: String?

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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Dns") && dict["Dns"] != nil {
                        self.dns = dict["Dns"] as! String
                    }
                    if dict.keys.contains("ExpireDays") && dict["ExpireDays"] != nil {
                        self.expireDays = dict["ExpireDays"] as! Int64
                    }
                    if dict.keys.contains("Port") && dict["Port"] != nil {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Type") && dict["Type"] != nil {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                        self.vpcId = dict["VpcId"] as! String
                    }
                    if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                        self.vswitchId = dict["VswitchId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Vip") && dict["Vip"] != nil {
                    var tmp : [DescribeDrdsInstanceResponseBody.Data.Vips.Vip] = []
                    for v in dict["Vip"] as! [Any] {
                        var model = DescribeDrdsInstanceResponseBody.Data.Vips.Vip()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
                self.drdsInstanceId = dict["DrdsInstanceId"] as! String
            }
            if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
                self.expireDate = dict["ExpireDate"] as! Int64
            }
            if dict.keys.contains("InstRole") && dict["InstRole"] != nil {
                self.instRole = dict["InstRole"] as! String
            }
            if dict.keys.contains("InstanceSeries") && dict["InstanceSeries"] != nil {
                self.instanceSeries = dict["InstanceSeries"] as! String
            }
            if dict.keys.contains("InstanceSpec") && dict["InstanceSpec"] != nil {
                self.instanceSpec = dict["InstanceSpec"] as! String
            }
            if dict.keys.contains("Label") && dict["Label"] != nil {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("MachineType") && dict["MachineType"] != nil {
                self.machineType = dict["MachineType"] as! String
            }
            if dict.keys.contains("MasterInstanceId") && dict["MasterInstanceId"] != nil {
                self.masterInstanceId = dict["MasterInstanceId"] as! String
            }
            if dict.keys.contains("MysqlVersion") && dict["MysqlVersion"] != nil {
                self.mysqlVersion = dict["MysqlVersion"] as! Int32
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("OrderInstanceId") && dict["OrderInstanceId"] != nil {
                self.orderInstanceId = dict["OrderInstanceId"] as! String
            }
            if dict.keys.contains("ProductVersion") && dict["ProductVersion"] != nil {
                self.productVersion = dict["ProductVersion"] as! String
            }
            if dict.keys.contains("ReadOnlyDBInstanceIds") && dict["ReadOnlyDBInstanceIds"] != nil {
                var model = DescribeDrdsInstanceResponseBody.Data.ReadOnlyDBInstanceIds()
                model.fromMap(dict["ReadOnlyDBInstanceIds"] as! [String: Any])
                self.readOnlyDBInstanceIds = model
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! Int64
            }
            if dict.keys.contains("VersionAction") && dict["VersionAction"] != nil {
                self.versionAction = dict["VersionAction"] as! String
            }
            if dict.keys.contains("Vips") && dict["Vips"] != nil {
                var model = DescribeDrdsInstanceResponseBody.Data.Vips()
                model.fromMap(dict["Vips"] as! [String: Any])
                self.vips = model
            }
            if dict.keys.contains("VpcCloudInstanceId") && dict["VpcCloudInstanceId"] != nil {
                self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDrdsInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") && dict["Date"] != nil {
                    self.date = dict["Date"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data.Values] = []
                for v in dict["Values"] as! [Any] {
                    var model = DescribeDrdsInstanceDbMonitorResponseBody.Data.Values()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDrdsInstanceDbMonitorResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstanceDbMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllowCancel") && dict["AllowCancel"] != nil {
                    self.allowCancel = dict["AllowCancel"] as! Bool
                }
                if dict.keys.contains("ErrMsg") && dict["ErrMsg"] != nil {
                    self.errMsg = dict["ErrMsg"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("ProgressDescription") && dict["ProgressDescription"] != nil {
                    self.progressDescription = dict["ProgressDescription"] as! String
                }
                if dict.keys.contains("ShowProgress") && dict["ShowProgress"] != nil {
                    self.showProgress = dict["ShowProgress"] as! Bool
                }
                if dict.keys.contains("TargetId") && dict["TargetId"] != nil {
                    self.targetId = dict["TargetId"] as! Int64
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("TaskPhase") && dict["TaskPhase"] != nil {
                    self.taskPhase = dict["TaskPhase"] as! String
                }
                if dict.keys.contains("TaskStatus") && dict["TaskStatus"] != nil {
                    self.taskStatus = dict["TaskStatus"] as! Int32
                }
                if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
                    self.taskType = dict["TaskType"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Task") && dict["Task"] != nil {
                var tmp : [DescribeDrdsInstanceLevelTasksResponseBody.Tasks.Task] = []
                for v in dict["Task"] as! [Any] {
                    var model = DescribeDrdsInstanceLevelTasksResponseBody.Tasks.Task()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var model = DescribeDrdsInstanceLevelTasksResponseBody.Tasks()
            model.fromMap(dict["Tasks"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstanceLevelTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("PeriodMultiple") && dict["PeriodMultiple"] != nil {
            self.periodMultiple = dict["PeriodMultiple"] as! Int32
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") && dict["Date"] != nil {
                    self.date = dict["Date"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("NodeNum") && dict["NodeNum"] != nil {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data.Values] = []
                for v in dict["Values"] as! [Any] {
                    var model = DescribeDrdsInstanceMonitorResponseBody.Data.Values()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeDrdsInstanceMonitorResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstanceMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceVersion") && dict["InstanceVersion"] != nil {
                self.instanceVersion = dict["InstanceVersion"] as! String
            }
            if dict.keys.contains("NewestVersion") && dict["NewestVersion"] != nil {
                self.newestVersion = dict["NewestVersion"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDrdsInstanceVersionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstanceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Expired") && dict["Expired"] != nil {
            self.expired = dict["Expired"] as! Bool
        }
        if dict.keys.contains("Mix") && dict["Mix"] != nil {
            self.mix = dict["Mix"] as! Bool
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ProductVersion") && dict["ProductVersion"] != nil {
            self.productVersion = dict["ProductVersion"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeDrdsInstancesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeDrdsInstancesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ReadOnlyDBInstanceId") && dict["ReadOnlyDBInstanceId"] != nil {
                        self.readOnlyDBInstanceId = dict["ReadOnlyDBInstanceId"] as! [String]
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IP") && dict["IP"] != nil {
                            self.IP = dict["IP"] as! String
                        }
                        if dict.keys.contains("Port") && dict["Port"] != nil {
                            self.port = dict["Port"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                            self.vswitchId = dict["VswitchId"] as! String
                        }
                        if dict.keys.contains("dns") && dict["dns"] != nil {
                            self.dns = dict["dns"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Vip") && dict["Vip"] != nil {
                        var tmp : [DescribeDrdsInstancesResponseBody.Instances.Instance.Vips.Vip] = []
                        for v in dict["Vip"] as! [Any] {
                            var model = DescribeDrdsInstancesResponseBody.Instances.Instance.Vips.Vip()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
                    self.commodityCode = dict["CommodityCode"] as! String
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
                    self.drdsInstanceId = dict["DrdsInstanceId"] as! String
                }
                if dict.keys.contains("ExpireDate") && dict["ExpireDate"] != nil {
                    self.expireDate = dict["ExpireDate"] as! Int64
                }
                if dict.keys.contains("InstRole") && dict["InstRole"] != nil {
                    self.instRole = dict["InstRole"] as! String
                }
                if dict.keys.contains("InstanceSeries") && dict["InstanceSeries"] != nil {
                    self.instanceSeries = dict["InstanceSeries"] as! String
                }
                if dict.keys.contains("InstanceSpec") && dict["InstanceSpec"] != nil {
                    self.instanceSpec = dict["InstanceSpec"] as! String
                }
                if dict.keys.contains("Label") && dict["Label"] != nil {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("MachineType") && dict["MachineType"] != nil {
                    self.machineType = dict["MachineType"] as! String
                }
                if dict.keys.contains("MasterInstanceId") && dict["MasterInstanceId"] != nil {
                    self.masterInstanceId = dict["MasterInstanceId"] as! String
                }
                if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("OrderInstanceId") && dict["OrderInstanceId"] != nil {
                    self.orderInstanceId = dict["OrderInstanceId"] as! String
                }
                if dict.keys.contains("ProductVersion") && dict["ProductVersion"] != nil {
                    self.productVersion = dict["ProductVersion"] as! String
                }
                if dict.keys.contains("ReadOnlyDBInstanceIds") && dict["ReadOnlyDBInstanceIds"] != nil {
                    var model = DescribeDrdsInstancesResponseBody.Instances.Instance.ReadOnlyDBInstanceIds()
                    model.fromMap(dict["ReadOnlyDBInstanceIds"] as! [String: Any])
                    self.readOnlyDBInstanceIds = model
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") && dict["Type"] != nil {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") && dict["Version"] != nil {
                    self.version = dict["Version"] as! Int64
                }
                if dict.keys.contains("VersionAction") && dict["VersionAction"] != nil {
                    self.versionAction = dict["VersionAction"] as! String
                }
                if dict.keys.contains("Vips") && dict["Vips"] != nil {
                    var model = DescribeDrdsInstancesResponseBody.Instances.Instance.Vips()
                    model.fromMap(dict["Vips"] as! [String: Any])
                    self.vips = model
                }
                if dict.keys.contains("VpcCloudInstanceId") && dict["VpcCloudInstanceId"] != nil {
                    self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("series") && dict["series"] != nil {
                    self.series = dict["series"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Instance") && dict["Instance"] != nil {
                var tmp : [DescribeDrdsInstancesResponseBody.Instances.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = DescribeDrdsInstancesResponseBody.Instances.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var model = DescribeDrdsInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("ParamLevel") && dict["ParamLevel"] != nil {
            self.paramLevel = dict["ParamLevel"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("NeedRestart") && dict["NeedRestart"] != nil {
                self.needRestart = dict["NeedRestart"] as! Bool
            }
            if dict.keys.contains("ParamDefaultValue") && dict["ParamDefaultValue"] != nil {
                self.paramDefaultValue = dict["ParamDefaultValue"] as! String
            }
            if dict.keys.contains("ParamDesc") && dict["ParamDesc"] != nil {
                self.paramDesc = dict["ParamDesc"] as! String
            }
            if dict.keys.contains("ParamEnglishName") && dict["ParamEnglishName"] != nil {
                self.paramEnglishName = dict["ParamEnglishName"] as! String
            }
            if dict.keys.contains("ParamLevel") && dict["ParamLevel"] != nil {
                self.paramLevel = dict["ParamLevel"] as! String
            }
            if dict.keys.contains("ParamName") && dict["ParamName"] != nil {
                self.paramName = dict["ParamName"] as! String
            }
            if dict.keys.contains("ParamRanges") && dict["ParamRanges"] != nil {
                self.paramRanges = dict["ParamRanges"] as! String
            }
            if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("ParamValue") && dict["ParamValue"] != nil {
                self.paramValue = dict["ParamValue"] as! String
            }
            if dict.keys.contains("ParamVariableName") && dict["ParamVariableName"] != nil {
                self.paramVariableName = dict["ParamVariableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [DescribeDrdsParamsResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = DescribeDrdsParamsResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                    self.connectUrl = dict["ConnectUrl"] as! String
                }
                if dict.keys.contains("DBInstanceCPU") && dict["DBInstanceCPU"] != nil {
                    self.DBInstanceCPU = dict["DBInstanceCPU"] as! String
                }
                if dict.keys.contains("DBInstanceClassType") && dict["DBInstanceClassType"] != nil {
                    self.DBInstanceClassType = dict["DBInstanceClassType"] as! String
                }
                if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DBInstanceMemory") && dict["DBInstanceMemory"] != nil {
                    self.DBInstanceMemory = dict["DBInstanceMemory"] as! Int64
                }
                if dict.keys.contains("DBInstanceStatus") && dict["DBInstanceStatus"] != nil {
                    self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
                }
                if dict.keys.contains("DBInstanceStorage") && dict["DBInstanceStorage"] != nil {
                    self.DBInstanceStorage = dict["DBInstanceStorage"] as! Int64
                }
                if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                    self.dbInstType = dict["DbInstType"] as! String
                }
                if dict.keys.contains("DmInstanceId") && dict["DmInstanceId"] != nil {
                    self.dmInstanceId = dict["DmInstanceId"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! Int32
                }
                if dict.keys.contains("LockReason") && dict["LockReason"] != nil {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Port") && dict["Port"] != nil {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("RdsInstType") && dict["RdsInstType"] != nil {
                    self.rdsInstType = dict["RdsInstType"] as! String
                }
                if dict.keys.contains("ReadWeight") && dict["ReadWeight"] != nil {
                    self.readWeight = dict["ReadWeight"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbInstance") && dict["DbInstance"] != nil {
                var tmp : [DescribeDrdsRdsInstancesResponseBody.DbInstances.DbInstance] = []
                for v in dict["DbInstance"] as! [Any] {
                    var model = DescribeDrdsRdsInstancesResponseBody.DbInstances.DbInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstances") && dict["DbInstances"] != nil {
            var model = DescribeDrdsRdsInstancesResponseBody.DbInstances()
            model.fromMap(dict["DbInstances"] as! [String: Any])
            self.dbInstances = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsRdsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbNamePattern") && dict["DbNamePattern"] != nil {
            self.dbNamePattern = dict["DbNamePattern"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BlockingTimeout") && dict["BlockingTimeout"] != nil {
                    self.blockingTimeout = dict["BlockingTimeout"] as! Int32
                }
                if dict.keys.contains("ConnectUrl") && dict["ConnectUrl"] != nil {
                    self.connectUrl = dict["ConnectUrl"] as! String
                }
                if dict.keys.contains("ConnectionProperties") && dict["ConnectionProperties"] != nil {
                    self.connectionProperties = dict["ConnectionProperties"] as! String
                }
                if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
                    self.dbInstanceId = dict["DbInstanceId"] as! String
                }
                if dict.keys.contains("DbStatus") && dict["DbStatus"] != nil {
                    self.dbStatus = dict["DbStatus"] as! String
                }
                if dict.keys.contains("DbType") && dict["DbType"] != nil {
                    self.dbType = dict["DbType"] as! String
                }
                if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("IdleTimeOut") && dict["IdleTimeOut"] != nil {
                    self.idleTimeOut = dict["IdleTimeOut"] as! Int32
                }
                if dict.keys.contains("MaxPoolSize") && dict["MaxPoolSize"] != nil {
                    self.maxPoolSize = dict["MaxPoolSize"] as! Int32
                }
                if dict.keys.contains("MinPoolSize") && dict["MinPoolSize"] != nil {
                    self.minPoolSize = dict["MinPoolSize"] as! Int32
                }
                if dict.keys.contains("PreparedStatementCacheSize") && dict["PreparedStatementCacheSize"] != nil {
                    self.preparedStatementCacheSize = dict["PreparedStatementCacheSize"] as! Int32
                }
                if dict.keys.contains("ShardingDbName") && dict["ShardingDbName"] != nil {
                    self.shardingDbName = dict["ShardingDbName"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ShardingDb") && dict["ShardingDb"] != nil {
                var tmp : [DescribeDrdsShardingDbsResponseBody.ShardingDbs.ShardingDb] = []
                for v in dict["ShardingDb"] as! [Any] {
                    var model = DescribeDrdsShardingDbsResponseBody.ShardingDbs.ShardingDb()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShardingDbs") && dict["ShardingDbs"] != nil {
            var model = DescribeDrdsShardingDbsResponseBody.ShardingDbs()
            model.fromMap(dict["ShardingDbs"] as! [String: Any])
            self.shardingDbs = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsShardingDbsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("ExeTime") && dict["ExeTime"] != nil {
            self.exeTime = dict["ExeTime"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("ResponseTime") && dict["ResponseTime"] != nil {
                    self.responseTime = dict["ResponseTime"] as! Int64
                }
                if dict.keys.contains("Schema") && dict["Schema"] != nil {
                    self.schema = dict["Schema"] as! String
                }
                if dict.keys.contains("SendTime") && dict["SendTime"] != nil {
                    self.sendTime = dict["SendTime"] as! Int64
                }
                if dict.keys.contains("Sql") && dict["Sql"] != nil {
                    self.sql = dict["Sql"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Item") && dict["Item"] != nil {
                var tmp : [DescribeDrdsSlowSqlsResponseBody.Items.Item] = []
                for v in dict["Item"] as! [Any] {
                    var model = DescribeDrdsSlowSqlsResponseBody.Items.Item()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var model = DescribeDrdsSlowSqlsResponseBody.Items()
            model.fromMap(dict["Items"] as! [String: Any])
            self.items = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsSlowSqlsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("Detailed") && dict["Detailed"] != nil {
                    self.detailed = dict["Detailed"] as! String
                }
                if dict.keys.contains("Enabled") && dict["Enabled"] != nil {
                    self.enabled = dict["Enabled"] as! String
                }
                if dict.keys.contains("ExtraAliUid") && dict["ExtraAliUid"] != nil {
                    self.extraAliUid = dict["ExtraAliUid"] as! Int64
                }
                if dict.keys.contains("ExtraSlsLogStore") && dict["ExtraSlsLogStore"] != nil {
                    self.extraSlsLogStore = dict["ExtraSlsLogStore"] as! String
                }
                if dict.keys.contains("ExtraSlsProject") && dict["ExtraSlsProject"] != nil {
                    self.extraSlsProject = dict["ExtraSlsProject"] as! String
                }
                if dict.keys.contains("ExtraWriteEnabled") && dict["ExtraWriteEnabled"] != nil {
                    self.extraWriteEnabled = dict["ExtraWriteEnabled"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") && dict["Data"] != nil {
                var tmp : [DescribeDrdsSqlAuditStatusResponseBody.Data.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = DescribeDrdsSqlAuditStatusResponseBody.Data.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeDrdsSqlAuditStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsSqlAuditStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Content") && dict["Content"] != nil {
                    self.content = dict["Content"] as! String
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Task") && dict["Task"] != nil {
                var tmp : [DescribeDrdsTasksResponseBody.Tasks.Task] = []
                for v in dict["Task"] as! [Any] {
                    var model = DescribeDrdsTasksResponseBody.Tasks.Task()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var model = DescribeDrdsTasksResponseBody.Tasks()
            model.fromMap(dict["Tasks"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeDrdsTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ShardDbKey") && dict["ShardDbKey"] != nil {
                    self.shardDbKey = dict["ShardDbKey"] as! String
                }
                if dict.keys.contains("ShardTbKey") && dict["ShardTbKey"] != nil {
                    self.shardTbKey = dict["ShardTbKey"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("data") && dict["data"] != nil {
                var tmp : [DescribeExpandLogicTableInfoListResponseBody.Data.Data] = []
                for v in dict["data"] as! [Any] {
                    var model = DescribeExpandLogicTableInfoListResponseBody.Data.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeExpandLogicTableInfoListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeExpandLogicTableInfoListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("data") && dict["data"] != nil {
                            self.data = dict["data"] as! [String]
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HotDbList") && dict["HotDbList"] != nil {
                        var model = DescribeHotDbListResponseBody.Data.List.InstanceDb.HotDbList()
                        model.fromMap(dict["HotDbList"] as! [String: Any])
                        self.hotDbList = model
                    }
                    if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                        self.instanceName = dict["InstanceName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceDb") && dict["InstanceDb"] != nil {
                    var tmp : [DescribeHotDbListResponseBody.Data.List.InstanceDb] = []
                    for v in dict["InstanceDb"] as! [Any] {
                        var model = DescribeHotDbListResponseBody.Data.List.InstanceDb()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var model = DescribeHotDbListResponseBody.Data.List()
                model.fromMap(dict["List"] as! [String: Any])
                self.list = model
            }
            if dict.keys.contains("RandomCode") && dict["RandomCode"] != nil {
                self.randomCode = dict["RandomCode"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeHotDbListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeHotDbListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SupportLatestTime") && dict["SupportLatestTime"] != nil {
                self.supportLatestTime = dict["SupportLatestTime"] as! Int64
            }
            if dict.keys.contains("SupportOldestTime") && dict["SupportOldestTime"] != nil {
                self.supportOldestTime = dict["SupportOldestTime"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogTimeRange") && dict["LogTimeRange"] != nil {
            var model = DescribeInstDbLogInfoResponseBody.LogTimeRange()
            model.fromMap(dict["LogTimeRange"] as! [String: Any])
            self.logTimeRange = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstDbLogInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogStore") && dict["LogStore"] != nil {
                self.logStore = dict["LogStore"] as! String
            }
            if dict.keys.contains("Project") && dict["Project"] != nil {
                self.project = dict["Project"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuditInfo") && dict["AuditInfo"] != nil {
            var model = DescribeInstDbSlsInfoResponseBody.AuditInfo()
            model.fromMap(dict["AuditInfo"] as! [String: Any])
            self.auditInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstDbSlsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DbName") && dict["DbName"] != nil {
                            self.dbName = dict["DbName"] as! String
                        }
                        if dict.keys.contains("Privilege") && dict["Privilege"] != nil {
                            self.privilege = dict["Privilege"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DbPrivilege") && dict["DbPrivilege"] != nil {
                        var tmp : [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges.DbPrivilege] = []
                        for v in dict["DbPrivilege"] as! [Any] {
                            var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges.DbPrivilege()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
                    self.accountName = dict["AccountName"] as! String
                }
                if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
                    self.accountType = dict["AccountType"] as! Int32
                }
                if dict.keys.contains("DbPrivileges") && dict["DbPrivileges"] != nil {
                    var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount.DbPrivileges()
                    model.fromMap(dict["DbPrivileges"] as! [String: Any])
                    self.dbPrivileges = model
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Host") && dict["Host"] != nil {
                    self.host = dict["Host"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceAccount") && dict["InstanceAccount"] != nil {
                var tmp : [DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount] = []
                for v in dict["InstanceAccount"] as! [Any] {
                    var model = DescribeInstanceAccountsResponseBody.InstanceAccounts.InstanceAccount()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceAccounts") && dict["InstanceAccounts"] != nil {
            var model = DescribeInstanceAccountsResponseBody.InstanceAccounts()
            model.fromMap(dict["InstanceAccounts"] as! [String: Any])
            self.instanceAccounts = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("TargetAzone") && dict["TargetAzone"] != nil {
                    self.targetAzone = dict["TargetAzone"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OriginAzoneId") && dict["OriginAzoneId"] != nil {
                self.originAzoneId = dict["OriginAzoneId"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SwitchAble") && dict["SwitchAble"] != nil {
                self.switchAble = dict["SwitchAble"] as! Bool
            }
            if dict.keys.contains("TargetAzones") && dict["TargetAzones"] != nil {
                var model = DescribeInstanceSwitchAzoneResponseBody.Result.TargetAzones()
                model.fromMap(dict["TargetAzones"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            var model = DescribeInstanceSwitchAzoneResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceSwitchAzoneResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AzoneId") && dict["AzoneId"] != nil {
                            self.azoneId = dict["AzoneId"] as! String
                        }
                        if dict.keys.contains("DrdsSupported") && dict["DrdsSupported"] != nil {
                            self.drdsSupported = dict["DrdsSupported"] as! Bool
                        }
                        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VswitchId") && dict["VswitchId"] != nil {
                            self.vswitchId = dict["VswitchId"] as! String
                        }
                        if dict.keys.contains("VswitchName") && dict["VswitchName"] != nil {
                            self.vswitchName = dict["VswitchName"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VswitchInfo") && dict["VswitchInfo"] != nil {
                        var tmp : [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos.VswitchInfo] = []
                        for v in dict["VswitchInfo"] as! [Any] {
                            var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos.VswitchInfo()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcName") && dict["VpcName"] != nil {
                    self.vpcName = dict["VpcName"] as! String
                }
                if dict.keys.contains("VswitchInfos") && dict["VswitchInfos"] != nil {
                    var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo.VswitchInfos()
                    model.fromMap(dict["VswitchInfos"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VpcInfo") && dict["VpcInfo"] != nil {
                var tmp : [DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo] = []
                for v in dict["VpcInfo"] as! [Any] {
                    var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos.VpcInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("VpcInfos") && dict["VpcInfos"] != nil {
            var model = DescribeInstanceSwitchNetworkResponseBody.VpcInfos()
            model.fromMap(dict["VpcInfos"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeInstanceSwitchNetworkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ErrorMsgCode") && dict["ErrorMsgCode"] != nil {
                    self.errorMsgCode = dict["ErrorMsgCode"] as! String
                }
                if dict.keys.contains("ErrorMsgParams") && dict["ErrorMsgParams"] != nil {
                    self.errorMsgParams = dict["ErrorMsgParams"] as! [String]
                }
                if dict.keys.contains("PreCheckItemName") && dict["PreCheckItemName"] != nil {
                    self.preCheckItemName = dict["PreCheckItemName"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PreCheckName") && dict["PreCheckName"] != nil {
                self.preCheckName = dict["PreCheckName"] as! String
            }
            if dict.keys.contains("State") && dict["State"] != nil {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("SubCheckItems") && dict["SubCheckItems"] != nil {
                var tmp : [DescribePreCheckResultResponseBody.PreCheckResult.SubCheckItems] = []
                for v in dict["SubCheckItems"] as! [Any] {
                    var model = DescribePreCheckResultResponseBody.PreCheckResult.SubCheckItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PreCheckResult") && dict["PreCheckResult"] != nil {
            var model = DescribePreCheckResultResponseBody.PreCheckResult()
            model.fromMap(dict["PreCheckResult"] as! [String: Any])
            self.preCheckResult = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribePreCheckResultResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Keys") && dict["Keys"] != nil {
            self.keys = dict["Keys"] as! String
        }
        if dict.keys.contains("RdsInstanceId") && dict["RdsInstanceId"] != nil {
            self.rdsInstanceId = dict["RdsInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Date") && dict["Date"] != nil {
                    self.date = dict["Date"] as! Int64
                }
                if dict.keys.contains("Value") && dict["Value"] != nil {
                    self.value = dict["Value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("NodeName") && dict["NodeName"] != nil {
                self.nodeName = dict["NodeName"] as! String
            }
            if dict.keys.contains("NodeNum") && dict["NodeNum"] != nil {
                self.nodeNum = dict["NodeNum"] as! Int32
            }
            if dict.keys.contains("Unit") && dict["Unit"] != nil {
                self.unit = dict["Unit"] as! String
            }
            if dict.keys.contains("Values") && dict["Values"] != nil {
                var tmp : [DescribeRDSPerformanceResponseBody.Data.Values] = []
                for v in dict["Values"] as! [Any] {
                    var model = DescribeRDSPerformanceResponseBody.Data.Values()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeRDSPerformanceResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeRDSPerformanceResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRDSPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommodityCode") && dict["CommodityCode"] != nil {
            self.commodityCode = dict["CommodityCode"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRdsCommodityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RdsInstanceId") && dict["RdsInstanceId"] != nil {
            self.rdsInstanceId = dict["RdsInstanceId"] as! [String]
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ActiveSessions") && dict["ActiveSessions"] != nil {
                self.activeSessions = dict["ActiveSessions"] as! Int32
            }
            if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                self.cpu = dict["Cpu"] as! Double
            }
            if dict.keys.contains("Iops") && dict["Iops"] != nil {
                self.iops = dict["Iops"] as! Double
            }
            if dict.keys.contains("RdsId") && dict["RdsId"] != nil {
                self.rdsId = dict["RdsId"] as! String
            }
            if dict.keys.contains("SpaceUsage") && dict["SpaceUsage"] != nil {
                self.spaceUsage = dict["SpaceUsage"] as! Int64
            }
            if dict.keys.contains("TotalSessions") && dict["TotalSessions"] != nil {
                self.totalSessions = dict["TotalSessions"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RdsPerformanceInfos") && dict["RdsPerformanceInfos"] != nil {
            var tmp : [DescribeRdsPerformanceSummaryResponseBody.RdsPerformanceInfos] = []
            for v in dict["RdsPerformanceInfos"] as! [Any] {
                var model = DescribeRdsPerformanceSummaryResponseBody.RdsPerformanceInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.rdsPerformanceInfos = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRdsPerformanceSummaryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RdsInstance") && dict["RdsInstance"] != nil {
            self.rdsInstance = dict["RdsInstance"] as! [String]
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbInstance") && dict["DbInstance"] != nil {
                self.dbInstance = dict["DbInstance"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstances") && dict["DbInstances"] != nil {
            var model = DescribeRdsSuperAccountInstancesResponseBody.DbInstances()
            model.fromMap(dict["DbInstances"] as! [String: Any])
            self.dbInstances = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRdsSuperAccountInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRecycleBinStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("OriginalTableName") && dict["OriginalTableName"] != nil {
                self.originalTableName = dict["OriginalTableName"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [DescribeRecycleBinTablesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeRecycleBinTablesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRecycleBinTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupDbNames") && dict["BackupDbNames"] != nil {
            self.backupDbNames = dict["BackupDbNames"] as! String
        }
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
            self.backupLevel = dict["BackupLevel"] as! String
        }
        if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AzoneId") && dict["AzoneId"] != nil {
                        self.azoneId = dict["AzoneId"] as! String
                    }
                    if dict.keys.contains("InstSpec") && dict["InstSpec"] != nil {
                        self.instSpec = dict["InstSpec"] as! String
                    }
                    if dict.keys.contains("Network") && dict["Network"] != nil {
                        self.network = dict["Network"] as! String
                    }
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("VSwtichId") && dict["VSwtichId"] != nil {
                        self.VSwtichId = dict["VSwtichId"] as! String
                    }
                    if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                        self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DrdsOrderDOList") && dict["DrdsOrderDOList"] != nil {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList.DrdsOrderDOList] = []
                    for v in dict["DrdsOrderDOList"] as! [Any] {
                        var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList.DrdsOrderDOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AzoneId") && dict["AzoneId"] != nil {
                        self.azoneId = dict["AzoneId"] as! String
                    }
                    if dict.keys.contains("DbInstanceStorage") && dict["DbInstanceStorage"] != nil {
                        self.dbInstanceStorage = dict["DbInstanceStorage"] as! String
                    }
                    if dict.keys.contains("Engine") && dict["Engine"] != nil {
                        self.engine = dict["Engine"] as! String
                    }
                    if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
                        self.instanceClass = dict["InstanceClass"] as! String
                    }
                    if dict.keys.contains("Network") && dict["Network"] != nil {
                        self.network = dict["Network"] as! String
                    }
                    if dict.keys.contains("Num") && dict["Num"] != nil {
                        self.num = dict["Num"] as! Int64
                    }
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("Version") && dict["Version"] != nil {
                        self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PolarOrderDOList") && dict["PolarOrderDOList"] != nil {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList.PolarOrderDOList] = []
                    for v in dict["PolarOrderDOList"] as! [Any] {
                        var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList.PolarOrderDOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AzoneId") && dict["AzoneId"] != nil {
                        self.azoneId = dict["AzoneId"] as! String
                    }
                    if dict.keys.contains("DbInstanceStorage") && dict["DbInstanceStorage"] != nil {
                        self.dbInstanceStorage = dict["DbInstanceStorage"] as! String
                    }
                    if dict.keys.contains("Engine") && dict["Engine"] != nil {
                        self.engine = dict["Engine"] as! String
                    }
                    if dict.keys.contains("InstanceClass") && dict["InstanceClass"] != nil {
                        self.instanceClass = dict["InstanceClass"] as! String
                    }
                    if dict.keys.contains("Network") && dict["Network"] != nil {
                        self.network = dict["Network"] as! String
                    }
                    if dict.keys.contains("Num") && dict["Num"] != nil {
                        self.num = dict["Num"] as! Int64
                    }
                    if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                        self.regionId = dict["RegionId"] as! String
                    }
                    if dict.keys.contains("Version") && dict["Version"] != nil {
                        self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RdsOrderDOList") && dict["RdsOrderDOList"] != nil {
                    var tmp : [DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList.RdsOrderDOList] = []
                    for v in dict["RdsOrderDOList"] as! [Any] {
                        var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList.RdsOrderDOList()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DrdsOrderDOList") && dict["DrdsOrderDOList"] != nil {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.DrdsOrderDOList()
                model.fromMap(dict["DrdsOrderDOList"] as! [String: Any])
                self.drdsOrderDOList = model
            }
            if dict.keys.contains("PolarOrderDOList") && dict["PolarOrderDOList"] != nil {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.PolarOrderDOList()
                model.fromMap(dict["PolarOrderDOList"] as! [String: Any])
                self.polarOrderDOList = model
            }
            if dict.keys.contains("RdsOrderDOList") && dict["RdsOrderDOList"] != nil {
                var model = DescribeRestoreOrderResponseBody.RestoreOrderDO.RdsOrderDOList()
                model.fromMap(dict["RdsOrderDOList"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("RestoreOrderDO") && dict["RestoreOrderDO"] != nil {
            var model = DescribeRestoreOrderResponseBody.RestoreOrderDO()
            model.fromMap(dict["RestoreOrderDO"] as! [String: Any])
            self.restoreOrderDO = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRestoreOrderResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceTableName") && dict["SourceTableName"] != nil {
            self.sourceTableName = dict["SourceTableName"] as! String
        }
        if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
            self.targetTableName = dict["TargetTableName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! Int32
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Total") && dict["Total"] != nil {
                    self.total = dict["Total"] as! Int32
                }
                if dict.keys.contains("Tps") && dict["Tps"] != nil {
                    self.tps = dict["Tps"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! Int32
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Total") && dict["Total"] != nil {
                    self.total = dict["Total"] as! Int32
                }
                if dict.keys.contains("Tps") && dict["Tps"] != nil {
                    self.tps = dict["Tps"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! Int32
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Total") && dict["Total"] != nil {
                    self.total = dict["Total"] as! Int32
                }
                if dict.keys.contains("Tps") && dict["Tps"] != nil {
                    self.tps = dict["Tps"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Delay") && dict["Delay"] != nil {
                    self.delay = dict["Delay"] as! Int32
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Tps") && dict["Tps"] != nil {
                    self.tps = dict["Tps"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Expired") && dict["Expired"] != nil {
                    self.expired = dict["Expired"] as! Int32
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Int32
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Total") && dict["Total"] != nil {
                    self.total = dict["Total"] as! Int32
                }
                if dict.keys.contains("Tps") && dict["Tps"] != nil {
                    self.tps = dict["Tps"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Expired") && dict["Expired"] != nil {
                self.expired = dict["Expired"] as! String
            }
            if dict.keys.contains("Full") && dict["Full"] != nil {
                var model = DescribeShardTaskInfoResponseBody.Data.Full()
                model.fromMap(dict["Full"] as! [String: Any])
                self.full = model
            }
            if dict.keys.contains("FullCheck") && dict["FullCheck"] != nil {
                var model = DescribeShardTaskInfoResponseBody.Data.FullCheck()
                model.fromMap(dict["FullCheck"] as! [String: Any])
                self.fullCheck = model
            }
            if dict.keys.contains("FullRevise") && dict["FullRevise"] != nil {
                var model = DescribeShardTaskInfoResponseBody.Data.FullRevise()
                model.fromMap(dict["FullRevise"] as! [String: Any])
                self.fullRevise = model
            }
            if dict.keys.contains("Increment") && dict["Increment"] != nil {
                var model = DescribeShardTaskInfoResponseBody.Data.Increment()
                model.fromMap(dict["Increment"] as! [String: Any])
                self.increment = model
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Review") && dict["Review"] != nil {
                var model = DescribeShardTaskInfoResponseBody.Data.Review()
                model.fromMap(dict["Review"] as! [String: Any])
                self.review = model
            }
            if dict.keys.contains("SourceTableName") && dict["SourceTableName"] != nil {
                self.sourceTableName = dict["SourceTableName"] as! String
            }
            if dict.keys.contains("Stage") && dict["Stage"] != nil {
                self.stage = dict["Stage"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
                self.targetTableName = dict["TargetTableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeShardTaskInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeShardTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DbName") && dict["DbName"] != nil {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("DownloadUrl") && dict["DownloadUrl"] != nil {
                    self.downloadUrl = dict["DownloadUrl"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! Int64
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! Int64
                }
                if dict.keys.contains("Id") && dict["Id"] != nil {
                    self.id = dict["Id"] as! Int64
                }
                if dict.keys.contains("InstId") && dict["InstId"] != nil {
                    self.instId = dict["InstId"] as! String
                }
                if dict.keys.contains("RecallProgress") && dict["RecallProgress"] != nil {
                    self.recallProgress = dict["RecallProgress"] as! Int32
                }
                if dict.keys.contains("RecallRestoreType") && dict["RecallRestoreType"] != nil {
                    self.recallRestoreType = dict["RecallRestoreType"] as! Int32
                }
                if dict.keys.contains("RecallStatus") && dict["RecallStatus"] != nil {
                    self.recallStatus = dict["RecallStatus"] as! Int32
                }
                if dict.keys.contains("RecallType") && dict["RecallType"] != nil {
                    self.recallType = dict["RecallType"] as! Int32
                }
                if dict.keys.contains("SearchEndTime") && dict["SearchEndTime"] != nil {
                    self.searchEndTime = dict["SearchEndTime"] as! Int64
                }
                if dict.keys.contains("SearchStartTime") && dict["SearchStartTime"] != nil {
                    self.searchStartTime = dict["SearchStartTime"] as! Int64
                }
                if dict.keys.contains("SqlCounter") && dict["SqlCounter"] != nil {
                    self.sqlCounter = dict["SqlCounter"] as! Int64
                }
                if dict.keys.contains("SqlPk") && dict["SqlPk"] != nil {
                    self.sqlPk = dict["SqlPk"] as! String
                }
                if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
                    self.sqlType = dict["SqlType"] as! String
                }
                if dict.keys.contains("TableName") && dict["TableName"] != nil {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
                    self.traceId = dict["TraceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SqlFlashbackTask") && dict["SqlFlashbackTask"] != nil {
                var tmp : [DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks.SqlFlashbackTask] = []
                for v in dict["SqlFlashbackTask"] as! [Any] {
                    var model = DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks.SqlFlashbackTask()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SqlFlashbackTasks") && dict["SqlFlashbackTasks"] != nil {
            var model = DescribeSqlFlashbakTaskResponseBody.SqlFlashbackTasks()
            model.fromMap(dict["SqlFlashbackTasks"] as! [String: Any])
            self.sqlFlashbackTasks = model
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeSqlFlashbakTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColumnName") && dict["ColumnName"] != nil {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("ColumnType") && dict["ColumnType"] != nil {
                    self.columnType = dict["ColumnType"] as! String
                }
                if dict.keys.contains("Extra") && dict["Extra"] != nil {
                    self.extra = dict["Extra"] as! String
                }
                if dict.keys.contains("Index") && dict["Index"] != nil {
                    self.index = dict["Index"] as! String
                }
                if dict.keys.contains("IsAllowNull") && dict["IsAllowNull"] != nil {
                    self.isAllowNull = dict["IsAllowNull"] as! String
                }
                if dict.keys.contains("IsPk") && dict["IsPk"] != nil {
                    self.isPk = dict["IsPk"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("List") && dict["List"] != nil {
                var tmp : [DescribeTableResponseBody.Data.List] = []
                for v in dict["List"] as! [Any] {
                    var model = DescribeTableResponseBody.Data.List()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var model = DescribeTableResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableType") && dict["TableType"] != nil {
            self.tableType = dict["TableType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Property") && dict["Property"] != nil {
                self.property = dict["Property"] as! String
            }
            if dict.keys.contains("TableName") && dict["TableName"] != nil {
                self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [DescribeTableListByTypeResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = DescribeTableListByTypeResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTableListByTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentPage") && dict["CurrentPage"] != nil {
            self.currentPage = dict["CurrentPage"] as! Int32
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Query") && dict["Query"] != nil {
            self.query = dict["Query"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowFullTableScan") && dict["AllowFullTableScan"] != nil {
                self.allowFullTableScan = dict["AllowFullTableScan"] as! Bool
            }
            if dict.keys.contains("Broadcast") && dict["Broadcast"] != nil {
                self.broadcast = dict["Broadcast"] as! Bool
            }
            if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
                self.dbInstType = dict["DbInstType"] as! Int32
            }
            if dict.keys.contains("IsLocked") && dict["IsLocked"] != nil {
                self.isLocked = dict["IsLocked"] as! Bool
            }
            if dict.keys.contains("IsShard") && dict["IsShard"] != nil {
                self.isShard = dict["IsShard"] as! Bool
            }
            if dict.keys.contains("ShardKey") && dict["ShardKey"] != nil {
                self.shardKey = dict["ShardKey"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! Int32
            }
            if dict.keys.contains("Table") && dict["Table"] != nil {
                self.table = dict["Table"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [DescribeTablesResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = DescribeTablesResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("Total") && dict["Total"] != nil {
            self.total = dict["Total"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DisableSqlAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableInstanceIpv6AddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("IsRecall") && dict["IsRecall"] != nil {
            self.isRecall = dict["IsRecall"] as! Bool
        }
        if dict.keys.contains("RecallEndTimestamp") && dict["RecallEndTimestamp"] != nil {
            self.recallEndTimestamp = dict["RecallEndTimestamp"] as! String
        }
        if dict.keys.contains("RecallStartTimestamp") && dict["RecallStartTimestamp"] != nil {
            self.recallStartTimestamp = dict["RecallStartTimestamp"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableSqlAuditResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = EnableSqlFlashbackMatchSwitchResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = FlashbackRecycleBinTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RdsInstanceId") && dict["RdsInstanceId"] != nil {
                self.rdsInstanceId = dict["RdsInstanceId"] as! String
            }
            if dict.keys.contains("ReadOnlyInstanceInfo") && dict["ReadOnlyInstanceInfo"] != nil {
                self.readOnlyInstanceInfo = dict["ReadOnlyInstanceInfo"] as! [String]
            }
            if dict.keys.contains("UsedInstanceId") && dict["UsedInstanceId"] != nil {
                self.usedInstanceId = dict["UsedInstanceId"] as! String
            }
            if dict.keys.contains("UsedInstanceType") && dict["UsedInstanceType"] != nil {
                self.usedInstanceType = dict["UsedInstanceType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [GetDrdsDbRdsRelationInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = GetDrdsDbRdsRelationInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetDrdsDbRdsRelationInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [ListTagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = ListTagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") && dict["TagValue"] != nil {
                    self.tagValue = dict["TagValue"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("TagResource") && dict["TagResource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["TagResource"] as! [Any] {
                    var model = ListTagResourcesResponseBody.TagResources.TagResource()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["TagResources"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Params") && dict["Params"] != nil {
            self.params = dict["Params"] as! String
        }
        if dict.keys.contains("RdsAction") && dict["RdsAction"] != nil {
            self.rdsAction = dict["RdsAction"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ManagePrivateRdsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Privilege") && dict["Privilege"] != nil {
                self.privilege = dict["Privilege"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbPrivilege") && dict["DbPrivilege"] != nil {
            var tmp : [ModifyAccountPrivilegeRequest.DbPrivilege] = []
            for v in dict["DbPrivilege"] as! [Any] {
                var model = ModifyAccountPrivilegeRequest.DbPrivilege()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dbPrivilege = tmp
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyAccountPrivilegeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDrdsInstanceDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("GroupAttribute") && dict["GroupAttribute"] != nil {
            self.groupAttribute = dict["GroupAttribute"] as! String
        }
        if dict.keys.contains("GroupName") && dict["GroupName"] != nil {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IpWhiteList") && dict["IpWhiteList"] != nil {
            self.ipWhiteList = dict["IpWhiteList"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyDrdsIpWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstanceId") && dict["DbInstanceId"] != nil {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbNodeIds") && dict["DbNodeIds"] != nil {
            self.dbNodeIds = dict["DbNodeIds"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Weights") && dict["Weights"] != nil {
            self.weights = dict["Weights"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyPolarDbReadWeightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("InstanceNames") && dict["InstanceNames"] != nil {
            self.instanceNames = dict["InstanceNames"] as! String
        }
        if dict.keys.contains("Weights") && dict["Weights"] != nil {
            self.weights = dict["Weights"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ModifyRdsReadWeightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupDbNames") && dict["BackupDbNames"] != nil {
            self.backupDbNames = dict["BackupDbNames"] as! String
        }
        if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
            self.backupLevel = dict["BackupLevel"] as! String
        }
        if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = PutStartBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RefreshDrdsAtomUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ReleaseInstanceInternetAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveBackupsSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveDrdsDbResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! Bool
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveDrdsDbFailedRecordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveInstanceAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RemoveRecycleBinTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RestartDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = RollbackInstanceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("HighSpaceUsageProtection") && dict["HighSpaceUsageProtection"] != nil {
            self.highSpaceUsageProtection = dict["HighSpaceUsageProtection"] as! String
        }
        if dict.keys.contains("LocalLogRetentionHours") && dict["LocalLogRetentionHours"] != nil {
            self.localLogRetentionHours = dict["LocalLogRetentionHours"] as! String
        }
        if dict.keys.contains("LocalLogRetentionSpace") && dict["LocalLogRetentionSpace"] != nil {
            self.localLogRetentionSpace = dict["LocalLogRetentionSpace"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetBackupLocalResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupDbNames") && dict["BackupDbNames"] != nil {
            self.backupDbNames = dict["BackupDbNames"] as! String
        }
        if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
            self.backupLevel = dict["BackupLevel"] as! String
        }
        if dict.keys.contains("BackupLog") && dict["BackupLog"] != nil {
            self.backupLog = dict["BackupLog"] as! String
        }
        if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("DataBackupRetentionPeriod") && dict["DataBackupRetentionPeriod"] != nil {
            self.dataBackupRetentionPeriod = dict["DataBackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("LogBackupRetentionPeriod") && dict["LogBackupRetentionPeriod"] != nil {
            self.logBackupRetentionPeriod = dict["LogBackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupEndTime") && dict["PreferredBackupEndTime"] != nil {
            self.preferredBackupEndTime = dict["PreferredBackupEndTime"] as! String
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupStartTime") && dict["PreferredBackupStartTime"] != nil {
            self.preferredBackupStartTime = dict["PreferredBackupStartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Active") && dict["Active"] != nil {
            self.active = dict["Active"] as! Bool
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetupBroadcastTablesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbName") && dict["DbName"] != nil {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("ParamRanges") && dict["ParamRanges"] != nil {
                self.paramRanges = dict["ParamRanges"] as! String
            }
            if dict.keys.contains("ParamType") && dict["ParamType"] != nil {
                self.paramType = dict["ParamType"] as! String
            }
            if dict.keys.contains("ParamValue") && dict["ParamValue"] != nil {
                self.paramValue = dict["ParamValue"] as! String
            }
            if dict.keys.contains("ParamVariableName") && dict["ParamVariableName"] != nil {
                self.paramVariableName = dict["ParamVariableName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            var tmp : [SetupDrdsParamsRequest.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = SetupDrdsParamsRequest.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("ParamLevel") && dict["ParamLevel"] != nil {
            self.paramLevel = dict["ParamLevel"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetupDrdsParamsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StatusAction") && dict["StatusAction"] != nil {
            self.statusAction = dict["StatusAction"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetupRecycleBinStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllowFullTableScan") && dict["AllowFullTableScan"] != nil {
            self.allowFullTableScan = dict["AllowFullTableScan"] as! Bool
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SetupTableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupDbNames") && dict["BackupDbNames"] != nil {
            self.backupDbNames = dict["BackupDbNames"] as! String
        }
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("BackupLevel") && dict["BackupLevel"] != nil {
            self.backupLevel = dict["BackupLevel"] as! String
        }
        if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
            self.backupMode = dict["BackupMode"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") && dict["Result"] != nil {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = StartRestoreResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("ExpandType") && dict["ExpandType"] != nil {
            self.expandType = dict["ExpandType"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("ParentJobId") && dict["ParentJobId"] != nil {
            self.parentJobId = dict["ParentJobId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitCleanTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("TableList") && dict["TableList"] != nil {
            self.tableList = dict["TableList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitHotExpandPreCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SrcDb") && dict["SrcDb"] != nil {
                self.srcDb = dict["SrcDb"] as! String
            }
            if dict.keys.contains("SrcInstanceId") && dict["SrcInstanceId"] != nil {
                self.srcInstanceId = dict["SrcInstanceId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbList") && dict["DbList"] != nil {
                self.dbList = dict["DbList"] as! String
            }
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbShardColumn") && dict["DbShardColumn"] != nil {
                self.dbShardColumn = dict["DbShardColumn"] as! String
            }
            if dict.keys.contains("HotDbName") && dict["HotDbName"] != nil {
                self.hotDbName = dict["HotDbName"] as! String
            }
            if dict.keys.contains("HotTableName") && dict["HotTableName"] != nil {
                self.hotTableName = dict["HotTableName"] as! String
            }
            if dict.keys.contains("LogicTable") && dict["LogicTable"] != nil {
                self.logicTable = dict["LogicTable"] as! String
            }
            if dict.keys.contains("ShardDbValue") && dict["ShardDbValue"] != nil {
                self.shardDbValue = dict["ShardDbValue"] as! String
            }
            if dict.keys.contains("ShardTbValue") && dict["ShardTbValue"] != nil {
                self.shardTbValue = dict["ShardTbValue"] as! String
            }
            if dict.keys.contains("TbShardColumn") && dict["TbShardColumn"] != nil {
                self.tbShardColumn = dict["TbShardColumn"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("SupperAccount") && dict["SupperAccount"] != nil {
                self.supperAccount = dict["SupperAccount"] as! String
            }
            if dict.keys.contains("SupperPassword") && dict["SupperPassword"] != nil {
                self.supperPassword = dict["SupperPassword"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("ExtendedMapping") && dict["ExtendedMapping"] != nil {
            var tmp : [SubmitHotExpandTaskRequest.ExtendedMapping] = []
            for v in dict["ExtendedMapping"] as! [Any] {
                var model = SubmitHotExpandTaskRequest.ExtendedMapping()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.extendedMapping = tmp
        }
        if dict.keys.contains("InstanceDbMapping") && dict["InstanceDbMapping"] != nil {
            var tmp : [SubmitHotExpandTaskRequest.InstanceDbMapping] = []
            for v in dict["InstanceDbMapping"] as! [Any] {
                var model = SubmitHotExpandTaskRequest.InstanceDbMapping()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instanceDbMapping = tmp
        }
        if dict.keys.contains("Mapping") && dict["Mapping"] != nil {
            var tmp : [SubmitHotExpandTaskRequest.Mapping] = []
            for v in dict["Mapping"] as! [Any] {
                var model = SubmitHotExpandTaskRequest.Mapping()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mapping = tmp
        }
        if dict.keys.contains("SupperAccountMapping") && dict["SupperAccountMapping"] != nil {
            var tmp : [SubmitHotExpandTaskRequest.SupperAccountMapping] = []
            for v in dict["SupperAccountMapping"] as! [Any] {
                var model = SubmitHotExpandTaskRequest.SupperAccountMapping()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.supperAccountMapping = tmp
        }
        if dict.keys.contains("TaskDesc") && dict["TaskDesc"] != nil {
            self.taskDesc = dict["TaskDesc"] as! String
        }
        if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitHotExpandTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstType") && dict["DbInstType"] != nil {
            self.dbInstType = dict["DbInstType"] as! String
        }
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitSmoothExpandPreCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Msg") && dict["Msg"] != nil {
            self.msg = dict["Msg"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitSmoothExpandPreCheckTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("RecallRestoreType") && dict["RecallRestoreType"] != nil {
            self.recallRestoreType = dict["RecallRestoreType"] as! Int32
        }
        if dict.keys.contains("RecallType") && dict["RecallType"] != nil {
            self.recallType = dict["RecallType"] as! Int32
        }
        if dict.keys.contains("SqlPk") && dict["SqlPk"] != nil {
            self.sqlPk = dict["SqlPk"] as! String
        }
        if dict.keys.contains("SqlType") && dict["SqlType"] != nil {
            self.sqlType = dict["SqlType"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("TableName") && dict["TableName"] != nil {
            self.tableName = dict["TableName"] as! String
        }
        if dict.keys.contains("TraceId") && dict["TraceId"] != nil {
            self.traceId = dict["TraceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SubmitSqlFlashbackTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! Bool
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = SwitchGlobalBroadcastTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [TagResourcesRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = TagResourcesRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") && dict["TagKey"] != nil {
            self.tagKey = dict["TagKey"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClassicExpiredDays") && dict["ClassicExpiredDays"] != nil {
            self.classicExpiredDays = dict["ClassicExpiredDays"] as! Int32
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RetainClassic") && dict["RetainClassic"] != nil {
            self.retainClassic = dict["RetainClassic"] as! Bool
        }
        if dict.keys.contains("SrcInstanceNetworkType") && dict["SrcInstanceNetworkType"] != nil {
            self.srcInstanceNetworkType = dict["SrcInstanceNetworkType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateInstanceNetworkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoUseCoupon") && dict["AutoUseCoupon"] != nil {
            self.autoUseCoupon = dict["AutoUseCoupon"] as! Bool
        }
        if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("PrePayDuration") && dict["PrePayDuration"] != nil {
            self.prePayDuration = dict["PrePayDuration"] as! Int32
        }
        if dict.keys.contains("RdsClass") && dict["RdsClass"] != nil {
            self.rdsClass = dict["RdsClass"] as! String
        }
        if dict.keys.contains("Storage") && dict["Storage"] != nil {
            self.storage = dict["Storage"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdatePrivateRdsClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("NewResourceGroupId") && dict["NewResourceGroupId"] != nil {
            self.newResourceGroupId = dict["NewResourceGroupId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpdateResourceGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("HistoreInstanceId") && dict["HistoreInstanceId"] != nil {
            self.historeInstanceId = dict["HistoreInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeHiStoreInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Rpm") && dict["Rpm"] != nil {
            self.rpm = dict["Rpm"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") && dict["Data"] != nil {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeInstanceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") && dict["DbName"] != nil {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") && dict["DrdsInstanceId"] != nil {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SourceTableName") && dict["SourceTableName"] != nil {
            self.sourceTableName = dict["SourceTableName"] as! String
        }
        if dict.keys.contains("TargetTableName") && dict["TargetTableName"] != nil {
            self.targetTableName = dict["TargetTableName"] as! String
        }
        if dict.keys.contains("TaskType") && dict["TaskType"] != nil {
            self.taskType = dict["TaskType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Item") && dict["Item"] != nil {
                self.item = dict["Item"] as! String
            }
            if dict.keys.contains("Result") && dict["Result"] != nil {
                self.result = dict["Result"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("List") && dict["List"] != nil {
            var tmp : [ValidateShardTaskResponseBody.List] = []
            for v in dict["List"] as! [Any] {
                var model = ValidateShardTaskResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ValidateShardTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
