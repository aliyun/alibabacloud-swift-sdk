import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddDatabaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbDescription: String?

    public var dbName: String?

    public var dbPassword: String?

    public var dbType: String?

    public var dbUserName: String?

    public var gatewayId: String?

    public var host: String?

    public var port: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbDescription != nil {
            map["DbDescription"] = self.dbDescription!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbPassword != nil {
            map["DbPassword"] = self.dbPassword!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.dbUserName != nil {
            map["DbUserName"] = self.dbUserName!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbDescription") {
            self.dbDescription = dict["DbDescription"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbPassword") {
            self.dbPassword = dict["DbPassword"] as! String
        }
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("DbUserName") {
            self.dbUserName = dict["DbUserName"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class AddDatabaseResponseBody : Tea.TeaModel {
    public class DbInstance : Tea.TeaModel {
        public var connectHost: String?

        public var connectPort: Int32?

        public var dbDescription: String?

        public var dbType: String?

        public var gatewayId: String?

        public var gatewayName: String?

        public var host: String?

        public var instanceId: String?

        public var instanceStatus: String?

        public var networkType: String?

        public var nodeId: String?

        public var parentId: String?

        public var port: Int32?

        public var regionId: String?

        public var serviceType: String?

        public var userId: String?

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
            if self.connectHost != nil {
                map["ConnectHost"] = self.connectHost!
            }
            if self.connectPort != nil {
                map["ConnectPort"] = self.connectPort!
            }
            if self.dbDescription != nil {
                map["DbDescription"] = self.dbDescription!
            }
            if self.dbType != nil {
                map["DbType"] = self.dbType!
            }
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.gatewayName != nil {
                map["GatewayName"] = self.gatewayName!
            }
            if self.host != nil {
                map["Host"] = self.host!
            }
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.instanceStatus != nil {
                map["InstanceStatus"] = self.instanceStatus!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.nodeId != nil {
                map["NodeId"] = self.nodeId!
            }
            if self.parentId != nil {
                map["ParentId"] = self.parentId!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.serviceType != nil {
                map["ServiceType"] = self.serviceType!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
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
            if dict.keys.contains("ConnectHost") {
                self.connectHost = dict["ConnectHost"] as! String
            }
            if dict.keys.contains("ConnectPort") {
                self.connectPort = dict["ConnectPort"] as! Int32
            }
            if dict.keys.contains("DbDescription") {
                self.dbDescription = dict["DbDescription"] as! String
            }
            if dict.keys.contains("DbType") {
                self.dbType = dict["DbType"] as! String
            }
            if dict.keys.contains("GatewayId") {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("GatewayName") {
                self.gatewayName = dict["GatewayName"] as! String
            }
            if dict.keys.contains("Host") {
                self.host = dict["Host"] as! String
            }
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("InstanceStatus") {
                self.instanceStatus = dict["InstanceStatus"] as! String
            }
            if dict.keys.contains("NetworkType") {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("NodeId") {
                self.nodeId = dict["NodeId"] as! String
            }
            if dict.keys.contains("ParentId") {
                self.parentId = dict["ParentId"] as! String
            }
            if dict.keys.contains("Port") {
                self.port = dict["Port"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ServiceType") {
                self.serviceType = dict["ServiceType"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VpcInstanceId") {
                self.vpcInstanceId = dict["VpcInstanceId"] as! String
            }
        }
    }
    public var code: String?

    public var dbInstance: AddDatabaseResponseBody.DbInstance?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.dbInstance != nil {
            map["DbInstance"] = self.dbInstance?.toMap()
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("DbInstance") {
            var model = AddDatabaseResponseBody.DbInstance()
            model.fromMap(dict["DbInstance"] as! [String: Any])
            self.dbInstance = model
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddDatabaseListRequest : Tea.TeaModel {
    public var clientToken: String?

    public var databaseString: String?

    public override init() {
        super.init()
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
        if self.databaseString != nil {
            map["DatabaseString"] = self.databaseString!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DatabaseString") {
            self.databaseString = dict["DatabaseString"] as! String
        }
    }
}

public class AddDatabaseListResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddDatabaseListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddDatabaseListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddDatabaseListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDGEnabledResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CheckDGEnabledResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDGEnabledResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDGEnabledResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConnectDatabaseRequest : Tea.TeaModel {
    public var dbName: String?

    public var dbPassword: String?

    public var dbType: String?

    public var dbUserName: String?

    public var gatewayId: String?

    public var host: String?

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
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbPassword != nil {
            map["DbPassword"] = self.dbPassword!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.dbUserName != nil {
            map["DbUserName"] = self.dbUserName!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbPassword") {
            self.dbPassword = dict["DbPassword"] as! String
        }
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("DbUserName") {
            self.dbUserName = dict["DbUserName"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
    }
}

public class ConnectDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ConnectDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConnectDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConnectDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public var gatewayDesc: String?

    public var gatewayName: String?

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
        if self.gatewayDesc != nil {
            map["GatewayDesc"] = self.gatewayDesc!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayDesc") {
            self.gatewayDesc = dict["GatewayDesc"] as! String
        }
        if dict.keys.contains("GatewayName") {
            self.gatewayName = dict["GatewayName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayVerifyCodeRequest : Tea.TeaModel {
    public var gatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
    }
}

public class CreateGatewayVerifyCodeResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class CreateGatewayVerifyCodeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayVerifyCodeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateGatewayVerifyCodeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDatabaseRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGatewayInstanceRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayInstanceId: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayInstanceId != nil {
            map["GatewayInstanceId"] = self.gatewayInstanceId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayInstanceId") {
            self.gatewayInstanceId = dict["GatewayInstanceId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteGatewayInstanceResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DeleteGatewayInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteGatewayInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public var localName: String?

            public var regionEndpoint: String?

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
                if self.localName != nil {
                    map["LocalName"] = self.localName!
                }
                if self.regionEndpoint != nil {
                    map["RegionEndpoint"] = self.regionEndpoint!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var region: [DescribeRegionsResponseBody.Regions.Region]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.region != nil {
                var tmp : [Any] = []
                for k in self.region! {
                    tmp.append(k.toMap())
                }
                map["Region"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Region") {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in dict["Region"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.Region()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.region = tmp
            }
        }
    }
    public var code: String?

    public var errorMsg: String?

    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.regions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Regions") {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
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

public class DownloadGatewayProgramRequest : Tea.TeaModel {
    public var dgVersion: String?

    public var userOS: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dgVersion != nil {
            map["DgVersion"] = self.dgVersion!
        }
        if self.userOS != nil {
            map["UserOS"] = self.userOS!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DgVersion") {
            self.dgVersion = dict["DgVersion"] as! String
        }
        if dict.keys.contains("UserOS") {
            self.userOS = dict["UserOS"] as! String
        }
    }
}

public class DownloadGatewayProgramResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class DownloadGatewayProgramResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DownloadGatewayProgramResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DownloadGatewayProgramResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FindUserGatewayByIdRequest : Tea.TeaModel {
    public var gatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
    }
}

public class FindUserGatewayByIdResponseBody : Tea.TeaModel {
    public class Gateway : Tea.TeaModel {
        public var creatorId: String?

        public var dgVersion: String?

        public var exceptionMsg: String?

        public var gatewayDesc: String?

        public var gatewayId: String?

        public var gatewayName: String?

        public var numOfExceptionInstance: Int32?

        public var numOfRunningInstance: Int32?

        public var regionId: String?

        public var status: String?

        public var userId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creatorId != nil {
                map["CreatorId"] = self.creatorId!
            }
            if self.dgVersion != nil {
                map["DgVersion"] = self.dgVersion!
            }
            if self.exceptionMsg != nil {
                map["ExceptionMsg"] = self.exceptionMsg!
            }
            if self.gatewayDesc != nil {
                map["GatewayDesc"] = self.gatewayDesc!
            }
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.gatewayName != nil {
                map["GatewayName"] = self.gatewayName!
            }
            if self.numOfExceptionInstance != nil {
                map["NumOfExceptionInstance"] = self.numOfExceptionInstance!
            }
            if self.numOfRunningInstance != nil {
                map["NumOfRunningInstance"] = self.numOfRunningInstance!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.userId != nil {
                map["UserId"] = self.userId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreatorId") {
                self.creatorId = dict["CreatorId"] as! String
            }
            if dict.keys.contains("DgVersion") {
                self.dgVersion = dict["DgVersion"] as! String
            }
            if dict.keys.contains("ExceptionMsg") {
                self.exceptionMsg = dict["ExceptionMsg"] as! String
            }
            if dict.keys.contains("GatewayDesc") {
                self.gatewayDesc = dict["GatewayDesc"] as! String
            }
            if dict.keys.contains("GatewayId") {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("GatewayName") {
                self.gatewayName = dict["GatewayName"] as! String
            }
            if dict.keys.contains("NumOfExceptionInstance") {
                self.numOfExceptionInstance = dict["NumOfExceptionInstance"] as! Int32
            }
            if dict.keys.contains("NumOfRunningInstance") {
                self.numOfRunningInstance = dict["NumOfRunningInstance"] as! Int32
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UserId") {
                self.userId = dict["UserId"] as! String
            }
        }
    }
    public var code: String?

    public var errorMsg: String?

    public var gateway: FindUserGatewayByIdResponseBody.Gateway?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gateway?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.gateway != nil {
            map["Gateway"] = self.gateway?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("Gateway") {
            var model = FindUserGatewayByIdResponseBody.Gateway()
            model.fromMap(dict["Gateway"] as! [String: Any])
            self.gateway = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class FindUserGatewayByIdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FindUserGatewayByIdResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = FindUserGatewayByIdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserDatabasesRequest : Tea.TeaModel {
    public var dbType: String?

    public var gatewayId: String?

    public var host: String?

    public var instanceId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var port: Int32?

    public var regionId: String?

    public var searchKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetUserDatabasesResponseBody : Tea.TeaModel {
    public class DbInstanceList : Tea.TeaModel {
        public class DbInstance : Tea.TeaModel {
            public var connectHost: String?

            public var connectPort: Int32?

            public var dbDescription: String?

            public var dbType: String?

            public var gatewayId: String?

            public var gatewayName: String?

            public var gmtCreate: Int64?

            public var host: String?

            public var instanceId: String?

            public var instanceStatus: String?

            public var networkType: String?

            public var nodeId: String?

            public var parentId: String?

            public var port: Int32?

            public var regionId: String?

            public var serviceType: String?

            public var userId: String?

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
                if self.connectHost != nil {
                    map["ConnectHost"] = self.connectHost!
                }
                if self.connectPort != nil {
                    map["ConnectPort"] = self.connectPort!
                }
                if self.dbDescription != nil {
                    map["DbDescription"] = self.dbDescription!
                }
                if self.dbType != nil {
                    map["DbType"] = self.dbType!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.gatewayName != nil {
                    map["GatewayName"] = self.gatewayName!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.host != nil {
                    map["Host"] = self.host!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceStatus != nil {
                    map["InstanceStatus"] = self.instanceStatus!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.parentId != nil {
                    map["ParentId"] = self.parentId!
                }
                if self.port != nil {
                    map["Port"] = self.port!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
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
                if dict.keys.contains("ConnectHost") {
                    self.connectHost = dict["ConnectHost"] as! String
                }
                if dict.keys.contains("ConnectPort") {
                    self.connectPort = dict["ConnectPort"] as! Int32
                }
                if dict.keys.contains("DbDescription") {
                    self.dbDescription = dict["DbDescription"] as! String
                }
                if dict.keys.contains("DbType") {
                    self.dbType = dict["DbType"] as! String
                }
                if dict.keys.contains("GatewayId") {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("GatewayName") {
                    self.gatewayName = dict["GatewayName"] as! String
                }
                if dict.keys.contains("GmtCreate") {
                    self.gmtCreate = dict["GmtCreate"] as! Int64
                }
                if dict.keys.contains("Host") {
                    self.host = dict["Host"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceStatus") {
                    self.instanceStatus = dict["InstanceStatus"] as! String
                }
                if dict.keys.contains("NetworkType") {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("NodeId") {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("ParentId") {
                    self.parentId = dict["ParentId"] as! String
                }
                if dict.keys.contains("Port") {
                    self.port = dict["Port"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ServiceType") {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("VpcInstanceId") {
                    self.vpcInstanceId = dict["VpcInstanceId"] as! String
                }
            }
        }
        public var dbInstance: [GetUserDatabasesResponseBody.DbInstanceList.DbInstance]?

        public override init() {
            super.init()
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
            if dict.keys.contains("DbInstance") {
                var tmp : [GetUserDatabasesResponseBody.DbInstanceList.DbInstance] = []
                for v in dict["DbInstance"] as! [Any] {
                    var model = GetUserDatabasesResponseBody.DbInstanceList.DbInstance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dbInstance = tmp
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var dbInstanceList: GetUserDatabasesResponseBody.DbInstanceList?

    public var errorMsg: String?

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
        try self.dbInstanceList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.dbInstanceList != nil {
            map["DbInstanceList"] = self.dbInstanceList?.toMap()
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("DbInstanceList") {
            var model = GetUserDatabasesResponseBody.DbInstanceList()
            model.fromMap(dict["DbInstanceList"] as! [String: Any])
            self.dbInstanceList = model
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class GetUserDatabasesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserDatabasesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserDatabasesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGatewayInstancesRequest : Tea.TeaModel {
    public var gatewayId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
    }
}

public class GetUserGatewayInstancesResponseBody : Tea.TeaModel {
    public class GatewayInstanceList : Tea.TeaModel {
        public var connectEndpointType: String?

        public var currentDaemonVersion: String?

        public var currentVersion: String?

        public var endPoint: String?

        public var gatewayId: String?

        public var gatewayInstanceId: String?

        public var gatewayInstanceStatus: String?

        public var lastUpdateTime: Int64?

        public var localIP: String?

        public var message: String?

        public var outputIP: String?

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
            if self.connectEndpointType != nil {
                map["ConnectEndpointType"] = self.connectEndpointType!
            }
            if self.currentDaemonVersion != nil {
                map["CurrentDaemonVersion"] = self.currentDaemonVersion!
            }
            if self.currentVersion != nil {
                map["CurrentVersion"] = self.currentVersion!
            }
            if self.endPoint != nil {
                map["EndPoint"] = self.endPoint!
            }
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.gatewayInstanceId != nil {
                map["GatewayInstanceId"] = self.gatewayInstanceId!
            }
            if self.gatewayInstanceStatus != nil {
                map["GatewayInstanceStatus"] = self.gatewayInstanceStatus!
            }
            if self.lastUpdateTime != nil {
                map["LastUpdateTime"] = self.lastUpdateTime!
            }
            if self.localIP != nil {
                map["LocalIP"] = self.localIP!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.outputIP != nil {
                map["OutputIP"] = self.outputIP!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnectEndpointType") {
                self.connectEndpointType = dict["ConnectEndpointType"] as! String
            }
            if dict.keys.contains("CurrentDaemonVersion") {
                self.currentDaemonVersion = dict["CurrentDaemonVersion"] as! String
            }
            if dict.keys.contains("CurrentVersion") {
                self.currentVersion = dict["CurrentVersion"] as! String
            }
            if dict.keys.contains("EndPoint") {
                self.endPoint = dict["EndPoint"] as! String
            }
            if dict.keys.contains("GatewayId") {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("GatewayInstanceId") {
                self.gatewayInstanceId = dict["GatewayInstanceId"] as! String
            }
            if dict.keys.contains("GatewayInstanceStatus") {
                self.gatewayInstanceStatus = dict["GatewayInstanceStatus"] as! String
            }
            if dict.keys.contains("LastUpdateTime") {
                self.lastUpdateTime = dict["LastUpdateTime"] as! Int64
            }
            if dict.keys.contains("LocalIP") {
                self.localIP = dict["LocalIP"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OutputIP") {
                self.outputIP = dict["OutputIP"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var code: String?

    public var errorMsg: String?

    public var gatewayInstanceList: [GetUserGatewayInstancesResponseBody.GatewayInstanceList]?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.gatewayInstanceList != nil {
            var tmp : [Any] = []
            for k in self.gatewayInstanceList! {
                tmp.append(k.toMap())
            }
            map["GatewayInstanceList"] = tmp
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("GatewayInstanceList") {
            var tmp : [GetUserGatewayInstancesResponseBody.GatewayInstanceList] = []
            for v in dict["GatewayInstanceList"] as! [Any] {
                var model = GetUserGatewayInstancesResponseBody.GatewayInstanceList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.gatewayInstanceList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserGatewayInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserGatewayInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserGatewayInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserGatewaysRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var searchKey: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
    }
}

public class GetUserGatewaysResponseBody : Tea.TeaModel {
    public class GatewayList : Tea.TeaModel {
        public class Gateway : Tea.TeaModel {
            public var creatorId: String?

            public var dgVersion: String?

            public var exceptionMsg: String?

            public var gatewayDesc: String?

            public var gatewayId: String?

            public var gatewayName: String?

            public var numOfExceptionInstance: Int32?

            public var numOfRunningInstance: Int32?

            public var regionId: String?

            public var status: String?

            public var userId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creatorId != nil {
                    map["CreatorId"] = self.creatorId!
                }
                if self.dgVersion != nil {
                    map["DgVersion"] = self.dgVersion!
                }
                if self.exceptionMsg != nil {
                    map["ExceptionMsg"] = self.exceptionMsg!
                }
                if self.gatewayDesc != nil {
                    map["GatewayDesc"] = self.gatewayDesc!
                }
                if self.gatewayId != nil {
                    map["GatewayId"] = self.gatewayId!
                }
                if self.gatewayName != nil {
                    map["GatewayName"] = self.gatewayName!
                }
                if self.numOfExceptionInstance != nil {
                    map["NumOfExceptionInstance"] = self.numOfExceptionInstance!
                }
                if self.numOfRunningInstance != nil {
                    map["NumOfRunningInstance"] = self.numOfRunningInstance!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatorId") {
                    self.creatorId = dict["CreatorId"] as! String
                }
                if dict.keys.contains("DgVersion") {
                    self.dgVersion = dict["DgVersion"] as! String
                }
                if dict.keys.contains("ExceptionMsg") {
                    self.exceptionMsg = dict["ExceptionMsg"] as! String
                }
                if dict.keys.contains("GatewayDesc") {
                    self.gatewayDesc = dict["GatewayDesc"] as! String
                }
                if dict.keys.contains("GatewayId") {
                    self.gatewayId = dict["GatewayId"] as! String
                }
                if dict.keys.contains("GatewayName") {
                    self.gatewayName = dict["GatewayName"] as! String
                }
                if dict.keys.contains("NumOfExceptionInstance") {
                    self.numOfExceptionInstance = dict["NumOfExceptionInstance"] as! Int32
                }
                if dict.keys.contains("NumOfRunningInstance") {
                    self.numOfRunningInstance = dict["NumOfRunningInstance"] as! Int32
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var gateway: [GetUserGatewaysResponseBody.GatewayList.Gateway]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.gateway != nil {
                var tmp : [Any] = []
                for k in self.gateway! {
                    tmp.append(k.toMap())
                }
                map["Gateway"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Gateway") {
                var tmp : [GetUserGatewaysResponseBody.GatewayList.Gateway] = []
                for v in dict["Gateway"] as! [Any] {
                    var model = GetUserGatewaysResponseBody.GatewayList.Gateway()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.gateway = tmp
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var errorMsg: String?

    public var gatewayList: GetUserGatewaysResponseBody.GatewayList?

    public var requestId: String?

    public var success: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.gatewayList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.code != nil {
            map["Code"] = self.code!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
        }
        if self.gatewayList != nil {
            map["GatewayList"] = self.gatewayList?.toMap()
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("GatewayList") {
            var model = GetUserGatewaysResponseBody.GatewayList()
            model.fromMap(dict["GatewayList"] as! [String: Any])
            self.gatewayList = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class GetUserGatewaysResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserGatewaysResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetUserGatewaysResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListDatabaseAccessPointRequest : Tea.TeaModel {
    public var dbInstanceId: String?

    public var gatewayId: String?

    public var host: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var port: Int32?

    public var regionId: String?

    public var searchKey: String?

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
        if self.dbInstanceId != nil {
            map["DbInstanceId"] = self.dbInstanceId!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.searchKey != nil {
            map["SearchKey"] = self.searchKey!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbInstanceId") {
            self.dbInstanceId = dict["DbInstanceId"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SearchKey") {
            self.searchKey = dict["SearchKey"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ListDatabaseAccessPointResponseBody : Tea.TeaModel {
    public class DbInstanceAccessPointList : Tea.TeaModel {
        public var accessAddr: String?

        public var accessPort: Int32?

        public var dbInstanceId: String?

        public var gmtCreate: Int64?

        public var gmtModified: Int64?

        public var routerId: String?

        public var vpcAzoneId: String?

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
            if self.accessAddr != nil {
                map["AccessAddr"] = self.accessAddr!
            }
            if self.accessPort != nil {
                map["AccessPort"] = self.accessPort!
            }
            if self.dbInstanceId != nil {
                map["DbInstanceId"] = self.dbInstanceId!
            }
            if self.gmtCreate != nil {
                map["GmtCreate"] = self.gmtCreate!
            }
            if self.gmtModified != nil {
                map["GmtModified"] = self.gmtModified!
            }
            if self.routerId != nil {
                map["RouterId"] = self.routerId!
            }
            if self.vpcAzoneId != nil {
                map["VpcAzoneId"] = self.vpcAzoneId!
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
            if dict.keys.contains("AccessAddr") {
                self.accessAddr = dict["AccessAddr"] as! String
            }
            if dict.keys.contains("AccessPort") {
                self.accessPort = dict["AccessPort"] as! Int32
            }
            if dict.keys.contains("DbInstanceId") {
                self.dbInstanceId = dict["DbInstanceId"] as! String
            }
            if dict.keys.contains("GmtCreate") {
                self.gmtCreate = dict["GmtCreate"] as! Int64
            }
            if dict.keys.contains("GmtModified") {
                self.gmtModified = dict["GmtModified"] as! Int64
            }
            if dict.keys.contains("RouterId") {
                self.routerId = dict["RouterId"] as! String
            }
            if dict.keys.contains("VpcAzoneId") {
                self.vpcAzoneId = dict["VpcAzoneId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
        }
    }
    public var code: String?

    public var count: Int32?

    public var dbInstanceAccessPointList: [ListDatabaseAccessPointResponseBody.DbInstanceAccessPointList]?

    public var errorMsg: String?

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
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.dbInstanceAccessPointList != nil {
            var tmp : [Any] = []
            for k in self.dbInstanceAccessPointList! {
                tmp.append(k.toMap())
            }
            map["DbInstanceAccessPointList"] = tmp
        }
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("DbInstanceAccessPointList") {
            var tmp : [ListDatabaseAccessPointResponseBody.DbInstanceAccessPointList] = []
            for v in dict["DbInstanceAccessPointList"] as! [Any] {
                var model = ListDatabaseAccessPointResponseBody.DbInstanceAccessPointList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dbInstanceAccessPointList = tmp
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
        }
    }
}

public class ListDatabaseAccessPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListDatabaseAccessPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListDatabaseAccessPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDatabaseRequest : Tea.TeaModel {
    public var dbDescription: String?

    public var dbName: String?

    public var dbPassword: String?

    public var dbType: String?

    public var dbUserName: String?

    public var host: String?

    public var instanceId: String?

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
        if self.dbDescription != nil {
            map["DbDescription"] = self.dbDescription!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbPassword != nil {
            map["DbPassword"] = self.dbPassword!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.dbUserName != nil {
            map["DbUserName"] = self.dbUserName!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbDescription") {
            self.dbDescription = dict["DbDescription"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbPassword") {
            self.dbPassword = dict["DbPassword"] as! String
        }
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("DbUserName") {
            self.dbUserName = dict["DbUserName"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
    }
}

public class ModifyDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyGatewayRequest : Tea.TeaModel {
    public var gatewayDesc: String?

    public var gatewayId: String?

    public var gatewayName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayDesc != nil {
            map["GatewayDesc"] = self.gatewayDesc!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayDesc") {
            self.gatewayDesc = dict["GatewayDesc"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayName") {
            self.gatewayName = dict["GatewayName"] as! String
        }
    }
}

public class ModifyGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class ModifyGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RetryDatabaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var dbDescription: String?

    public var dbName: String?

    public var dbPassword: String?

    public var dbType: String?

    public var dbUserName: String?

    public var gatewayId: String?

    public var host: String?

    public var port: Int32?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dbDescription != nil {
            map["DbDescription"] = self.dbDescription!
        }
        if self.dbName != nil {
            map["DbName"] = self.dbName!
        }
        if self.dbPassword != nil {
            map["DbPassword"] = self.dbPassword!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.dbUserName != nil {
            map["DbUserName"] = self.dbUserName!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.host != nil {
            map["Host"] = self.host!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DbDescription") {
            self.dbDescription = dict["DbDescription"] as! String
        }
        if dict.keys.contains("DbName") {
            self.dbName = dict["DbName"] as! String
        }
        if dict.keys.contains("DbPassword") {
            self.dbPassword = dict["DbPassword"] as! String
        }
        if dict.keys.contains("DbType") {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("DbUserName") {
            self.dbUserName = dict["DbUserName"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Host") {
            self.host = dict["Host"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RetryDatabaseResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RetryDatabaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RetryDatabaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RetryDatabaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayInstanceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayInstanceId != nil {
            map["GatewayInstanceId"] = self.gatewayInstanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayInstanceId") {
            self.gatewayInstanceId = dict["GatewayInstanceId"] as! String
        }
    }
}

public class StopGatewayResponseBody : Tea.TeaModel {
    public var code: String?

    public var data: String?

    public var errorMsg: String?

    public var requestId: String?

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
        if self.errorMsg != nil {
            map["ErrorMsg"] = self.errorMsg!
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
        if dict.keys.contains("Code") {
            self.code = dict["Code"] as! String
        }
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! String
        }
        if dict.keys.contains("ErrorMsg") {
            self.errorMsg = dict["ErrorMsg"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class StopGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopGatewayResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
