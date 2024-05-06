import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddUserHdfsInfoRequest : Tea.TeaModel {
    public var clusterId: String?

    public var extInfo: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.extInfo != nil {
            map["ExtInfo"] = self.extInfo!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ExtInfo") && dict["ExtInfo"] != nil {
            self.extInfo = dict["ExtInfo"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class AddUserHdfsInfoResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddUserHdfsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUserHdfsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddUserHdfsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AllocatePublicNetworkAddressRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class AllocatePublicNetworkAddressResponseBody : Tea.TeaModel {
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

public class AllocatePublicNetworkAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AllocatePublicNetworkAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AllocatePublicNetworkAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CheckVersionsOfComponentsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CheckVersionsOfComponentsResponseBody : Tea.TeaModel {
    public class Components : Tea.TeaModel {
        public class Components : Tea.TeaModel {
            public var component: String?

            public var isLatestVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.component != nil {
                    map["Component"] = self.component!
                }
                if self.isLatestVersion != nil {
                    map["IsLatestVersion"] = self.isLatestVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Component") && dict["Component"] != nil {
                    self.component = dict["Component"] as! String
                }
                if dict.keys.contains("IsLatestVersion") && dict["IsLatestVersion"] != nil {
                    self.isLatestVersion = dict["IsLatestVersion"] as! String
                }
            }
        }
        public var components: [CheckVersionsOfComponentsResponseBody.Components.Components]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.components != nil {
                var tmp : [Any] = []
                for k in self.components! {
                    tmp.append(k.toMap())
                }
                map["Components"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Components") && dict["Components"] != nil {
                var tmp : [CheckVersionsOfComponentsResponseBody.Components.Components] = []
                for v in dict["Components"] as! [Any] {
                    var model = CheckVersionsOfComponentsResponseBody.Components.Components()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.components = tmp
            }
        }
    }
    public var components: CheckVersionsOfComponentsResponseBody.Components?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.components?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.components != nil {
            map["Components"] = self.components?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Components") && dict["Components"] != nil {
            var model = CheckVersionsOfComponentsResponseBody.Components()
            model.fromMap(dict["Components"] as! [String: Any])
            self.components = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CheckVersionsOfComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckVersionsOfComponentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CheckVersionsOfComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CloseBackupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CloseBackupResponseBody : Tea.TeaModel {
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

public class CloseBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloseBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CloseBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ConvertClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var duration: Int32?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ConvertClusterResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ConvertClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ConvertClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ConvertClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public var autoRenew: String?

    public var backupId: String?

    public var clientToken: String?

    public var cloudType: String?

    public var clusterName: String?

    public var coldStorageSize: String?

    public var coreDiskQuantity: String?

    public var coreDiskSize: String?

    public var coreDiskType: String?

    public var coreInstanceQuantity: String?

    public var coreInstanceType: String?

    public var dbInstanceConnType: String?

    public var dbInstanceType: String?

    public var dbType: String?

    public var depMode: String?

    public var duration: String?

    public var engine: String?

    public var engineVersion: String?

    public var isColdStorage: String?

    public var masterInstanceType: String?

    public var netType: String?

    public var payType: String?

    public var pricingCycle: String?

    public var regionId: String?

    public var restoreTime: String?

    public var securityIPList: String?

    public var srcDBInstanceId: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.backupId != nil {
            map["BackupId"] = self.backupId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cloudType != nil {
            map["CloudType"] = self.cloudType!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coreDiskQuantity != nil {
            map["CoreDiskQuantity"] = self.coreDiskQuantity!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceQuantity != nil {
            map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.dbInstanceConnType != nil {
            map["DbInstanceConnType"] = self.dbInstanceConnType!
        }
        if self.dbInstanceType != nil {
            map["DbInstanceType"] = self.dbInstanceType!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.depMode != nil {
            map["DepMode"] = self.depMode!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.engineVersion != nil {
            map["EngineVersion"] = self.engineVersion!
        }
        if self.isColdStorage != nil {
            map["IsColdStorage"] = self.isColdStorage!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.restoreTime != nil {
            map["RestoreTime"] = self.restoreTime!
        }
        if self.securityIPList != nil {
            map["SecurityIPList"] = self.securityIPList!
        }
        if self.srcDBInstanceId != nil {
            map["SrcDBInstanceId"] = self.srcDBInstanceId!
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
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CloudType") && dict["CloudType"] != nil {
            self.cloudType = dict["CloudType"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! String
        }
        if dict.keys.contains("CoreDiskQuantity") && dict["CoreDiskQuantity"] != nil {
            self.coreDiskQuantity = dict["CoreDiskQuantity"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! String
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
            self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("DbInstanceConnType") && dict["DbInstanceConnType"] != nil {
            self.dbInstanceConnType = dict["DbInstanceConnType"] as! String
        }
        if dict.keys.contains("DbInstanceType") && dict["DbInstanceType"] != nil {
            self.dbInstanceType = dict["DbInstanceType"] as! String
        }
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("DepMode") && dict["DepMode"] != nil {
            self.depMode = dict["DepMode"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
            self.engineVersion = dict["EngineVersion"] as! String
        }
        if dict.keys.contains("IsColdStorage") && dict["IsColdStorage"] != nil {
            self.isColdStorage = dict["IsColdStorage"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RestoreTime") && dict["RestoreTime"] != nil {
            self.restoreTime = dict["RestoreTime"] as! String
        }
        if dict.keys.contains("SecurityIPList") && dict["SecurityIPList"] != nil {
            self.securityIPList = dict["SecurityIPList"] as! String
        }
        if dict.keys.contains("SrcDBInstanceId") && dict["SrcDBInstanceId"] != nil {
            self.srcDBInstanceId = dict["SrcDBInstanceId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var orderId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGlobalResourceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateGlobalResourceResponseBody : Tea.TeaModel {
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

public class CreateGlobalResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGlobalResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateGlobalResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHbaseSlbServerRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var slbServer: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.slbServer != nil {
            map["SlbServer"] = self.slbServer!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SlbServer") && dict["SlbServer"] != nil {
            self.slbServer = dict["SlbServer"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateHbaseSlbServerResponseBody : Tea.TeaModel {
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

public class CreateHbaseSlbServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHbaseSlbServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateHbaseSlbServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateSubscriptionRequest : Tea.TeaModel {
    public var destinationInstanceId: String?

    public var destinationInstanceRegionId: String?

    public var extraContext: String?

    public var mapping: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var slbServer: String?

    public var sourceInstanceId: String?

    public var sourceInstanceRegionId: String?

    public var subscriptionDescription: String?

    public var subscriptionType: String?

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
        if self.destinationInstanceId != nil {
            map["DestinationInstanceId"] = self.destinationInstanceId!
        }
        if self.destinationInstanceRegionId != nil {
            map["DestinationInstanceRegionId"] = self.destinationInstanceRegionId!
        }
        if self.extraContext != nil {
            map["ExtraContext"] = self.extraContext!
        }
        if self.mapping != nil {
            map["Mapping"] = self.mapping!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.slbServer != nil {
            map["SlbServer"] = self.slbServer!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.sourceInstanceRegionId != nil {
            map["SourceInstanceRegionId"] = self.sourceInstanceRegionId!
        }
        if self.subscriptionDescription != nil {
            map["SubscriptionDescription"] = self.subscriptionDescription!
        }
        if self.subscriptionType != nil {
            map["SubscriptionType"] = self.subscriptionType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationInstanceId") && dict["DestinationInstanceId"] != nil {
            self.destinationInstanceId = dict["DestinationInstanceId"] as! String
        }
        if dict.keys.contains("DestinationInstanceRegionId") && dict["DestinationInstanceRegionId"] != nil {
            self.destinationInstanceRegionId = dict["DestinationInstanceRegionId"] as! String
        }
        if dict.keys.contains("ExtraContext") && dict["ExtraContext"] != nil {
            self.extraContext = dict["ExtraContext"] as! String
        }
        if dict.keys.contains("Mapping") && dict["Mapping"] != nil {
            self.mapping = dict["Mapping"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SlbServer") && dict["SlbServer"] != nil {
            self.slbServer = dict["SlbServer"] as! String
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("SourceInstanceRegionId") && dict["SourceInstanceRegionId"] != nil {
            self.sourceInstanceRegionId = dict["SourceInstanceRegionId"] as! String
        }
        if dict.keys.contains("SubscriptionDescription") && dict["SubscriptionDescription"] != nil {
            self.subscriptionDescription = dict["SubscriptionDescription"] as! String
        }
        if dict.keys.contains("SubscriptionType") && dict["SubscriptionType"] != nil {
            self.subscriptionType = dict["SubscriptionType"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateSubscriptionResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var subscriptionId: String?

    public override init() {
        super.init()
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
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class CreateSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateSubscriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGlobalResourceRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceName: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var resourceType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceName") && dict["ResourceName"] != nil {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceType") && dict["ResourceType"] != nil {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteGlobalResourceResponseBody : Tea.TeaModel {
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

public class DeleteGlobalResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGlobalResourceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteGlobalResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteHbaseSlbServerRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var slbServer: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.slbServer != nil {
            map["SlbServer"] = self.slbServer!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SlbServer") && dict["SlbServer"] != nil {
            self.slbServer = dict["SlbServer"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteHbaseSlbServerResponseBody : Tea.TeaModel {
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

public class DeleteHbaseSlbServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteHbaseSlbServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteHbaseSlbServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteServerlessInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteServerlessInstanceResponseBody : Tea.TeaModel {
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

public class DeleteServerlessInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServerlessInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteServerlessInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserHdfsInfoRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nameService: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.nameService != nil {
            map["NameService"] = self.nameService!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NameService") && dict["NameService"] != nil {
            self.nameService = dict["NameService"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DeleteUserHdfsInfoResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DeleteUserHdfsInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserHdfsInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserHdfsInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeBackupPolicyRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeBackupPolicyResponseBody : Tea.TeaModel {
    public var backupRetentionPeriod: String?

    public var preferredBackupEndTimeUTC: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupStartTimeUTC: String?

    public var preferredBackupTime: String?

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
        if self.backupRetentionPeriod != nil {
            map["BackupRetentionPeriod"] = self.backupRetentionPeriod!
        }
        if self.preferredBackupEndTimeUTC != nil {
            map["PreferredBackupEndTimeUTC"] = self.preferredBackupEndTimeUTC!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupStartTimeUTC != nil {
            map["PreferredBackupStartTimeUTC"] = self.preferredBackupStartTimeUTC!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupRetentionPeriod") && dict["BackupRetentionPeriod"] != nil {
            self.backupRetentionPeriod = dict["BackupRetentionPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupEndTimeUTC") && dict["PreferredBackupEndTimeUTC"] != nil {
            self.preferredBackupEndTimeUTC = dict["PreferredBackupEndTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupStartTimeUTC") && dict["PreferredBackupStartTimeUTC"] != nil {
            self.preferredBackupStartTimeUTC = dict["PreferredBackupStartTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

public class DescribeBackupsRequest : Tea.TeaModel {
    public var backupId: Int32?

    public var clusterId: String?

    public var endTime: String?

    public var endTimeUTC: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var startTime: String?

    public var startTimeUTC: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.endTimeUTC != nil {
            map["EndTimeUTC"] = self.endTimeUTC!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.startTimeUTC != nil {
            map["StartTimeUTC"] = self.startTimeUTC!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
            self.backupId = dict["BackupId"] as! Int32
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EndTimeUTC") && dict["EndTimeUTC"] != nil {
            self.endTimeUTC = dict["EndTimeUTC"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("StartTimeUTC") && dict["StartTimeUTC"] != nil {
            self.startTimeUTC = dict["StartTimeUTC"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeBackupsResponseBody : Tea.TeaModel {
    public class Backups : Tea.TeaModel {
        public class Backup : Tea.TeaModel {
            public var backupDBNames: String?

            public var backupDownloadURL: String?

            public var backupEndTime: String?

            public var backupEndTimeUTC: String?

            public var backupId: Int32?

            public var backupMethod: String?

            public var backupMode: String?

            public var backupSize: String?

            public var backupStartTime: String?

            public var backupStartTimeUTC: String?

            public var backupStatus: String?

            public var backupType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.backupDBNames != nil {
                    map["BackupDBNames"] = self.backupDBNames!
                }
                if self.backupDownloadURL != nil {
                    map["BackupDownloadURL"] = self.backupDownloadURL!
                }
                if self.backupEndTime != nil {
                    map["BackupEndTime"] = self.backupEndTime!
                }
                if self.backupEndTimeUTC != nil {
                    map["BackupEndTimeUTC"] = self.backupEndTimeUTC!
                }
                if self.backupId != nil {
                    map["BackupId"] = self.backupId!
                }
                if self.backupMethod != nil {
                    map["BackupMethod"] = self.backupMethod!
                }
                if self.backupMode != nil {
                    map["BackupMode"] = self.backupMode!
                }
                if self.backupSize != nil {
                    map["BackupSize"] = self.backupSize!
                }
                if self.backupStartTime != nil {
                    map["BackupStartTime"] = self.backupStartTime!
                }
                if self.backupStartTimeUTC != nil {
                    map["BackupStartTimeUTC"] = self.backupStartTimeUTC!
                }
                if self.backupStatus != nil {
                    map["BackupStatus"] = self.backupStatus!
                }
                if self.backupType != nil {
                    map["BackupType"] = self.backupType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BackupDBNames") && dict["BackupDBNames"] != nil {
                    self.backupDBNames = dict["BackupDBNames"] as! String
                }
                if dict.keys.contains("BackupDownloadURL") && dict["BackupDownloadURL"] != nil {
                    self.backupDownloadURL = dict["BackupDownloadURL"] as! String
                }
                if dict.keys.contains("BackupEndTime") && dict["BackupEndTime"] != nil {
                    self.backupEndTime = dict["BackupEndTime"] as! String
                }
                if dict.keys.contains("BackupEndTimeUTC") && dict["BackupEndTimeUTC"] != nil {
                    self.backupEndTimeUTC = dict["BackupEndTimeUTC"] as! String
                }
                if dict.keys.contains("BackupId") && dict["BackupId"] != nil {
                    self.backupId = dict["BackupId"] as! Int32
                }
                if dict.keys.contains("BackupMethod") && dict["BackupMethod"] != nil {
                    self.backupMethod = dict["BackupMethod"] as! String
                }
                if dict.keys.contains("BackupMode") && dict["BackupMode"] != nil {
                    self.backupMode = dict["BackupMode"] as! String
                }
                if dict.keys.contains("BackupSize") && dict["BackupSize"] != nil {
                    self.backupSize = dict["BackupSize"] as! String
                }
                if dict.keys.contains("BackupStartTime") && dict["BackupStartTime"] != nil {
                    self.backupStartTime = dict["BackupStartTime"] as! String
                }
                if dict.keys.contains("BackupStartTimeUTC") && dict["BackupStartTimeUTC"] != nil {
                    self.backupStartTimeUTC = dict["BackupStartTimeUTC"] as! String
                }
                if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
                    self.backupStatus = dict["BackupStatus"] as! String
                }
                if dict.keys.contains("BackupType") && dict["BackupType"] != nil {
                    self.backupType = dict["BackupType"] as! String
                }
            }
        }
        public var backup: [DescribeBackupsResponseBody.Backups.Backup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backup != nil {
                var tmp : [Any] = []
                for k in self.backup! {
                    tmp.append(k.toMap())
                }
                map["Backup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Backup") && dict["Backup"] != nil {
                var tmp : [DescribeBackupsResponseBody.Backups.Backup] = []
                for v in dict["Backup"] as! [Any] {
                    var model = DescribeBackupsResponseBody.Backups.Backup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.backup = tmp
            }
        }
    }
    public var backups: DescribeBackupsResponseBody.Backups?

    public var enableStatus: String?

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
        try self.backups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.backups != nil {
            map["Backups"] = self.backups?.toMap()
        }
        if self.enableStatus != nil {
            map["EnableStatus"] = self.enableStatus!
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
        if dict.keys.contains("Backups") && dict["Backups"] != nil {
            var model = DescribeBackupsResponseBody.Backups()
            model.fromMap(dict["Backups"] as! [String: Any])
            self.backups = model
        }
        if dict.keys.contains("EnableStatus") && dict["EnableStatus"] != nil {
            self.enableStatus = dict["EnableStatus"] as! String
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeBackupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBackupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeBackupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterAttributeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterAttributeResponseBody : Tea.TeaModel {
    public class ConnectionInfo : Tea.TeaModel {
        public class ZKClassicConnectionStringList : Tea.TeaModel {
            public var string: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.string != nil {
                    map["String"] = self.string!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("String") && dict["String"] != nil {
                    self.string = dict["String"] as! [String]
                }
            }
        }
        public class ZKConnectionStringList : Tea.TeaModel {
            public var string: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.string != nil {
                    map["String"] = self.string!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("String") && dict["String"] != nil {
                    self.string = dict["String"] as! [String]
                }
            }
        }
        public class ZKInnerConnectionStringList : Tea.TeaModel {
            public var string: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.string != nil {
                    map["String"] = self.string!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("String") && dict["String"] != nil {
                    self.string = dict["String"] as! [String]
                }
            }
        }
        public class ZKPublicConnectionStringList : Tea.TeaModel {
            public var string: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.string != nil {
                    map["String"] = self.string!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("String") && dict["String"] != nil {
                    self.string = dict["String"] as! [String]
                }
            }
        }
        public var haRestConnectionString: String?

        public var haRestPort: String?

        public var haThriftConnectionString: String?

        public var haThriftPort: String?

        public var thriftConnectionString: String?

        public var thriftPort: String?

        public var UIProxyConnectionString: String?

        public var ZKClassicConnectionStringList: DescribeClusterAttributeResponseBody.ConnectionInfo.ZKClassicConnectionStringList?

        public var ZKConnectionStringList: DescribeClusterAttributeResponseBody.ConnectionInfo.ZKConnectionStringList?

        public var ZKInnerConnectionStringList: DescribeClusterAttributeResponseBody.ConnectionInfo.ZKInnerConnectionStringList?

        public var ZKPort: Int32?

        public var ZKPublicConnectionStringList: DescribeClusterAttributeResponseBody.ConnectionInfo.ZKPublicConnectionStringList?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.ZKClassicConnectionStringList?.validate()
            try self.ZKConnectionStringList?.validate()
            try self.ZKInnerConnectionStringList?.validate()
            try self.ZKPublicConnectionStringList?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.haRestConnectionString != nil {
                map["HaRestConnectionString"] = self.haRestConnectionString!
            }
            if self.haRestPort != nil {
                map["HaRestPort"] = self.haRestPort!
            }
            if self.haThriftConnectionString != nil {
                map["HaThriftConnectionString"] = self.haThriftConnectionString!
            }
            if self.haThriftPort != nil {
                map["HaThriftPort"] = self.haThriftPort!
            }
            if self.thriftConnectionString != nil {
                map["ThriftConnectionString"] = self.thriftConnectionString!
            }
            if self.thriftPort != nil {
                map["ThriftPort"] = self.thriftPort!
            }
            if self.UIProxyConnectionString != nil {
                map["UIProxyConnectionString"] = self.UIProxyConnectionString!
            }
            if self.ZKClassicConnectionStringList != nil {
                map["ZKClassicConnectionStringList"] = self.ZKClassicConnectionStringList?.toMap()
            }
            if self.ZKConnectionStringList != nil {
                map["ZKConnectionStringList"] = self.ZKConnectionStringList?.toMap()
            }
            if self.ZKInnerConnectionStringList != nil {
                map["ZKInnerConnectionStringList"] = self.ZKInnerConnectionStringList?.toMap()
            }
            if self.ZKPort != nil {
                map["ZKPort"] = self.ZKPort!
            }
            if self.ZKPublicConnectionStringList != nil {
                map["ZKPublicConnectionStringList"] = self.ZKPublicConnectionStringList?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("HaRestConnectionString") && dict["HaRestConnectionString"] != nil {
                self.haRestConnectionString = dict["HaRestConnectionString"] as! String
            }
            if dict.keys.contains("HaRestPort") && dict["HaRestPort"] != nil {
                self.haRestPort = dict["HaRestPort"] as! String
            }
            if dict.keys.contains("HaThriftConnectionString") && dict["HaThriftConnectionString"] != nil {
                self.haThriftConnectionString = dict["HaThriftConnectionString"] as! String
            }
            if dict.keys.contains("HaThriftPort") && dict["HaThriftPort"] != nil {
                self.haThriftPort = dict["HaThriftPort"] as! String
            }
            if dict.keys.contains("ThriftConnectionString") && dict["ThriftConnectionString"] != nil {
                self.thriftConnectionString = dict["ThriftConnectionString"] as! String
            }
            if dict.keys.contains("ThriftPort") && dict["ThriftPort"] != nil {
                self.thriftPort = dict["ThriftPort"] as! String
            }
            if dict.keys.contains("UIProxyConnectionString") && dict["UIProxyConnectionString"] != nil {
                self.UIProxyConnectionString = dict["UIProxyConnectionString"] as! String
            }
            if dict.keys.contains("ZKClassicConnectionStringList") && dict["ZKClassicConnectionStringList"] != nil {
                var model = DescribeClusterAttributeResponseBody.ConnectionInfo.ZKClassicConnectionStringList()
                model.fromMap(dict["ZKClassicConnectionStringList"] as! [String: Any])
                self.ZKClassicConnectionStringList = model
            }
            if dict.keys.contains("ZKConnectionStringList") && dict["ZKConnectionStringList"] != nil {
                var model = DescribeClusterAttributeResponseBody.ConnectionInfo.ZKConnectionStringList()
                model.fromMap(dict["ZKConnectionStringList"] as! [String: Any])
                self.ZKConnectionStringList = model
            }
            if dict.keys.contains("ZKInnerConnectionStringList") && dict["ZKInnerConnectionStringList"] != nil {
                var model = DescribeClusterAttributeResponseBody.ConnectionInfo.ZKInnerConnectionStringList()
                model.fromMap(dict["ZKInnerConnectionStringList"] as! [String: Any])
                self.ZKInnerConnectionStringList = model
            }
            if dict.keys.contains("ZKPort") && dict["ZKPort"] != nil {
                self.ZKPort = dict["ZKPort"] as! Int32
            }
            if dict.keys.contains("ZKPublicConnectionStringList") && dict["ZKPublicConnectionStringList"] != nil {
                var model = DescribeClusterAttributeResponseBody.ConnectionInfo.ZKPublicConnectionStringList()
                model.fromMap(dict["ZKPublicConnectionStringList"] as! [String: Any])
                self.ZKPublicConnectionStringList = model
            }
        }
    }
    public class NetInfo : Tea.TeaModel {
        public var innerIpAddress: String?

        public var netType: String?

        public var publicIpAddress: String?

        public var securityIpList: String?

        public var vSwitchId: String?

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
            if self.innerIpAddress != nil {
                map["InnerIpAddress"] = self.innerIpAddress!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            if self.publicIpAddress != nil {
                map["PublicIpAddress"] = self.publicIpAddress!
            }
            if self.securityIpList != nil {
                map["SecurityIpList"] = self.securityIpList!
            }
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InnerIpAddress") && dict["InnerIpAddress"] != nil {
                self.innerIpAddress = dict["InnerIpAddress"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
            }
            if dict.keys.contains("PublicIpAddress") && dict["PublicIpAddress"] != nil {
                self.publicIpAddress = dict["PublicIpAddress"] as! String
            }
            if dict.keys.contains("SecurityIpList") && dict["SecurityIpList"] != nil {
                self.securityIpList = dict["SecurityIpList"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public class NodeList : Tea.TeaModel {
        public class Node : Tea.TeaModel {
            public class DaemonList : Tea.TeaModel {
                public class Daemon : Tea.TeaModel {
                    public var daemonName: String?

                    public var daemonStatus: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.daemonName != nil {
                            map["DaemonName"] = self.daemonName!
                        }
                        if self.daemonStatus != nil {
                            map["DaemonStatus"] = self.daemonStatus!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DaemonName") && dict["DaemonName"] != nil {
                            self.daemonName = dict["DaemonName"] as! String
                        }
                        if dict.keys.contains("DaemonStatus") && dict["DaemonStatus"] != nil {
                            self.daemonStatus = dict["DaemonStatus"] as! String
                        }
                    }
                }
                public var daemon: [DescribeClusterAttributeResponseBody.NodeList.Node.DaemonList.Daemon]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.daemon != nil {
                        var tmp : [Any] = []
                        for k in self.daemon! {
                            tmp.append(k.toMap())
                        }
                        map["Daemon"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Daemon") && dict["Daemon"] != nil {
                        var tmp : [DescribeClusterAttributeResponseBody.NodeList.Node.DaemonList.Daemon] = []
                        for v in dict["Daemon"] as! [Any] {
                            var model = DescribeClusterAttributeResponseBody.NodeList.Node.DaemonList.Daemon()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.daemon = tmp
                    }
                }
            }
            public var daemonList: DescribeClusterAttributeResponseBody.NodeList.Node.DaemonList?

            public var memStore: String?

            public var nodeDiskQuantity: String?

            public var nodeDiskSize: String?

            public var nodeDiskType: String?

            public var nodeId: String?

            public var nodeInstanceType: String?

            public var nodeStatus: String?

            public var nodeType: String?

            public var regionQuantity: String?

            public var serviceType: String?

            public var storeFile: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.daemonList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.daemonList != nil {
                    map["DaemonList"] = self.daemonList?.toMap()
                }
                if self.memStore != nil {
                    map["MemStore"] = self.memStore!
                }
                if self.nodeDiskQuantity != nil {
                    map["NodeDiskQuantity"] = self.nodeDiskQuantity!
                }
                if self.nodeDiskSize != nil {
                    map["NodeDiskSize"] = self.nodeDiskSize!
                }
                if self.nodeDiskType != nil {
                    map["NodeDiskType"] = self.nodeDiskType!
                }
                if self.nodeId != nil {
                    map["NodeId"] = self.nodeId!
                }
                if self.nodeInstanceType != nil {
                    map["NodeInstanceType"] = self.nodeInstanceType!
                }
                if self.nodeStatus != nil {
                    map["NodeStatus"] = self.nodeStatus!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.regionQuantity != nil {
                    map["RegionQuantity"] = self.regionQuantity!
                }
                if self.serviceType != nil {
                    map["ServiceType"] = self.serviceType!
                }
                if self.storeFile != nil {
                    map["StoreFile"] = self.storeFile!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DaemonList") && dict["DaemonList"] != nil {
                    var model = DescribeClusterAttributeResponseBody.NodeList.Node.DaemonList()
                    model.fromMap(dict["DaemonList"] as! [String: Any])
                    self.daemonList = model
                }
                if dict.keys.contains("MemStore") && dict["MemStore"] != nil {
                    self.memStore = dict["MemStore"] as! String
                }
                if dict.keys.contains("NodeDiskQuantity") && dict["NodeDiskQuantity"] != nil {
                    self.nodeDiskQuantity = dict["NodeDiskQuantity"] as! String
                }
                if dict.keys.contains("NodeDiskSize") && dict["NodeDiskSize"] != nil {
                    self.nodeDiskSize = dict["NodeDiskSize"] as! String
                }
                if dict.keys.contains("NodeDiskType") && dict["NodeDiskType"] != nil {
                    self.nodeDiskType = dict["NodeDiskType"] as! String
                }
                if dict.keys.contains("NodeId") && dict["NodeId"] != nil {
                    self.nodeId = dict["NodeId"] as! String
                }
                if dict.keys.contains("NodeInstanceType") && dict["NodeInstanceType"] != nil {
                    self.nodeInstanceType = dict["NodeInstanceType"] as! String
                }
                if dict.keys.contains("NodeStatus") && dict["NodeStatus"] != nil {
                    self.nodeStatus = dict["NodeStatus"] as! String
                }
                if dict.keys.contains("NodeType") && dict["NodeType"] != nil {
                    self.nodeType = dict["NodeType"] as! String
                }
                if dict.keys.contains("RegionQuantity") && dict["RegionQuantity"] != nil {
                    self.regionQuantity = dict["RegionQuantity"] as! String
                }
                if dict.keys.contains("ServiceType") && dict["ServiceType"] != nil {
                    self.serviceType = dict["ServiceType"] as! String
                }
                if dict.keys.contains("StoreFile") && dict["StoreFile"] != nil {
                    self.storeFile = dict["StoreFile"] as! String
                }
            }
        }
        public var node: [DescribeClusterAttributeResponseBody.NodeList.Node]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.node != nil {
                var tmp : [Any] = []
                for k in self.node! {
                    tmp.append(k.toMap())
                }
                map["Node"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Node") && dict["Node"] != nil {
                var tmp : [DescribeClusterAttributeResponseBody.NodeList.Node] = []
                for v in dict["Node"] as! [Any] {
                    var model = DescribeClusterAttributeResponseBody.NodeList.Node()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.node = tmp
            }
        }
    }
    public var autoRenew: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var coldStorageStatus: String?

    public var connectionInfo: DescribeClusterAttributeResponseBody.ConnectionInfo?

    public var coreDiskQuantity: Int32?

    public var coreDiskSize: String?

    public var coreDiskType: String?

    public var coreInstanceQuantity: Int32?

    public var coreInstanceType: String?

    public var createTime: String?

    public var expireTime: String?

    public var haType: String?

    public var hasUser: String?

    public var lockMode: String?

    public var mainVersion: String?

    public var masterDiskSize: Int32?

    public var masterDiskType: String?

    public var masterInstanceType: String?

    public var minorVersion: String?

    public var netInfo: DescribeClusterAttributeResponseBody.NetInfo?

    public var nodeList: DescribeClusterAttributeResponseBody.NodeList?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var updateStatus: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.connectionInfo?.validate()
        try self.netInfo?.validate()
        try self.nodeList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.coldStorageStatus != nil {
            map["ColdStorageStatus"] = self.coldStorageStatus!
        }
        if self.connectionInfo != nil {
            map["ConnectionInfo"] = self.connectionInfo?.toMap()
        }
        if self.coreDiskQuantity != nil {
            map["CoreDiskQuantity"] = self.coreDiskQuantity!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceQuantity != nil {
            map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.haType != nil {
            map["HaType"] = self.haType!
        }
        if self.hasUser != nil {
            map["HasUser"] = self.hasUser!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.mainVersion != nil {
            map["MainVersion"] = self.mainVersion!
        }
        if self.masterDiskSize != nil {
            map["MasterDiskSize"] = self.masterDiskSize!
        }
        if self.masterDiskType != nil {
            map["MasterDiskType"] = self.masterDiskType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.minorVersion != nil {
            map["MinorVersion"] = self.minorVersion!
        }
        if self.netInfo != nil {
            map["NetInfo"] = self.netInfo?.toMap()
        }
        if self.nodeList != nil {
            map["NodeList"] = self.nodeList?.toMap()
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateStatus != nil {
            map["UpdateStatus"] = self.updateStatus!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("ColdStorageStatus") && dict["ColdStorageStatus"] != nil {
            self.coldStorageStatus = dict["ColdStorageStatus"] as! String
        }
        if dict.keys.contains("ConnectionInfo") && dict["ConnectionInfo"] != nil {
            var model = DescribeClusterAttributeResponseBody.ConnectionInfo()
            model.fromMap(dict["ConnectionInfo"] as! [String: Any])
            self.connectionInfo = model
        }
        if dict.keys.contains("CoreDiskQuantity") && dict["CoreDiskQuantity"] != nil {
            self.coreDiskQuantity = dict["CoreDiskQuantity"] as! Int32
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! String
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
            self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! Int32
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("HaType") && dict["HaType"] != nil {
            self.haType = dict["HaType"] as! String
        }
        if dict.keys.contains("HasUser") && dict["HasUser"] != nil {
            self.hasUser = dict["HasUser"] as! String
        }
        if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
            self.lockMode = dict["LockMode"] as! String
        }
        if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
            self.mainVersion = dict["MainVersion"] as! String
        }
        if dict.keys.contains("MasterDiskSize") && dict["MasterDiskSize"] != nil {
            self.masterDiskSize = dict["MasterDiskSize"] as! Int32
        }
        if dict.keys.contains("MasterDiskType") && dict["MasterDiskType"] != nil {
            self.masterDiskType = dict["MasterDiskType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MinorVersion") && dict["MinorVersion"] != nil {
            self.minorVersion = dict["MinorVersion"] as! String
        }
        if dict.keys.contains("NetInfo") && dict["NetInfo"] != nil {
            var model = DescribeClusterAttributeResponseBody.NetInfo()
            model.fromMap(dict["NetInfo"] as! [String: Any])
            self.netInfo = model
        }
        if dict.keys.contains("NodeList") && dict["NodeList"] != nil {
            var model = DescribeClusterAttributeResponseBody.NodeList()
            model.fromMap(dict["NodeList"] as! [String: Any])
            self.nodeList = model
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateStatus") && dict["UpdateStatus"] != nil {
            self.updateStatus = dict["UpdateStatus"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterConnectAddrsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterConnectAddrsResponseBody : Tea.TeaModel {
    public class ServiceConnAddrs : Tea.TeaModel {
        public class ServiceConnAddr : Tea.TeaModel {
            public class ConnAddrInfo : Tea.TeaModel {
                public var connAddr: String?

                public var connAddrPort: String?

                public var netType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connAddr != nil {
                        map["ConnAddr"] = self.connAddr!
                    }
                    if self.connAddrPort != nil {
                        map["ConnAddrPort"] = self.connAddrPort!
                    }
                    if self.netType != nil {
                        map["NetType"] = self.netType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                        self.connAddr = dict["ConnAddr"] as! String
                    }
                    if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                        self.connAddrPort = dict["ConnAddrPort"] as! String
                    }
                    if dict.keys.contains("NetType") && dict["NetType"] != nil {
                        self.netType = dict["NetType"] as! String
                    }
                }
            }
            public var connAddrInfo: DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs.ServiceConnAddr.ConnAddrInfo?

            public var connType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connAddrInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddrInfo != nil {
                    map["ConnAddrInfo"] = self.connAddrInfo?.toMap()
                }
                if self.connType != nil {
                    map["ConnType"] = self.connType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddrInfo") && dict["ConnAddrInfo"] != nil {
                    var model = DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs.ServiceConnAddr.ConnAddrInfo()
                    model.fromMap(dict["ConnAddrInfo"] as! [String: Any])
                    self.connAddrInfo = model
                }
                if dict.keys.contains("ConnType") && dict["ConnType"] != nil {
                    self.connType = dict["ConnType"] as! String
                }
            }
        }
        public var serviceConnAddr: [DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs.ServiceConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.serviceConnAddr != nil {
                var tmp : [Any] = []
                for k in self.serviceConnAddr! {
                    tmp.append(k.toMap())
                }
                map["ServiceConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServiceConnAddr") && dict["ServiceConnAddr"] != nil {
                var tmp : [DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs.ServiceConnAddr] = []
                for v in dict["ServiceConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs.ServiceConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.serviceConnAddr = tmp
            }
        }
    }
    public class SlbConnAddrs : Tea.TeaModel {
        public class SlbConnAddr : Tea.TeaModel {
            public class ConnAddrInfo : Tea.TeaModel {
                public var connAddr: String?

                public var connAddrPort: String?

                public var netType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.connAddr != nil {
                        map["ConnAddr"] = self.connAddr!
                    }
                    if self.connAddrPort != nil {
                        map["ConnAddrPort"] = self.connAddrPort!
                    }
                    if self.netType != nil {
                        map["NetType"] = self.netType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                        self.connAddr = dict["ConnAddr"] as! String
                    }
                    if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                        self.connAddrPort = dict["ConnAddrPort"] as! String
                    }
                    if dict.keys.contains("NetType") && dict["NetType"] != nil {
                        self.netType = dict["NetType"] as! String
                    }
                }
            }
            public var connAddrInfo: DescribeClusterConnectAddrsResponseBody.SlbConnAddrs.SlbConnAddr.ConnAddrInfo?

            public var slbType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.connAddrInfo?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddrInfo != nil {
                    map["ConnAddrInfo"] = self.connAddrInfo?.toMap()
                }
                if self.slbType != nil {
                    map["SlbType"] = self.slbType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddrInfo") && dict["ConnAddrInfo"] != nil {
                    var model = DescribeClusterConnectAddrsResponseBody.SlbConnAddrs.SlbConnAddr.ConnAddrInfo()
                    model.fromMap(dict["ConnAddrInfo"] as! [String: Any])
                    self.connAddrInfo = model
                }
                if dict.keys.contains("SlbType") && dict["SlbType"] != nil {
                    self.slbType = dict["SlbType"] as! String
                }
            }
        }
        public var slbConnAddr: [DescribeClusterConnectAddrsResponseBody.SlbConnAddrs.SlbConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.slbConnAddr != nil {
                var tmp : [Any] = []
                for k in self.slbConnAddr! {
                    tmp.append(k.toMap())
                }
                map["SlbConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SlbConnAddr") && dict["SlbConnAddr"] != nil {
                var tmp : [DescribeClusterConnectAddrsResponseBody.SlbConnAddrs.SlbConnAddr] = []
                for v in dict["SlbConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectAddrsResponseBody.SlbConnAddrs.SlbConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.slbConnAddr = tmp
            }
        }
    }
    public class ThriftConn : Tea.TeaModel {
        public var connAddr: String?

        public var connAddrPort: String?

        public var netType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAddr != nil {
                map["ConnAddr"] = self.connAddr!
            }
            if self.connAddrPort != nil {
                map["ConnAddrPort"] = self.connAddrPort!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                self.connAddr = dict["ConnAddr"] as! String
            }
            if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                self.connAddrPort = dict["ConnAddrPort"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
            }
        }
    }
    public class UiProxyConnAddrInfo : Tea.TeaModel {
        public var connAddr: String?

        public var connAddrPort: String?

        public var netType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.connAddr != nil {
                map["ConnAddr"] = self.connAddr!
            }
            if self.connAddrPort != nil {
                map["ConnAddrPort"] = self.connAddrPort!
            }
            if self.netType != nil {
                map["NetType"] = self.netType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                self.connAddr = dict["ConnAddr"] as! String
            }
            if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                self.connAddrPort = dict["ConnAddrPort"] as! String
            }
            if dict.keys.contains("NetType") && dict["NetType"] != nil {
                self.netType = dict["NetType"] as! String
            }
        }
    }
    public class ZkConnAddrs : Tea.TeaModel {
        public class ZkConnAddr : Tea.TeaModel {
            public var connAddr: String?

            public var connAddrPort: String?

            public var netType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.connAddr != nil {
                    map["ConnAddr"] = self.connAddr!
                }
                if self.connAddrPort != nil {
                    map["ConnAddrPort"] = self.connAddrPort!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ConnAddr") && dict["ConnAddr"] != nil {
                    self.connAddr = dict["ConnAddr"] as! String
                }
                if dict.keys.contains("ConnAddrPort") && dict["ConnAddrPort"] != nil {
                    self.connAddrPort = dict["ConnAddrPort"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
                }
            }
        }
        public var zkConnAddr: [DescribeClusterConnectAddrsResponseBody.ZkConnAddrs.ZkConnAddr]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.zkConnAddr != nil {
                var tmp : [Any] = []
                for k in self.zkConnAddr! {
                    tmp.append(k.toMap())
                }
                map["ZkConnAddr"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ZkConnAddr") && dict["ZkConnAddr"] != nil {
                var tmp : [DescribeClusterConnectAddrsResponseBody.ZkConnAddrs.ZkConnAddr] = []
                for v in dict["ZkConnAddr"] as! [Any] {
                    var model = DescribeClusterConnectAddrsResponseBody.ZkConnAddrs.ZkConnAddr()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.zkConnAddr = tmp
            }
        }
    }
    public var dbType: String?

    public var isMultimod: String?

    public var netType: String?

    public var requestId: String?

    public var serviceConnAddrs: DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs?

    public var slbConnAddrs: DescribeClusterConnectAddrsResponseBody.SlbConnAddrs?

    public var thriftConn: DescribeClusterConnectAddrsResponseBody.ThriftConn?

    public var uiProxyConnAddrInfo: DescribeClusterConnectAddrsResponseBody.UiProxyConnAddrInfo?

    public var vSwitchId: String?

    public var vpcId: String?

    public var zkConnAddrs: DescribeClusterConnectAddrsResponseBody.ZkConnAddrs?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.serviceConnAddrs?.validate()
        try self.slbConnAddrs?.validate()
        try self.thriftConn?.validate()
        try self.uiProxyConnAddrInfo?.validate()
        try self.zkConnAddrs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.isMultimod != nil {
            map["IsMultimod"] = self.isMultimod!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceConnAddrs != nil {
            map["ServiceConnAddrs"] = self.serviceConnAddrs?.toMap()
        }
        if self.slbConnAddrs != nil {
            map["SlbConnAddrs"] = self.slbConnAddrs?.toMap()
        }
        if self.thriftConn != nil {
            map["ThriftConn"] = self.thriftConn?.toMap()
        }
        if self.uiProxyConnAddrInfo != nil {
            map["UiProxyConnAddrInfo"] = self.uiProxyConnAddrInfo?.toMap()
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.zkConnAddrs != nil {
            map["ZkConnAddrs"] = self.zkConnAddrs?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("IsMultimod") && dict["IsMultimod"] != nil {
            self.isMultimod = dict["IsMultimod"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceConnAddrs") && dict["ServiceConnAddrs"] != nil {
            var model = DescribeClusterConnectAddrsResponseBody.ServiceConnAddrs()
            model.fromMap(dict["ServiceConnAddrs"] as! [String: Any])
            self.serviceConnAddrs = model
        }
        if dict.keys.contains("SlbConnAddrs") && dict["SlbConnAddrs"] != nil {
            var model = DescribeClusterConnectAddrsResponseBody.SlbConnAddrs()
            model.fromMap(dict["SlbConnAddrs"] as! [String: Any])
            self.slbConnAddrs = model
        }
        if dict.keys.contains("ThriftConn") && dict["ThriftConn"] != nil {
            var model = DescribeClusterConnectAddrsResponseBody.ThriftConn()
            model.fromMap(dict["ThriftConn"] as! [String: Any])
            self.thriftConn = model
        }
        if dict.keys.contains("UiProxyConnAddrInfo") && dict["UiProxyConnAddrInfo"] != nil {
            var model = DescribeClusterConnectAddrsResponseBody.UiProxyConnAddrInfo()
            model.fromMap(dict["UiProxyConnAddrInfo"] as! [String: Any])
            self.uiProxyConnAddrInfo = model
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZkConnAddrs") && dict["ZkConnAddrs"] != nil {
            var model = DescribeClusterConnectAddrsResponseBody.ZkConnAddrs()
            model.fromMap(dict["ZkConnAddrs"] as! [String: Any])
            self.zkConnAddrs = model
        }
    }
}

public class DescribeClusterConnectAddrsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterConnectAddrsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterConnectAddrsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterListRequest : Tea.TeaModel {
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
    public var clusterId: String?

    public var clusterName: String?

    public var dbType: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var statusList: [String]?

    public var tag: [DescribeClusterListRequest.Tag]?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.statusList != nil {
            map["StatusList"] = self.statusList!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("StatusList") && dict["StatusList"] != nil {
            self.statusList = dict["StatusList"] as! [String]
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
            var tmp : [DescribeClusterListRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeClusterListRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterListResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public class Tags : Tea.TeaModel {
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
                public var tag: [DescribeClusterListResponseBody.ClusterList.Cluster.Tags.Tag]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
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
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
                        var tmp : [DescribeClusterListResponseBody.ClusterList.Cluster.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeClusterListResponseBody.ClusterList.Cluster.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var clusterId: String?

            public var clusterName: String?

            public var clusterType: String?

            public var coreDiskSize: String?

            public var coreDiskType: String?

            public var coreInstanceQuantity: Int32?

            public var createTime: String?

            public var dbType: String?

            public var expireTime: String?

            public var lockMode: String?

            public var mainVersion: String?

            public var netType: String?

            public var payType: String?

            public var reason: String?

            public var regionId: String?

            public var status: String?

            public var tags: DescribeClusterListResponseBody.ClusterList.Cluster.Tags?

            public var userId: String?

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
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.coreDiskSize != nil {
                    map["CoreDiskSize"] = self.coreDiskSize!
                }
                if self.coreDiskType != nil {
                    map["CoreDiskType"] = self.coreDiskType!
                }
                if self.coreInstanceQuantity != nil {
                    map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dbType != nil {
                    map["DbType"] = self.dbType!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.mainVersion != nil {
                    map["MainVersion"] = self.mainVersion!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
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
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
                    self.coreDiskSize = dict["CoreDiskSize"] as! String
                }
                if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
                    self.coreDiskType = dict["CoreDiskType"] as! String
                }
                if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
                    self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! Int32
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DbType") && dict["DbType"] != nil {
                    self.dbType = dict["DbType"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
                    self.mainVersion = dict["MainVersion"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeClusterListResponseBody.ClusterList.Cluster.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var cluster: [DescribeClusterListResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [DescribeClusterListResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = DescribeClusterListResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: DescribeClusterListResponseBody.ClusterList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = DescribeClusterListResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class DescribeClusterListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterModelRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterModelResponseBody : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
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
        public var tag: [DescribeClusterModelResponseBody.Tags.Tag]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
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
            if dict.keys.contains("Tag") && dict["Tag"] != nil {
                var tmp : [DescribeClusterModelResponseBody.Tags.Tag] = []
                for v in dict["Tag"] as! [Any] {
                    var model = DescribeClusterModelResponseBody.Tags.Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tag = tmp
            }
        }
    }
    public var autoRenew: String?

    public var backupStatus: String?

    public var clusterId: String?

    public var clusterName: String?

    public var clusterType: String?

    public var coldStorageStatus: String?

    public var coreDiskQuantity: Int32?

    public var coreDiskSize: String?

    public var coreDiskType: String?

    public var coreInstanceQuantity: Int32?

    public var coreInstanceType: String?

    public var createTime: String?

    public var dbType: String?

    public var expireTime: String?

    public var haType: String?

    public var hasUser: String?

    public var isMultimod: String?

    public var lockMode: String?

    public var mainVersion: String?

    public var masterDiskSize: Int32?

    public var masterDiskType: String?

    public var masterInstanceType: String?

    public var minorVersion: String?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var status: String?

    public var tags: DescribeClusterModelResponseBody.Tags?

    public var updateStatus: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.tags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.backupStatus != nil {
            map["BackupStatus"] = self.backupStatus!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.coldStorageStatus != nil {
            map["ColdStorageStatus"] = self.coldStorageStatus!
        }
        if self.coreDiskQuantity != nil {
            map["CoreDiskQuantity"] = self.coreDiskQuantity!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceQuantity != nil {
            map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.haType != nil {
            map["HaType"] = self.haType!
        }
        if self.hasUser != nil {
            map["HasUser"] = self.hasUser!
        }
        if self.isMultimod != nil {
            map["IsMultimod"] = self.isMultimod!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.mainVersion != nil {
            map["MainVersion"] = self.mainVersion!
        }
        if self.masterDiskSize != nil {
            map["MasterDiskSize"] = self.masterDiskSize!
        }
        if self.masterDiskType != nil {
            map["MasterDiskType"] = self.masterDiskType!
        }
        if self.masterInstanceType != nil {
            map["MasterInstanceType"] = self.masterInstanceType!
        }
        if self.minorVersion != nil {
            map["MinorVersion"] = self.minorVersion!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tags != nil {
            map["Tags"] = self.tags?.toMap()
        }
        if self.updateStatus != nil {
            map["UpdateStatus"] = self.updateStatus!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("BackupStatus") && dict["BackupStatus"] != nil {
            self.backupStatus = dict["BackupStatus"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("ColdStorageStatus") && dict["ColdStorageStatus"] != nil {
            self.coldStorageStatus = dict["ColdStorageStatus"] as! String
        }
        if dict.keys.contains("CoreDiskQuantity") && dict["CoreDiskQuantity"] != nil {
            self.coreDiskQuantity = dict["CoreDiskQuantity"] as! Int32
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! String
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
            self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! Int32
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("HaType") && dict["HaType"] != nil {
            self.haType = dict["HaType"] as! String
        }
        if dict.keys.contains("HasUser") && dict["HasUser"] != nil {
            self.hasUser = dict["HasUser"] as! String
        }
        if dict.keys.contains("IsMultimod") && dict["IsMultimod"] != nil {
            self.isMultimod = dict["IsMultimod"] as! String
        }
        if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
            self.lockMode = dict["LockMode"] as! String
        }
        if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
            self.mainVersion = dict["MainVersion"] as! String
        }
        if dict.keys.contains("MasterDiskSize") && dict["MasterDiskSize"] != nil {
            self.masterDiskSize = dict["MasterDiskSize"] as! Int32
        }
        if dict.keys.contains("MasterDiskType") && dict["MasterDiskType"] != nil {
            self.masterDiskType = dict["MasterDiskType"] as! String
        }
        if dict.keys.contains("MasterInstanceType") && dict["MasterInstanceType"] != nil {
            self.masterInstanceType = dict["MasterInstanceType"] as! String
        }
        if dict.keys.contains("MinorVersion") && dict["MinorVersion"] != nil {
            self.minorVersion = dict["MinorVersion"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            var model = DescribeClusterModelResponseBody.Tags()
            model.fromMap(dict["Tags"] as! [String: Any])
            self.tags = model
        }
        if dict.keys.contains("UpdateStatus") && dict["UpdateStatus"] != nil {
            self.updateStatus = dict["UpdateStatus"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterModelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterModelResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterModelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterWhiteListRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeClusterWhiteListResponseBody : Tea.TeaModel {
    public class GroupItems : Tea.TeaModel {
        public var whiteIp: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.whiteIp != nil {
                map["WhiteIp"] = self.whiteIp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("WhiteIp") && dict["WhiteIp"] != nil {
                self.whiteIp = dict["WhiteIp"] as! [String]
            }
        }
    }
    public var groupItems: DescribeClusterWhiteListResponseBody.GroupItems?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.groupItems?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.groupItems != nil {
            map["GroupItems"] = self.groupItems?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GroupItems") && dict["GroupItems"] != nil {
            var model = DescribeClusterWhiteListResponseBody.GroupItems()
            model.fromMap(dict["GroupItems"] as! [String: Any])
            self.groupItems = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterWhiteListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterWhiteListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeClusterWhiteListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeColdStorageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeColdStorageResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var coldStorageSize: String?

    public var coldStorageUsePercent: String?

    public var openStatus: String?

    public var payType: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coldStorageUsePercent != nil {
            map["ColdStorageUsePercent"] = self.coldStorageUsePercent!
        }
        if self.openStatus != nil {
            map["OpenStatus"] = self.openStatus!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! String
        }
        if dict.keys.contains("ColdStorageUsePercent") && dict["ColdStorageUsePercent"] != nil {
            self.coldStorageUsePercent = dict["ColdStorageUsePercent"] as! String
        }
        if dict.keys.contains("OpenStatus") && dict["OpenStatus"] != nil {
            self.openStatus = dict["OpenStatus"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeColdStorageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeColdStorageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeColdStorageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeMultiModDbAttributeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeMultiModDbAttributeResponseBody : Tea.TeaModel {
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

public class DescribeMultiModDbAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMultiModDbAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMultiModDbAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRdsVSwitchsRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRdsVSwitchsResponseBody : Tea.TeaModel {
    public class VSwitches : Tea.TeaModel {
        public class VSwitch : Tea.TeaModel {
            public var aliUid: String?

            public var bid: String?

            public var cidrBlock: String?

            public var gmtCreate: String?

            public var gmtModified: String?

            public var isDefault: Bool?

            public var izNo: String?

            public var regionNo: String?

            public var status: String?

            public var vSwitchId: String?

            public var vSwitchName: String?

            public override init() {
                super.init()
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
                if self.cidrBlock != nil {
                    map["CidrBlock"] = self.cidrBlock!
                }
                if self.gmtCreate != nil {
                    map["GmtCreate"] = self.gmtCreate!
                }
                if self.gmtModified != nil {
                    map["GmtModified"] = self.gmtModified!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                if self.izNo != nil {
                    map["IzNo"] = self.izNo!
                }
                if self.regionNo != nil {
                    map["RegionNo"] = self.regionNo!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.vSwitchName != nil {
                    map["VSwitchName"] = self.vSwitchName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AliUid") && dict["AliUid"] != nil {
                    self.aliUid = dict["AliUid"] as! String
                }
                if dict.keys.contains("Bid") && dict["Bid"] != nil {
                    self.bid = dict["Bid"] as! String
                }
                if dict.keys.contains("CidrBlock") && dict["CidrBlock"] != nil {
                    self.cidrBlock = dict["CidrBlock"] as! String
                }
                if dict.keys.contains("GmtCreate") && dict["GmtCreate"] != nil {
                    self.gmtCreate = dict["GmtCreate"] as! String
                }
                if dict.keys.contains("GmtModified") && dict["GmtModified"] != nil {
                    self.gmtModified = dict["GmtModified"] as! String
                }
                if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
                if dict.keys.contains("IzNo") && dict["IzNo"] != nil {
                    self.izNo = dict["IzNo"] as! String
                }
                if dict.keys.contains("RegionNo") && dict["RegionNo"] != nil {
                    self.regionNo = dict["RegionNo"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VSwitchName") && dict["VSwitchName"] != nil {
                    self.vSwitchName = dict["VSwitchName"] as! String
                }
            }
        }
        public var vSwitch: [DescribeRdsVSwitchsResponseBody.VSwitches.VSwitch]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.vSwitch != nil {
                var tmp : [Any] = []
                for k in self.vSwitch! {
                    tmp.append(k.toMap())
                }
                map["VSwitch"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitch") && dict["VSwitch"] != nil {
                var tmp : [DescribeRdsVSwitchsResponseBody.VSwitches.VSwitch] = []
                for v in dict["VSwitch"] as! [Any] {
                    var model = DescribeRdsVSwitchsResponseBody.VSwitches.VSwitch()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vSwitch = tmp
            }
        }
    }
    public var requestId: String?

    public var vSwitches: DescribeRdsVSwitchsResponseBody.VSwitches?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.vSwitches?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.vSwitches != nil {
            map["VSwitches"] = self.vSwitches?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("VSwitches") && dict["VSwitches"] != nil {
            var model = DescribeRdsVSwitchsResponseBody.VSwitches()
            model.fromMap(dict["VSwitches"] as! [String: Any])
            self.vSwitches = model
        }
    }
}

public class DescribeRdsVSwitchsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeRdsVSwitchsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeRdsVSwitchsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class Region : Tea.TeaModel {
            public class Zones : Tea.TeaModel {
                public class Zone : Tea.TeaModel {
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
                        if dict.keys.contains("VpcEnabled") && dict["VpcEnabled"] != nil {
                            self.vpcEnabled = dict["VpcEnabled"] as! Bool
                        }
                        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var zone: [DescribeRegionsResponseBody.Regions.Region.Zones.Zone]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.zone != nil {
                        var tmp : [Any] = []
                        for k in self.zone! {
                            tmp.append(k.toMap())
                        }
                        map["Zone"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Zone") && dict["Zone"] != nil {
                        var tmp : [DescribeRegionsResponseBody.Regions.Region.Zones.Zone] = []
                        for v in dict["Zone"] as! [Any] {
                            var model = DescribeRegionsResponseBody.Regions.Region.Zones.Zone()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.zone = tmp
                    }
                }
            }
            public var regionId: String?

            public var zones: DescribeRegionsResponseBody.Regions.Region.Zones?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zones?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.zones != nil {
                    map["Zones"] = self.zones?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Zones") && dict["Zones"] != nil {
                    var model = DescribeRegionsResponseBody.Regions.Region.Zones()
                    model.fromMap(dict["Zones"] as! [String: Any])
                    self.zones = model
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
            if dict.keys.contains("Region") && dict["Region"] != nil {
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
    public var regions: DescribeRegionsResponseBody.Regions?

    public var requestId: String?

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
        if self.regions != nil {
            map["Regions"] = self.regions?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Regions") && dict["Regions"] != nil {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DescribeRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeServerlessInstanceRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeServerlessInstanceResponseBody : Tea.TeaModel {
    public var autoRenew: String?

    public var clusterType: String?

    public var createTime: String?

    public var cuSize: String?

    public var diskSize: String?

    public var expireTime: String?

    public var haType: String?

    public var hasUser: String?

    public var innerEndpoint: String?

    public var instanceId: String?

    public var instanceName: String?

    public var isDeletionProtection: String?

    public var lockMode: String?

    public var mainVersion: String?

    public var outerEndpoint: String?

    public var payType: String?

    public var regionId: String?

    public var requestId: String?

    public var reserverMaxQpsNum: String?

    public var reserverMinQpsNum: String?

    public var status: String?

    public var updateStatus: String?

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
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.cuSize != nil {
            map["CuSize"] = self.cuSize!
        }
        if self.diskSize != nil {
            map["DiskSize"] = self.diskSize!
        }
        if self.expireTime != nil {
            map["ExpireTime"] = self.expireTime!
        }
        if self.haType != nil {
            map["HaType"] = self.haType!
        }
        if self.hasUser != nil {
            map["HasUser"] = self.hasUser!
        }
        if self.innerEndpoint != nil {
            map["InnerEndpoint"] = self.innerEndpoint!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.isDeletionProtection != nil {
            map["IsDeletionProtection"] = self.isDeletionProtection!
        }
        if self.lockMode != nil {
            map["LockMode"] = self.lockMode!
        }
        if self.mainVersion != nil {
            map["MainVersion"] = self.mainVersion!
        }
        if self.outerEndpoint != nil {
            map["OuterEndpoint"] = self.outerEndpoint!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.reserverMaxQpsNum != nil {
            map["ReserverMaxQpsNum"] = self.reserverMaxQpsNum!
        }
        if self.reserverMinQpsNum != nil {
            map["ReserverMinQpsNum"] = self.reserverMinQpsNum!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateStatus != nil {
            map["UpdateStatus"] = self.updateStatus!
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
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CuSize") && dict["CuSize"] != nil {
            self.cuSize = dict["CuSize"] as! String
        }
        if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
            self.diskSize = dict["DiskSize"] as! String
        }
        if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
            self.expireTime = dict["ExpireTime"] as! String
        }
        if dict.keys.contains("HaType") && dict["HaType"] != nil {
            self.haType = dict["HaType"] as! String
        }
        if dict.keys.contains("HasUser") && dict["HasUser"] != nil {
            self.hasUser = dict["HasUser"] as! String
        }
        if dict.keys.contains("InnerEndpoint") && dict["InnerEndpoint"] != nil {
            self.innerEndpoint = dict["InnerEndpoint"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("IsDeletionProtection") && dict["IsDeletionProtection"] != nil {
            self.isDeletionProtection = dict["IsDeletionProtection"] as! String
        }
        if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
            self.lockMode = dict["LockMode"] as! String
        }
        if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
            self.mainVersion = dict["MainVersion"] as! String
        }
        if dict.keys.contains("OuterEndpoint") && dict["OuterEndpoint"] != nil {
            self.outerEndpoint = dict["OuterEndpoint"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ReserverMaxQpsNum") && dict["ReserverMaxQpsNum"] != nil {
            self.reserverMaxQpsNum = dict["ReserverMaxQpsNum"] as! String
        }
        if dict.keys.contains("ReserverMinQpsNum") && dict["ReserverMinQpsNum"] != nil {
            self.reserverMinQpsNum = dict["ReserverMinQpsNum"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateStatus") && dict["UpdateStatus"] != nil {
            self.updateStatus = dict["UpdateStatus"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeServerlessInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServerlessInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeServerlessInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionInitializeProgressRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subscriptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class DescribeSubscriptionInitializeProgressResponseBody : Tea.TeaModel {
    public class Items : Tea.TeaModel {
        public var finishTime: String?

        public var progress: String?

        public var status: String?

        public var subscriptionId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.finishTime != nil {
                map["FinishTime"] = self.finishTime!
            }
            if self.progress != nil {
                map["Progress"] = self.progress!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.subscriptionId != nil {
                map["SubscriptionId"] = self.subscriptionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FinishTime") && dict["FinishTime"] != nil {
                self.finishTime = dict["FinishTime"] as! String
            }
            if dict.keys.contains("Progress") && dict["Progress"] != nil {
                self.progress = dict["Progress"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
                self.subscriptionId = dict["SubscriptionId"] as! String
            }
        }
    }
    public var items: [DescribeSubscriptionInitializeProgressResponseBody.Items]?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Items") && dict["Items"] != nil {
            var tmp : [DescribeSubscriptionInitializeProgressResponseBody.Items] = []
            for v in dict["Items"] as! [Any] {
                var model = DescribeSubscriptionInitializeProgressResponseBody.Items()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.items = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class DescribeSubscriptionInitializeProgressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionInitializeProgressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSubscriptionInitializeProgressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionPerformanceRequest : Tea.TeaModel {
    public var endTime: String?

    public var key: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var sourceInstanceId: String?

    public var startTime: String?

    public var subscriptionId: String?

    public override init() {
        super.init()
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
        if self.key != nil {
            map["Key"] = self.key!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.sourceInstanceId != nil {
            map["SourceInstanceId"] = self.sourceInstanceId!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("Key") && dict["Key"] != nil {
            self.key = dict["Key"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SourceInstanceId") && dict["SourceInstanceId"] != nil {
            self.sourceInstanceId = dict["SourceInstanceId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class DescribeSubscriptionPerformanceResponseBody : Tea.TeaModel {
    public class PerformanceKeys : Tea.TeaModel {
        public class PerformanceKey : Tea.TeaModel {
            public class PerformanceValues : Tea.TeaModel {
                public class PerformanceValue : Tea.TeaModel {
                    public var date: String?

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
                            self.date = dict["Date"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var performanceValue: [DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey.PerformanceValues.PerformanceValue]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("PerformanceValue") && dict["PerformanceValue"] != nil {
                        var tmp : [DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey.PerformanceValues.PerformanceValue] = []
                        for v in dict["PerformanceValue"] as! [Any] {
                            var model = DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey.PerformanceValues.PerformanceValue()
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

            public var performanceValues: DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey.PerformanceValues?

            public var unit: String?

            public var valueFormat: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.performanceValues?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.key != nil {
                    map["Key"] = self.key!
                }
                if self.performanceValues != nil {
                    map["PerformanceValues"] = self.performanceValues?.toMap()
                }
                if self.unit != nil {
                    map["Unit"] = self.unit!
                }
                if self.valueFormat != nil {
                    map["ValueFormat"] = self.valueFormat!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Key") && dict["Key"] != nil {
                    self.key = dict["Key"] as! String
                }
                if dict.keys.contains("PerformanceValues") && dict["PerformanceValues"] != nil {
                    var model = DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey.PerformanceValues()
                    model.fromMap(dict["PerformanceValues"] as! [String: Any])
                    self.performanceValues = model
                }
                if dict.keys.contains("Unit") && dict["Unit"] != nil {
                    self.unit = dict["Unit"] as! String
                }
                if dict.keys.contains("ValueFormat") && dict["ValueFormat"] != nil {
                    self.valueFormat = dict["ValueFormat"] as! String
                }
            }
        }
        public var performanceKey: [DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.performanceKey != nil {
                var tmp : [Any] = []
                for k in self.performanceKey! {
                    tmp.append(k.toMap())
                }
                map["PerformanceKey"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PerformanceKey") && dict["PerformanceKey"] != nil {
                var tmp : [DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey] = []
                for v in dict["PerformanceKey"] as! [Any] {
                    var model = DescribeSubscriptionPerformanceResponseBody.PerformanceKeys.PerformanceKey()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.performanceKey = tmp
            }
        }
    }
    public var endTime: String?

    public var performanceKeys: DescribeSubscriptionPerformanceResponseBody.PerformanceKeys?

    public var replicaId: String?

    public var requestId: String?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.performanceKeys?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.performanceKeys != nil {
            map["PerformanceKeys"] = self.performanceKeys?.toMap()
        }
        if self.replicaId != nil {
            map["ReplicaId"] = self.replicaId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("PerformanceKeys") && dict["PerformanceKeys"] != nil {
            var model = DescribeSubscriptionPerformanceResponseBody.PerformanceKeys()
            model.fromMap(dict["PerformanceKeys"] as! [String: Any])
            self.performanceKeys = model
        }
        if dict.keys.contains("ReplicaId") && dict["ReplicaId"] != nil {
            self.replicaId = dict["ReplicaId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
            self.startTime = dict["StartTime"] as! String
        }
    }
}

public class DescribeSubscriptionPerformanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionPerformanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSubscriptionPerformanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionPermissionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeSubscriptionPermissionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
    }
}

public class DescribeSubscriptionPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSubscriptionPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubscriptionsRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subscriptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class DescribeSubscriptionsResponseBody : Tea.TeaModel {
    public class Subscriptions : Tea.TeaModel {
        public class DBInstances : Tea.TeaModel {
            public var DBInstanceId: String?

            public var regionId: String?

            public var role: String?

            public override init() {
                super.init()
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
                if self.role != nil {
                    map["Role"] = self.role!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                    self.DBInstanceId = dict["DBInstanceId"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Role") && dict["Role"] != nil {
                    self.role = dict["Role"] as! String
                }
            }
        }
        public var DBInstances: [DescribeSubscriptionsResponseBody.Subscriptions.DBInstances]?

        public var mapping: String?

        public var subscriptionDescription: String?

        public var subscriptionId: String?

        public var subscriptionStatus: String?

        public var subscriptionType: String?

        public override init() {
            super.init()
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
            if self.mapping != nil {
                map["Mapping"] = self.mapping!
            }
            if self.subscriptionDescription != nil {
                map["SubscriptionDescription"] = self.subscriptionDescription!
            }
            if self.subscriptionId != nil {
                map["SubscriptionId"] = self.subscriptionId!
            }
            if self.subscriptionStatus != nil {
                map["SubscriptionStatus"] = self.subscriptionStatus!
            }
            if self.subscriptionType != nil {
                map["SubscriptionType"] = self.subscriptionType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DBInstances") && dict["DBInstances"] != nil {
                var tmp : [DescribeSubscriptionsResponseBody.Subscriptions.DBInstances] = []
                for v in dict["DBInstances"] as! [Any] {
                    var model = DescribeSubscriptionsResponseBody.Subscriptions.DBInstances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.DBInstances = tmp
            }
            if dict.keys.contains("Mapping") && dict["Mapping"] != nil {
                self.mapping = dict["Mapping"] as! String
            }
            if dict.keys.contains("SubscriptionDescription") && dict["SubscriptionDescription"] != nil {
                self.subscriptionDescription = dict["SubscriptionDescription"] as! String
            }
            if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
                self.subscriptionId = dict["SubscriptionId"] as! String
            }
            if dict.keys.contains("SubscriptionStatus") && dict["SubscriptionStatus"] != nil {
                self.subscriptionStatus = dict["SubscriptionStatus"] as! String
            }
            if dict.keys.contains("SubscriptionType") && dict["SubscriptionType"] != nil {
                self.subscriptionType = dict["SubscriptionType"] as! String
            }
        }
    }
    public var requestId: String?

    public var subscriptions: [DescribeSubscriptionsResponseBody.Subscriptions]?

    public override init() {
        super.init()
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
        if self.subscriptions != nil {
            var tmp : [Any] = []
            for k in self.subscriptions! {
                tmp.append(k.toMap())
            }
            map["Subscriptions"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Subscriptions") && dict["Subscriptions"] != nil {
            var tmp : [DescribeSubscriptionsResponseBody.Subscriptions] = []
            for v in dict["Subscriptions"] as! [Any] {
                var model = DescribeSubscriptionsResponseBody.Subscriptions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.subscriptions = tmp
        }
    }
}

public class DescribeSubscriptionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubscriptionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeSubscriptionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EnableServerlessPublicConnectionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var instanceId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class EnableServerlessPublicConnectionResponseBody : Tea.TeaModel {
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

public class EnableServerlessPublicConnectionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EnableServerlessPublicConnectionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = EnableServerlessPublicConnectionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMultimodeCmsUrlRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class GetMultimodeCmsUrlResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var multimodCmsUrl: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.multimodCmsUrl != nil {
            map["MultimodCmsUrl"] = self.multimodCmsUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("MultimodCmsUrl") && dict["MultimodCmsUrl"] != nil {
            self.multimodCmsUrl = dict["MultimodCmsUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMultimodeCmsUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMultimodeCmsUrlResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMultimodeCmsUrlResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterServiceConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ListClusterServiceConfigResponseBody : Tea.TeaModel {
    public class ConfigList : Tea.TeaModel {
        public class Config : Tea.TeaModel {
            public var defaultValue: String?

            public var description_: String?

            public var name: String?

            public var needRestart: String?

            public var runningValue: String?

            public var unit: String?

            public var valueRange: String?

            public override init() {
                super.init()
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
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.needRestart != nil {
                    map["NeedRestart"] = self.needRestart!
                }
                if self.runningValue != nil {
                    map["RunningValue"] = self.runningValue!
                }
                if self.unit != nil {
                    map["Unit"] = self.unit!
                }
                if self.valueRange != nil {
                    map["ValueRange"] = self.valueRange!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DefaultValue") && dict["DefaultValue"] != nil {
                    self.defaultValue = dict["DefaultValue"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NeedRestart") && dict["NeedRestart"] != nil {
                    self.needRestart = dict["NeedRestart"] as! String
                }
                if dict.keys.contains("RunningValue") && dict["RunningValue"] != nil {
                    self.runningValue = dict["RunningValue"] as! String
                }
                if dict.keys.contains("Unit") && dict["Unit"] != nil {
                    self.unit = dict["Unit"] as! String
                }
                if dict.keys.contains("ValueRange") && dict["ValueRange"] != nil {
                    self.valueRange = dict["ValueRange"] as! String
                }
            }
        }
        public var config: [ListClusterServiceConfigResponseBody.ConfigList.Config]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.config != nil {
                var tmp : [Any] = []
                for k in self.config! {
                    tmp.append(k.toMap())
                }
                map["Config"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Config") && dict["Config"] != nil {
                var tmp : [ListClusterServiceConfigResponseBody.ConfigList.Config] = []
                for v in dict["Config"] as! [Any] {
                    var model = ListClusterServiceConfigResponseBody.ConfigList.Config()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.config = tmp
            }
        }
    }
    public var clusterId: String?

    public var clusterName: String?

    public var configList: ListClusterServiceConfigResponseBody.ConfigList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.configList != nil {
            map["ConfigList"] = self.configList?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ConfigList") && dict["ConfigList"] != nil {
            var model = ListClusterServiceConfigResponseBody.ConfigList()
            model.fromMap(dict["ConfigList"] as! [String: Any])
            self.configList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class ListClusterServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClusterServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterServiceConfigHistoryRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListClusterServiceConfigHistoryResponseBody : Tea.TeaModel {
    public class ConfigHistoryList : Tea.TeaModel {
        public class ConfigHistory : Tea.TeaModel {
            public var createTime: String?

            public var effective: String?

            public var name: String?

            public var newValue: String?

            public var oldValue: String?

            public override init() {
                super.init()
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
                if self.effective != nil {
                    map["Effective"] = self.effective!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.newValue != nil {
                    map["NewValue"] = self.newValue!
                }
                if self.oldValue != nil {
                    map["OldValue"] = self.oldValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Effective") && dict["Effective"] != nil {
                    self.effective = dict["Effective"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NewValue") && dict["NewValue"] != nil {
                    self.newValue = dict["NewValue"] as! String
                }
                if dict.keys.contains("OldValue") && dict["OldValue"] != nil {
                    self.oldValue = dict["OldValue"] as! String
                }
            }
        }
        public var configHistory: [ListClusterServiceConfigHistoryResponseBody.ConfigHistoryList.ConfigHistory]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configHistory != nil {
                var tmp : [Any] = []
                for k in self.configHistory! {
                    tmp.append(k.toMap())
                }
                map["ConfigHistory"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ConfigHistory") && dict["ConfigHistory"] != nil {
                var tmp : [ListClusterServiceConfigHistoryResponseBody.ConfigHistoryList.ConfigHistory] = []
                for v in dict["ConfigHistory"] as! [Any] {
                    var model = ListClusterServiceConfigHistoryResponseBody.ConfigHistoryList.ConfigHistory()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configHistory = tmp
            }
        }
    }
    public var configHistoryList: ListClusterServiceConfigHistoryResponseBody.ConfigHistoryList?

    public var pageNumber: Int32?

    public var pageRecordCount: Int32?

    public var requestId: String?

    public var totalRecordCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.configHistoryList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.configHistoryList != nil {
            map["ConfigHistoryList"] = self.configHistoryList?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageRecordCount != nil {
            map["PageRecordCount"] = self.pageRecordCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecordCount != nil {
            map["TotalRecordCount"] = self.totalRecordCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ConfigHistoryList") && dict["ConfigHistoryList"] != nil {
            var model = ListClusterServiceConfigHistoryResponseBody.ConfigHistoryList()
            model.fromMap(dict["ConfigHistoryList"] as! [String: Any])
            self.configHistoryList = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageRecordCount") && dict["PageRecordCount"] != nil {
            self.pageRecordCount = dict["PageRecordCount"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecordCount") && dict["TotalRecordCount"] != nil {
            self.totalRecordCount = dict["TotalRecordCount"] as! Int32
        }
    }
}

public class ListClusterServiceConfigHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterServiceConfigHistoryResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListClusterServiceConfigHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListHbaseInstancesRequest : Tea.TeaModel {
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityToken: String?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityToken != nil {
            map["SecurityToken"] = self.securityToken!
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
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityToken") && dict["SecurityToken"] != nil {
            self.securityToken = dict["SecurityToken"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListHbaseInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class Instance : Tea.TeaModel {
            public var instanceId: String?

            public var instanceName: String?

            public var isDefault: Bool?

            public override init() {
                super.init()
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
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.isDefault != nil {
                    map["IsDefault"] = self.isDefault!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceName") && dict["InstanceName"] != nil {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                    self.isDefault = dict["IsDefault"] as! Bool
                }
            }
        }
        public var instance: [ListHbaseInstancesResponseBody.Instances.Instance]?

        public override init() {
            super.init()
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
                var tmp : [ListHbaseInstancesResponseBody.Instances.Instance] = []
                for v in dict["Instance"] as! [Any] {
                    var model = ListHbaseInstancesResponseBody.Instances.Instance()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instance = tmp
            }
        }
    }
    public var instances: ListHbaseInstancesResponseBody.Instances?

    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") && dict["Instances"] != nil {
            var model = ListHbaseInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListHbaseInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListHbaseInstancesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListHbaseInstancesResponseBody()
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

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

public class ModifyBackupPolicyRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var ownerId: Int64?

    public var preferredBackupEndTimeUTC: String?

    public var preferredBackupPeriod: String?

    public var preferredBackupStartTimeUTC: String?

    public var preferredBackupTime: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.preferredBackupEndTimeUTC != nil {
            map["PreferredBackupEndTimeUTC"] = self.preferredBackupEndTimeUTC!
        }
        if self.preferredBackupPeriod != nil {
            map["PreferredBackupPeriod"] = self.preferredBackupPeriod!
        }
        if self.preferredBackupStartTimeUTC != nil {
            map["PreferredBackupStartTimeUTC"] = self.preferredBackupStartTimeUTC!
        }
        if self.preferredBackupTime != nil {
            map["PreferredBackupTime"] = self.preferredBackupTime!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PreferredBackupEndTimeUTC") && dict["PreferredBackupEndTimeUTC"] != nil {
            self.preferredBackupEndTimeUTC = dict["PreferredBackupEndTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupPeriod") && dict["PreferredBackupPeriod"] != nil {
            self.preferredBackupPeriod = dict["PreferredBackupPeriod"] as! String
        }
        if dict.keys.contains("PreferredBackupStartTimeUTC") && dict["PreferredBackupStartTimeUTC"] != nil {
            self.preferredBackupStartTimeUTC = dict["PreferredBackupStartTimeUTC"] as! String
        }
        if dict.keys.contains("PreferredBackupTime") && dict["PreferredBackupTime"] != nil {
            self.preferredBackupTime = dict["PreferredBackupTime"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyBackupPolicyResponseBody : Tea.TeaModel {
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

public class ModifyBackupPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyBackupPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyBackupPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterNameRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterName: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyClusterNameResponseBody : Tea.TeaModel {
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

public class ModifyClusterNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterNameResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterNetTypeRequest : Tea.TeaModel {
    public var clusterId: String?

    public var netType: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.netType != nil {
            map["NetType"] = self.netType!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("NetType") && dict["NetType"] != nil {
            self.netType = dict["NetType"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyClusterNetTypeResponseBody : Tea.TeaModel {
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

public class ModifyClusterNetTypeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterNetTypeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterNetTypeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterSecurityIpListRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityIpList: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.securityIpList != nil {
            map["SecurityIpList"] = self.securityIpList!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SecurityIpList") && dict["SecurityIpList"] != nil {
            self.securityIpList = dict["SecurityIpList"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyClusterSecurityIpListResponseBody : Tea.TeaModel {
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

public class ModifyClusterSecurityIpListResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterSecurityIpListResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterSecurityIpListResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterServiceConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var name: String?

    public var ownerId: Int64?

    public var parameters: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var restart: Bool?

    public var value: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.parameters != nil {
            map["Parameters"] = self.parameters!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.restart != nil {
            map["Restart"] = self.restart!
        }
        if self.value != nil {
            map["Value"] = self.value!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("Parameters") && dict["Parameters"] != nil {
            self.parameters = dict["Parameters"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Restart") && dict["Restart"] != nil {
            self.restart = dict["Restart"] as! Bool
        }
        if dict.keys.contains("Value") && dict["Value"] != nil {
            self.value = dict["Value"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyClusterServiceConfigResponseBody : Tea.TeaModel {
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

public class ModifyClusterServiceConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterServiceConfigResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyClusterServiceConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyHasRootPasswordRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hasPassword: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.hasPassword != nil {
            map["HasPassword"] = self.hasPassword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
            self.hasPassword = dict["HasPassword"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyHasRootPasswordResponseBody : Tea.TeaModel {
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

public class ModifyHasRootPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyHasRootPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyHasRootPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRestartClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyRestartClusterResponseBody : Tea.TeaModel {
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

public class ModifyRestartClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRestartClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyRestartClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyRollbackHasForHbaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyRollbackHasForHbaseResponseBody : Tea.TeaModel {
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

public class ModifyRollbackHasForHbaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyRollbackHasForHbaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyRollbackHasForHbaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySubscriptionDescriptionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subscriptionDescription: String?

    public var subscriptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subscriptionDescription != nil {
            map["SubscriptionDescription"] = self.subscriptionDescription!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscriptionDescription") && dict["SubscriptionDescription"] != nil {
            self.subscriptionDescription = dict["SubscriptionDescription"] as! String
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class ModifySubscriptionDescriptionResponseBody : Tea.TeaModel {
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

public class ModifySubscriptionDescriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySubscriptionDescriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySubscriptionDescriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySubscriptionMappingRequest : Tea.TeaModel {
    public var mapping: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subscriptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mapping != nil {
            map["Mapping"] = self.mapping!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Mapping") && dict["Mapping"] != nil {
            self.mapping = dict["Mapping"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class ModifySubscriptionMappingResponseBody : Tea.TeaModel {
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

public class ModifySubscriptionMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySubscriptionMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySubscriptionMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySubscriptionPermissionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! Int32
        }
    }
}

public class ModifySubscriptionPermissionResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
    }
}

public class ModifySubscriptionPermissionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySubscriptionPermissionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifySubscriptionPermissionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUIProxyAccountPasswordRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyUIProxyAccountPasswordResponseBody : Tea.TeaModel {
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

public class ModifyUIProxyAccountPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUIProxyAccountPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyUIProxyAccountPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUpgradeToHasForHbaseRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var hasPassword: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.hasPassword != nil {
            map["HasPassword"] = self.hasPassword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HasPassword") && dict["HasPassword"] != nil {
            self.hasPassword = dict["HasPassword"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ModifyUpgradeToHasForHbaseResponseBody : Tea.TeaModel {
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

public class ModifyUpgradeToHasForHbaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUpgradeToHasForHbaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyUpgradeToHasForHbaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MultimodAddComponentsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var components: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class MultimodAddComponentsResponseBody : Tea.TeaModel {
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

public class MultimodAddComponentsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MultimodAddComponentsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = MultimodAddComponentsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenBackupRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class OpenBackupResponseBody : Tea.TeaModel {
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

public class OpenBackupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenBackupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = OpenBackupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHBaseHaDBRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class QueryHBaseHaDBResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var activeName: String?

            public var bdsName: String?

            public var haName: String?

            public var standbyName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.activeName != nil {
                    map["ActiveName"] = self.activeName!
                }
                if self.bdsName != nil {
                    map["BdsName"] = self.bdsName!
                }
                if self.haName != nil {
                    map["HaName"] = self.haName!
                }
                if self.standbyName != nil {
                    map["StandbyName"] = self.standbyName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ActiveName") && dict["ActiveName"] != nil {
                    self.activeName = dict["ActiveName"] as! String
                }
                if dict.keys.contains("BdsName") && dict["BdsName"] != nil {
                    self.bdsName = dict["BdsName"] as! String
                }
                if dict.keys.contains("HaName") && dict["HaName"] != nil {
                    self.haName = dict["HaName"] as! String
                }
                if dict.keys.contains("StandbyName") && dict["StandbyName"] != nil {
                    self.standbyName = dict["StandbyName"] as! String
                }
            }
        }
        public var cluster: [QueryHBaseHaDBResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [QueryHBaseHaDBResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = QueryHBaseHaDBResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: QueryHBaseHaDBResponseBody.ClusterList?

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
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
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
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = QueryHBaseHaDBResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryHBaseHaDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHBaseHaDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryHBaseHaDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QuerySparkRelateHBaseRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class QuerySparkRelateHBaseResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var clusterType: String?

            public var coreDiskType: String?

            public var coreInstanceQuantity: Int32?

            public var createTime: String?

            public var dbType: String?

            public var expireTime: String?

            public var isRelated: Bool?

            public var lockMode: String?

            public var mainVersion: String?

            public var netType: String?

            public var payType: String?

            public var reason: String?

            public var regionId: String?

            public var status: String?

            public var userId: String?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.clusterType != nil {
                    map["ClusterType"] = self.clusterType!
                }
                if self.coreDiskType != nil {
                    map["CoreDiskType"] = self.coreDiskType!
                }
                if self.coreInstanceQuantity != nil {
                    map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dbType != nil {
                    map["DbType"] = self.dbType!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.isRelated != nil {
                    map["IsRelated"] = self.isRelated!
                }
                if self.lockMode != nil {
                    map["LockMode"] = self.lockMode!
                }
                if self.mainVersion != nil {
                    map["MainVersion"] = self.mainVersion!
                }
                if self.netType != nil {
                    map["NetType"] = self.netType!
                }
                if self.payType != nil {
                    map["PayType"] = self.payType!
                }
                if self.reason != nil {
                    map["Reason"] = self.reason!
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
                if self.zoneId != nil {
                    map["ZoneId"] = self.zoneId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
                    self.clusterType = dict["ClusterType"] as! String
                }
                if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
                    self.coreDiskType = dict["CoreDiskType"] as! String
                }
                if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
                    self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! Int32
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DbType") && dict["DbType"] != nil {
                    self.dbType = dict["DbType"] as! String
                }
                if dict.keys.contains("ExpireTime") && dict["ExpireTime"] != nil {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("IsRelated") && dict["IsRelated"] != nil {
                    self.isRelated = dict["IsRelated"] as! Bool
                }
                if dict.keys.contains("LockMode") && dict["LockMode"] != nil {
                    self.lockMode = dict["LockMode"] as! String
                }
                if dict.keys.contains("MainVersion") && dict["MainVersion"] != nil {
                    self.mainVersion = dict["MainVersion"] as! String
                }
                if dict.keys.contains("NetType") && dict["NetType"] != nil {
                    self.netType = dict["NetType"] as! String
                }
                if dict.keys.contains("PayType") && dict["PayType"] != nil {
                    self.payType = dict["PayType"] as! String
                }
                if dict.keys.contains("Reason") && dict["Reason"] != nil {
                    self.reason = dict["Reason"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserId") && dict["UserId"] != nil {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var cluster: [QuerySparkRelateHBaseResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [QuerySparkRelateHBaseResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = QuerySparkRelateHBaseResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: QuerySparkRelateHBaseResponseBody.ClusterList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = QuerySparkRelateHBaseResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QuerySparkRelateHBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QuerySparkRelateHBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QuerySparkRelateHBaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryXpackRelatedDBRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var relateDbType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relateDbType != nil {
            map["RelateDbType"] = self.relateDbType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RelateDbType") && dict["RelateDbType"] != nil {
            self.relateDbType = dict["RelateDbType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class QueryXpackRelatedDBResponseBody : Tea.TeaModel {
    public class ClusterList : Tea.TeaModel {
        public class Cluster : Tea.TeaModel {
            public var clusterId: String?

            public var clusterName: String?

            public var DBType: String?

            public var DBVersion: String?

            public var isRelated: Bool?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.DBType != nil {
                    map["DBType"] = self.DBType!
                }
                if self.DBVersion != nil {
                    map["DBVersion"] = self.DBVersion!
                }
                if self.isRelated != nil {
                    map["IsRelated"] = self.isRelated!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("DBType") && dict["DBType"] != nil {
                    self.DBType = dict["DBType"] as! String
                }
                if dict.keys.contains("DBVersion") && dict["DBVersion"] != nil {
                    self.DBVersion = dict["DBVersion"] as! String
                }
                if dict.keys.contains("IsRelated") && dict["IsRelated"] != nil {
                    self.isRelated = dict["IsRelated"] as! Bool
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var cluster: [QueryXpackRelatedDBResponseBody.ClusterList.Cluster]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                var tmp : [Any] = []
                for k in self.cluster! {
                    tmp.append(k.toMap())
                }
                map["Cluster"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Cluster") && dict["Cluster"] != nil {
                var tmp : [QueryXpackRelatedDBResponseBody.ClusterList.Cluster] = []
                for v in dict["Cluster"] as! [Any] {
                    var model = QueryXpackRelatedDBResponseBody.ClusterList.Cluster()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.cluster = tmp
            }
        }
    }
    public var clusterList: QueryXpackRelatedDBResponseBody.ClusterList?

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
        try self.clusterList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterList != nil {
            map["ClusterList"] = self.clusterList?.toMap()
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
        if dict.keys.contains("ClusterList") && dict["ClusterList"] != nil {
            var model = QueryXpackRelatedDBResponseBody.ClusterList()
            model.fromMap(dict["ClusterList"] as! [String: Any])
            self.clusterList = model
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
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class QueryXpackRelatedDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryXpackRelatedDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryXpackRelatedDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RelateDbForHBaseHaRequest : Tea.TeaModel {
    public var clusterId: String?

    public var haActive: String?

    public var haActiveClusterKey: String?

    public var haActiveDBType: String?

    public var haActiveHbaseFsDir: String?

    public var haActiveHdfsUri: String?

    public var haActivePassword: String?

    public var haActiveUser: String?

    public var haActiveVersion: String?

    public var haMigrateType: String?

    public var haStandby: String?

    public var haStandbyClusterKey: String?

    public var haStandbyDBType: String?

    public var haStandbyHbaseFsDir: String?

    public var haStandbyHdfsUri: String?

    public var haStandbyPassword: String?

    public var haStandbyUser: String?

    public var haStandbyVersion: String?

    public var haTables: String?

    public var isActiveStandard: Bool?

    public var isStandbyStandard: Bool?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.haActive != nil {
            map["HaActive"] = self.haActive!
        }
        if self.haActiveClusterKey != nil {
            map["HaActiveClusterKey"] = self.haActiveClusterKey!
        }
        if self.haActiveDBType != nil {
            map["HaActiveDBType"] = self.haActiveDBType!
        }
        if self.haActiveHbaseFsDir != nil {
            map["HaActiveHbaseFsDir"] = self.haActiveHbaseFsDir!
        }
        if self.haActiveHdfsUri != nil {
            map["HaActiveHdfsUri"] = self.haActiveHdfsUri!
        }
        if self.haActivePassword != nil {
            map["HaActivePassword"] = self.haActivePassword!
        }
        if self.haActiveUser != nil {
            map["HaActiveUser"] = self.haActiveUser!
        }
        if self.haActiveVersion != nil {
            map["HaActiveVersion"] = self.haActiveVersion!
        }
        if self.haMigrateType != nil {
            map["HaMigrateType"] = self.haMigrateType!
        }
        if self.haStandby != nil {
            map["HaStandby"] = self.haStandby!
        }
        if self.haStandbyClusterKey != nil {
            map["HaStandbyClusterKey"] = self.haStandbyClusterKey!
        }
        if self.haStandbyDBType != nil {
            map["HaStandbyDBType"] = self.haStandbyDBType!
        }
        if self.haStandbyHbaseFsDir != nil {
            map["HaStandbyHbaseFsDir"] = self.haStandbyHbaseFsDir!
        }
        if self.haStandbyHdfsUri != nil {
            map["HaStandbyHdfsUri"] = self.haStandbyHdfsUri!
        }
        if self.haStandbyPassword != nil {
            map["HaStandbyPassword"] = self.haStandbyPassword!
        }
        if self.haStandbyUser != nil {
            map["HaStandbyUser"] = self.haStandbyUser!
        }
        if self.haStandbyVersion != nil {
            map["HaStandbyVersion"] = self.haStandbyVersion!
        }
        if self.haTables != nil {
            map["HaTables"] = self.haTables!
        }
        if self.isActiveStandard != nil {
            map["IsActiveStandard"] = self.isActiveStandard!
        }
        if self.isStandbyStandard != nil {
            map["IsStandbyStandard"] = self.isStandbyStandard!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HaActive") && dict["HaActive"] != nil {
            self.haActive = dict["HaActive"] as! String
        }
        if dict.keys.contains("HaActiveClusterKey") && dict["HaActiveClusterKey"] != nil {
            self.haActiveClusterKey = dict["HaActiveClusterKey"] as! String
        }
        if dict.keys.contains("HaActiveDBType") && dict["HaActiveDBType"] != nil {
            self.haActiveDBType = dict["HaActiveDBType"] as! String
        }
        if dict.keys.contains("HaActiveHbaseFsDir") && dict["HaActiveHbaseFsDir"] != nil {
            self.haActiveHbaseFsDir = dict["HaActiveHbaseFsDir"] as! String
        }
        if dict.keys.contains("HaActiveHdfsUri") && dict["HaActiveHdfsUri"] != nil {
            self.haActiveHdfsUri = dict["HaActiveHdfsUri"] as! String
        }
        if dict.keys.contains("HaActivePassword") && dict["HaActivePassword"] != nil {
            self.haActivePassword = dict["HaActivePassword"] as! String
        }
        if dict.keys.contains("HaActiveUser") && dict["HaActiveUser"] != nil {
            self.haActiveUser = dict["HaActiveUser"] as! String
        }
        if dict.keys.contains("HaActiveVersion") && dict["HaActiveVersion"] != nil {
            self.haActiveVersion = dict["HaActiveVersion"] as! String
        }
        if dict.keys.contains("HaMigrateType") && dict["HaMigrateType"] != nil {
            self.haMigrateType = dict["HaMigrateType"] as! String
        }
        if dict.keys.contains("HaStandby") && dict["HaStandby"] != nil {
            self.haStandby = dict["HaStandby"] as! String
        }
        if dict.keys.contains("HaStandbyClusterKey") && dict["HaStandbyClusterKey"] != nil {
            self.haStandbyClusterKey = dict["HaStandbyClusterKey"] as! String
        }
        if dict.keys.contains("HaStandbyDBType") && dict["HaStandbyDBType"] != nil {
            self.haStandbyDBType = dict["HaStandbyDBType"] as! String
        }
        if dict.keys.contains("HaStandbyHbaseFsDir") && dict["HaStandbyHbaseFsDir"] != nil {
            self.haStandbyHbaseFsDir = dict["HaStandbyHbaseFsDir"] as! String
        }
        if dict.keys.contains("HaStandbyHdfsUri") && dict["HaStandbyHdfsUri"] != nil {
            self.haStandbyHdfsUri = dict["HaStandbyHdfsUri"] as! String
        }
        if dict.keys.contains("HaStandbyPassword") && dict["HaStandbyPassword"] != nil {
            self.haStandbyPassword = dict["HaStandbyPassword"] as! String
        }
        if dict.keys.contains("HaStandbyUser") && dict["HaStandbyUser"] != nil {
            self.haStandbyUser = dict["HaStandbyUser"] as! String
        }
        if dict.keys.contains("HaStandbyVersion") && dict["HaStandbyVersion"] != nil {
            self.haStandbyVersion = dict["HaStandbyVersion"] as! String
        }
        if dict.keys.contains("HaTables") && dict["HaTables"] != nil {
            self.haTables = dict["HaTables"] as! String
        }
        if dict.keys.contains("IsActiveStandard") && dict["IsActiveStandard"] != nil {
            self.isActiveStandard = dict["IsActiveStandard"] as! Bool
        }
        if dict.keys.contains("IsStandbyStandard") && dict["IsStandbyStandard"] != nil {
            self.isStandbyStandard = dict["IsStandbyStandard"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class RelateDbForHBaseHaResponseBody : Tea.TeaModel {
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

public class RelateDbForHBaseHaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RelateDbForHBaseHaResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RelateDbForHBaseHaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleasePublicNetworkAddressRequest : Tea.TeaModel {
    public var clusterId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class ReleasePublicNetworkAddressResponseBody : Tea.TeaModel {
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

public class ReleasePublicNetworkAddressResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleasePublicNetworkAddressResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleasePublicNetworkAddressResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReleaseSubscriptionRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var subscriptionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.subscriptionId != nil {
            map["SubscriptionId"] = self.subscriptionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("SubscriptionId") && dict["SubscriptionId"] != nil {
            self.subscriptionId = dict["SubscriptionId"] as! String
        }
    }
}

public class ReleaseSubscriptionResponseBody : Tea.TeaModel {
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

public class ReleaseSubscriptionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseSubscriptionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReleaseSubscriptionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RenewClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var duration: Int32?

    public var ownerId: Int64?

    public var pricingCycle: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pricingCycle != nil {
            map["PricingCycle"] = self.pricingCycle!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PricingCycle") && dict["PricingCycle"] != nil {
            self.pricingCycle = dict["PricingCycle"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class RenewClusterResponseBody : Tea.TeaModel {
    public var orderId: Int64?

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
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class RenewClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RenewClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RenewClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResizeClusterRequest : Tea.TeaModel {
    public var clientToken: String?

    public var cloudType: String?

    public var clusterId: String?

    public var coldStorageSize: String?

    public var coreDiskQuantity: String?

    public var coreDiskSize: String?

    public var coreDiskType: String?

    public var coreInstanceQuantity: String?

    public var coreInstanceType: String?

    public var engine: String?

    public var isColdStorage: String?

    public var payType: String?

    public var regionId: String?

    public var upgradeType: String?

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
        if self.cloudType != nil {
            map["CloudType"] = self.cloudType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.coldStorageSize != nil {
            map["ColdStorageSize"] = self.coldStorageSize!
        }
        if self.coreDiskQuantity != nil {
            map["CoreDiskQuantity"] = self.coreDiskQuantity!
        }
        if self.coreDiskSize != nil {
            map["CoreDiskSize"] = self.coreDiskSize!
        }
        if self.coreDiskType != nil {
            map["CoreDiskType"] = self.coreDiskType!
        }
        if self.coreInstanceQuantity != nil {
            map["CoreInstanceQuantity"] = self.coreInstanceQuantity!
        }
        if self.coreInstanceType != nil {
            map["CoreInstanceType"] = self.coreInstanceType!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.isColdStorage != nil {
            map["IsColdStorage"] = self.isColdStorage!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.upgradeType != nil {
            map["UpgradeType"] = self.upgradeType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CloudType") && dict["CloudType"] != nil {
            self.cloudType = dict["CloudType"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ColdStorageSize") && dict["ColdStorageSize"] != nil {
            self.coldStorageSize = dict["ColdStorageSize"] as! String
        }
        if dict.keys.contains("CoreDiskQuantity") && dict["CoreDiskQuantity"] != nil {
            self.coreDiskQuantity = dict["CoreDiskQuantity"] as! String
        }
        if dict.keys.contains("CoreDiskSize") && dict["CoreDiskSize"] != nil {
            self.coreDiskSize = dict["CoreDiskSize"] as! String
        }
        if dict.keys.contains("CoreDiskType") && dict["CoreDiskType"] != nil {
            self.coreDiskType = dict["CoreDiskType"] as! String
        }
        if dict.keys.contains("CoreInstanceQuantity") && dict["CoreInstanceQuantity"] != nil {
            self.coreInstanceQuantity = dict["CoreInstanceQuantity"] as! String
        }
        if dict.keys.contains("CoreInstanceType") && dict["CoreInstanceType"] != nil {
            self.coreInstanceType = dict["CoreInstanceType"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("IsColdStorage") && dict["IsColdStorage"] != nil {
            self.isColdStorage = dict["IsColdStorage"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("UpgradeType") && dict["UpgradeType"] != nil {
            self.upgradeType = dict["UpgradeType"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ResizeClusterResponseBody : Tea.TeaModel {
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

public class ResizeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResizeClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ResizeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SparkRelateHBaseRequest : Tea.TeaModel {
    public var clusterId: String?

    public var HBaseClusterIds: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.HBaseClusterIds != nil {
            map["HBaseClusterIds"] = self.HBaseClusterIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HBaseClusterIds") && dict["HBaseClusterIds"] != nil {
            self.HBaseClusterIds = dict["HBaseClusterIds"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class SparkRelateHBaseResponseBody : Tea.TeaModel {
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

public class SparkRelateHBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SparkRelateHBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = SparkRelateHBaseResponseBody()
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
    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

    public override init() {
        super.init()
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

    public var ownerAccount: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.ownerAccount != nil {
            map["OwnerAccount"] = self.ownerAccount!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
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
        if dict.keys.contains("OwnerAccount") && dict["OwnerAccount"] != nil {
            self.ownerAccount = dict["OwnerAccount"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
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

    public override init() {
        super.init()
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

public class UpgradeMinorVersionRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var components: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var upgradeVersion: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.components != nil {
            map["Components"] = self.components!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.upgradeVersion != nil {
            map["UpgradeVersion"] = self.upgradeVersion!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Components") && dict["Components"] != nil {
            self.components = dict["Components"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("UpgradeVersion") && dict["UpgradeVersion"] != nil {
            self.upgradeVersion = dict["UpgradeVersion"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class UpgradeMinorVersionResponseBody : Tea.TeaModel {
    public var newVersion: String?

    public var oldVersion: String?

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
        if self.newVersion != nil {
            map["NewVersion"] = self.newVersion!
        }
        if self.oldVersion != nil {
            map["OldVersion"] = self.oldVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("NewVersion") && dict["NewVersion"] != nil {
            self.newVersion = dict["NewVersion"] as! String
        }
        if dict.keys.contains("OldVersion") && dict["OldVersion"] != nil {
            self.oldVersion = dict["OldVersion"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = UpgradeMinorVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class XpackRelateDBRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dbClusterIds: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var relateDbType: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.dbClusterIds != nil {
            map["DbClusterIds"] = self.dbClusterIds!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.relateDbType != nil {
            map["RelateDbType"] = self.relateDbType!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") && dict["ClusterId"] != nil {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DbClusterIds") && dict["DbClusterIds"] != nil {
            self.dbClusterIds = dict["DbClusterIds"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RelateDbType") && dict["RelateDbType"] != nil {
            self.relateDbType = dict["RelateDbType"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class XpackRelateDBResponseBody : Tea.TeaModel {
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

public class XpackRelateDBResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: XpackRelateDBResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = XpackRelateDBResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
