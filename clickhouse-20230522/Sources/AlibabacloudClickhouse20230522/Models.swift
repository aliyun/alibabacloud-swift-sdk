import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateAccountRequest : Tea.TeaModel {
    public class DmlAuthSetting : Tea.TeaModel {
        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowDatabases") {
                self.allowDatabases = dict["AllowDatabases"] as! [String]
            }
            if dict.keys.contains("AllowDictionaries") {
                self.allowDictionaries = dict["AllowDictionaries"] as! [String]
            }
            if dict.keys.contains("DdlAuthority") {
                self.ddlAuthority = dict["DdlAuthority"] as! Bool
            }
            if dict.keys.contains("DmlAuthority") {
                self.dmlAuthority = dict["DmlAuthority"] as! Int32
            }
        }
    }
    public var account: String?

    public var accountType: String?

    public var DBInstanceId: String?

    public var description_: String?

    public var dmlAuthSetting: CreateAccountRequest.DmlAuthSetting?

    public var password: String?

    public var product: String?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dmlAuthSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dmlAuthSetting != nil {
            map["DmlAuthSetting"] = self.dmlAuthSetting?.toMap()
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DmlAuthSetting") {
            var model = CreateAccountRequest.DmlAuthSetting()
            model.fromMap(dict["DmlAuthSetting"] as! [String: Any])
            self.dmlAuthSetting = model
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateAccountShrinkRequest : Tea.TeaModel {
    public var account: String?

    public var accountType: String?

    public var DBInstanceId: String?

    public var description_: String?

    public var dmlAuthSettingShrink: String?

    public var password: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.dmlAuthSettingShrink != nil {
            map["DmlAuthSetting"] = self.dmlAuthSettingShrink!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DmlAuthSetting") {
            self.dmlAuthSettingShrink = dict["DmlAuthSetting"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: CreateAccountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBRequest : Tea.TeaModel {
    public var comment: String?

    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

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
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
        }
    }
    public var data: CreateDBResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateDBResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDBInstanceRequest : Tea.TeaModel {
    public class MultiZone : Tea.TeaModel {
        public var vSwitchIds: [String]?

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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var clientToken: String?

    public var DBInstanceDescription: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZone: [CreateDBInstanceRequest.MultiZone]?

    public var regionId: String?

    public var scaleMax: String?

    public var scaleMin: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZone != nil {
            var tmp : [Any] = []
            for k in self.multiZone! {
                tmp.append(k.toMap())
            }
            map["MultiZone"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("MultiZone") {
            var tmp : [CreateDBInstanceRequest.MultiZone] = []
            for v in dict["MultiZone"] as! [Any] {
                var model = CreateDBInstanceRequest.MultiZone()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.multiZone = tmp
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScaleMax") {
            self.scaleMax = dict["ScaleMax"] as! String
        }
        if dict.keys.contains("ScaleMin") {
            self.scaleMin = dict["ScaleMin"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDBInstanceShrinkRequest : Tea.TeaModel {
    public var clientToken: String?

    public var DBInstanceDescription: String?

    public var engine: String?

    public var engineVersion: String?

    public var multiZoneShrink: String?

    public var regionId: String?

    public var scaleMax: String?

    public var scaleMin: String?

    public var vpcId: String?

    public var vswitchId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.DBInstanceDescription != nil {
            map["DBInstanceDescription"] = self.DBInstanceDescription!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.multiZoneShrink != nil {
            map["MultiZone"] = self.multiZoneShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DBInstanceDescription") {
            self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
        }
        if dict.keys.contains("Engine") {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("MultiZone") {
            self.multiZoneShrink = dict["MultiZone"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScaleMax") {
            self.scaleMax = dict["ScaleMax"] as! String
        }
        if dict.keys.contains("ScaleMin") {
            self.scaleMin = dict["ScaleMin"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("VswitchId") {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionString: String?

        public var DBInstanceId: String?

        public var orderId: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: CreateDBInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = CreateDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEndpointRequest : Tea.TeaModel {
    public var connectionPrefix: String?

    public var DBInstanceId: String?

    public var DBInstanceNetType: String?

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
        if self.connectionPrefix != nil {
            map["ConnectionPrefix"] = self.connectionPrefix!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBInstanceNetType != nil {
            map["DBInstanceNetType"] = self.DBInstanceNetType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionPrefix") {
            self.connectionPrefix = dict["ConnectionPrefix"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBInstanceNetType") {
            self.DBInstanceNetType = dict["DBInstanceNetType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateEndpointResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: DeleteAccountResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.DBName != nil {
            map["DBName"] = self.DBName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

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
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.DBName != nil {
                map["DBName"] = self.DBName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DBName") {
                self.DBName = dict["DBName"] as! String
            }
        }
    }
    public var data: DeleteDBResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteDBResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: DeleteDBInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DeleteDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEndpointRequest : Tea.TeaModel {
    public var connectionString: String?

    public var DBInstanceId: String?

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
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteEndpointResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteEndpointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteEndpointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteEndpointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountAuthorityRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAccountAuthorityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var DBInstanceId: String?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public var totalDatabases: [String]?

        public var totalDictionaries: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            if self.totalDatabases != nil {
                map["TotalDatabases"] = self.totalDatabases!
            }
            if self.totalDictionaries != nil {
                map["TotalDictionaries"] = self.totalDictionaries!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("AllowDatabases") {
                self.allowDatabases = dict["AllowDatabases"] as! [String]
            }
            if dict.keys.contains("AllowDictionaries") {
                self.allowDictionaries = dict["AllowDictionaries"] as! [String]
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DdlAuthority") {
                self.ddlAuthority = dict["DdlAuthority"] as! Bool
            }
            if dict.keys.contains("DmlAuthority") {
                self.dmlAuthority = dict["DmlAuthority"] as! Int32
            }
            if dict.keys.contains("TotalDatabases") {
                self.totalDatabases = dict["TotalDatabases"] as! [String]
            }
            if dict.keys.contains("TotalDictionaries") {
                self.totalDictionaries = dict["TotalDictionaries"] as! [String]
            }
        }
    }
    public var data: DescribeAccountAuthorityResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeAccountAuthorityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountAuthorityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var product: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAccountsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Accounts : Tea.TeaModel {
            public var account: String?

            public var accountType: String?

            public var description_: String?

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
                if self.account != nil {
                    map["Account"] = self.account!
                }
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
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
                if dict.keys.contains("Account") {
                    self.account = dict["Account"] as! String
                }
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var accounts: [DescribeAccountsResponseBody.Data.Accounts]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.accounts != nil {
                var tmp : [Any] = []
                for k in self.accounts! {
                    tmp.append(k.toMap())
                }
                map["Accounts"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Accounts") {
                var tmp : [DescribeAccountsResponseBody.Data.Accounts] = []
                for v in dict["Accounts"] as! [Any] {
                    var model = DescribeAccountsResponseBody.Data.Accounts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accounts = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: DescribeAccountsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeAccountsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceAttributeRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeDBInstanceAttributeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var nodeStatus: String?

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
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NodeStatus") {
                    self.nodeStatus = dict["NodeStatus"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public class Tags : Tea.TeaModel {
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
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Value") {
                    self.value = dict["Value"] as! String
                }
            }
        }
        public var aliUid: Int64?

        public var bid: String?

        public var chargeType: String?

        public var createTime: String?

        public var DBInstanceId: String?

        public var deletionProtection: Bool?

        public var description_: String?

        public var disabledPorts: String?

        public var engine: String?

        public var engineMinorVersion: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var latestEngineMinorVersion: String?

        public var lockMode: String?

        public var lockReason: String?

        public var maintainEndTime: String?

        public var maintainStartTime: String?

        public var nodes: [DescribeDBInstanceAttributeResponseBody.Data.Nodes]?

        public var objectStoreSize: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var scaleMax: Int32?

        public var scaleMin: Int32?

        public var status: String?

        public var storageSize: Int32?

        public var storageType: String?

        public var tags: [DescribeDBInstanceAttributeResponseBody.Data.Tags]?

        public var vSwitchId: String?

        public var vpcId: String?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.bid != nil {
                map["Bid"] = self.bid!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.disabledPorts != nil {
                map["DisabledPorts"] = self.disabledPorts!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineMinorVersion != nil {
                map["EngineMinorVersion"] = self.engineMinorVersion!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expireTime != nil {
                map["ExpireTime"] = self.expireTime!
            }
            if self.latestEngineMinorVersion != nil {
                map["LatestEngineMinorVersion"] = self.latestEngineMinorVersion!
            }
            if self.lockMode != nil {
                map["LockMode"] = self.lockMode!
            }
            if self.lockReason != nil {
                map["LockReason"] = self.lockReason!
            }
            if self.maintainEndTime != nil {
                map["MaintainEndTime"] = self.maintainEndTime!
            }
            if self.maintainStartTime != nil {
                map["MaintainStartTime"] = self.maintainStartTime!
            }
            if self.nodes != nil {
                var tmp : [Any] = []
                for k in self.nodes! {
                    tmp.append(k.toMap())
                }
                map["Nodes"] = tmp
            }
            if self.objectStoreSize != nil {
                map["ObjectStoreSize"] = self.objectStoreSize!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageSize != nil {
                map["StorageSize"] = self.storageSize!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["Tags"] = tmp
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("Bid") {
                self.bid = dict["Bid"] as! String
            }
            if dict.keys.contains("ChargeType") {
                self.chargeType = dict["ChargeType"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DeletionProtection") {
                self.deletionProtection = dict["DeletionProtection"] as! Bool
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DisabledPorts") {
                self.disabledPorts = dict["DisabledPorts"] as! String
            }
            if dict.keys.contains("Engine") {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineMinorVersion") {
                self.engineMinorVersion = dict["EngineMinorVersion"] as! String
            }
            if dict.keys.contains("EngineVersion") {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ExpireTime") {
                self.expireTime = dict["ExpireTime"] as! String
            }
            if dict.keys.contains("LatestEngineMinorVersion") {
                self.latestEngineMinorVersion = dict["LatestEngineMinorVersion"] as! String
            }
            if dict.keys.contains("LockMode") {
                self.lockMode = dict["LockMode"] as! String
            }
            if dict.keys.contains("LockReason") {
                self.lockReason = dict["LockReason"] as! String
            }
            if dict.keys.contains("MaintainEndTime") {
                self.maintainEndTime = dict["MaintainEndTime"] as! String
            }
            if dict.keys.contains("MaintainStartTime") {
                self.maintainStartTime = dict["MaintainStartTime"] as! String
            }
            if dict.keys.contains("Nodes") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.Data.Nodes] = []
                for v in dict["Nodes"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.Data.Nodes()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodes = tmp
            }
            if dict.keys.contains("ObjectStoreSize") {
                self.objectStoreSize = dict["ObjectStoreSize"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("ScaleMax") {
                self.scaleMax = dict["ScaleMax"] as! Int32
            }
            if dict.keys.contains("ScaleMin") {
                self.scaleMin = dict["ScaleMin"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageSize") {
                self.storageSize = dict["StorageSize"] as! Int32
            }
            if dict.keys.contains("StorageType") {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("Tags") {
                var tmp : [DescribeDBInstanceAttributeResponseBody.Data.Tags] = []
                for v in dict["Tags"] as! [Any] {
                    var model = DescribeDBInstanceAttributeResponseBody.Data.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: DescribeDBInstanceAttributeResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceAttributeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstanceDataSourcesRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var DBName: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.DBName != nil {
            map["DBName"] = self.DBName!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DBName") {
            self.DBName = dict["DBName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("TableName") {
            self.tableName = dict["TableName"] as! String
        }
    }
}

public class DescribeDBInstanceDataSourcesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Columns : Tea.TeaModel {
            public var columnName: String?

            public var comment: String?

            public var DBName: String?

            public var primaryKey: String?

            public var tableName: String?

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
                if self.columnName != nil {
                    map["ColumnName"] = self.columnName!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.DBName != nil {
                    map["DBName"] = self.DBName!
                }
                if self.primaryKey != nil {
                    map["PrimaryKey"] = self.primaryKey!
                }
                if self.tableName != nil {
                    map["TableName"] = self.tableName!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ColumnName") {
                    self.columnName = dict["ColumnName"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("DBName") {
                    self.DBName = dict["DBName"] as! String
                }
                if dict.keys.contains("PrimaryKey") {
                    self.primaryKey = dict["PrimaryKey"] as! String
                }
                if dict.keys.contains("TableName") {
                    self.tableName = dict["TableName"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var columns: [DescribeDBInstanceDataSourcesResponseBody.Data.Columns]?

        public var DBInstanceId: String?

        public var schemas: String?

        public var tables: [String]?

        public override init() {
            super.init()
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
                var tmp : [Any] = []
                for k in self.columns! {
                    tmp.append(k.toMap())
                }
                map["Columns"] = tmp
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.schemas != nil {
                map["Schemas"] = self.schemas!
            }
            if self.tables != nil {
                map["Tables"] = self.tables!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Columns") {
                var tmp : [DescribeDBInstanceDataSourcesResponseBody.Data.Columns] = []
                for v in dict["Columns"] as! [Any] {
                    var model = DescribeDBInstanceDataSourcesResponseBody.Data.Columns()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.columns = tmp
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("Schemas") {
                self.schemas = dict["Schemas"] as! String
            }
            if dict.keys.contains("Tables") {
                self.tables = dict["Tables"] as! [String]
            }
        }
    }
    public var data: DescribeDBInstanceDataSourcesResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstanceDataSourcesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstanceDataSourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstanceDataSourcesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstanceDataSourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDBInstancesRequest : Tea.TeaModel {
    public var DBInstanceIds: String?

    public var DBInstanceStatus: String?

    public var description_: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInstanceIds != nil {
            map["DBInstanceIds"] = self.DBInstanceIds!
        }
        if self.DBInstanceStatus != nil {
            map["DBInstanceStatus"] = self.DBInstanceStatus!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceIds") {
            self.DBInstanceIds = dict["DBInstanceIds"] as! String
        }
        if dict.keys.contains("DBInstanceStatus") {
            self.DBInstanceStatus = dict["DBInstanceStatus"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class DescribeDBInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DBInstances : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                    if dict.keys.contains("Key") {
                        self.key = dict["Key"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
                    }
                }
            }
            public var aliUid: String?

            public var bid: String?

            public var chargeType: String?

            public var createTime: String?

            public var DBInstanceId: String?

            public var deletionProtection: String?

            public var description_: String?

            public var engine: String?

            public var engineVersion: String?

            public var expireTime: String?

            public var lockMode: String?

            public var lockReason: String?

            public var maintainEndTime: String?

            public var maintainStartTime: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var scaleMax: Int32?

            public var scaleMin: Int32?

            public var status: String?

            public var tags: [DescribeDBInstancesResponseBody.Data.DBInstances.Tags]?

            public var vSwitchId: String?

            public var vpcId: String?

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
                if self.aliUid != nil {
                    map["AliUid"] = self.aliUid!
                }
                if self.bid != nil {
                    map["Bid"] = self.bid!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.DBInstanceId != nil {
                    map["DBInstanceId"] = self.DBInstanceId!
                }
                if self.deletionProtection != nil {
                    map["DeletionProtection"] = self.deletionProtection!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
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
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.maintainEndTime != nil {
                    map["MaintainEndTime"] = self.maintainEndTime!
                }
                if self.maintainStartTime != nil {
                    map["MaintainStartTime"] = self.maintainStartTime!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.scaleMax != nil {
                    map["ScaleMax"] = self.scaleMax!
                }
                if self.scaleMin != nil {
                    map["ScaleMin"] = self.scaleMin!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["Tags"] = tmp
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliUid") {
                    self.aliUid = dict["AliUid"] as! String
                }
                if dict.keys.contains("Bid") {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("ChargeType") {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DBInstanceId") {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("DeletionProtection") {
                    self.deletionProtection = dict["DeletionProtection"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Engine") {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("EngineVersion") {
                    self.engineVersion = dict["EngineVersion"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("LockMode") {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("MaintainEndTime") {
                    self.maintainEndTime = dict["MaintainEndTime"] as! String
                }
                if dict.keys.contains("MaintainStartTime") {
                    self.maintainStartTime = dict["MaintainStartTime"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("ScaleMax") {
                    self.scaleMax = dict["ScaleMax"] as! Int32
                }
                if dict.keys.contains("ScaleMin") {
                    self.scaleMin = dict["ScaleMin"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") {
                    var tmp : [DescribeDBInstancesResponseBody.Data.DBInstances.Tags] = []
                    for v in dict["Tags"] as! [Any] {
                        var model = DescribeDBInstancesResponseBody.Data.DBInstances.Tags()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var DBInstances: [DescribeDBInstancesResponseBody.Data.DBInstances]?

        public var pageNumber: Int32?

        public var pageSize: Int32?

        public var totalCount: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstances != nil {
                var tmp : [Any] = []
                for k in self.DBInstances! {
                    tmp.append(k.toMap())
                }
                map["DBInstances"] = tmp
            }
            if self.pageNumber != nil {
                map["PageNumber"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["PageSize"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstances") {
                var tmp : [DescribeDBInstancesResponseBody.Data.DBInstances] = []
                for v in dict["DBInstances"] as! [Any] {
                    var model = DescribeDBInstancesResponseBody.Data.DBInstances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBInstances = tmp
            }
            if dict.keys.contains("PageNumber") {
                self.pageNumber = dict["PageNumber"] as! Int32
            }
            if dict.keys.contains("PageSize") {
                self.pageSize = dict["PageSize"] as! Int32
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! String
            }
        }
    }
    public var data: DescribeDBInstancesResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeDBInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDBInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDBInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDBInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEndpointsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeEndpointsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Endpoints : Tea.TeaModel {
            public class Ports : Tea.TeaModel {
                public var port: Int32?

                public var protocol_: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.protocol_ != nil {
                        map["Protocol"] = self.protocol_!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Int32
                    }
                    if dict.keys.contains("Protocol") {
                        self.protocol_ = dict["Protocol"] as! String
                    }
                }
            }
            public var connectionString: String?

            public var IPAddress: String?

            public var netType: String?

            public var ports: [DescribeEndpointsResponseBody.Data.Endpoints.Ports]?

            public var status: String?

            public var vSwitchId: String?

            public var vpcId: String?

            public var vpcInstanceId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectionString != nil {
                    map["ConnectionString"] = self.connectionString!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.ports != nil {
                    var tmp : [Any] = []
                    for k in self.ports! {
                        tmp.append(k.toMap())
                    }
                    map["Ports"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                if self.vpcInstanceId != nil {
                    map["VpcInstanceId"] = self.vpcInstanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectionString") {
                    self.connectionString = dict["ConnectionString"] as! String
                }
                if dict.keys.contains("IPAddress") {
                    self.IPAddress = dict["IPAddress"] as! String
                }
                if dict.keys.contains("NetType") {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("Ports") {
                    var tmp : [DescribeEndpointsResponseBody.Data.Endpoints.Ports] = []
                    for v in dict["Ports"] as! [Any] {
                        var model = DescribeEndpointsResponseBody.Data.Endpoints.Ports()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ports = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
                }
            }
        }
        public var endpoints: [DescribeEndpointsResponseBody.Data.Endpoints]?

        public var instanceNetworkType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpoints != nil {
                var tmp : [Any] = []
                for k in self.endpoints! {
                    tmp.append(k.toMap())
                }
                map["Endpoints"] = tmp
            }
            if self.instanceNetworkType != nil {
                map["InstanceNetworkType"] = self.instanceNetworkType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Endpoints") {
                var tmp : [DescribeEndpointsResponseBody.Data.Endpoints] = []
                for v in dict["Endpoints"] as! [Any] {
                    var model = DescribeEndpointsResponseBody.Data.Endpoints()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.endpoints = tmp
            }
            if dict.keys.contains("InstanceNetworkType") {
                self.instanceNetworkType = dict["InstanceNetworkType"] as! String
            }
        }
    }
    public var data: DescribeEndpointsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeEndpointsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEndpointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeEndpointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeProcessListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var initialQueryId: String?

    public var initialUser: String?

    public var keyword: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: String?

    public var queryOrder: Int64?

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
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
        }
        if self.initialUser != nil {
            map["InitialUser"] = self.initialUser!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
        }
        if self.queryOrder != nil {
            map["QueryOrder"] = self.queryOrder!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InitialQueryId") {
            self.initialQueryId = dict["InitialQueryId"] as! String
        }
        if dict.keys.contains("InitialUser") {
            self.initialUser = dict["InitialUser"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryDurationMs") {
            self.queryDurationMs = dict["QueryDurationMs"] as! String
        }
        if dict.keys.contains("QueryOrder") {
            self.queryOrder = dict["QueryOrder"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeProcessListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var initialAddress: String?

            public var initialQueryId: String?

            public var initialUser: String?

            public var query: String?

            public var queryDurationMs: Int64?

            public var queryStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.initialAddress != nil {
                    map["InitialAddress"] = self.initialAddress!
                }
                if self.initialQueryId != nil {
                    map["InitialQueryId"] = self.initialQueryId!
                }
                if self.initialUser != nil {
                    map["InitialUser"] = self.initialUser!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.queryDurationMs != nil {
                    map["QueryDurationMs"] = self.queryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InitialAddress") {
                    self.initialAddress = dict["InitialAddress"] as! String
                }
                if dict.keys.contains("InitialQueryId") {
                    self.initialQueryId = dict["InitialQueryId"] as! String
                }
                if dict.keys.contains("InitialUser") {
                    self.initialUser = dict["InitialUser"] as! String
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
                }
                if dict.keys.contains("QueryDurationMs") {
                    self.queryDurationMs = dict["QueryDurationMs"] as! Int64
                }
                if dict.keys.contains("QueryStartTime") {
                    self.queryStartTime = dict["QueryStartTime"] as! String
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeProcessListResponseBody.Data.ResultSet]?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("ResultSet") {
                var tmp : [DescribeProcessListResponseBody.Data.ResultSet] = []
                for v in dict["ResultSet"] as! [Any] {
                    var model = DescribeProcessListResponseBody.Data.ResultSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resultSet = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: DescribeProcessListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeProcessListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeProcessListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeProcessListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeProcessListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeSecurityIPListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class GroupItems : Tea.TeaModel {
            public var groupName: String?

            public var groupTag: String?

            public var securityIPList: String?

            public var securityIPType: String?

            public var whitelistNetType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.groupName != nil {
                    map["GroupName"] = self.groupName!
                }
                if self.groupTag != nil {
                    map["GroupTag"] = self.groupTag!
                }
                if self.securityIPList != nil {
                    map["SecurityIPList"] = self.securityIPList!
                }
                if self.securityIPType != nil {
                    map["SecurityIPType"] = self.securityIPType!
                }
                if self.whitelistNetType != nil {
                    map["WhitelistNetType"] = self.whitelistNetType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("GroupTag") {
                    self.groupTag = dict["GroupTag"] as! String
                }
                if dict.keys.contains("SecurityIPList") {
                    self.securityIPList = dict["SecurityIPList"] as! String
                }
                if dict.keys.contains("SecurityIPType") {
                    self.securityIPType = dict["SecurityIPType"] as! String
                }
                if dict.keys.contains("WhitelistNetType") {
                    self.whitelistNetType = dict["WhitelistNetType"] as! String
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var groupItems: [DescribeSecurityIPListResponseBody.Data.GroupItems]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.groupItems != nil {
                var tmp : [Any] = []
                for k in self.groupItems! {
                    tmp.append(k.toMap())
                }
                map["GroupItems"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("GroupItems") {
                var tmp : [DescribeSecurityIPListResponseBody.Data.GroupItems] = []
                for v in dict["GroupItems"] as! [Any] {
                    var model = DescribeSecurityIPListResponseBody.Data.GroupItems()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.groupItems = tmp
            }
        }
    }
    public var data: DescribeSecurityIPListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeSecurityIPListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSecurityIPListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSecurityIPListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowLogRecordsRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryDurationMs") {
            self.queryDurationMs = dict["QueryDurationMs"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSlowLogRecordsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var initialAddress: String?

            public var initialQueryId: String?

            public var initialUser: String?

            public var memoryUsage: Int64?

            public var query: String?

            public var queryDurationMs: Int64?

            public var queryStartTime: String?

            public var readBytes: Int64?

            public var readRows: Int64?

            public var resultBytes: Int64?

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
                if self.initialAddress != nil {
                    map["InitialAddress"] = self.initialAddress!
                }
                if self.initialQueryId != nil {
                    map["InitialQueryId"] = self.initialQueryId!
                }
                if self.initialUser != nil {
                    map["InitialUser"] = self.initialUser!
                }
                if self.memoryUsage != nil {
                    map["MemoryUsage"] = self.memoryUsage!
                }
                if self.query != nil {
                    map["Query"] = self.query!
                }
                if self.queryDurationMs != nil {
                    map["QueryDurationMs"] = self.queryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                if self.readBytes != nil {
                    map["ReadBytes"] = self.readBytes!
                }
                if self.readRows != nil {
                    map["ReadRows"] = self.readRows!
                }
                if self.resultBytes != nil {
                    map["ResultBytes"] = self.resultBytes!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InitialAddress") {
                    self.initialAddress = dict["InitialAddress"] as! String
                }
                if dict.keys.contains("InitialQueryId") {
                    self.initialQueryId = dict["InitialQueryId"] as! String
                }
                if dict.keys.contains("InitialUser") {
                    self.initialUser = dict["InitialUser"] as! String
                }
                if dict.keys.contains("MemoryUsage") {
                    self.memoryUsage = dict["MemoryUsage"] as! Int64
                }
                if dict.keys.contains("Query") {
                    self.query = dict["Query"] as! String
                }
                if dict.keys.contains("QueryDurationMs") {
                    self.queryDurationMs = dict["QueryDurationMs"] as! Int64
                }
                if dict.keys.contains("QueryStartTime") {
                    self.queryStartTime = dict["QueryStartTime"] as! String
                }
                if dict.keys.contains("ReadBytes") {
                    self.readBytes = dict["ReadBytes"] as! Int64
                }
                if dict.keys.contains("ReadRows") {
                    self.readRows = dict["ReadRows"] as! Int64
                }
                if dict.keys.contains("ResultBytes") {
                    self.resultBytes = dict["ResultBytes"] as! Int64
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeSlowLogRecordsResponseBody.Data.ResultSet]?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            if self.totalCount != nil {
                map["TotalCount"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("ResultSet") {
                var tmp : [DescribeSlowLogRecordsResponseBody.Data.ResultSet] = []
                for v in dict["ResultSet"] as! [Any] {
                    var model = DescribeSlowLogRecordsResponseBody.Data.ResultSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resultSet = tmp
            }
            if dict.keys.contains("TotalCount") {
                self.totalCount = dict["TotalCount"] as! Int32
            }
        }
    }
    public var data: DescribeSlowLogRecordsResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeSlowLogRecordsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSlowLogRecordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogRecordsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowLogRecordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowLogTrendRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var endTime: String?

    public var product: String?

    public var queryDurationMs: String?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
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
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("QueryDurationMs") {
            self.queryDurationMs = dict["QueryDurationMs"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSlowLogTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class ResultSet : Tea.TeaModel {
            public var avgQueryDurationMs: Int64?

            public var cnt: Int64?

            public var maxQueryDurationMs: Int64?

            public var minQueryDurationMs: Int64?

            public var queryStartTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.avgQueryDurationMs != nil {
                    map["AvgQueryDurationMs"] = self.avgQueryDurationMs!
                }
                if self.cnt != nil {
                    map["Cnt"] = self.cnt!
                }
                if self.maxQueryDurationMs != nil {
                    map["MaxQueryDurationMs"] = self.maxQueryDurationMs!
                }
                if self.minQueryDurationMs != nil {
                    map["MinQueryDurationMs"] = self.minQueryDurationMs!
                }
                if self.queryStartTime != nil {
                    map["QueryStartTime"] = self.queryStartTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AvgQueryDurationMs") {
                    self.avgQueryDurationMs = dict["AvgQueryDurationMs"] as! Int64
                }
                if dict.keys.contains("Cnt") {
                    self.cnt = dict["Cnt"] as! Int64
                }
                if dict.keys.contains("MaxQueryDurationMs") {
                    self.maxQueryDurationMs = dict["MaxQueryDurationMs"] as! Int64
                }
                if dict.keys.contains("MinQueryDurationMs") {
                    self.minQueryDurationMs = dict["MinQueryDurationMs"] as! Int64
                }
                if dict.keys.contains("QueryStartTime") {
                    self.queryStartTime = dict["QueryStartTime"] as! String
                }
            }
        }
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var resultSet: [DescribeSlowLogTrendResponseBody.Data.ResultSet]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.resultSet != nil {
                var tmp : [Any] = []
                for k in self.resultSet! {
                    tmp.append(k.toMap())
                }
                map["ResultSet"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("ResultSet") {
                var tmp : [DescribeSlowLogTrendResponseBody.Data.ResultSet] = []
                for v in dict["ResultSet"] as! [Any] {
                    var model = DescribeSlowLogTrendResponseBody.Data.ResultSet()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.resultSet = tmp
            }
        }
    }
    public var data: DescribeSlowLogTrendResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = DescribeSlowLogTrendResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSlowLogTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowLogTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowLogTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillProcessRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var initialQueryId: String?

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
        if self.initialQueryId != nil {
            map["InitialQueryId"] = self.initialQueryId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("InitialQueryId") {
            self.initialQueryId = dict["InitialQueryId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class KillProcessResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var count: Int64?

        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public override init() {
            super.init()
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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int64
            }
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
        }
    }
    public var data: KillProcessResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = KillProcessResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class KillProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillProcessResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountAuthorityRequest : Tea.TeaModel {
    public class DmlAuthSetting : Tea.TeaModel {
        public var allowDatabases: [String]?

        public var allowDictionaries: [String]?

        public var ddlAuthority: Bool?

        public var dmlAuthority: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allowDatabases != nil {
                map["AllowDatabases"] = self.allowDatabases!
            }
            if self.allowDictionaries != nil {
                map["AllowDictionaries"] = self.allowDictionaries!
            }
            if self.ddlAuthority != nil {
                map["DdlAuthority"] = self.ddlAuthority!
            }
            if self.dmlAuthority != nil {
                map["DmlAuthority"] = self.dmlAuthority!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllowDatabases") {
                self.allowDatabases = dict["AllowDatabases"] as! [String]
            }
            if dict.keys.contains("AllowDictionaries") {
                self.allowDictionaries = dict["AllowDictionaries"] as! [String]
            }
            if dict.keys.contains("DdlAuthority") {
                self.ddlAuthority = dict["DdlAuthority"] as! Bool
            }
            if dict.keys.contains("DmlAuthority") {
                self.dmlAuthority = dict["DmlAuthority"] as! Int32
            }
        }
    }
    public var account: String?

    public var DBInstanceId: String?

    public var dmlAuthSetting: ModifyAccountAuthorityRequest.DmlAuthSetting?

    public var regionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dmlAuthSetting?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dmlAuthSetting != nil {
            map["DmlAuthSetting"] = self.dmlAuthSetting?.toMap()
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DmlAuthSetting") {
            var model = ModifyAccountAuthorityRequest.DmlAuthSetting()
            model.fromMap(dict["DmlAuthSetting"] as! [String: Any])
            self.dmlAuthSetting = model
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountAuthorityShrinkRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var dmlAuthSettingShrink: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.dmlAuthSettingShrink != nil {
            map["DmlAuthSetting"] = self.dmlAuthSettingShrink!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DmlAuthSetting") {
            self.dmlAuthSettingShrink = dict["DmlAuthSetting"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountAuthorityResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: ModifyAccountAuthorityResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyAccountAuthorityResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyAccountAuthorityResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccountAuthorityResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccountAuthorityResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var description_: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: ModifyAccountDescriptionResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyAccountDescriptionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAccountDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceAttributeRequest : Tea.TeaModel {
    public var attributeType: String?

    public var attributeValue: String?

    public var DBInstanceId: String?

    public var product: String?

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
        if self.attributeType != nil {
            map["AttributeType"] = self.attributeType!
        }
        if self.attributeValue != nil {
            map["AttributeValue"] = self.attributeValue!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AttributeType") {
            self.attributeType = dict["AttributeType"] as! String
        }
        if dict.keys.contains("AttributeValue") {
            self.attributeValue = dict["AttributeValue"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDBInstanceAttributeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBInstanceAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceClassRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

    public var scaleMax: Int64?

    public var scaleMin: Int64?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scaleMax != nil {
            map["ScaleMax"] = self.scaleMax!
        }
        if self.scaleMin != nil {
            map["ScaleMin"] = self.scaleMin!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ScaleMax") {
            self.scaleMax = dict["ScaleMax"] as! Int64
        }
        if dict.keys.contains("ScaleMin") {
            self.scaleMin = dict["ScaleMin"] as! Int64
        }
    }
}

public class ModifyDBInstanceClassResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

        public var scaleMax: Int64?

        public var scaleMin: Int64?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.scaleMax != nil {
                map["ScaleMax"] = self.scaleMax!
            }
            if self.scaleMin != nil {
                map["ScaleMin"] = self.scaleMin!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int64
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("ScaleMax") {
                self.scaleMax = dict["ScaleMax"] as! Int64
            }
            if dict.keys.contains("ScaleMin") {
                self.scaleMin = dict["ScaleMin"] as! Int64
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var data: ModifyDBInstanceClassResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyDBInstanceClassResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBInstanceClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDBInstanceConnectionStringRequest : Tea.TeaModel {
    public var connectionString: String?

    public var connectionStringPrefix: String?

    public var DBInstanceId: String?

    public var disablePorts: String?

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
        if self.connectionString != nil {
            map["ConnectionString"] = self.connectionString!
        }
        if self.connectionStringPrefix != nil {
            map["ConnectionStringPrefix"] = self.connectionStringPrefix!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.disablePorts != nil {
            map["DisablePorts"] = self.disablePorts!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConnectionString") {
            self.connectionString = dict["ConnectionString"] as! String
        }
        if dict.keys.contains("ConnectionStringPrefix") {
            self.connectionStringPrefix = dict["ConnectionStringPrefix"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("DisablePorts") {
            self.disablePorts = dict["DisablePorts"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyDBInstanceConnectionStringResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var connectionString: String?

        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var disabledPorts: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connectionString != nil {
                map["ConnectionString"] = self.connectionString!
            }
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.disabledPorts != nil {
                map["DisabledPorts"] = self.disabledPorts!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectionString") {
                self.connectionString = dict["ConnectionString"] as! String
            }
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("DisabledPorts") {
                self.disabledPorts = dict["DisabledPorts"] as! String
            }
        }
    }
    public var data: ModifyDBInstanceConnectionStringResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifyDBInstanceConnectionStringResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDBInstanceConnectionStringResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDBInstanceConnectionStringResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDBInstanceConnectionStringResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySecurityIPListRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var groupName: String?

    public var modifyMode: String?

    public var regionId: String?

    public var securityIPList: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.modifyMode != nil {
            map["ModifyMode"] = self.modifyMode!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("ModifyMode") {
            self.modifyMode = dict["ModifyMode"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityIPList") {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
    }
}

public class ModifySecurityIPListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int32?

        public var DBInstanceName: String?

        public var groupName: String?

        public var groupTag: String?

        public var securityIPList: String?

        public var securityIPType: String?

        public var taskId: Int32?

        public var whitelistNetType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.groupName != nil {
                map["GroupName"] = self.groupName!
            }
            if self.groupTag != nil {
                map["GroupTag"] = self.groupTag!
            }
            if self.securityIPList != nil {
                map["SecurityIPList"] = self.securityIPList!
            }
            if self.securityIPType != nil {
                map["SecurityIPType"] = self.securityIPType!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.whitelistNetType != nil {
                map["WhitelistNetType"] = self.whitelistNetType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int32
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("GroupName") {
                self.groupName = dict["GroupName"] as! String
            }
            if dict.keys.contains("GroupTag") {
                self.groupTag = dict["GroupTag"] as! String
            }
            if dict.keys.contains("SecurityIPList") {
                self.securityIPList = dict["SecurityIPList"] as! String
            }
            if dict.keys.contains("SecurityIPType") {
                self.securityIPType = dict["SecurityIPType"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int32
            }
            if dict.keys.contains("WhitelistNetType") {
                self.whitelistNetType = dict["WhitelistNetType"] as! String
            }
        }
    }
    public var data: ModifySecurityIPListResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ModifySecurityIPListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifySecurityIPListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySecurityIPListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySecurityIPListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var account: String?

    public var DBInstanceId: String?

    public var password: String?

    public var product: String?

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
        if self.account != nil {
            map["Account"] = self.account!
        }
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.product != nil {
            map["Product"] = self.product!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Account") {
            self.account = dict["Account"] as! String
        }
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Product") {
            self.product = dict["Product"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var DBInstanceId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.account != nil {
                map["Account"] = self.account!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("DBInstanceId") {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
        }
    }
    public var data: ResetAccountPasswordResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = ResetAccountPasswordResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ResetAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResetAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RestartDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int64
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var data: RestartDBInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = RestartDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RestartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StartDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int64
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var data: StartDBInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = StartDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StartDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StartDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopDBInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class StopDBInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceID: Int64?

        public var DBInstanceName: String?

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
            if self.DBInstanceID != nil {
                map["DBInstanceID"] = self.DBInstanceID!
            }
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceID") {
                self.DBInstanceID = dict["DBInstanceID"] as! Int64
            }
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! Int64
            }
        }
    }
    public var data: StopDBInstanceResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = StopDBInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class StopDBInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopDBInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopDBInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeMinorVersionRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var regionId: String?

    public var switchTime: String?

    public var switchTimeMode: String?

    public var targetMinorVersion: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        if self.targetMinorVersion != nil {
            map["TargetMinorVersion"] = self.targetMinorVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") {
            self.DBInstanceId = dict["DBInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SwitchTime") {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
        if dict.keys.contains("TargetMinorVersion") {
            self.targetMinorVersion = dict["TargetMinorVersion"] as! String
        }
    }
}

public class UpgradeMinorVersionResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBInstanceName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DBInstanceName != nil {
                map["DBInstanceName"] = self.DBInstanceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstanceName") {
                self.DBInstanceName = dict["DBInstanceName"] as! String
            }
        }
    }
    public var data: UpgradeMinorVersionResponseBody.Data?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = UpgradeMinorVersionResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class UpgradeMinorVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeMinorVersionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeMinorVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
