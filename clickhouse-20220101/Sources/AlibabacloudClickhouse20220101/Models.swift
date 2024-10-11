import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AllocateVirtualWareHousePublicConnectionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class AllocateVirtualWareHousePublicConnectionResponseBody : Tea.TeaModel {
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

public class AllocateVirtualWareHousePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocateVirtualWareHousePublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AllocateVirtualWareHousePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckCreateClusterRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var DBClusterDescription: String?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var usedTime: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseDescription: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseDescription != nil {
            map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
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
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseDescription") {
            self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
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

public class CheckCreateClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expectedDBClusterStatus: String?

        public var expectedOrderFinishSeconds: Int64?

        public var expectedTargetVirtualWareHouseStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expectedDBClusterStatus != nil {
                map["ExpectedDBClusterStatus"] = self.expectedDBClusterStatus!
            }
            if self.expectedOrderFinishSeconds != nil {
                map["ExpectedOrderFinishSeconds"] = self.expectedOrderFinishSeconds!
            }
            if self.expectedTargetVirtualWareHouseStatus != nil {
                map["ExpectedTargetVirtualWareHouseStatus"] = self.expectedTargetVirtualWareHouseStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpectedDBClusterStatus") {
                self.expectedDBClusterStatus = dict["ExpectedDBClusterStatus"] as! String
            }
            if dict.keys.contains("ExpectedOrderFinishSeconds") {
                self.expectedOrderFinishSeconds = dict["ExpectedOrderFinishSeconds"] as! Int64
            }
            if dict.keys.contains("ExpectedTargetVirtualWareHouseStatus") {
                self.expectedTargetVirtualWareHouseStatus = dict["ExpectedTargetVirtualWareHouseStatus"] as! String
            }
        }
    }
    public var data: CheckCreateClusterResponseBody.Data?

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
            var model = CheckCreateClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckCreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckCreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckCreateVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseDescription: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseDescription != nil {
            map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseDescription") {
            self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
        }
        if dict.keys.contains("VswitchId") {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CheckCreateVirtualWareHouseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expectedDBClusterStatus: String?

        public var expectedOrderFinishSeconds: Int64?

        public var expectedTargetVirtualWareHouseStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expectedDBClusterStatus != nil {
                map["ExpectedDBClusterStatus"] = self.expectedDBClusterStatus!
            }
            if self.expectedOrderFinishSeconds != nil {
                map["ExpectedOrderFinishSeconds"] = self.expectedOrderFinishSeconds!
            }
            if self.expectedTargetVirtualWareHouseStatus != nil {
                map["ExpectedTargetVirtualWareHouseStatus"] = self.expectedTargetVirtualWareHouseStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpectedDBClusterStatus") {
                self.expectedDBClusterStatus = dict["ExpectedDBClusterStatus"] as! String
            }
            if dict.keys.contains("ExpectedOrderFinishSeconds") {
                self.expectedOrderFinishSeconds = dict["ExpectedOrderFinishSeconds"] as! Int64
            }
            if dict.keys.contains("ExpectedTargetVirtualWareHouseStatus") {
                self.expectedTargetVirtualWareHouseStatus = dict["ExpectedTargetVirtualWareHouseStatus"] as! String
            }
        }
    }
    public var data: CheckCreateVirtualWareHouseResponseBody.Data?

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
            var model = CheckCreateVirtualWareHouseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckCreateVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckCreateVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckCreateVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckDeleteVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class CheckDeleteVirtualWareHouseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expectedDBClusterStatus: String?

        public var expectedOrderFinishSeconds: Int64?

        public var expectedTargetVirtualWareHouseStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expectedDBClusterStatus != nil {
                map["ExpectedDBClusterStatus"] = self.expectedDBClusterStatus!
            }
            if self.expectedOrderFinishSeconds != nil {
                map["ExpectedOrderFinishSeconds"] = self.expectedOrderFinishSeconds!
            }
            if self.expectedTargetVirtualWareHouseStatus != nil {
                map["ExpectedTargetVirtualWareHouseStatus"] = self.expectedTargetVirtualWareHouseStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpectedDBClusterStatus") {
                self.expectedDBClusterStatus = dict["ExpectedDBClusterStatus"] as! String
            }
            if dict.keys.contains("ExpectedOrderFinishSeconds") {
                self.expectedOrderFinishSeconds = dict["ExpectedOrderFinishSeconds"] as! Int64
            }
            if dict.keys.contains("ExpectedTargetVirtualWareHouseStatus") {
                self.expectedTargetVirtualWareHouseStatus = dict["ExpectedTargetVirtualWareHouseStatus"] as! String
            }
        }
    }
    public var data: CheckDeleteVirtualWareHouseResponseBody.Data?

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
            var model = CheckDeleteVirtualWareHouseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckDeleteVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckDeleteVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckDeleteVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckModifyVirtualWareHouseResourceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class CheckModifyVirtualWareHouseResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var expectedDBClusterStatus: String?

        public var expectedOrderFinishSeconds: Int64?

        public var expectedTargetVirtualWareHouseStatus: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.expectedDBClusterStatus != nil {
                map["ExpectedDBClusterStatus"] = self.expectedDBClusterStatus!
            }
            if self.expectedOrderFinishSeconds != nil {
                map["ExpectedOrderFinishSeconds"] = self.expectedOrderFinishSeconds!
            }
            if self.expectedTargetVirtualWareHouseStatus != nil {
                map["ExpectedTargetVirtualWareHouseStatus"] = self.expectedTargetVirtualWareHouseStatus!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExpectedDBClusterStatus") {
                self.expectedDBClusterStatus = dict["ExpectedDBClusterStatus"] as! String
            }
            if dict.keys.contains("ExpectedOrderFinishSeconds") {
                self.expectedOrderFinishSeconds = dict["ExpectedOrderFinishSeconds"] as! Int64
            }
            if dict.keys.contains("ExpectedTargetVirtualWareHouseStatus") {
                self.expectedTargetVirtualWareHouseStatus = dict["ExpectedTargetVirtualWareHouseStatus"] as! String
            }
        }
    }
    public var data: CheckModifyVirtualWareHouseResourceResponseBody.Data?

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
            var model = CheckModifyVirtualWareHouseResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckModifyVirtualWareHouseResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckModifyVirtualWareHouseResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckModifyVirtualWareHouseResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccountRequest : Tea.TeaModel {
    public var account: String?

    public var comment: String?

    public var DBClusterId: String?

    public var password: String?

    public var passwordSha256Hex: String?

    public var privilegeType: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordSha256Hex != nil {
            map["PasswordSha256Hex"] = self.passwordSha256Hex!
        }
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
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
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordSha256Hex") {
            self.passwordSha256Hex = dict["PasswordSha256Hex"] as! String
        }
        if dict.keys.contains("PrivilegeType") {
            self.privilegeType = dict["PrivilegeType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class CreateAccountResponseBody : Tea.TeaModel {
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

public class CreateClusterRequest : Tea.TeaModel {
    public var autoRenew: Bool?

    public var DBClusterDescription: String?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var usedTime: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseDescription: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseDescription != nil {
            map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
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
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("PayType") {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UsedTime") {
            self.usedTime = dict["UsedTime"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseDescription") {
            self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
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

public class CreateClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var DBClusterId: String?

        public var orderId: Int64?

        public var virtualWareHouseId: String?

        public override init() {
            super.init()
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.virtualWareHouseId != nil {
                map["VirtualWareHouseId"] = self.virtualWareHouseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("VirtualWareHouseId") {
                self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
            }
        }
    }
    public var data: CreateClusterResponseBody.Data?

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
            var model = CreateClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseDescription: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseDescription != nil {
            map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseDescription") {
            self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
        }
        if dict.keys.contains("VswitchId") {
            self.vswitchId = dict["VswitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateVirtualWareHouseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var orderId: Int64?

        public var virtualWareHouseId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            if self.virtualWareHouseId != nil {
                map["VirtualWareHouseId"] = self.virtualWareHouseId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
            if dict.keys.contains("VirtualWareHouseId") {
                self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
            }
        }
    }
    public var data: CreateVirtualWareHouseResponseBody.Data?

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
            var model = CreateVirtualWareHouseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccountRequest : Tea.TeaModel {
    public var account: String?

    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteAccountResponseBody : Tea.TeaModel {
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

public class DeleteClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: DeleteClusterResponseBody.Data?

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
            var model = DeleteClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterSecurityIPGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DeleteClusterSecurityIPGroupResponseBody : Tea.TeaModel {
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

public class DeleteClusterSecurityIPGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterSecurityIPGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteClusterSecurityIPGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DeleteVirtualWareHouseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: DeleteVirtualWareHouseResponseBody.Data?

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
            var model = DeleteVirtualWareHouseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAccountRequest : Tea.TeaModel {
    public var account: String?

    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeAccountResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var comment: String?

        public var passwordSha256Hex: String?

        public var privilegeDescription: String?

        public var privilegeType: String?

        public override init() {
            super.init()
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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.passwordSha256Hex != nil {
                map["PasswordSha256Hex"] = self.passwordSha256Hex!
            }
            if self.privilegeDescription != nil {
                map["PrivilegeDescription"] = self.privilegeDescription!
            }
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("PasswordSha256Hex") {
                self.passwordSha256Hex = dict["PasswordSha256Hex"] as! String
            }
            if dict.keys.contains("PrivilegeDescription") {
                self.privilegeDescription = dict["PrivilegeDescription"] as! String
            }
            if dict.keys.contains("PrivilegeType") {
                self.privilegeType = dict["PrivilegeType"] as! String
            }
        }
    }
    public var data: DescribeAccountResponseBody.Data?

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
            var model = DescribeAccountResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VirtualWareHouses : Tea.TeaModel {
            public var ports: String?

            public var virtualWareHouseCacheStorage: Int32?

            public var virtualWareHouseClass: String?

            public var virtualWareHouseDescription: String?

            public var virtualWareHouseId: String?

            public var virtualWareHouseStatus: String?

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
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.virtualWareHouseCacheStorage != nil {
                    map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
                }
                if self.virtualWareHouseClass != nil {
                    map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
                }
                if self.virtualWareHouseDescription != nil {
                    map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
                }
                if self.virtualWareHouseId != nil {
                    map["VirtualWareHouseId"] = self.virtualWareHouseId!
                }
                if self.virtualWareHouseStatus != nil {
                    map["VirtualWareHouseStatus"] = self.virtualWareHouseStatus!
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
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! String
                }
                if dict.keys.contains("VirtualWareHouseCacheStorage") {
                    self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
                }
                if dict.keys.contains("VirtualWareHouseClass") {
                    self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
                }
                if dict.keys.contains("VirtualWareHouseDescription") {
                    self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
                }
                if dict.keys.contains("VirtualWareHouseId") {
                    self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
                }
                if dict.keys.contains("VirtualWareHouseStatus") {
                    self.virtualWareHouseStatus = dict["VirtualWareHouseStatus"] as! String
                }
                if dict.keys.contains("VswitchId") {
                    self.vswitchId = dict["VswitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var aliUid: Int64?

        public var cacheStorageSizeGiB: Int32?

        public var cacheStorageType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var DBClusterDescription: String?

        public var DBClusterId: String?

        public var DBClusterStatus: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var lockMode: String?

        public var lockReason: String?

        public var objectStoreSizeGiB: Int64?

        public var payType: String?

        public var regionId: String?

        public var resourceCpuCores: Int32?

        public var resourceMemoryGiB: Int32?

        public var virtualWareHouses: [DescribeClusterResponseBody.Data.VirtualWareHouses]?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.cacheStorageSizeGiB != nil {
                map["CacheStorageSizeGiB"] = self.cacheStorageSizeGiB!
            }
            if self.cacheStorageType != nil {
                map["CacheStorageType"] = self.cacheStorageType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBClusterDescription != nil {
                map["DBClusterDescription"] = self.DBClusterDescription!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.DBClusterStatus != nil {
                map["DBClusterStatus"] = self.DBClusterStatus!
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
            if self.objectStoreSizeGiB != nil {
                map["ObjectStoreSizeGiB"] = self.objectStoreSizeGiB!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceCpuCores != nil {
                map["ResourceCpuCores"] = self.resourceCpuCores!
            }
            if self.resourceMemoryGiB != nil {
                map["ResourceMemoryGiB"] = self.resourceMemoryGiB!
            }
            if self.virtualWareHouses != nil {
                var tmp : [Any] = []
                for k in self.virtualWareHouses! {
                    tmp.append(k.toMap())
                }
                map["VirtualWareHouses"] = tmp
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("CacheStorageSizeGiB") {
                self.cacheStorageSizeGiB = dict["CacheStorageSizeGiB"] as! Int32
            }
            if dict.keys.contains("CacheStorageType") {
                self.cacheStorageType = dict["CacheStorageType"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBClusterDescription") {
                self.DBClusterDescription = dict["DBClusterDescription"] as! String
            }
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("DBClusterStatus") {
                self.DBClusterStatus = dict["DBClusterStatus"] as! String
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
            if dict.keys.contains("ObjectStoreSizeGiB") {
                self.objectStoreSizeGiB = dict["ObjectStoreSizeGiB"] as! Int64
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceCpuCores") {
                self.resourceCpuCores = dict["ResourceCpuCores"] as! Int32
            }
            if dict.keys.contains("ResourceMemoryGiB") {
                self.resourceMemoryGiB = dict["ResourceMemoryGiB"] as! Int32
            }
            if dict.keys.contains("VirtualWareHouses") {
                var tmp : [DescribeClusterResponseBody.Data.VirtualWareHouses] = []
                for v in dict["VirtualWareHouses"] as! [Any] {
                    var model = DescribeClusterResponseBody.Data.VirtualWareHouses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.virtualWareHouses = tmp
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
    public var data: DescribeClusterResponseBody.Data?

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
            var model = DescribeClusterResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterSecurityInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class DescribeClusterSecurityInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class SecurityIpGroups : Tea.TeaModel {
            public var groupName: String?

            public var securityIps: String?

            public override init() {
                super.init()
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
                if self.securityIps != nil {
                    map["SecurityIps"] = self.securityIps!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("GroupName") {
                    self.groupName = dict["GroupName"] as! String
                }
                if dict.keys.contains("SecurityIps") {
                    self.securityIps = dict["SecurityIps"] as! String
                }
            }
        }
        public var securityIpGroups: [DescribeClusterSecurityInfoResponseBody.Data.SecurityIpGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityIpGroups != nil {
                var tmp : [Any] = []
                for k in self.securityIpGroups! {
                    tmp.append(k.toMap())
                }
                map["SecurityIpGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityIpGroups") {
                var tmp : [DescribeClusterSecurityInfoResponseBody.Data.SecurityIpGroups] = []
                for v in dict["SecurityIpGroups"] as! [Any] {
                    var model = DescribeClusterSecurityInfoResponseBody.Data.SecurityIpGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.securityIpGroups = tmp
            }
        }
    }
    public var data: DescribeClusterSecurityInfoResponseBody.Data?

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
            var model = DescribeClusterSecurityInfoResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterSecurityInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterSecurityInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterSecurityInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterStatusSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var desc: String?

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
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var data: [DescribeClusterStatusSetResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeClusterStatusSetResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeClusterStatusSetResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterStatusSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterStatusSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterStatusSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class Zones : Tea.TeaModel {
            public var vpcEnabled: Bool?

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
                if self.vpcEnabled != nil {
                    map["VpcEnabled"] = self.vpcEnabled!
                }
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("VpcEnabled") {
                    self.vpcEnabled = dict["VpcEnabled"] as! Bool
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var regionId: String?

        public var zones: [DescribeRegionsResponseBody.Data.Zones]?

        public override init() {
            super.init()
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
            if self.zones != nil {
                var tmp : [Any] = []
                for k in self.zones! {
                    tmp.append(k.toMap())
                }
                map["Zones"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Zones") {
                var tmp : [DescribeRegionsResponseBody.Data.Zones] = []
                for v in dict["Zones"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Data.Zones()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zones = tmp
            }
        }
    }
    public var data: [DescribeRegionsResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeRegionsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeRegionsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeRunningQueryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: Int64?

    public var queryId: String?

    public var queryKeyWord: String?

    public var queryUser: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.queryDurationMs != nil {
            map["QueryDurationMs"] = self.queryDurationMs!
        }
        if self.queryId != nil {
            map["QueryId"] = self.queryId!
        }
        if self.queryKeyWord != nil {
            map["QueryKeyWord"] = self.queryKeyWord!
        }
        if self.queryUser != nil {
            map["QueryUser"] = self.queryUser!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("QueryDurationMs") {
            self.queryDurationMs = dict["QueryDurationMs"] as! Int64
        }
        if dict.keys.contains("QueryId") {
            self.queryId = dict["QueryId"] as! String
        }
        if dict.keys.contains("QueryKeyWord") {
            self.queryKeyWord = dict["QueryKeyWord"] as! String
        }
        if dict.keys.contains("QueryUser") {
            self.queryUser = dict["QueryUser"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DescribeRunningQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
    public var data: [DescribeRunningQueryResponseBody.Data]?

    public var pageNumber: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeRunningQueryResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeRunningQueryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeRunningQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRunningQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRunningQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowQueryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queryDurationMs: Int64?

    public var regionId: String?

    public var startTime: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
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
            self.queryDurationMs = dict["QueryDurationMs"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DescribeSlowQueryResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var initialAddress: String?

        public var initialQueryId: String?

        public var initialUser: String?

        public var memoryUsage: Int64?

        public var query: String?

        public var queryDurationMs: Int64?

        public var queryStartTime: String?

        public var queryState: String?

        public var readBytes: Int64?

        public var readRows: Int64?

        public var resultBytes: Int64?

        public var resultRows: Int64?

        public override init() {
            super.init()
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
            if self.queryState != nil {
                map["QueryState"] = self.queryState!
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
            if self.resultRows != nil {
                map["ResultRows"] = self.resultRows!
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
            if dict.keys.contains("QueryState") {
                self.queryState = dict["QueryState"] as! String
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
            if dict.keys.contains("ResultRows") {
                self.resultRows = dict["ResultRows"] as! Int64
            }
        }
    }
    public var data: [DescribeSlowQueryResponseBody.Data]?

    public var pageNumber: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [DescribeSlowQueryResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeSlowQueryResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSlowQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSlowQueryTrendRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var endTime: String?

    public var queryDurationMs: Int64?

    public var regionId: String?

    public var startTime: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
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
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("QueryDurationMs") {
            self.queryDurationMs = dict["QueryDurationMs"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DescribeSlowQueryTrendResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var avgDurationMs: Int64?

        public var count: Int32?

        public var maxDurationMs: Int64?

        public var minDurationMs: Int64?

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
            if self.avgDurationMs != nil {
                map["AvgDurationMs"] = self.avgDurationMs!
            }
            if self.count != nil {
                map["Count"] = self.count!
            }
            if self.maxDurationMs != nil {
                map["MaxDurationMs"] = self.maxDurationMs!
            }
            if self.minDurationMs != nil {
                map["MinDurationMs"] = self.minDurationMs!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvgDurationMs") {
                self.avgDurationMs = dict["AvgDurationMs"] as! Int64
            }
            if dict.keys.contains("Count") {
                self.count = dict["Count"] as! Int32
            }
            if dict.keys.contains("MaxDurationMs") {
                self.maxDurationMs = dict["MaxDurationMs"] as! Int64
            }
            if dict.keys.contains("MinDurationMs") {
                self.minDurationMs = dict["MinDurationMs"] as! Int64
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
        }
    }
    public var data: [DescribeSlowQueryTrendResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeSlowQueryTrendResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeSlowQueryTrendResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeSlowQueryTrendResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSlowQueryTrendResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSlowQueryTrendResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ports: String?

        public var virtualWareHouseCacheStorage: Int32?

        public var virtualWareHouseClass: String?

        public var virtualWareHouseDescription: String?

        public var virtualWareHouseId: String?

        public var virtualWareHouseStatus: String?

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
            if self.ports != nil {
                map["Ports"] = self.ports!
            }
            if self.virtualWareHouseCacheStorage != nil {
                map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
            }
            if self.virtualWareHouseClass != nil {
                map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
            }
            if self.virtualWareHouseDescription != nil {
                map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
            }
            if self.virtualWareHouseId != nil {
                map["VirtualWareHouseId"] = self.virtualWareHouseId!
            }
            if self.virtualWareHouseStatus != nil {
                map["VirtualWareHouseStatus"] = self.virtualWareHouseStatus!
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
            if dict.keys.contains("Ports") {
                self.ports = dict["Ports"] as! String
            }
            if dict.keys.contains("VirtualWareHouseCacheStorage") {
                self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
            }
            if dict.keys.contains("VirtualWareHouseClass") {
                self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
            }
            if dict.keys.contains("VirtualWareHouseDescription") {
                self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
            }
            if dict.keys.contains("VirtualWareHouseId") {
                self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
            }
            if dict.keys.contains("VirtualWareHouseStatus") {
                self.virtualWareHouseStatus = dict["VirtualWareHouseStatus"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: DescribeVirtualWareHouseResponseBody.Data?

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
            var model = DescribeVirtualWareHouseResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualWareHouseClassSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var cacheStorageStep: Int32?

        public var cpuCores: Int32?

        public var maxCacheStorage: Int32?

        public var memoryGiB: Int32?

        public var minCacheStorage: Int32?

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
            if self.cacheStorageStep != nil {
                map["CacheStorageStep"] = self.cacheStorageStep!
            }
            if self.cpuCores != nil {
                map["CpuCores"] = self.cpuCores!
            }
            if self.maxCacheStorage != nil {
                map["MaxCacheStorage"] = self.maxCacheStorage!
            }
            if self.memoryGiB != nil {
                map["MemoryGiB"] = self.memoryGiB!
            }
            if self.minCacheStorage != nil {
                map["MinCacheStorage"] = self.minCacheStorage!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CacheStorageStep") {
                self.cacheStorageStep = dict["CacheStorageStep"] as! Int32
            }
            if dict.keys.contains("CpuCores") {
                self.cpuCores = dict["CpuCores"] as! Int32
            }
            if dict.keys.contains("MaxCacheStorage") {
                self.maxCacheStorage = dict["MaxCacheStorage"] as! Int32
            }
            if dict.keys.contains("MemoryGiB") {
                self.memoryGiB = dict["MemoryGiB"] as! Int32
            }
            if dict.keys.contains("MinCacheStorage") {
                self.minCacheStorage = dict["MinCacheStorage"] as! Int32
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var data: [DescribeVirtualWareHouseClassSetResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeVirtualWareHouseClassSetResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeVirtualWareHouseClassSetResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseClassSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualWareHouseClassSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVirtualWareHouseClassSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualWareHouseEndpointInfoRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseEndpointInfoResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var endpointType: String?

        public var ip: String?

        public var netType: String?

        public var ports: String?

        public var status: String?

        public var url: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.ports != nil {
                map["Ports"] = self.ports!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("EndpointType") {
                self.endpointType = dict["EndpointType"] as! String
            }
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("NetType") {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("Ports") {
                self.ports = dict["Ports"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var data: [DescribeVirtualWareHouseEndpointInfoResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeVirtualWareHouseEndpointInfoResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeVirtualWareHouseEndpointInfoResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseEndpointInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualWareHouseEndpointInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVirtualWareHouseEndpointInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeVirtualWareHouseStatusSetResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var desc: String?

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
            if self.desc != nil {
                map["Desc"] = self.desc!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Desc") {
                self.desc = dict["Desc"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var data: [DescribeVirtualWareHouseStatusSetResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [DescribeVirtualWareHouseStatusSetResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = DescribeVirtualWareHouseStatusSetResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeVirtualWareHouseStatusSetResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualWareHouseStatusSetResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVirtualWareHouseStatusSetResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetDistributedTablesBufferSizeRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class GetDistributedTablesBufferSizeResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var bufferSizeGiB: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bufferSizeGiB != nil {
                map["BufferSizeGiB"] = self.bufferSizeGiB!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BufferSizeGiB") {
                self.bufferSizeGiB = dict["BufferSizeGiB"] as! Int32
            }
        }
    }
    public var data: GetDistributedTablesBufferSizeResponseBody.Data?

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
            var model = GetDistributedTablesBufferSizeResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetDistributedTablesBufferSizeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetDistributedTablesBufferSizeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetDistributedTablesBufferSizeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class KillQueryRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var queryIds: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.queryIds != nil {
            map["QueryIds"] = self.queryIds!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("QueryIds") {
            self.queryIds = dict["QueryIds"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class KillQueryResponseBody : Tea.TeaModel {
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

public class KillQueryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: KillQueryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = KillQueryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccountsRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListAccountsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var account: String?

        public var comment: String?

        public var passwordSha256Hex: String?

        public var privilegeDescription: String?

        public var privilegeType: String?

        public override init() {
            super.init()
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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.passwordSha256Hex != nil {
                map["PasswordSha256Hex"] = self.passwordSha256Hex!
            }
            if self.privilegeDescription != nil {
                map["PrivilegeDescription"] = self.privilegeDescription!
            }
            if self.privilegeType != nil {
                map["PrivilegeType"] = self.privilegeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Account") {
                self.account = dict["Account"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("PasswordSha256Hex") {
                self.passwordSha256Hex = dict["PasswordSha256Hex"] as! String
            }
            if dict.keys.contains("PrivilegeDescription") {
                self.privilegeDescription = dict["PrivilegeDescription"] as! String
            }
            if dict.keys.contains("PrivilegeType") {
                self.privilegeType = dict["PrivilegeType"] as! String
            }
        }
    }
    public var data: [ListAccountsResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListAccountsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListAccountsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListAccountsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccountsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAccountsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
    public var DBClusterDescription: String?

    public var DBClusterId: String?

    public var DBClusterStatus: String?

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
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.DBClusterStatus != nil {
            map["DBClusterStatus"] = self.DBClusterStatus!
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
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("DBClusterStatus") {
            self.DBClusterStatus = dict["DBClusterStatus"] as! String
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
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public class VirtualWareHouses : Tea.TeaModel {
            public var ports: String?

            public var virtualWareHouseCacheStorage: Int32?

            public var virtualWareHouseClass: String?

            public var virtualWareHouseDescription: String?

            public var virtualWareHouseId: String?

            public var virtualWareHouseStatus: String?

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
                if self.ports != nil {
                    map["Ports"] = self.ports!
                }
                if self.virtualWareHouseCacheStorage != nil {
                    map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
                }
                if self.virtualWareHouseClass != nil {
                    map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
                }
                if self.virtualWareHouseDescription != nil {
                    map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
                }
                if self.virtualWareHouseId != nil {
                    map["VirtualWareHouseId"] = self.virtualWareHouseId!
                }
                if self.virtualWareHouseStatus != nil {
                    map["VirtualWareHouseStatus"] = self.virtualWareHouseStatus!
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
                if dict.keys.contains("Ports") {
                    self.ports = dict["Ports"] as! String
                }
                if dict.keys.contains("VirtualWareHouseCacheStorage") {
                    self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
                }
                if dict.keys.contains("VirtualWareHouseClass") {
                    self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
                }
                if dict.keys.contains("VirtualWareHouseDescription") {
                    self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
                }
                if dict.keys.contains("VirtualWareHouseId") {
                    self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
                }
                if dict.keys.contains("VirtualWareHouseStatus") {
                    self.virtualWareHouseStatus = dict["VirtualWareHouseStatus"] as! String
                }
                if dict.keys.contains("VswitchId") {
                    self.vswitchId = dict["VswitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var aliUid: Int64?

        public var cacheStorageSizeGiB: Int32?

        public var cacheStorageType: String?

        public var commodityCode: String?

        public var createTime: String?

        public var DBClusterDescription: String?

        public var DBClusterId: String?

        public var DBClusterStatus: String?

        public var engineVersion: String?

        public var expireTime: String?

        public var lockMode: String?

        public var lockReason: String?

        public var objectStoreSizeGiB: Int64?

        public var payType: String?

        public var regionId: String?

        public var resourceCpuCores: Int32?

        public var resourceMemoryGiB: Int32?

        public var virtualWareHouses: [ListClustersResponseBody.Data.VirtualWareHouses]?

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
            if self.aliUid != nil {
                map["AliUid"] = self.aliUid!
            }
            if self.cacheStorageSizeGiB != nil {
                map["CacheStorageSizeGiB"] = self.cacheStorageSizeGiB!
            }
            if self.cacheStorageType != nil {
                map["CacheStorageType"] = self.cacheStorageType!
            }
            if self.commodityCode != nil {
                map["CommodityCode"] = self.commodityCode!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.DBClusterDescription != nil {
                map["DBClusterDescription"] = self.DBClusterDescription!
            }
            if self.DBClusterId != nil {
                map["DBClusterId"] = self.DBClusterId!
            }
            if self.DBClusterStatus != nil {
                map["DBClusterStatus"] = self.DBClusterStatus!
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
            if self.objectStoreSizeGiB != nil {
                map["ObjectStoreSizeGiB"] = self.objectStoreSizeGiB!
            }
            if self.payType != nil {
                map["PayType"] = self.payType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.resourceCpuCores != nil {
                map["ResourceCpuCores"] = self.resourceCpuCores!
            }
            if self.resourceMemoryGiB != nil {
                map["ResourceMemoryGiB"] = self.resourceMemoryGiB!
            }
            if self.virtualWareHouses != nil {
                var tmp : [Any] = []
                for k in self.virtualWareHouses! {
                    tmp.append(k.toMap())
                }
                map["VirtualWareHouses"] = tmp
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
            if dict.keys.contains("AliUid") {
                self.aliUid = dict["AliUid"] as! Int64
            }
            if dict.keys.contains("CacheStorageSizeGiB") {
                self.cacheStorageSizeGiB = dict["CacheStorageSizeGiB"] as! Int32
            }
            if dict.keys.contains("CacheStorageType") {
                self.cacheStorageType = dict["CacheStorageType"] as! String
            }
            if dict.keys.contains("CommodityCode") {
                self.commodityCode = dict["CommodityCode"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DBClusterDescription") {
                self.DBClusterDescription = dict["DBClusterDescription"] as! String
            }
            if dict.keys.contains("DBClusterId") {
                self.DBClusterId = dict["DBClusterId"] as! String
            }
            if dict.keys.contains("DBClusterStatus") {
                self.DBClusterStatus = dict["DBClusterStatus"] as! String
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
            if dict.keys.contains("ObjectStoreSizeGiB") {
                self.objectStoreSizeGiB = dict["ObjectStoreSizeGiB"] as! Int64
            }
            if dict.keys.contains("PayType") {
                self.payType = dict["PayType"] as! String
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("ResourceCpuCores") {
                self.resourceCpuCores = dict["ResourceCpuCores"] as! Int32
            }
            if dict.keys.contains("ResourceMemoryGiB") {
                self.resourceMemoryGiB = dict["ResourceMemoryGiB"] as! Int32
            }
            if dict.keys.contains("VirtualWareHouses") {
                var tmp : [ListClustersResponseBody.Data.VirtualWareHouses] = []
                for v in dict["VirtualWareHouses"] as! [Any] {
                    var model = ListClustersResponseBody.Data.VirtualWareHouses()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.virtualWareHouses = tmp
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
    public var data: [ListClustersResponseBody.Data]?

    public var pageNumber: Int32?

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
        if self.data != nil {
            var tmp : [Any] = []
            for k in self.data! {
                tmp.append(k.toMap())
            }
            map["Data"] = tmp
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var tmp : [ListClustersResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListClustersResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVirtualWareHouseConfigsRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ListVirtualWareHouseConfigsResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var configFullPath: String?

        public var configType: String?

        public var defaultValue: String?

        public var description_: String?

        public var needRestart: Bool?

        public var spec: String?

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
            if self.configFullPath != nil {
                map["ConfigFullPath"] = self.configFullPath!
            }
            if self.configType != nil {
                map["ConfigType"] = self.configType!
            }
            if self.defaultValue != nil {
                map["DefaultValue"] = self.defaultValue!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.needRestart != nil {
                map["NeedRestart"] = self.needRestart!
            }
            if self.spec != nil {
                map["Spec"] = self.spec!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigFullPath") {
                self.configFullPath = dict["ConfigFullPath"] as! String
            }
            if dict.keys.contains("ConfigType") {
                self.configType = dict["ConfigType"] as! String
            }
            if dict.keys.contains("DefaultValue") {
                self.defaultValue = dict["DefaultValue"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NeedRestart") {
                self.needRestart = dict["NeedRestart"] as! Bool
            }
            if dict.keys.contains("Spec") {
                self.spec = dict["Spec"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var data: [ListVirtualWareHouseConfigsResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListVirtualWareHouseConfigsResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListVirtualWareHouseConfigsResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVirtualWareHouseConfigsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualWareHouseConfigsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVirtualWareHouseConfigsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVirtualWareHousesRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListVirtualWareHousesResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var ports: String?

        public var virtualWareHouseCacheStorage: Int32?

        public var virtualWareHouseClass: String?

        public var virtualWareHouseDescription: String?

        public var virtualWareHouseId: String?

        public var virtualWareHouseStatus: String?

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
            if self.ports != nil {
                map["Ports"] = self.ports!
            }
            if self.virtualWareHouseCacheStorage != nil {
                map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
            }
            if self.virtualWareHouseClass != nil {
                map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
            }
            if self.virtualWareHouseDescription != nil {
                map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
            }
            if self.virtualWareHouseId != nil {
                map["VirtualWareHouseId"] = self.virtualWareHouseId!
            }
            if self.virtualWareHouseStatus != nil {
                map["VirtualWareHouseStatus"] = self.virtualWareHouseStatus!
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
            if dict.keys.contains("Ports") {
                self.ports = dict["Ports"] as! String
            }
            if dict.keys.contains("VirtualWareHouseCacheStorage") {
                self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
            }
            if dict.keys.contains("VirtualWareHouseClass") {
                self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
            }
            if dict.keys.contains("VirtualWareHouseDescription") {
                self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
            }
            if dict.keys.contains("VirtualWareHouseId") {
                self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
            }
            if dict.keys.contains("VirtualWareHouseStatus") {
                self.virtualWareHouseStatus = dict["VirtualWareHouseStatus"] as! String
            }
            if dict.keys.contains("VswitchId") {
                self.vswitchId = dict["VswitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var data: [ListVirtualWareHousesResponseBody.Data]?

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
        if dict.keys.contains("Data") {
            var tmp : [ListVirtualWareHousesResponseBody.Data] = []
            for v in dict["Data"] as! [Any] {
                var model = ListVirtualWareHousesResponseBody.Data()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.data = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListVirtualWareHousesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualWareHousesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListVirtualWareHousesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccountDescriptionRequest : Tea.TeaModel {
    public var account: String?

    public var comment: String?

    public var DBClusterId: String?

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
        if self.comment != nil {
            map["Comment"] = self.comment!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
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
        if dict.keys.contains("Comment") {
            self.comment = dict["Comment"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyAccountPrivilegeRequest : Tea.TeaModel {
    public var account: String?

    public var DBClusterId: String?

    public var privilegeType: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.privilegeType != nil {
            map["PrivilegeType"] = self.privilegeType!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("PrivilegeType") {
            self.privilegeType = dict["PrivilegeType"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyAccountPrivilegeResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyAccountPrivilegeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterDescriptionRequest : Tea.TeaModel {
    public var DBClusterDescription: String?

    public var DBClusterId: String?

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
        if self.DBClusterDescription != nil {
            map["DBClusterDescription"] = self.DBClusterDescription!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterDescription") {
            self.DBClusterDescription = dict["DBClusterDescription"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ModifyClusterDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyClusterDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVirtualWareHouseConfigRequest : Tea.TeaModel {
    public class ConfigChanges : Tea.TeaModel {
        public var configFullPath: String?

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
            if self.configFullPath != nil {
                map["ConfigFullPath"] = self.configFullPath!
            }
            if self.value != nil {
                map["Value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigFullPath") {
                self.configFullPath = dict["ConfigFullPath"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var configChanges: [ModifyVirtualWareHouseConfigRequest.ConfigChanges]?

    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configChanges != nil {
            var tmp : [Any] = []
            for k in self.configChanges! {
                tmp.append(k.toMap())
            }
            map["ConfigChanges"] = tmp
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigChanges") {
            var tmp : [ModifyVirtualWareHouseConfigRequest.ConfigChanges] = []
            for v in dict["ConfigChanges"] as! [Any] {
                var model = ModifyVirtualWareHouseConfigRequest.ConfigChanges()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.configChanges = tmp
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ModifyVirtualWareHouseConfigShrinkRequest : Tea.TeaModel {
    public var configChangesShrink: String?

    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configChangesShrink != nil {
            map["ConfigChanges"] = self.configChangesShrink!
        }
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigChanges") {
            self.configChangesShrink = dict["ConfigChanges"] as! String
        }
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ModifyVirtualWareHouseConfigResponseBody : Tea.TeaModel {
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

public class ModifyVirtualWareHouseConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVirtualWareHouseConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyVirtualWareHouseConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVirtualWareHouseDescriptionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseDescription: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseDescription != nil {
            map["VirtualWareHouseDescription"] = self.virtualWareHouseDescription!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseDescription") {
            self.virtualWareHouseDescription = dict["VirtualWareHouseDescription"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ModifyVirtualWareHouseDescriptionResponseBody : Tea.TeaModel {
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

public class ModifyVirtualWareHouseDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVirtualWareHouseDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyVirtualWareHouseDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVirtualWareHouseResourceRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseCacheStorage: Int32?

    public var virtualWareHouseClass: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseCacheStorage != nil {
            map["VirtualWareHouseCacheStorage"] = self.virtualWareHouseCacheStorage!
        }
        if self.virtualWareHouseClass != nil {
            map["VirtualWareHouseClass"] = self.virtualWareHouseClass!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseCacheStorage") {
            self.virtualWareHouseCacheStorage = dict["VirtualWareHouseCacheStorage"] as! Int32
        }
        if dict.keys.contains("VirtualWareHouseClass") {
            self.virtualWareHouseClass = dict["VirtualWareHouseClass"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ModifyVirtualWareHouseResourceResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
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
            if self.orderId != nil {
                map["OrderId"] = self.orderId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderId") {
                self.orderId = dict["OrderId"] as! Int64
            }
        }
    }
    public var data: ModifyVirtualWareHouseResourceResponseBody.Data?

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
            var model = ModifyVirtualWareHouseResourceResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyVirtualWareHouseResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVirtualWareHouseResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyVirtualWareHouseResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PatchClusterSecurityIPGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var regionId: String?

    public var securityIps: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityIps") {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class PatchClusterSecurityIPGroupResponseBody : Tea.TeaModel {
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

public class PatchClusterSecurityIPGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PatchClusterSecurityIPGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = PatchClusterSecurityIPGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseVirtualWareHousePublicConnectionRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class ReleaseVirtualWareHousePublicConnectionResponseBody : Tea.TeaModel {
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

public class ReleaseVirtualWareHousePublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseVirtualWareHousePublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseVirtualWareHousePublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetAccountPasswordRequest : Tea.TeaModel {
    public var account: String?

    public var DBClusterId: String?

    public var password: String?

    public var passwordSha256Hex: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.passwordSha256Hex != nil {
            map["PasswordSha256Hex"] = self.passwordSha256Hex!
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
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PasswordSha256Hex") {
            self.passwordSha256Hex = dict["PasswordSha256Hex"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ResetAccountPasswordResponseBody : Tea.TeaModel {
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

public class RestartVirtualWareHouseRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var regionId: String?

    public var virtualWareHouseId: String?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.virtualWareHouseId != nil {
            map["VirtualWareHouseId"] = self.virtualWareHouseId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("VirtualWareHouseId") {
            self.virtualWareHouseId = dict["VirtualWareHouseId"] as! String
        }
    }
}

public class RestartVirtualWareHouseResponseBody : Tea.TeaModel {
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

public class RestartVirtualWareHouseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartVirtualWareHouseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartVirtualWareHouseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeClusterRequest : Tea.TeaModel {
    public var DBClusterId: String?

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
        if self.DBClusterId != nil {
            map["DBClusterId"] = self.DBClusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class UpgradeClusterResponseBody : Tea.TeaModel {
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

public class UpgradeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpgradeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpsertClusterSecurityIPGroupRequest : Tea.TeaModel {
    public var DBClusterId: String?

    public var groupName: String?

    public var regionId: String?

    public var securityIps: String?

    public override init() {
        super.init()
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
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.securityIps != nil {
            map["SecurityIps"] = self.securityIps!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBClusterId") {
            self.DBClusterId = dict["DBClusterId"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SecurityIps") {
            self.securityIps = dict["SecurityIps"] as! String
        }
    }
}

public class UpsertClusterSecurityIPGroupResponseBody : Tea.TeaModel {
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

public class UpsertClusterSecurityIPGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpsertClusterSecurityIPGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpsertClusterSecurityIPGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
