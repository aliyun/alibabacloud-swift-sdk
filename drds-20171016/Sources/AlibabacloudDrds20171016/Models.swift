import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDrdsAccountRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var password: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateDrdsAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateDrdsAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDrdsAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDrdsAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDrdsDBRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var encode: String?

    public var password: String?

    public var rdsInstances: String?

    public override init() {
        super.init()
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
        if self.encode != nil {
            map["Encode"] = self.encode!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.rdsInstances != nil {
            map["RdsInstances"] = self.rdsInstances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("Encode") {
            self.encode = dict["Encode"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("RdsInstances") {
            self.rdsInstances = dict["RdsInstances"] as! String
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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

    public var isHa: Bool?

    public var payType: String?

    public var pricingCycle: String?

    public var quantity: Int32?

    public var regionId: String?

    public var specification: String?

    public var type: String?

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
        if self.isHa != nil {
            map["IsHa"] = self.isHa!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("InstanceSeries") {
            self.instanceSeries = dict["InstanceSeries"] as! String
        }
        if dict.keys.contains("IsAutoRenew") {
            self.isAutoRenew = dict["IsAutoRenew"] as! Bool
        }
        if dict.keys.contains("IsHa") {
            self.isHa = dict["IsHa"] as! Bool
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("Quantity") {
            self.quantity = dict["Quantity"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Specification") {
            self.specification = dict["Specification"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
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

public class CreateDrdsInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DrdsInstanceIdList : Tea.TeaModel {
            public var drdsInstanceId: [String]?

            public override init() {
                super.init()
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
                if dict.keys.contains("DrdsInstanceId") {
                    self.drdsInstanceId = dict["DrdsInstanceId"] as! [String]
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
            if dict.keys.contains("DrdsInstanceIdList") {
                var model = CreateDrdsInstanceResponseBody.Data.DrdsInstanceIdList()
                model.fromMap(dict["DrdsInstanceIdList"] as! [String: Any])
                self.drdsInstanceIdList = model
            }
            if dict.keys.contains("OrderId") {
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
        if dict.keys.contains("Data") {
            var model = CreateDrdsInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateReadOnlyAccountRequest : Tea.TeaModel {
    public var dbName: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("password") {
            self.password = dict["password"] as! String
        }
    }
}

public class CreateReadOnlyAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountName: String?

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
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
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
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DrdsInstanceId") {
                self.drdsInstanceId = dict["DrdsInstanceId"] as! String
            }
        }
    }
    public var data: CreateReadOnlyAccountResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = CreateReadOnlyAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateReadOnlyAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateReadOnlyAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateReadOnlyAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDrdsDBRequest : Tea.TeaModel {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DeleteDrdsDBResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDrdsDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDrdsDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDrdsDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFailedDrdsDBRequest : Tea.TeaModel {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DeleteFailedDrdsDBResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteFailedDrdsDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFailedDrdsDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFailedDrdsDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeCreateDrdsInstanceStatusRequest : Tea.TeaModel {
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
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeCreateDrdsInstanceStatusResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var data: DescribeCreateDrdsInstanceStatusResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeCreateDrdsInstanceStatusResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeCreateDrdsInstanceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeCreateDrdsInstanceStatusResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeCreateDrdsInstanceStatusResponseBody()
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeDrdsDBResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var createTime: String?

        public var dbName: String?

        public var mode: String?

        public var msg: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.dbName != nil {
                map["DbName"] = self.dbName!
            }
            if self.mode != nil {
                map["Mode"] = self.mode!
            }
            if self.msg != nil {
                map["Msg"] = self.msg!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("Mode") {
                self.mode = dict["Mode"] as! String
            }
            if dict.keys.contains("Msg") {
                self.msg = dict["Msg"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! Int32
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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsDBResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsDBIpWhiteListRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
    }
}

public class DescribeDrdsDBIpWhiteListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
                if dict.keys.contains("Ip") {
                    self.ip = dict["Ip"] as! [String]
                }
            }
        }
        public var ipWhiteList: DescribeDrdsDBIpWhiteListResponseBody.Data.IpWhiteList?

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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IpWhiteList") {
                var model = DescribeDrdsDBIpWhiteListResponseBody.Data.IpWhiteList()
                model.fromMap(dict["IpWhiteList"] as! [String: Any])
                self.ipWhiteList = model
            }
        }
    }
    public var data: DescribeDrdsDBIpWhiteListResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsDBIpWhiteListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsDBIpWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsDBsRequest : Tea.TeaModel {
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
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeDrdsDBsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Db : Tea.TeaModel {
            public var createTime: String?

            public var dbName: String?

            public var mode: String?

            public var msg: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dbName != nil {
                    map["DbName"] = self.dbName!
                }
                if self.mode != nil {
                    map["Mode"] = self.mode!
                }
                if self.msg != nil {
                    map["Msg"] = self.msg!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DbName") {
                    self.dbName = dict["DbName"] as! String
                }
                if dict.keys.contains("Mode") {
                    self.mode = dict["Mode"] as! String
                }
                if dict.keys.contains("Msg") {
                    self.msg = dict["Msg"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! Int32
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
            if dict.keys.contains("Db") {
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

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsDBsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsDBsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceRequest : Tea.TeaModel {
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
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeDrdsInstanceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Vips : Tea.TeaModel {
            public class Vip : Tea.TeaModel {
                public var IP: String?

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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IP") {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
                    }
                    if dict.keys.contains("VswitchId") {
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
                if dict.keys.contains("Vip") {
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
        public var createTime: Int64?

        public var description_: String?

        public var drdsInstanceId: String?

        public var networkType: String?

        public var regionId: String?

        public var specification: String?

        public var status: String?

        public var type: String?

        public var version: Int64?

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
            try self.vips?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.drdsInstanceId != nil {
                map["DrdsInstanceId"] = self.drdsInstanceId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DrdsInstanceId") {
                self.drdsInstanceId = dict["DrdsInstanceId"] as! String
            }
            if dict.keys.contains("NetworkType") {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Specification") {
                self.specification = dict["Specification"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
            if dict.keys.contains("Vips") {
                var model = DescribeDrdsInstanceResponseBody.Data.Vips()
                model.fromMap(dict["Vips"] as! [String: Any])
                self.vips = model
            }
            if dict.keys.contains("VpcCloudInstanceId") {
                self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
            }
            if dict.keys.contains("ZoneId") {
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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsInstanceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeDrdsInstanceDbMonitorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PartialPerformanceData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public class PerformanceValue : Tea.TeaModel {
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
                        if dict.keys.contains("Date") {
                            self.date = dict["Date"] as! Int64
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var performanceValue: [DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.performanceValue != nil {
                        var tmp : [Any] = []
                        for k in self.performanceValue! {
                            tmp.append(k.toMap())
                        }
                        map["PerformanceValue"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerformanceValue") {
                        var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue] = []
                        for v in dict["PerformanceValue"] as! [Any] {
                            var model = DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performanceValue = tmp
                    }
                }
            }
            public var key: String?

            public var unit: String?

            public var values: DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
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
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Unit") {
                    self.unit = dict["Unit"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var partialPerformanceData: [DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.partialPerformanceData != nil {
                var tmp : [Any] = []
                for k in self.partialPerformanceData! {
                    tmp.append(k.toMap())
                }
                map["PartialPerformanceData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PartialPerformanceData") {
                var tmp : [DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData] = []
                for v in dict["PartialPerformanceData"] as! [Any] {
                    var model = DescribeDrdsInstanceDbMonitorResponseBody.Data.PartialPerformanceData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.partialPerformanceData = tmp
            }
        }
    }
    public var data: DescribeDrdsInstanceDbMonitorResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsInstanceDbMonitorResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsInstanceDbMonitorResponseBody()
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
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int64
        }
        if dict.keys.contains("Key") {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("PeriodMultiple") {
            self.periodMultiple = dict["PeriodMultiple"] as! Int32
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int64
        }
    }
}

public class DescribeDrdsInstanceMonitorResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class PartialPerformanceData : Tea.TeaModel {
            public class Values : Tea.TeaModel {
                public class PerformanceValue : Tea.TeaModel {
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
                        if dict.keys.contains("Date") {
                            self.date = dict["Date"] as! Int64
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var performanceValue: [DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.performanceValue != nil {
                        var tmp : [Any] = []
                        for k in self.performanceValue! {
                            tmp.append(k.toMap())
                        }
                        map["PerformanceValue"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("PerformanceValue") {
                        var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue] = []
                        for v in dict["PerformanceValue"] as! [Any] {
                            var model = DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData.Values.PerformanceValue()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.performanceValue = tmp
                    }
                }
            }
            public var key: String?

            public var unit: String?

            public var values: DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData.Values?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.values?.validate()
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
                    map["Values"] = self.values?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("Unit") {
                    self.unit = dict["Unit"] as! String
                }
                if dict.keys.contains("Values") {
                    var model = DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData.Values()
                    model.fromMap(dict["Values"] as! [String: Any])
                    self.values = model
                }
            }
        }
        public var partialPerformanceData: [DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.partialPerformanceData != nil {
                var tmp : [Any] = []
                for k in self.partialPerformanceData! {
                    tmp.append(k.toMap())
                }
                map["PartialPerformanceData"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PartialPerformanceData") {
                var tmp : [DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData] = []
                for v in dict["PartialPerformanceData"] as! [Any] {
                    var model = DescribeDrdsInstanceMonitorResponseBody.Data.PartialPerformanceData()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.partialPerformanceData = tmp
            }
        }
    }
    public var data: DescribeDrdsInstanceMonitorResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsInstanceMonitorResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsInstanceMonitorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsInstanceNetInfoForInnerRequest : Tea.TeaModel {
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
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeDrdsInstanceNetInfoForInnerResponseBody : Tea.TeaModel {
    public class NetInfos : Tea.TeaModel {
        public class NetInfo : Tea.TeaModel {
            public var IP: String?

            public var isForVpc: Bool?

            public var port: String?

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
                if self.IP != nil {
                    map["IP"] = self.IP!
                }
                if self.isForVpc != nil {
                    map["IsForVpc"] = self.isForVpc!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IP") {
                    self.IP = dict["IP"] as! String
                }
                if dict.keys.contains("IsForVpc") {
                    self.isForVpc = dict["IsForVpc"] as! Bool
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var netInfo: [DescribeDrdsInstanceNetInfoForInnerResponseBody.NetInfos.NetInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.netInfo != nil {
                var tmp : [Any] = []
                for k in self.netInfo! {
                    tmp.append(k.toMap())
                }
                map["NetInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NetInfo") {
                var tmp : [DescribeDrdsInstanceNetInfoForInnerResponseBody.NetInfos.NetInfo] = []
                for v in dict["NetInfo"] as! [Any] {
                    var model = DescribeDrdsInstanceNetInfoForInnerResponseBody.NetInfos.NetInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.netInfo = tmp
            }
        }
    }
    public var drdsInstanceId: String?

    public var netInfos: DescribeDrdsInstanceNetInfoForInnerResponseBody.NetInfos?

    public var networkType: String?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.netInfos?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.netInfos != nil {
            map["NetInfos"] = self.netInfos?.toMap()
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
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
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("NetInfos") {
            var model = DescribeDrdsInstanceNetInfoForInnerResponseBody.NetInfos()
            model.fromMap(dict["NetInfos"] as! [String: Any])
            self.netInfos = model
        }
        if dict.keys.contains("NetworkType") {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeDrdsInstanceNetInfoForInnerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDrdsInstanceNetInfoForInnerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDrdsInstanceNetInfoForInnerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDrdsInstancesRequest : Tea.TeaModel {
    public var regionId: String?

    public var tags: String?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("Type") {
            self.type = dict["Type"] as! String
        }
    }
}

public class DescribeDrdsInstancesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public class SlaveInstId : Tea.TeaModel {
                public var instId: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instId != nil {
                        map["instId"] = self.instId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("instId") {
                        self.instId = dict["instId"] as! [String]
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

                    public override init() {
                        super.init()
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
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IP") {
                            self.IP = dict["IP"] as! String
                        }
                        if dict.keys.contains("Port") {
                            self.port = dict["Port"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                        if dict.keys.contains("VpcId") {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VswitchId") {
                            self.vswitchId = dict["VswitchId"] as! String
                        }
                    }
                }
                public var vip: [DescribeDrdsInstancesResponseBody.Data.Instance.Vips.Vip]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Vip") {
                        var tmp : [DescribeDrdsInstancesResponseBody.Data.Instance.Vips.Vip] = []
                        for v in dict["Vip"] as! [Any] {
                            var model = DescribeDrdsInstancesResponseBody.Data.Instance.Vips.Vip()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.vip = tmp
                    }
                }
            }
            public var createTime: Int64?

            public var description_: String?

            public var drdsInstanceId: String?

            public var instRole: String?

            public var masterInstId: String?

            public var networkType: String?

            public var regionId: String?

            public var slaveInstId: DescribeDrdsInstancesResponseBody.Data.Instance.SlaveInstId?

            public var status: String?

            public var type: String?

            public var version: Int64?

            public var vips: DescribeDrdsInstancesResponseBody.Data.Instance.Vips?

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
                try self.slaveInstId?.validate()
                try self.vips?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.drdsInstanceId != nil {
                    map["DrdsInstanceId"] = self.drdsInstanceId!
                }
                if self.instRole != nil {
                    map["InstRole"] = self.instRole!
                }
                if self.masterInstId != nil {
                    map["MasterInstId"] = self.masterInstId!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.slaveInstId != nil {
                    map["SlaveInstId"] = self.slaveInstId?.toMap()
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
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! Int64
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("DrdsInstanceId") {
                    self.drdsInstanceId = dict["DrdsInstanceId"] as! String
                }
                if dict.keys.contains("InstRole") {
                    self.instRole = dict["InstRole"] as! String
                }
                if dict.keys.contains("MasterInstId") {
                    self.masterInstId = dict["MasterInstId"] as! String
                }
                if dict.keys.contains("NetworkType") {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SlaveInstId") {
                    var model = DescribeDrdsInstancesResponseBody.Data.Instance.SlaveInstId()
                    model.fromMap(dict["SlaveInstId"] as! [String: Any])
                    self.slaveInstId = model
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! Int64
                }
                if dict.keys.contains("Vips") {
                    var model = DescribeDrdsInstancesResponseBody.Data.Instance.Vips()
                    model.fromMap(dict["Vips"] as! [String: Any])
                    self.vips = model
                }
                if dict.keys.contains("VpcCloudInstanceId") {
                    self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var instance: [DescribeDrdsInstancesResponseBody.Data.Instance]?

        public override init() {
            super.init()
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
            if dict.keys.contains("Instance") {
                var tmp : [DescribeDrdsInstancesResponseBody.Data.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = DescribeDrdsInstancesResponseBody.Data.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instance = tmp
            }
        }
    }
    public var data: DescribeDrdsInstancesResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeDrdsInstancesResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeDrdsInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdsListRequest : Tea.TeaModel {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRdsListResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class RdsInstance : Tea.TeaModel {
            public class ReadOnlyChildren : Tea.TeaModel {
                public class Child : Tea.TeaModel {
                    public var connectUrl: String?

                    public var dbType: String?

                    public var instanceId: String?

                    public var instanceName: String?

                    public var instanceStatus: String?

                    public var readWeight: Int32?

                    public var port: Int32?

                    public override init() {
                        super.init()
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
                        if self.dbType != nil {
                            map["DbType"] = self.dbType!
                        }
                        if self.instanceId != nil {
                            map["InstanceId"] = self.instanceId!
                        }
                        if self.instanceName != nil {
                            map["InstanceName"] = self.instanceName!
                        }
                        if self.instanceStatus != nil {
                            map["InstanceStatus"] = self.instanceStatus!
                        }
                        if self.readWeight != nil {
                            map["ReadWeight"] = self.readWeight!
                        }
                        if self.port != nil {
                            map["port"] = self.port!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("ConnectUrl") {
                            self.connectUrl = dict["ConnectUrl"] as! String
                        }
                        if dict.keys.contains("DbType") {
                            self.dbType = dict["DbType"] as! String
                        }
                        if dict.keys.contains("InstanceId") {
                            self.instanceId = dict["InstanceId"] as! String
                        }
                        if dict.keys.contains("InstanceName") {
                            self.instanceName = dict["InstanceName"] as! String
                        }
                        if dict.keys.contains("InstanceStatus") {
                            self.instanceStatus = dict["InstanceStatus"] as! String
                        }
                        if dict.keys.contains("ReadWeight") {
                            self.readWeight = dict["ReadWeight"] as! Int32
                        }
                        if dict.keys.contains("port") {
                            self.port = dict["port"] as! Int32
                        }
                    }
                }
                public var child: [DescribeRdsListResponseBody.Data.RdsInstance.ReadOnlyChildren.Child]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.child != nil {
                        var tmp : [Any] = []
                        for k in self.child! {
                            tmp.append(k.toMap())
                        }
                        map["Child"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Child") {
                        var tmp : [DescribeRdsListResponseBody.Data.RdsInstance.ReadOnlyChildren.Child] = []
                        for v in dict["Child"] as! [Any] {
                            var model = DescribeRdsListResponseBody.Data.RdsInstance.ReadOnlyChildren.Child()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.child = tmp
                    }
                }
            }
            public var connectUrl: String?

            public var dbType: String?

            public var instanceId: Int32?

            public var instanceName: String?

            public var instanceStatus: String?

            public var port: Int32?

            public var readOnlyChildren: DescribeRdsListResponseBody.Data.RdsInstance.ReadOnlyChildren?

            public var readWeight: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.readOnlyChildren?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connectUrl != nil {
                    map["ConnectUrl"] = self.connectUrl!
                }
                if self.dbType != nil {
                    map["DbType"] = self.dbType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.readOnlyChildren != nil {
                    map["ReadOnlyChildren"] = self.readOnlyChildren?.toMap()
                }
                if self.readWeight != nil {
                    map["ReadWeight"] = self.readWeight!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnectUrl") {
                    self.connectUrl = dict["ConnectUrl"] as! String
                }
                if dict.keys.contains("DbType") {
                    self.dbType = dict["DbType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! Int32
                }
                if dict.keys.contains("InstanceName") {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("InstanceStatus") {
                    self.instanceStatus = dict["InstanceStatus"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("ReadOnlyChildren") {
                    var model = DescribeRdsListResponseBody.Data.RdsInstance.ReadOnlyChildren()
                    model.fromMap(dict["ReadOnlyChildren"] as! [String: Any])
                    self.readOnlyChildren = model
                }
                if dict.keys.contains("ReadWeight") {
                    self.readWeight = dict["ReadWeight"] as! Int32
                }
            }
        }
        public var rdsInstance: [DescribeRdsListResponseBody.Data.RdsInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.rdsInstance != nil {
                var tmp : [Any] = []
                for k in self.rdsInstance! {
                    tmp.append(k.toMap())
                }
                map["RdsInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RdsInstance") {
                var tmp : [DescribeRdsListResponseBody.Data.RdsInstance] = []
                for v in dict["RdsInstance"] as! [Any] {
                    var model = DescribeRdsListResponseBody.Data.RdsInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.rdsInstance = tmp
            }
        }
    }
    public var data: DescribeRdsListResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeRdsListResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRdsListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRdsListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeReadOnlyAccountRequest : Tea.TeaModel {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeReadOnlyAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var accountName: String?

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
            if self.accountName != nil {
                map["AccountName"] = self.accountName!
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
            if dict.keys.contains("AccountName") {
                self.accountName = dict["AccountName"] as! String
            }
            if dict.keys.contains("DbName") {
                self.dbName = dict["DbName"] as! String
            }
            if dict.keys.contains("DrdsInstanceId") {
                self.drdsInstanceId = dict["DrdsInstanceId"] as! String
            }
        }
    }
    public var data: DescribeReadOnlyAccountResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeReadOnlyAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeReadOnlyAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeReadOnlyAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeReadOnlyAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class DrdsRegions : Tea.TeaModel {
        public class DrdsRegion : Tea.TeaModel {
            public class InstanceSeriesList : Tea.TeaModel {
                public class InstanceSeries : Tea.TeaModel {
                    public class SpecList : Tea.TeaModel {
                        public class Spec : Tea.TeaModel {
                            public var specId: String?

                            public var specName: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.specId != nil {
                                    map["SpecId"] = self.specId!
                                }
                                if self.specName != nil {
                                    map["SpecName"] = self.specName!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("SpecId") {
                                    self.specId = dict["SpecId"] as! String
                                }
                                if dict.keys.contains("SpecName") {
                                    self.specName = dict["SpecName"] as! String
                                }
                            }
                        }
                        public var spec: [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries.SpecList.Spec]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.spec != nil {
                                var tmp : [Any] = []
                                for k in self.spec! {
                                    tmp.append(k.toMap())
                                }
                                map["Spec"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Spec") {
                                var tmp : [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries.SpecList.Spec] = []
                                for v in dict["Spec"] as! [Any] {
                                    var model = DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries.SpecList.Spec()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.spec = tmp
                            }
                        }
                    }
                    public var seriesId: String?

                    public var seriesName: String?

                    public var specList: DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries.SpecList?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.specList?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.seriesId != nil {
                            map["SeriesId"] = self.seriesId!
                        }
                        if self.seriesName != nil {
                            map["SeriesName"] = self.seriesName!
                        }
                        if self.specList != nil {
                            map["SpecList"] = self.specList?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SeriesId") {
                            self.seriesId = dict["SeriesId"] as! String
                        }
                        if dict.keys.contains("SeriesName") {
                            self.seriesName = dict["SeriesName"] as! String
                        }
                        if dict.keys.contains("SpecList") {
                            var model = DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries.SpecList()
                            model.fromMap(dict["SpecList"] as! [String: Any])
                            self.specList = model
                        }
                    }
                }
                public var instanceSeries: [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceSeries != nil {
                        var tmp : [Any] = []
                        for k in self.instanceSeries! {
                            tmp.append(k.toMap())
                        }
                        map["InstanceSeries"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceSeries") {
                        var tmp : [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries] = []
                        for v in dict["InstanceSeries"] as! [Any] {
                            var model = DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList.InstanceSeries()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.instanceSeries = tmp
                    }
                }
            }
            public var instanceSeriesList: DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList?

            public var regionId: String?

            public var regionName: String?

            public var zoneId: String?

            public var zoneName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.instanceSeriesList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceSeriesList != nil {
                    map["InstanceSeriesList"] = self.instanceSeriesList?.toMap()
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.regionName != nil {
                    map["RegionName"] = self.regionName!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                if self.zoneName != nil {
                    map["ZoneName"] = self.zoneName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceSeriesList") {
                    var model = DescribeRegionsResponseBody.DrdsRegions.DrdsRegion.InstanceSeriesList()
                    model.fromMap(dict["InstanceSeriesList"] as! [String: Any])
                    self.instanceSeriesList = model
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RegionName") {
                    self.regionName = dict["RegionName"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
                if dict.keys.contains("ZoneName") {
                    self.zoneName = dict["ZoneName"] as! String
                }
            }
        }
        public var drdsRegion: [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.drdsRegion != nil {
                var tmp : [Any] = []
                for k in self.drdsRegion! {
                    tmp.append(k.toMap())
                }
                map["DrdsRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DrdsRegion") {
                var tmp : [DescribeRegionsResponseBody.DrdsRegions.DrdsRegion] = []
                for v in dict["DrdsRegion"] as! [Any] {
                    var model = DescribeRegionsResponseBody.DrdsRegions.DrdsRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.drdsRegion = tmp
            }
        }
    }
    public var drdsRegions: DescribeRegionsResponseBody.DrdsRegions?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.drdsRegions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drdsRegions != nil {
            map["DrdsRegions"] = self.drdsRegions?.toMap()
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
        if dict.keys.contains("DrdsRegions") {
            var model = DescribeRegionsResponseBody.DrdsRegions()
            model.fromMap(dict["DrdsRegions"] as! [String: Any])
            self.drdsRegions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeShardDBsRequest : Tea.TeaModel {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class DescribeShardDBsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class DbIntancePair : Tea.TeaModel {
            public var groupName: String?

            public var instanceName: String?

            public var subDbName: String?

            public override init() {
                super.init()
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
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.subDbName != nil {
                    map["SubDbName"] = self.subDbName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("InstanceName") {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("SubDbName") {
                    self.subDbName = dict["SubDbName"] as! String
                }
            }
        }
        public var dbIntancePair: [DescribeShardDBsResponseBody.Data.DbIntancePair]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dbIntancePair != nil {
                var tmp : [Any] = []
                for k in self.dbIntancePair! {
                    tmp.append(k.toMap())
                }
                map["DbIntancePair"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DbIntancePair") {
                var tmp : [DescribeShardDBsResponseBody.Data.DbIntancePair] = []
                for v in dict["DbIntancePair"] as! [Any] {
                    var model = DescribeShardDBsResponseBody.Data.DbIntancePair()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dbIntancePair = tmp
            }
        }
    }
    public var data: DescribeShardDBsResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = DescribeShardDBsResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeShardDBsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeShardDBsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeShardDBsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeShardDbConnectionInfoRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var subDbName: String?

    public override init() {
        super.init()
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
        if self.subDbName != nil {
            map["SubDbName"] = self.subDbName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("SubDbName") {
            self.subDbName = dict["SubDbName"] as! String
        }
    }
}

public class DescribeShardDbConnectionInfoResponseBody : Tea.TeaModel {
    public class ConnectionInfo : Tea.TeaModel {
        public var instanceName: String?

        public var instanceUrl: String?

        public var blockingTimeout: Int32?

        public var connectionProperties: String?

        public var dbStatus: String?

        public var dbType: String?

        public var idleTimeOut: Int32?

        public var maxPoolSize: Int32?

        public var minPoolSize: Int32?

        public var preparedStatementCacheSize: Int32?

        public var subDbName: String?

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
            if self.instanceName != nil {
                map["InstanceName"] = self.instanceName!
            }
            if self.instanceUrl != nil {
                map["InstanceUrl"] = self.instanceUrl!
            }
            if self.blockingTimeout != nil {
                map["blockingTimeout"] = self.blockingTimeout!
            }
            if self.connectionProperties != nil {
                map["connectionProperties"] = self.connectionProperties!
            }
            if self.dbStatus != nil {
                map["dbStatus"] = self.dbStatus!
            }
            if self.dbType != nil {
                map["dbType"] = self.dbType!
            }
            if self.idleTimeOut != nil {
                map["idleTimeOut"] = self.idleTimeOut!
            }
            if self.maxPoolSize != nil {
                map["maxPoolSize"] = self.maxPoolSize!
            }
            if self.minPoolSize != nil {
                map["minPoolSize"] = self.minPoolSize!
            }
            if self.preparedStatementCacheSize != nil {
                map["preparedStatementCacheSize"] = self.preparedStatementCacheSize!
            }
            if self.subDbName != nil {
                map["subDbName"] = self.subDbName!
            }
            if self.userName != nil {
                map["userName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceName") {
                self.instanceName = dict["InstanceName"] as! String
            }
            if dict.keys.contains("InstanceUrl") {
                self.instanceUrl = dict["InstanceUrl"] as! String
            }
            if dict.keys.contains("blockingTimeout") {
                self.blockingTimeout = dict["blockingTimeout"] as! Int32
            }
            if dict.keys.contains("connectionProperties") {
                self.connectionProperties = dict["connectionProperties"] as! String
            }
            if dict.keys.contains("dbStatus") {
                self.dbStatus = dict["dbStatus"] as! String
            }
            if dict.keys.contains("dbType") {
                self.dbType = dict["dbType"] as! String
            }
            if dict.keys.contains("idleTimeOut") {
                self.idleTimeOut = dict["idleTimeOut"] as! Int32
            }
            if dict.keys.contains("maxPoolSize") {
                self.maxPoolSize = dict["maxPoolSize"] as! Int32
            }
            if dict.keys.contains("minPoolSize") {
                self.minPoolSize = dict["minPoolSize"] as! Int32
            }
            if dict.keys.contains("preparedStatementCacheSize") {
                self.preparedStatementCacheSize = dict["preparedStatementCacheSize"] as! Int32
            }
            if dict.keys.contains("subDbName") {
                self.subDbName = dict["subDbName"] as! String
            }
            if dict.keys.contains("userName") {
                self.userName = dict["userName"] as! String
            }
        }
    }
    public var connectionInfo: DescribeShardDbConnectionInfoResponseBody.ConnectionInfo?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connectionInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.connectionInfo != nil {
            map["ConnectionInfo"] = self.connectionInfo?.toMap()
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
        if dict.keys.contains("ConnectionInfo") {
            var model = DescribeShardDbConnectionInfoResponseBody.ConnectionInfo()
            model.fromMap(dict["ConnectionInfo"] as! [String: Any])
            self.connectionInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DescribeShardDbConnectionInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeShardDbConnectionInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeShardDbConnectionInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableInstanceRequest : Tea.TeaModel {
    public var backupId: String?

    public var clientToken: String?

    public var dbInstanceClass: String?

    public var drdsInstanceId: String?

    public var engineVersion: String?

    public var restoreTime: String?

    public var sourceDbInstId: String?

    public var switchId: String?

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
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbInstanceClass != nil {
            map["DbInstanceClass"] = self.dbInstanceClass!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        if self.sourceDbInstId != nil {
            map["SourceDbInstId"] = self.sourceDbInstId!
        }
        if self.switchId != nil {
            map["SwitchId"] = self.switchId!
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
        if dict.keys.contains("BackupId") {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbInstanceClass") {
            self.dbInstanceClass = dict["DbInstanceClass"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("EngineVersion") {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("RestoreTime") {
            self.restoreTime = dict["RestoreTime"] as! String
        }
        if dict.keys.contains("SourceDbInstId") {
            self.sourceDbInstId = dict["SourceDbInstId"] as! String
        }
        if dict.keys.contains("SwitchId") {
            self.switchId = dict["SwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class EnableInstanceResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            self.result = dict["Result"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class EnableInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDrdsDBPasswdRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var newPasswd: String?

    public override init() {
        super.init()
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
        if self.newPasswd != nil {
            map["NewPasswd"] = self.newPasswd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("NewPasswd") {
            self.newPasswd = dict["NewPasswd"] as! String
        }
    }
}

public class ModifyDrdsDBPasswdResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyDrdsDBPasswdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDrdsDBPasswdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDrdsDBPasswdResponseBody()
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
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("GroupAttribute") {
            self.groupAttribute = dict["GroupAttribute"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("IpWhiteList") {
            self.ipWhiteList = dict["IpWhiteList"] as! String
        }
        if dict.keys.contains("Mode") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyDrdsIpWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFullTableScanRequest : Tea.TeaModel {
    public var dbName: String?

    public var drdsInstanceId: String?

    public var fullTableScan: Bool?

    public var tableNames: String?

    public override init() {
        super.init()
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
        if self.fullTableScan != nil {
            map["FullTableScan"] = self.fullTableScan!
        }
        if self.tableNames != nil {
            map["TableNames"] = self.tableNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("FullTableScan") {
            self.fullTableScan = dict["FullTableScan"] as! Bool
        }
        if dict.keys.contains("TableNames") {
            self.tableNames = dict["TableNames"] as! String
        }
    }
}

public class ModifyFullTableScanResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyFullTableScanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFullTableScanResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFullTableScanResponseBody()
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
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("InstanceNames") {
            self.instanceNames = dict["InstanceNames"] as! String
        }
        if dict.keys.contains("Weights") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyRdsReadWeightResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyReadOnlyAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var dbName: String?

    public var drdsInstanceId: String?

    public var newPasswd: String?

    public var originPassword: String?

    public override init() {
        super.init()
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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.drdsInstanceId != nil {
            map["DrdsInstanceId"] = self.drdsInstanceId!
        }
        if self.newPasswd != nil {
            map["NewPasswd"] = self.newPasswd!
        }
        if self.originPassword != nil {
            map["OriginPassword"] = self.originPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
        if dict.keys.contains("NewPasswd") {
            self.newPasswd = dict["NewPasswd"] as! String
        }
        if dict.keys.contains("OriginPassword") {
            self.originPassword = dict["OriginPassword"] as! String
        }
    }
}

public class ModifyReadOnlyAccountPasswordResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyReadOnlyAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyReadOnlyAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyReadOnlyAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryInstanceInfoByConnRequest : Tea.TeaModel {
    public var host: String?

    public var port: Int32?

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
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class QueryInstanceInfoByConnResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Vips : Tea.TeaModel {
            public class Vip : Tea.TeaModel {
                public var IP: String?

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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IP") {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("VpcId") {
                        self.vpcId = dict["VpcId"] as! String
                    }
                    if dict.keys.contains("VswitchId") {
                        self.vswitchId = dict["VswitchId"] as! String
                    }
                }
            }
            public var vip: [QueryInstanceInfoByConnResponseBody.Data.Vips.Vip]?

            public override init() {
                super.init()
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
                if dict.keys.contains("Vip") {
                    var tmp : [QueryInstanceInfoByConnResponseBody.Data.Vips.Vip] = []
                    for v in dict["Vip"] as! [Any] {
                        var model = QueryInstanceInfoByConnResponseBody.Data.Vips.Vip()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vip = tmp
                }
            }
        }
        public var createTime: Int64?

        public var description_: String?

        public var drdsInstanceId: String?

        public var networkType: String?

        public var regionId: String?

        public var specTypeId: String?

        public var specTypeName: String?

        public var specification: String?

        public var status: String?

        public var type: String?

        public var version: Int64?

        public var vips: QueryInstanceInfoByConnResponseBody.Data.Vips?

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
            try self.vips?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.drdsInstanceId != nil {
                map["DrdsInstanceId"] = self.drdsInstanceId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.specTypeId != nil {
                map["SpecTypeId"] = self.specTypeId!
            }
            if self.specTypeName != nil {
                map["SpecTypeName"] = self.specTypeName!
            }
            if self.specification != nil {
                map["Specification"] = self.specification!
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
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! Int64
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("DrdsInstanceId") {
                self.drdsInstanceId = dict["DrdsInstanceId"] as! String
            }
            if dict.keys.contains("NetworkType") {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SpecTypeId") {
                self.specTypeId = dict["SpecTypeId"] as! String
            }
            if dict.keys.contains("SpecTypeName") {
                self.specTypeName = dict["SpecTypeName"] as! String
            }
            if dict.keys.contains("Specification") {
                self.specification = dict["Specification"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! Int64
            }
            if dict.keys.contains("Vips") {
                var model = QueryInstanceInfoByConnResponseBody.Data.Vips()
                model.fromMap(dict["Vips"] as! [String: Any])
                self.vips = model
            }
            if dict.keys.contains("VpcCloudInstanceId") {
                self.vpcCloudInstanceId = dict["VpcCloudInstanceId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: QueryInstanceInfoByConnResponseBody.Data?

    public var requestId: String?

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
        if dict.keys.contains("Data") {
            var model = QueryInstanceInfoByConnResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class QueryInstanceInfoByConnResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryInstanceInfoByConnResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryInstanceInfoByConnResponseBody()
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
        if dict.keys.contains("DrdsInstanceId") {
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RemoveDrdsInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveReadOnlyAccountRequest : Tea.TeaModel {
    public var accountName: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
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
        if dict.keys.contains("AccountName") {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DrdsInstanceId") {
            self.drdsInstanceId = dict["DrdsInstanceId"] as! String
        }
    }
}

public class RemoveReadOnlyAccountResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RemoveReadOnlyAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveReadOnlyAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveReadOnlyAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
