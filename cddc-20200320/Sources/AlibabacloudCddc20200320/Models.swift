import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDedicatedHostRequest : Tea.TeaModel {
    public var autoRenew: String?

    public var clientToken: String?

    public var dedicatedHostGroupId: String?

    public var hostClass: String?

    public var hostStorage: String?

    public var hostStorageType: String?

    public var imageCategory: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var usedTime: String?

    public var vSwitchId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.hostClass != nil {
            map["HostClass"] = self.hostClass!
        }
        if self.hostStorage != nil {
            map["HostStorage"] = self.hostStorage!
        }
        if self.hostStorageType != nil {
            map["HostStorageType"] = self.hostStorageType!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.osPassword != nil {
            map["OsPassword"] = self.osPassword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
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
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        if self.usedTime != nil {
            map["UsedTime"] = self.usedTime!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("HostClass") && dict["HostClass"] != nil {
            self.hostClass = dict["HostClass"] as! String
        }
        if dict.keys.contains("HostStorage") && dict["HostStorage"] != nil {
            self.hostStorage = dict["HostStorage"] as! String
        }
        if dict.keys.contains("HostStorageType") && dict["HostStorageType"] != nil {
            self.hostStorageType = dict["HostStorageType"] as! String
        }
        if dict.keys.contains("ImageCategory") && dict["ImageCategory"] != nil {
            self.imageCategory = dict["ImageCategory"] as! String
        }
        if dict.keys.contains("OsPassword") && dict["OsPassword"] != nil {
            self.osPassword = dict["OsPassword"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
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
        if dict.keys.contains("UsedTime") && dict["UsedTime"] != nil {
            self.usedTime = dict["UsedTime"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateDedicatedHostResponseBody : Tea.TeaModel {
    public class DedicateHostList : Tea.TeaModel {
        public class DedicateHostList : Tea.TeaModel {
            public var dedicatedHostId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dedicatedHostId != nil {
                    map["DedicatedHostId"] = self.dedicatedHostId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
                    self.dedicatedHostId = dict["DedicatedHostId"] as! String
                }
            }
        }
        public var dedicateHostList: [CreateDedicatedHostResponseBody.DedicateHostList.DedicateHostList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dedicateHostList != nil {
                var tmp : [Any] = []
                for k in self.dedicateHostList! {
                    tmp.append(k.toMap())
                }
                map["DedicateHostList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DedicateHostList") && dict["DedicateHostList"] != nil {
                var tmp : [CreateDedicatedHostResponseBody.DedicateHostList.DedicateHostList] = []
                for v in dict["DedicateHostList"] as! [Any] {
                    var model = CreateDedicatedHostResponseBody.DedicateHostList.DedicateHostList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dedicateHostList = tmp
            }
        }
    }
    public var dedicateHostList: CreateDedicatedHostResponseBody.DedicateHostList?

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
        try self.dedicateHostList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicateHostList != nil {
            map["DedicateHostList"] = self.dedicateHostList?.toMap()
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
        if dict.keys.contains("DedicateHostList") && dict["DedicateHostList"] != nil {
            var model = CreateDedicatedHostResponseBody.DedicateHostList()
            model.fromMap(dict["DedicateHostList"] as! [String: Any])
            self.dedicateHostList = model
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDedicatedHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDedicatedHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDedicatedHostAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var accountType: String?

    public var bastionInstanceId: String?

    public var clientToken: String?

    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.bastionInstanceId != nil {
            map["BastionInstanceId"] = self.bastionInstanceId!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("BastionInstanceId") && dict["BastionInstanceId"] != nil {
            self.bastionInstanceId = dict["BastionInstanceId"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class CreateDedicatedHostAccountResponseBody : Tea.TeaModel {
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

public class CreateDedicatedHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDedicatedHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateDedicatedHostGroupRequest : Tea.TeaModel {
    public var allocationPolicy: String?

    public var clientToken: String?

    public var cpuAllocationRatio: Int32?

    public var dedicatedHostGroupDesc: String?

    public var diskAllocationRatio: Int32?

    public var engine: String?

    public var hostReplacePolicy: String?

    public var memAllocationRatio: Int32?

    public var openPermission: Int32?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var VPCId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocationPolicy != nil {
            map["AllocationPolicy"] = self.allocationPolicy!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.cpuAllocationRatio != nil {
            map["CpuAllocationRatio"] = self.cpuAllocationRatio!
        }
        if self.dedicatedHostGroupDesc != nil {
            map["DedicatedHostGroupDesc"] = self.dedicatedHostGroupDesc!
        }
        if self.diskAllocationRatio != nil {
            map["DiskAllocationRatio"] = self.diskAllocationRatio!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.hostReplacePolicy != nil {
            map["HostReplacePolicy"] = self.hostReplacePolicy!
        }
        if self.memAllocationRatio != nil {
            map["MemAllocationRatio"] = self.memAllocationRatio!
        }
        if self.openPermission != nil {
            map["OpenPermission"] = self.openPermission!
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
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocationPolicy") && dict["AllocationPolicy"] != nil {
            self.allocationPolicy = dict["AllocationPolicy"] as! String
        }
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("CpuAllocationRatio") && dict["CpuAllocationRatio"] != nil {
            self.cpuAllocationRatio = dict["CpuAllocationRatio"] as! Int32
        }
        if dict.keys.contains("DedicatedHostGroupDesc") && dict["DedicatedHostGroupDesc"] != nil {
            self.dedicatedHostGroupDesc = dict["DedicatedHostGroupDesc"] as! String
        }
        if dict.keys.contains("DiskAllocationRatio") && dict["DiskAllocationRatio"] != nil {
            self.diskAllocationRatio = dict["DiskAllocationRatio"] as! Int32
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("HostReplacePolicy") && dict["HostReplacePolicy"] != nil {
            self.hostReplacePolicy = dict["HostReplacePolicy"] as! String
        }
        if dict.keys.contains("MemAllocationRatio") && dict["MemAllocationRatio"] != nil {
            self.memAllocationRatio = dict["MemAllocationRatio"] as! Int32
        }
        if dict.keys.contains("OpenPermission") && dict["OpenPermission"] != nil {
            self.openPermission = dict["OpenPermission"] as! Int32
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
        if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
            self.VPCId = dict["VPCId"] as! String
        }
    }
}

public class CreateDedicatedHostGroupResponseBody : Tea.TeaModel {
    public var dedicatedHostGroupId: String?

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
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateDedicatedHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateDedicatedHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateDedicatedHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMyBaseRequest : Tea.TeaModel {
    public class ECSClassList : Tea.TeaModel {
        public var dataDiskPerformanceLevel: String?

        public var diskCapacity: Int32?

        public var diskCount: Int32?

        public var diskType: String?

        public var instanceType: String?

        public var nodeCount: Int32?

        public var sysDiskCapacity: Int32?

        public var sysDiskType: String?

        public var systemDiskPerformanceLevel: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataDiskPerformanceLevel != nil {
                map["dataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
            }
            if self.diskCapacity != nil {
                map["diskCapacity"] = self.diskCapacity!
            }
            if self.diskCount != nil {
                map["diskCount"] = self.diskCount!
            }
            if self.diskType != nil {
                map["diskType"] = self.diskType!
            }
            if self.instanceType != nil {
                map["instanceType"] = self.instanceType!
            }
            if self.nodeCount != nil {
                map["nodeCount"] = self.nodeCount!
            }
            if self.sysDiskCapacity != nil {
                map["sysDiskCapacity"] = self.sysDiskCapacity!
            }
            if self.sysDiskType != nil {
                map["sysDiskType"] = self.sysDiskType!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["systemDiskPerformanceLevel"] = self.systemDiskPerformanceLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("dataDiskPerformanceLevel") && dict["dataDiskPerformanceLevel"] != nil {
                self.dataDiskPerformanceLevel = dict["dataDiskPerformanceLevel"] as! String
            }
            if dict.keys.contains("diskCapacity") && dict["diskCapacity"] != nil {
                self.diskCapacity = dict["diskCapacity"] as! Int32
            }
            if dict.keys.contains("diskCount") && dict["diskCount"] != nil {
                self.diskCount = dict["diskCount"] as! Int32
            }
            if dict.keys.contains("diskType") && dict["diskType"] != nil {
                self.diskType = dict["diskType"] as! String
            }
            if dict.keys.contains("instanceType") && dict["instanceType"] != nil {
                self.instanceType = dict["instanceType"] as! String
            }
            if dict.keys.contains("nodeCount") && dict["nodeCount"] != nil {
                self.nodeCount = dict["nodeCount"] as! Int32
            }
            if dict.keys.contains("sysDiskCapacity") && dict["sysDiskCapacity"] != nil {
                self.sysDiskCapacity = dict["sysDiskCapacity"] as! Int32
            }
            if dict.keys.contains("sysDiskType") && dict["sysDiskType"] != nil {
                self.sysDiskType = dict["sysDiskType"] as! String
            }
            if dict.keys.contains("systemDiskPerformanceLevel") && dict["systemDiskPerformanceLevel"] != nil {
                self.systemDiskPerformanceLevel = dict["systemDiskPerformanceLevel"] as! String
            }
        }
    }
    public var autoRenew: String?

    public var clientToken: String?

    public var dedicatedHostGroupDescription: String?

    public var dedicatedHostGroupId: String?

    public var ECSClassList: [CreateMyBaseRequest.ECSClassList]?

    public var ecsDeploymentSetId: String?

    public var ecsHostName: String?

    public var ecsInstanceName: String?

    public var ecsUniqueSuffix: String?

    public var engine: String?

    public var imageId: String?

    public var keyPairName: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var passwordInherit: String?

    public var payType: String?

    public var period: String?

    public var periodType: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedHostGroupDescription != nil {
            map["DedicatedHostGroupDescription"] = self.dedicatedHostGroupDescription!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.ECSClassList != nil {
            var tmp : [Any] = []
            for k in self.ECSClassList! {
                tmp.append(k.toMap())
            }
            map["ECSClassList"] = tmp
        }
        if self.ecsDeploymentSetId != nil {
            map["EcsDeploymentSetId"] = self.ecsDeploymentSetId!
        }
        if self.ecsHostName != nil {
            map["EcsHostName"] = self.ecsHostName!
        }
        if self.ecsInstanceName != nil {
            map["EcsInstanceName"] = self.ecsInstanceName!
        }
        if self.ecsUniqueSuffix != nil {
            map["EcsUniqueSuffix"] = self.ecsUniqueSuffix!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.osPassword != nil {
            map["OsPassword"] = self.osPassword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.passwordInherit != nil {
            map["PasswordInherit"] = self.passwordInherit!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
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
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupDescription") && dict["DedicatedHostGroupDescription"] != nil {
            self.dedicatedHostGroupDescription = dict["DedicatedHostGroupDescription"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("ECSClassList") && dict["ECSClassList"] != nil {
            var tmp : [CreateMyBaseRequest.ECSClassList] = []
            for v in dict["ECSClassList"] as! [Any] {
                var model = CreateMyBaseRequest.ECSClassList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.ECSClassList = tmp
        }
        if dict.keys.contains("EcsDeploymentSetId") && dict["EcsDeploymentSetId"] != nil {
            self.ecsDeploymentSetId = dict["EcsDeploymentSetId"] as! String
        }
        if dict.keys.contains("EcsHostName") && dict["EcsHostName"] != nil {
            self.ecsHostName = dict["EcsHostName"] as! String
        }
        if dict.keys.contains("EcsInstanceName") && dict["EcsInstanceName"] != nil {
            self.ecsInstanceName = dict["EcsInstanceName"] as! String
        }
        if dict.keys.contains("EcsUniqueSuffix") && dict["EcsUniqueSuffix"] != nil {
            self.ecsUniqueSuffix = dict["EcsUniqueSuffix"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("KeyPairName") && dict["KeyPairName"] != nil {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("OsPassword") && dict["OsPassword"] != nil {
            self.osPassword = dict["OsPassword"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PasswordInherit") && dict["PasswordInherit"] != nil {
            self.passwordInherit = dict["PasswordInherit"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PeriodType") && dict["PeriodType"] != nil {
            self.periodType = dict["PeriodType"] as! String
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
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
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

public class CreateMyBaseShrinkRequest : Tea.TeaModel {
    public var autoRenew: String?

    public var clientToken: String?

    public var dedicatedHostGroupDescription: String?

    public var dedicatedHostGroupId: String?

    public var ECSClassListShrink: String?

    public var ecsDeploymentSetId: String?

    public var ecsHostName: String?

    public var ecsInstanceName: String?

    public var ecsUniqueSuffix: String?

    public var engine: String?

    public var imageId: String?

    public var keyPairName: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var passwordInherit: String?

    public var payType: String?

    public var period: String?

    public var periodType: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.dedicatedHostGroupDescription != nil {
            map["DedicatedHostGroupDescription"] = self.dedicatedHostGroupDescription!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.ECSClassListShrink != nil {
            map["ECSClassList"] = self.ECSClassListShrink!
        }
        if self.ecsDeploymentSetId != nil {
            map["EcsDeploymentSetId"] = self.ecsDeploymentSetId!
        }
        if self.ecsHostName != nil {
            map["EcsHostName"] = self.ecsHostName!
        }
        if self.ecsInstanceName != nil {
            map["EcsInstanceName"] = self.ecsInstanceName!
        }
        if self.ecsUniqueSuffix != nil {
            map["EcsUniqueSuffix"] = self.ecsUniqueSuffix!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.osPassword != nil {
            map["OsPassword"] = self.osPassword!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.passwordInherit != nil {
            map["PasswordInherit"] = self.passwordInherit!
        }
        if self.payType != nil {
            map["PayType"] = self.payType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodType != nil {
            map["PeriodType"] = self.periodType!
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
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupDescription") && dict["DedicatedHostGroupDescription"] != nil {
            self.dedicatedHostGroupDescription = dict["DedicatedHostGroupDescription"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("ECSClassList") && dict["ECSClassList"] != nil {
            self.ECSClassListShrink = dict["ECSClassList"] as! String
        }
        if dict.keys.contains("EcsDeploymentSetId") && dict["EcsDeploymentSetId"] != nil {
            self.ecsDeploymentSetId = dict["EcsDeploymentSetId"] as! String
        }
        if dict.keys.contains("EcsHostName") && dict["EcsHostName"] != nil {
            self.ecsHostName = dict["EcsHostName"] as! String
        }
        if dict.keys.contains("EcsInstanceName") && dict["EcsInstanceName"] != nil {
            self.ecsInstanceName = dict["EcsInstanceName"] as! String
        }
        if dict.keys.contains("EcsUniqueSuffix") && dict["EcsUniqueSuffix"] != nil {
            self.ecsUniqueSuffix = dict["EcsUniqueSuffix"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("KeyPairName") && dict["KeyPairName"] != nil {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("OsPassword") && dict["OsPassword"] != nil {
            self.osPassword = dict["OsPassword"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PasswordInherit") && dict["PasswordInherit"] != nil {
            self.passwordInherit = dict["PasswordInherit"] as! String
        }
        if dict.keys.contains("PayType") && dict["PayType"] != nil {
            self.payType = dict["PayType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PeriodType") && dict["PeriodType"] != nil {
            self.periodType = dict["PeriodType"] as! String
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
        if dict.keys.contains("SecurityGroupId") && dict["SecurityGroupId"] != nil {
            self.securityGroupId = dict["SecurityGroupId"] as! String
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

public class CreateMyBaseResponseBody : Tea.TeaModel {
    public class OrderList : Tea.TeaModel {
        public class OrderList : Tea.TeaModel {
            public var createTimestamp: Int64?

            public var dedicatedHostGroupName: String?

            public var ECSInstanceIds: String?

            public var orderId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.createTimestamp != nil {
                    map["CreateTimestamp"] = self.createTimestamp!
                }
                if self.dedicatedHostGroupName != nil {
                    map["DedicatedHostGroupName"] = self.dedicatedHostGroupName!
                }
                if self.ECSInstanceIds != nil {
                    map["ECSInstanceIds"] = self.ECSInstanceIds!
                }
                if self.orderId != nil {
                    map["OrderId"] = self.orderId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTimestamp") && dict["CreateTimestamp"] != nil {
                    self.createTimestamp = dict["CreateTimestamp"] as! Int64
                }
                if dict.keys.contains("DedicatedHostGroupName") && dict["DedicatedHostGroupName"] != nil {
                    self.dedicatedHostGroupName = dict["DedicatedHostGroupName"] as! String
                }
                if dict.keys.contains("ECSInstanceIds") && dict["ECSInstanceIds"] != nil {
                    self.ECSInstanceIds = dict["ECSInstanceIds"] as! String
                }
                if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
                    self.orderId = dict["OrderId"] as! String
                }
            }
        }
        public var orderList: [CreateMyBaseResponseBody.OrderList.OrderList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.orderList != nil {
                var tmp : [Any] = []
                for k in self.orderList! {
                    tmp.append(k.toMap())
                }
                map["OrderList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OrderList") && dict["OrderList"] != nil {
                var tmp : [CreateMyBaseResponseBody.OrderList.OrderList] = []
                for v in dict["OrderList"] as! [Any] {
                    var model = CreateMyBaseResponseBody.OrderList.OrderList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.orderList = tmp
            }
        }
    }
    public var orderList: CreateMyBaseResponseBody.OrderList?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.orderList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.orderList != nil {
            map["OrderList"] = self.orderList?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OrderList") && dict["OrderList"] != nil {
            var model = CreateMyBaseResponseBody.OrderList()
            model.fromMap(dict["OrderList"] as! [String: Any])
            self.orderList = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMyBaseResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMyBaseResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateMyBaseResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDedicatedHostAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class DeleteDedicatedHostAccountResponseBody : Tea.TeaModel {
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

public class DeleteDedicatedHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDedicatedHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDedicatedHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteDedicatedHostGroupRequest : Tea.TeaModel {
    public var dedicatedHostGroupId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
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
    }
}

public class DeleteDedicatedHostGroupResponseBody : Tea.TeaModel {
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

public class DeleteDedicatedHostGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteDedicatedHostGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteDedicatedHostGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedHostAttributeRequest : Tea.TeaModel {
    public var dedicatedHostGroupId: String?

    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class DescribeDedicatedHostAttributeResponseBody : Tea.TeaModel {
    public var accountName: String?

    public var accountType: String?

    public var allocationStatus: String?

    public var autoRenew: String?

    public var CPUAllocationRatio: String?

    public var cpuUsed: String?

    public var createdTime: String?

    public var dedicatedHostGroupId: String?

    public var dedicatedHostId: String?

    public var diskAllocationRatio: String?

    public var distributionTag: String?

    public var ecsClassCode: String?

    public var expiredTime: String?

    public var hostCPU: Int32?

    public var hostClass: String?

    public var hostMem: Int32?

    public var hostName: String?

    public var hostStatus: String?

    public var hostStorage: Int32?

    public var hostType: String?

    public var IPAddress: String?

    public var imageCategory: String?

    public var instanceNumber: Int32?

    public var instanceNumberMaster: Int32?

    public var instanceNumberROMaster: Int32?

    public var instanceNumberROSlave: Int32?

    public var instanceNumberSlave: Int32?

    public var memAllocationRatio: String?

    public var memoryUsed: String?

    public var openPermission: String?

    public var regionId: String?

    public var requestId: String?

    public var storageUsed: String?

    public var VPCId: String?

    public var vSwitchId: String?

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
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.allocationStatus != nil {
            map["AllocationStatus"] = self.allocationStatus!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.CPUAllocationRatio != nil {
            map["CPUAllocationRatio"] = self.CPUAllocationRatio!
        }
        if self.cpuUsed != nil {
            map["CpuUsed"] = self.cpuUsed!
        }
        if self.createdTime != nil {
            map["CreatedTime"] = self.createdTime!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.diskAllocationRatio != nil {
            map["DiskAllocationRatio"] = self.diskAllocationRatio!
        }
        if self.distributionTag != nil {
            map["DistributionTag"] = self.distributionTag!
        }
        if self.ecsClassCode != nil {
            map["EcsClassCode"] = self.ecsClassCode!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.hostCPU != nil {
            map["HostCPU"] = self.hostCPU!
        }
        if self.hostClass != nil {
            map["HostClass"] = self.hostClass!
        }
        if self.hostMem != nil {
            map["HostMem"] = self.hostMem!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.hostStatus != nil {
            map["HostStatus"] = self.hostStatus!
        }
        if self.hostStorage != nil {
            map["HostStorage"] = self.hostStorage!
        }
        if self.hostType != nil {
            map["HostType"] = self.hostType!
        }
        if self.IPAddress != nil {
            map["IPAddress"] = self.IPAddress!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
        }
        if self.instanceNumber != nil {
            map["InstanceNumber"] = self.instanceNumber!
        }
        if self.instanceNumberMaster != nil {
            map["InstanceNumberMaster"] = self.instanceNumberMaster!
        }
        if self.instanceNumberROMaster != nil {
            map["InstanceNumberROMaster"] = self.instanceNumberROMaster!
        }
        if self.instanceNumberROSlave != nil {
            map["InstanceNumberROSlave"] = self.instanceNumberROSlave!
        }
        if self.instanceNumberSlave != nil {
            map["InstanceNumberSlave"] = self.instanceNumberSlave!
        }
        if self.memAllocationRatio != nil {
            map["MemAllocationRatio"] = self.memAllocationRatio!
        }
        if self.memoryUsed != nil {
            map["MemoryUsed"] = self.memoryUsed!
        }
        if self.openPermission != nil {
            map["OpenPermission"] = self.openPermission!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.storageUsed != nil {
            map["StorageUsed"] = self.storageUsed!
        }
        if self.VPCId != nil {
            map["VPCId"] = self.VPCId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
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
        if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("AllocationStatus") && dict["AllocationStatus"] != nil {
            self.allocationStatus = dict["AllocationStatus"] as! String
        }
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("CPUAllocationRatio") && dict["CPUAllocationRatio"] != nil {
            self.CPUAllocationRatio = dict["CPUAllocationRatio"] as! String
        }
        if dict.keys.contains("CpuUsed") && dict["CpuUsed"] != nil {
            self.cpuUsed = dict["CpuUsed"] as! String
        }
        if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
            self.createdTime = dict["CreatedTime"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("DiskAllocationRatio") && dict["DiskAllocationRatio"] != nil {
            self.diskAllocationRatio = dict["DiskAllocationRatio"] as! String
        }
        if dict.keys.contains("DistributionTag") && dict["DistributionTag"] != nil {
            self.distributionTag = dict["DistributionTag"] as! String
        }
        if dict.keys.contains("EcsClassCode") && dict["EcsClassCode"] != nil {
            self.ecsClassCode = dict["EcsClassCode"] as! String
        }
        if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("HostCPU") && dict["HostCPU"] != nil {
            self.hostCPU = dict["HostCPU"] as! Int32
        }
        if dict.keys.contains("HostClass") && dict["HostClass"] != nil {
            self.hostClass = dict["HostClass"] as! String
        }
        if dict.keys.contains("HostMem") && dict["HostMem"] != nil {
            self.hostMem = dict["HostMem"] as! Int32
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("HostStatus") && dict["HostStatus"] != nil {
            self.hostStatus = dict["HostStatus"] as! String
        }
        if dict.keys.contains("HostStorage") && dict["HostStorage"] != nil {
            self.hostStorage = dict["HostStorage"] as! Int32
        }
        if dict.keys.contains("HostType") && dict["HostType"] != nil {
            self.hostType = dict["HostType"] as! String
        }
        if dict.keys.contains("IPAddress") && dict["IPAddress"] != nil {
            self.IPAddress = dict["IPAddress"] as! String
        }
        if dict.keys.contains("ImageCategory") && dict["ImageCategory"] != nil {
            self.imageCategory = dict["ImageCategory"] as! String
        }
        if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
            self.instanceNumber = dict["InstanceNumber"] as! Int32
        }
        if dict.keys.contains("InstanceNumberMaster") && dict["InstanceNumberMaster"] != nil {
            self.instanceNumberMaster = dict["InstanceNumberMaster"] as! Int32
        }
        if dict.keys.contains("InstanceNumberROMaster") && dict["InstanceNumberROMaster"] != nil {
            self.instanceNumberROMaster = dict["InstanceNumberROMaster"] as! Int32
        }
        if dict.keys.contains("InstanceNumberROSlave") && dict["InstanceNumberROSlave"] != nil {
            self.instanceNumberROSlave = dict["InstanceNumberROSlave"] as! Int32
        }
        if dict.keys.contains("InstanceNumberSlave") && dict["InstanceNumberSlave"] != nil {
            self.instanceNumberSlave = dict["InstanceNumberSlave"] as! Int32
        }
        if dict.keys.contains("MemAllocationRatio") && dict["MemAllocationRatio"] != nil {
            self.memAllocationRatio = dict["MemAllocationRatio"] as! String
        }
        if dict.keys.contains("MemoryUsed") && dict["MemoryUsed"] != nil {
            self.memoryUsed = dict["MemoryUsed"] as! String
        }
        if dict.keys.contains("OpenPermission") && dict["OpenPermission"] != nil {
            self.openPermission = dict["OpenPermission"] as! String
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("StorageUsed") && dict["StorageUsed"] != nil {
            self.storageUsed = dict["StorageUsed"] as! String
        }
        if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
            self.VPCId = dict["VPCId"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeDedicatedHostAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedHostAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedHostAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedHostDisksRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class DescribeDedicatedHostDisksResponseBody : Tea.TeaModel {
    public class Disks : Tea.TeaModel {
        public var category: String?

        public var DBInstanceId: String?

        public var device: String?

        public var diskId: String?

        public var hasDBInstance: Bool?

        public var maxIOPS: Int32?

        public var maxThroughput: Int32?

        public var performanceLevel: String?

        public var size: Int32?

        public var status: String?

        public var type: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.hasDBInstance != nil {
                map["HasDBInstance"] = self.hasDBInstance!
            }
            if self.maxIOPS != nil {
                map["MaxIOPS"] = self.maxIOPS!
            }
            if self.maxThroughput != nil {
                map["MaxThroughput"] = self.maxThroughput!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("Device") && dict["Device"] != nil {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("DiskId") && dict["DiskId"] != nil {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("HasDBInstance") && dict["HasDBInstance"] != nil {
                self.hasDBInstance = dict["HasDBInstance"] as! Bool
            }
            if dict.keys.contains("MaxIOPS") && dict["MaxIOPS"] != nil {
                self.maxIOPS = dict["MaxIOPS"] as! Int32
            }
            if dict.keys.contains("MaxThroughput") && dict["MaxThroughput"] != nil {
                self.maxThroughput = dict["MaxThroughput"] as! Int32
            }
            if dict.keys.contains("PerformanceLevel") && dict["PerformanceLevel"] != nil {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! Int32
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Type") && dict["Type"] != nil {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var dedicatedHostId: String?

    public var disks: [DescribeDedicatedHostDisksResponseBody.Disks]?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.disks != nil {
            var tmp : [Any] = []
            for k in self.disks! {
                tmp.append(k.toMap())
            }
            map["Disks"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("Disks") && dict["Disks"] != nil {
            var tmp : [DescribeDedicatedHostDisksResponseBody.Disks] = []
            for v in dict["Disks"] as! [Any] {
                var model = DescribeDedicatedHostDisksResponseBody.Disks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.disks = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDedicatedHostDisksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedHostDisksResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedHostDisksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedHostGroupsRequest : Tea.TeaModel {
    public var dedicatedHostGroupId: String?

    public var engine: String?

    public var imageCategory: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.engine != nil {
            map["Engine"] = self.engine!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("Engine") && dict["Engine"] != nil {
            self.engine = dict["Engine"] as! String
        }
        if dict.keys.contains("ImageCategory") && dict["ImageCategory"] != nil {
            self.imageCategory = dict["ImageCategory"] as! String
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
    }
}

public class DescribeDedicatedHostGroupsResponseBody : Tea.TeaModel {
    public class DedicatedHostGroups : Tea.TeaModel {
        public class DedicatedHostGroups : Tea.TeaModel {
            public class ZoneIDList : Tea.TeaModel {
                public var zoneIDList: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.zoneIDList != nil {
                        map["ZoneIDList"] = self.zoneIDList!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ZoneIDList") && dict["ZoneIDList"] != nil {
                        self.zoneIDList = dict["ZoneIDList"] as! [String]
                    }
                }
            }
            public var allocationPolicy: String?

            public var bastionInstanceId: String?

            public var category: String?

            public var cpuAllocateRation: Double?

            public var cpuAllocatedAmount: Double?

            public var cpuAllocationRatio: Int32?

            public var createTime: String?

            public var dedicatedHostCountGroupByHostType: [String: Any]?

            public var dedicatedHostGroupDesc: String?

            public var dedicatedHostGroupId: String?

            public var deployType: String?

            public var diskAllocateRation: Double?

            public var diskAllocatedAmount: Double?

            public var diskAllocationRatio: Int32?

            public var diskUsedAmount: Double?

            public var diskUtility: Double?

            public var engine: String?

            public var hostNumber: Int32?

            public var hostReplacePolicy: String?

            public var instanceNumber: Int32?

            public var memAllocateRation: Double?

            public var memAllocatedAmount: Double?

            public var memAllocationRatio: Int32?

            public var memUsedAmount: Double?

            public var memUtility: Double?

            public var openPermission: String?

            public var text: String?

            public var VPCId: String?

            public var zoneIDList: DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups.ZoneIDList?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.zoneIDList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocationPolicy != nil {
                    map["AllocationPolicy"] = self.allocationPolicy!
                }
                if self.bastionInstanceId != nil {
                    map["BastionInstanceId"] = self.bastionInstanceId!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.cpuAllocateRation != nil {
                    map["CpuAllocateRation"] = self.cpuAllocateRation!
                }
                if self.cpuAllocatedAmount != nil {
                    map["CpuAllocatedAmount"] = self.cpuAllocatedAmount!
                }
                if self.cpuAllocationRatio != nil {
                    map["CpuAllocationRatio"] = self.cpuAllocationRatio!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.dedicatedHostCountGroupByHostType != nil {
                    map["DedicatedHostCountGroupByHostType"] = self.dedicatedHostCountGroupByHostType!
                }
                if self.dedicatedHostGroupDesc != nil {
                    map["DedicatedHostGroupDesc"] = self.dedicatedHostGroupDesc!
                }
                if self.dedicatedHostGroupId != nil {
                    map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
                }
                if self.deployType != nil {
                    map["DeployType"] = self.deployType!
                }
                if self.diskAllocateRation != nil {
                    map["DiskAllocateRation"] = self.diskAllocateRation!
                }
                if self.diskAllocatedAmount != nil {
                    map["DiskAllocatedAmount"] = self.diskAllocatedAmount!
                }
                if self.diskAllocationRatio != nil {
                    map["DiskAllocationRatio"] = self.diskAllocationRatio!
                }
                if self.diskUsedAmount != nil {
                    map["DiskUsedAmount"] = self.diskUsedAmount!
                }
                if self.diskUtility != nil {
                    map["DiskUtility"] = self.diskUtility!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.hostNumber != nil {
                    map["HostNumber"] = self.hostNumber!
                }
                if self.hostReplacePolicy != nil {
                    map["HostReplacePolicy"] = self.hostReplacePolicy!
                }
                if self.instanceNumber != nil {
                    map["InstanceNumber"] = self.instanceNumber!
                }
                if self.memAllocateRation != nil {
                    map["MemAllocateRation"] = self.memAllocateRation!
                }
                if self.memAllocatedAmount != nil {
                    map["MemAllocatedAmount"] = self.memAllocatedAmount!
                }
                if self.memAllocationRatio != nil {
                    map["MemAllocationRatio"] = self.memAllocationRatio!
                }
                if self.memUsedAmount != nil {
                    map["MemUsedAmount"] = self.memUsedAmount!
                }
                if self.memUtility != nil {
                    map["MemUtility"] = self.memUtility!
                }
                if self.openPermission != nil {
                    map["OpenPermission"] = self.openPermission!
                }
                if self.text != nil {
                    map["Text"] = self.text!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.zoneIDList != nil {
                    map["ZoneIDList"] = self.zoneIDList?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllocationPolicy") && dict["AllocationPolicy"] != nil {
                    self.allocationPolicy = dict["AllocationPolicy"] as! String
                }
                if dict.keys.contains("BastionInstanceId") && dict["BastionInstanceId"] != nil {
                    self.bastionInstanceId = dict["BastionInstanceId"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CpuAllocateRation") && dict["CpuAllocateRation"] != nil {
                    self.cpuAllocateRation = dict["CpuAllocateRation"] as! Double
                }
                if dict.keys.contains("CpuAllocatedAmount") && dict["CpuAllocatedAmount"] != nil {
                    self.cpuAllocatedAmount = dict["CpuAllocatedAmount"] as! Double
                }
                if dict.keys.contains("CpuAllocationRatio") && dict["CpuAllocationRatio"] != nil {
                    self.cpuAllocationRatio = dict["CpuAllocationRatio"] as! Int32
                }
                if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DedicatedHostCountGroupByHostType") && dict["DedicatedHostCountGroupByHostType"] != nil {
                    self.dedicatedHostCountGroupByHostType = dict["DedicatedHostCountGroupByHostType"] as! [String: Any]
                }
                if dict.keys.contains("DedicatedHostGroupDesc") && dict["DedicatedHostGroupDesc"] != nil {
                    self.dedicatedHostGroupDesc = dict["DedicatedHostGroupDesc"] as! String
                }
                if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
                    self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
                }
                if dict.keys.contains("DeployType") && dict["DeployType"] != nil {
                    self.deployType = dict["DeployType"] as! String
                }
                if dict.keys.contains("DiskAllocateRation") && dict["DiskAllocateRation"] != nil {
                    self.diskAllocateRation = dict["DiskAllocateRation"] as! Double
                }
                if dict.keys.contains("DiskAllocatedAmount") && dict["DiskAllocatedAmount"] != nil {
                    self.diskAllocatedAmount = dict["DiskAllocatedAmount"] as! Double
                }
                if dict.keys.contains("DiskAllocationRatio") && dict["DiskAllocationRatio"] != nil {
                    self.diskAllocationRatio = dict["DiskAllocationRatio"] as! Int32
                }
                if dict.keys.contains("DiskUsedAmount") && dict["DiskUsedAmount"] != nil {
                    self.diskUsedAmount = dict["DiskUsedAmount"] as! Double
                }
                if dict.keys.contains("DiskUtility") && dict["DiskUtility"] != nil {
                    self.diskUtility = dict["DiskUtility"] as! Double
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("HostNumber") && dict["HostNumber"] != nil {
                    self.hostNumber = dict["HostNumber"] as! Int32
                }
                if dict.keys.contains("HostReplacePolicy") && dict["HostReplacePolicy"] != nil {
                    self.hostReplacePolicy = dict["HostReplacePolicy"] as! String
                }
                if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
                    self.instanceNumber = dict["InstanceNumber"] as! Int32
                }
                if dict.keys.contains("MemAllocateRation") && dict["MemAllocateRation"] != nil {
                    self.memAllocateRation = dict["MemAllocateRation"] as! Double
                }
                if dict.keys.contains("MemAllocatedAmount") && dict["MemAllocatedAmount"] != nil {
                    self.memAllocatedAmount = dict["MemAllocatedAmount"] as! Double
                }
                if dict.keys.contains("MemAllocationRatio") && dict["MemAllocationRatio"] != nil {
                    self.memAllocationRatio = dict["MemAllocationRatio"] as! Int32
                }
                if dict.keys.contains("MemUsedAmount") && dict["MemUsedAmount"] != nil {
                    self.memUsedAmount = dict["MemUsedAmount"] as! Double
                }
                if dict.keys.contains("MemUtility") && dict["MemUtility"] != nil {
                    self.memUtility = dict["MemUtility"] as! Double
                }
                if dict.keys.contains("OpenPermission") && dict["OpenPermission"] != nil {
                    self.openPermission = dict["OpenPermission"] as! String
                }
                if dict.keys.contains("Text") && dict["Text"] != nil {
                    self.text = dict["Text"] as! String
                }
                if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("ZoneIDList") && dict["ZoneIDList"] != nil {
                    var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups.ZoneIDList()
                    model.fromMap(dict["ZoneIDList"] as! [String: Any])
                    self.zoneIDList = model
                }
            }
        }
        public var dedicatedHostGroups: [DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dedicatedHostGroups != nil {
                var tmp : [Any] = []
                for k in self.dedicatedHostGroups! {
                    tmp.append(k.toMap())
                }
                map["DedicatedHostGroups"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DedicatedHostGroups") && dict["DedicatedHostGroups"] != nil {
                var tmp : [DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups] = []
                for v in dict["DedicatedHostGroups"] as! [Any] {
                    var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dedicatedHostGroups = tmp
            }
        }
    }
    public var dedicatedHostGroups: DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dedicatedHostGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedHostGroups != nil {
            map["DedicatedHostGroups"] = self.dedicatedHostGroups?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroups") && dict["DedicatedHostGroups"] != nil {
            var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups()
            model.fromMap(dict["DedicatedHostGroups"] as! [String: Any])
            self.dedicatedHostGroups = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeDedicatedHostGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedHostGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedHostGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeDedicatedHostsRequest : Tea.TeaModel {
    public var allocationStatus: String?

    public var dedicatedHostGroupId: String?

    public var dedicatedHostId: String?

    public var hostStatus: String?

    public var hostType: String?

    public var orderId: Int64?

    public var ownerId: Int64?

    public var pageNumbers: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var tags: String?

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
        if self.allocationStatus != nil {
            map["AllocationStatus"] = self.allocationStatus!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.hostStatus != nil {
            map["HostStatus"] = self.hostStatus!
        }
        if self.hostType != nil {
            map["HostType"] = self.hostType!
        }
        if self.orderId != nil {
            map["OrderId"] = self.orderId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.pageNumbers != nil {
            map["PageNumbers"] = self.pageNumbers!
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
        if self.tags != nil {
            map["Tags"] = self.tags!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocationStatus") && dict["AllocationStatus"] != nil {
            self.allocationStatus = dict["AllocationStatus"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("HostStatus") && dict["HostStatus"] != nil {
            self.hostStatus = dict["HostStatus"] as! String
        }
        if dict.keys.contains("HostType") && dict["HostType"] != nil {
            self.hostType = dict["HostType"] as! String
        }
        if dict.keys.contains("OrderId") && dict["OrderId"] != nil {
            self.orderId = dict["OrderId"] as! Int64
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumbers") && dict["PageNumbers"] != nil {
            self.pageNumbers = dict["PageNumbers"] as! Int32
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
        if dict.keys.contains("Tags") && dict["Tags"] != nil {
            self.tags = dict["Tags"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeDedicatedHostsResponseBody : Tea.TeaModel {
    public class DedicatedHosts : Tea.TeaModel {
        public class DedicatedHosts : Tea.TeaModel {
            public var accountName: String?

            public var accountType: String?

            public var allocationStatus: String?

            public var bastionInstanceId: String?

            public var CPUAllocationRatio: String?

            public var category: String?

            public var chargeType: String?

            public var cpuUsed: String?

            public var createdTime: String?

            public var dedicatedHostGroupId: String?

            public var dedicatedHostId: String?

            public var diskAllocationRatio: String?

            public var diskInfo: String?

            public var distributionSymbol: String?

            public var distributionTag: String?

            public var ecsClassCode: String?

            public var ecsId: String?

            public var endTime: String?

            public var engine: String?

            public var hostCPU: String?

            public var hostClass: String?

            public var hostMem: String?

            public var hostName: String?

            public var hostStatus: String?

            public var hostStorage: String?

            public var hostType: String?

            public var IPAddress: String?

            public var imageCategory: String?

            public var instanceNumber: String?

            public var memAllocationRatio: String?

            public var memoryUsed: String?

            public var mssqlSupportVersion: String?

            public var openPermission: String?

            public var storageUsed: String?

            public var VPCId: String?

            public var vSwitchId: String?

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
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.allocationStatus != nil {
                    map["AllocationStatus"] = self.allocationStatus!
                }
                if self.bastionInstanceId != nil {
                    map["BastionInstanceId"] = self.bastionInstanceId!
                }
                if self.CPUAllocationRatio != nil {
                    map["CPUAllocationRatio"] = self.CPUAllocationRatio!
                }
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.chargeType != nil {
                    map["ChargeType"] = self.chargeType!
                }
                if self.cpuUsed != nil {
                    map["CpuUsed"] = self.cpuUsed!
                }
                if self.createdTime != nil {
                    map["CreatedTime"] = self.createdTime!
                }
                if self.dedicatedHostGroupId != nil {
                    map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
                }
                if self.dedicatedHostId != nil {
                    map["DedicatedHostId"] = self.dedicatedHostId!
                }
                if self.diskAllocationRatio != nil {
                    map["DiskAllocationRatio"] = self.diskAllocationRatio!
                }
                if self.diskInfo != nil {
                    map["DiskInfo"] = self.diskInfo!
                }
                if self.distributionSymbol != nil {
                    map["DistributionSymbol"] = self.distributionSymbol!
                }
                if self.distributionTag != nil {
                    map["DistributionTag"] = self.distributionTag!
                }
                if self.ecsClassCode != nil {
                    map["EcsClassCode"] = self.ecsClassCode!
                }
                if self.ecsId != nil {
                    map["EcsId"] = self.ecsId!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.engine != nil {
                    map["Engine"] = self.engine!
                }
                if self.hostCPU != nil {
                    map["HostCPU"] = self.hostCPU!
                }
                if self.hostClass != nil {
                    map["HostClass"] = self.hostClass!
                }
                if self.hostMem != nil {
                    map["HostMem"] = self.hostMem!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.hostStatus != nil {
                    map["HostStatus"] = self.hostStatus!
                }
                if self.hostStorage != nil {
                    map["HostStorage"] = self.hostStorage!
                }
                if self.hostType != nil {
                    map["HostType"] = self.hostType!
                }
                if self.IPAddress != nil {
                    map["IPAddress"] = self.IPAddress!
                }
                if self.imageCategory != nil {
                    map["ImageCategory"] = self.imageCategory!
                }
                if self.instanceNumber != nil {
                    map["InstanceNumber"] = self.instanceNumber!
                }
                if self.memAllocationRatio != nil {
                    map["MemAllocationRatio"] = self.memAllocationRatio!
                }
                if self.memoryUsed != nil {
                    map["MemoryUsed"] = self.memoryUsed!
                }
                if self.mssqlSupportVersion != nil {
                    map["MssqlSupportVersion"] = self.mssqlSupportVersion!
                }
                if self.openPermission != nil {
                    map["OpenPermission"] = self.openPermission!
                }
                if self.storageUsed != nil {
                    map["StorageUsed"] = self.storageUsed!
                }
                if self.VPCId != nil {
                    map["VPCId"] = self.VPCId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
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
                if dict.keys.contains("AccountType") && dict["AccountType"] != nil {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("AllocationStatus") && dict["AllocationStatus"] != nil {
                    self.allocationStatus = dict["AllocationStatus"] as! String
                }
                if dict.keys.contains("BastionInstanceId") && dict["BastionInstanceId"] != nil {
                    self.bastionInstanceId = dict["BastionInstanceId"] as! String
                }
                if dict.keys.contains("CPUAllocationRatio") && dict["CPUAllocationRatio"] != nil {
                    self.CPUAllocationRatio = dict["CPUAllocationRatio"] as! String
                }
                if dict.keys.contains("Category") && dict["Category"] != nil {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("ChargeType") && dict["ChargeType"] != nil {
                    self.chargeType = dict["ChargeType"] as! String
                }
                if dict.keys.contains("CpuUsed") && dict["CpuUsed"] != nil {
                    self.cpuUsed = dict["CpuUsed"] as! String
                }
                if dict.keys.contains("CreatedTime") && dict["CreatedTime"] != nil {
                    self.createdTime = dict["CreatedTime"] as! String
                }
                if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
                    self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
                }
                if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
                    self.dedicatedHostId = dict["DedicatedHostId"] as! String
                }
                if dict.keys.contains("DiskAllocationRatio") && dict["DiskAllocationRatio"] != nil {
                    self.diskAllocationRatio = dict["DiskAllocationRatio"] as! String
                }
                if dict.keys.contains("DiskInfo") && dict["DiskInfo"] != nil {
                    self.diskInfo = dict["DiskInfo"] as! String
                }
                if dict.keys.contains("DistributionSymbol") && dict["DistributionSymbol"] != nil {
                    self.distributionSymbol = dict["DistributionSymbol"] as! String
                }
                if dict.keys.contains("DistributionTag") && dict["DistributionTag"] != nil {
                    self.distributionTag = dict["DistributionTag"] as! String
                }
                if dict.keys.contains("EcsClassCode") && dict["EcsClassCode"] != nil {
                    self.ecsClassCode = dict["EcsClassCode"] as! String
                }
                if dict.keys.contains("EcsId") && dict["EcsId"] != nil {
                    self.ecsId = dict["EcsId"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("Engine") && dict["Engine"] != nil {
                    self.engine = dict["Engine"] as! String
                }
                if dict.keys.contains("HostCPU") && dict["HostCPU"] != nil {
                    self.hostCPU = dict["HostCPU"] as! String
                }
                if dict.keys.contains("HostClass") && dict["HostClass"] != nil {
                    self.hostClass = dict["HostClass"] as! String
                }
                if dict.keys.contains("HostMem") && dict["HostMem"] != nil {
                    self.hostMem = dict["HostMem"] as! String
                }
                if dict.keys.contains("HostName") && dict["HostName"] != nil {
                    self.hostName = dict["HostName"] as! String
                }
                if dict.keys.contains("HostStatus") && dict["HostStatus"] != nil {
                    self.hostStatus = dict["HostStatus"] as! String
                }
                if dict.keys.contains("HostStorage") && dict["HostStorage"] != nil {
                    self.hostStorage = dict["HostStorage"] as! String
                }
                if dict.keys.contains("HostType") && dict["HostType"] != nil {
                    self.hostType = dict["HostType"] as! String
                }
                if dict.keys.contains("IPAddress") && dict["IPAddress"] != nil {
                    self.IPAddress = dict["IPAddress"] as! String
                }
                if dict.keys.contains("ImageCategory") && dict["ImageCategory"] != nil {
                    self.imageCategory = dict["ImageCategory"] as! String
                }
                if dict.keys.contains("InstanceNumber") && dict["InstanceNumber"] != nil {
                    self.instanceNumber = dict["InstanceNumber"] as! String
                }
                if dict.keys.contains("MemAllocationRatio") && dict["MemAllocationRatio"] != nil {
                    self.memAllocationRatio = dict["MemAllocationRatio"] as! String
                }
                if dict.keys.contains("MemoryUsed") && dict["MemoryUsed"] != nil {
                    self.memoryUsed = dict["MemoryUsed"] as! String
                }
                if dict.keys.contains("MssqlSupportVersion") && dict["MssqlSupportVersion"] != nil {
                    self.mssqlSupportVersion = dict["MssqlSupportVersion"] as! String
                }
                if dict.keys.contains("OpenPermission") && dict["OpenPermission"] != nil {
                    self.openPermission = dict["OpenPermission"] as! String
                }
                if dict.keys.contains("StorageUsed") && dict["StorageUsed"] != nil {
                    self.storageUsed = dict["StorageUsed"] as! String
                }
                if dict.keys.contains("VPCId") && dict["VPCId"] != nil {
                    self.VPCId = dict["VPCId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var dedicatedHosts: [DescribeDedicatedHostsResponseBody.DedicatedHosts.DedicatedHosts]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dedicatedHosts != nil {
                var tmp : [Any] = []
                for k in self.dedicatedHosts! {
                    tmp.append(k.toMap())
                }
                map["DedicatedHosts"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DedicatedHosts") && dict["DedicatedHosts"] != nil {
                var tmp : [DescribeDedicatedHostsResponseBody.DedicatedHosts.DedicatedHosts] = []
                for v in dict["DedicatedHosts"] as! [Any] {
                    var model = DescribeDedicatedHostsResponseBody.DedicatedHosts.DedicatedHosts()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dedicatedHosts = tmp
            }
        }
    }
    public var dedicatedHostGroupId: String?

    public var dedicatedHosts: DescribeDedicatedHostsResponseBody.DedicatedHosts?

    public var maxAutoScaleHostStorage: Int64?

    public var pageNumbers: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalRecords: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.dedicatedHosts?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.dedicatedHosts != nil {
            map["DedicatedHosts"] = self.dedicatedHosts?.toMap()
        }
        if self.maxAutoScaleHostStorage != nil {
            map["MaxAutoScaleHostStorage"] = self.maxAutoScaleHostStorage!
        }
        if self.pageNumbers != nil {
            map["PageNumbers"] = self.pageNumbers!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalRecords != nil {
            map["TotalRecords"] = self.totalRecords!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("DedicatedHosts") && dict["DedicatedHosts"] != nil {
            var model = DescribeDedicatedHostsResponseBody.DedicatedHosts()
            model.fromMap(dict["DedicatedHosts"] as! [String: Any])
            self.dedicatedHosts = model
        }
        if dict.keys.contains("MaxAutoScaleHostStorage") && dict["MaxAutoScaleHostStorage"] != nil {
            self.maxAutoScaleHostStorage = dict["MaxAutoScaleHostStorage"] as! Int64
        }
        if dict.keys.contains("PageNumbers") && dict["PageNumbers"] != nil {
            self.pageNumbers = dict["PageNumbers"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalRecords") && dict["TotalRecords"] != nil {
            self.totalRecords = dict["TotalRecords"] as! Int32
        }
    }
}

public class DescribeDedicatedHostsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeDedicatedHostsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeDedicatedHostsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHostEcsLevelInfoRequest : Tea.TeaModel {
    public var dbType: String?

    public var imageCategory: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var storageType: String?

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
        if self.dbType != nil {
            map["DbType"] = self.dbType!
        }
        if self.imageCategory != nil {
            map["ImageCategory"] = self.imageCategory!
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
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DbType") && dict["DbType"] != nil {
            self.dbType = dict["DbType"] as! String
        }
        if dict.keys.contains("ImageCategory") && dict["ImageCategory"] != nil {
            self.imageCategory = dict["ImageCategory"] as! String
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
        if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class DescribeHostEcsLevelInfoResponseBody : Tea.TeaModel {
    public class HostEcsLevelInfos : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var cloudStorageBandwidth: Double?

            public var cpu: Int32?

            public var cpuFrequency: String?

            public var cpuVersion: String?

            public var description_: String?

            public var ecsClass: String?

            public var ecsClassCode: String?

            public var isCloudDisk: Int32?

            public var localStorage: String?

            public var memory: Int32?

            public var netBandWidth: Double?

            public var netPackage: Int32?

            public var rdsClassCode: String?

            public var storageIops: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cloudStorageBandwidth != nil {
                    map["CloudStorageBandwidth"] = self.cloudStorageBandwidth!
                }
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.cpuFrequency != nil {
                    map["CpuFrequency"] = self.cpuFrequency!
                }
                if self.cpuVersion != nil {
                    map["CpuVersion"] = self.cpuVersion!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ecsClass != nil {
                    map["EcsClass"] = self.ecsClass!
                }
                if self.ecsClassCode != nil {
                    map["EcsClassCode"] = self.ecsClassCode!
                }
                if self.isCloudDisk != nil {
                    map["IsCloudDisk"] = self.isCloudDisk!
                }
                if self.localStorage != nil {
                    map["LocalStorage"] = self.localStorage!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.netBandWidth != nil {
                    map["NetBandWidth"] = self.netBandWidth!
                }
                if self.netPackage != nil {
                    map["NetPackage"] = self.netPackage!
                }
                if self.rdsClassCode != nil {
                    map["RdsClassCode"] = self.rdsClassCode!
                }
                if self.storageIops != nil {
                    map["StorageIops"] = self.storageIops!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CloudStorageBandwidth") && dict["CloudStorageBandwidth"] != nil {
                    self.cloudStorageBandwidth = dict["CloudStorageBandwidth"] as! Double
                }
                if dict.keys.contains("Cpu") && dict["Cpu"] != nil {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("CpuFrequency") && dict["CpuFrequency"] != nil {
                    self.cpuFrequency = dict["CpuFrequency"] as! String
                }
                if dict.keys.contains("CpuVersion") && dict["CpuVersion"] != nil {
                    self.cpuVersion = dict["CpuVersion"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EcsClass") && dict["EcsClass"] != nil {
                    self.ecsClass = dict["EcsClass"] as! String
                }
                if dict.keys.contains("EcsClassCode") && dict["EcsClassCode"] != nil {
                    self.ecsClassCode = dict["EcsClassCode"] as! String
                }
                if dict.keys.contains("IsCloudDisk") && dict["IsCloudDisk"] != nil {
                    self.isCloudDisk = dict["IsCloudDisk"] as! Int32
                }
                if dict.keys.contains("LocalStorage") && dict["LocalStorage"] != nil {
                    self.localStorage = dict["LocalStorage"] as! String
                }
                if dict.keys.contains("Memory") && dict["Memory"] != nil {
                    self.memory = dict["Memory"] as! Int32
                }
                if dict.keys.contains("NetBandWidth") && dict["NetBandWidth"] != nil {
                    self.netBandWidth = dict["NetBandWidth"] as! Double
                }
                if dict.keys.contains("NetPackage") && dict["NetPackage"] != nil {
                    self.netPackage = dict["NetPackage"] as! Int32
                }
                if dict.keys.contains("RdsClassCode") && dict["RdsClassCode"] != nil {
                    self.rdsClassCode = dict["RdsClassCode"] as! String
                }
                if dict.keys.contains("StorageIops") && dict["StorageIops"] != nil {
                    self.storageIops = dict["StorageIops"] as! Int32
                }
            }
        }
        public var cddcHostType: String?

        public var items: [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos.Items]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cddcHostType != nil {
                map["CddcHostType"] = self.cddcHostType!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["Items"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CddcHostType") && dict["CddcHostType"] != nil {
                self.cddcHostType = dict["CddcHostType"] as! String
            }
            if dict.keys.contains("Items") && dict["Items"] != nil {
                var tmp : [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos.Items] = []
                for v in dict["Items"] as! [Any] {
                    var model = DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var hostEcsLevelInfos: [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos]?

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
        if self.hostEcsLevelInfos != nil {
            var tmp : [Any] = []
            for k in self.hostEcsLevelInfos! {
                tmp.append(k.toMap())
            }
            map["HostEcsLevelInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostEcsLevelInfos") && dict["HostEcsLevelInfos"] != nil {
            var tmp : [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos] = []
            for v in dict["HostEcsLevelInfos"] as! [Any] {
                var model = DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostEcsLevelInfos = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHostEcsLevelInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHostEcsLevelInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHostEcsLevelInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeHostWebShellRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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

public class DescribeHostWebShellResponseBody : Tea.TeaModel {
    public var loginUrl: String?

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
        if self.loginUrl != nil {
            map["LoginUrl"] = self.loginUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LoginUrl") && dict["LoginUrl"] != nil {
            self.loginUrl = dict["LoginUrl"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeHostWebShellResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeHostWebShellResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeHostWebShellResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
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
        if self.resourceOwnerId != nil {
            map["ResourceOwnerId"] = self.resourceOwnerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceOwnerId") && dict["ResourceOwnerId"] != nil {
            self.resourceOwnerId = dict["ResourceOwnerId"] as! Int64
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class RDSRegion : Tea.TeaModel {
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
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var RDSRegion: [DescribeRegionsResponseBody.Regions.RDSRegion]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.RDSRegion != nil {
                var tmp : [Any] = []
                for k in self.RDSRegion! {
                    tmp.append(k.toMap())
                }
                map["RDSRegion"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RDSRegion") && dict["RDSRegion"] != nil {
                var tmp : [DescribeRegionsResponseBody.Regions.RDSRegion] = []
                for v in dict["RDSRegion"] as! [Any] {
                    var model = DescribeRegionsResponseBody.Regions.RDSRegion()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.RDSRegion = tmp
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
    public var requestId: String?

    public var tagResources: [ListTagResourcesResponseBody.TagResources]?

    public override init() {
        super.init()
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
        if self.tagResources != nil {
            var tmp : [Any] = []
            for k in self.tagResources! {
                tmp.append(k.toMap())
            }
            map["TagResources"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") && dict["TagResources"] != nil {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in dict["TagResources"] as! [Any] {
                var model = ListTagResourcesResponseBody.TagResources()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tagResources = tmp
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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

public class ModifyDedicatedHostAccountRequest : Tea.TeaModel {
    public var accountName: String?

    public var accountPassword: String?

    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.accountName != nil {
            map["AccountName"] = self.accountName!
        }
        if self.accountPassword != nil {
            map["AccountPassword"] = self.accountPassword!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountName") && dict["AccountName"] != nil {
            self.accountName = dict["AccountName"] as! String
        }
        if dict.keys.contains("AccountPassword") && dict["AccountPassword"] != nil {
            self.accountPassword = dict["AccountPassword"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class ModifyDedicatedHostAccountResponseBody : Tea.TeaModel {
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

public class ModifyDedicatedHostAccountResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedHostAccountResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedHostAccountResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDedicatedHostAttributeRequest : Tea.TeaModel {
    public var allocationStatus: String?

    public var dedicatedHostId: String?

    public var hostName: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.allocationStatus != nil {
            map["AllocationStatus"] = self.allocationStatus!
        }
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocationStatus") && dict["AllocationStatus"] != nil {
            self.allocationStatus = dict["AllocationStatus"] as! String
        }
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("HostName") && dict["HostName"] != nil {
            self.hostName = dict["HostName"] as! String
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
    }
}

public class ModifyDedicatedHostAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDedicatedHostAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedHostAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedHostAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDedicatedHostClassRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var switchTime: String?

    public var switchTimeMode: String?

    public var targetClassCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        if self.switchTime != nil {
            map["SwitchTime"] = self.switchTime!
        }
        if self.switchTimeMode != nil {
            map["SwitchTimeMode"] = self.switchTimeMode!
        }
        if self.targetClassCode != nil {
            map["TargetClassCode"] = self.targetClassCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
        if dict.keys.contains("SwitchTime") && dict["SwitchTime"] != nil {
            self.switchTime = dict["SwitchTime"] as! String
        }
        if dict.keys.contains("SwitchTimeMode") && dict["SwitchTimeMode"] != nil {
            self.switchTimeMode = dict["SwitchTimeMode"] as! String
        }
        if dict.keys.contains("TargetClassCode") && dict["TargetClassCode"] != nil {
            self.targetClassCode = dict["TargetClassCode"] as! String
        }
    }
}

public class ModifyDedicatedHostClassResponseBody : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var requestId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ModifyDedicatedHostClassResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedHostClassResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedHostClassResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDedicatedHostGroupAttributeRequest : Tea.TeaModel {
    public var allocationPolicy: String?

    public var cpuAllocationRatio: Int32?

    public var dedicatedHostGroupDesc: String?

    public var dedicatedHostGroupId: String?

    public var diskAllocationRatio: Int32?

    public var hostReplacePolicy: String?

    public var memAllocationRatio: Int32?

    public var openPermission: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.allocationPolicy != nil {
            map["AllocationPolicy"] = self.allocationPolicy!
        }
        if self.cpuAllocationRatio != nil {
            map["CpuAllocationRatio"] = self.cpuAllocationRatio!
        }
        if self.dedicatedHostGroupDesc != nil {
            map["DedicatedHostGroupDesc"] = self.dedicatedHostGroupDesc!
        }
        if self.dedicatedHostGroupId != nil {
            map["DedicatedHostGroupId"] = self.dedicatedHostGroupId!
        }
        if self.diskAllocationRatio != nil {
            map["DiskAllocationRatio"] = self.diskAllocationRatio!
        }
        if self.hostReplacePolicy != nil {
            map["HostReplacePolicy"] = self.hostReplacePolicy!
        }
        if self.memAllocationRatio != nil {
            map["MemAllocationRatio"] = self.memAllocationRatio!
        }
        if self.openPermission != nil {
            map["OpenPermission"] = self.openPermission!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocationPolicy") && dict["AllocationPolicy"] != nil {
            self.allocationPolicy = dict["AllocationPolicy"] as! String
        }
        if dict.keys.contains("CpuAllocationRatio") && dict["CpuAllocationRatio"] != nil {
            self.cpuAllocationRatio = dict["CpuAllocationRatio"] as! Int32
        }
        if dict.keys.contains("DedicatedHostGroupDesc") && dict["DedicatedHostGroupDesc"] != nil {
            self.dedicatedHostGroupDesc = dict["DedicatedHostGroupDesc"] as! String
        }
        if dict.keys.contains("DedicatedHostGroupId") && dict["DedicatedHostGroupId"] != nil {
            self.dedicatedHostGroupId = dict["DedicatedHostGroupId"] as! String
        }
        if dict.keys.contains("DiskAllocationRatio") && dict["DiskAllocationRatio"] != nil {
            self.diskAllocationRatio = dict["DiskAllocationRatio"] as! Int32
        }
        if dict.keys.contains("HostReplacePolicy") && dict["HostReplacePolicy"] != nil {
            self.hostReplacePolicy = dict["HostReplacePolicy"] as! String
        }
        if dict.keys.contains("MemAllocationRatio") && dict["MemAllocationRatio"] != nil {
            self.memAllocationRatio = dict["MemAllocationRatio"] as! Int32
        }
        if dict.keys.contains("OpenPermission") && dict["OpenPermission"] != nil {
            self.openPermission = dict["OpenPermission"] as! String
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
    }
}

public class ModifyDedicatedHostGroupAttributeResponseBody : Tea.TeaModel {
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

public class ModifyDedicatedHostGroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedHostGroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedHostGroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyDedicatedHostPasswordRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var newPassword: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.newPassword != nil {
            map["NewPassword"] = self.newPassword!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("NewPassword") && dict["NewPassword"] != nil {
            self.newPassword = dict["NewPassword"] as! String
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
    }
}

public class ModifyDedicatedHostPasswordResponseBody : Tea.TeaModel {
    public var dedicatedHostName: String?

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
        if self.dedicatedHostName != nil {
            map["DedicatedHostName"] = self.dedicatedHostName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostName") && dict["DedicatedHostName"] != nil {
            self.dedicatedHostName = dict["DedicatedHostName"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ModifyDedicatedHostPasswordResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyDedicatedHostPasswordResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyDedicatedHostPasswordResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHostBaseInfoByInstanceRequest : Tea.TeaModel {
    public var DBInstanceId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.DBInstanceId != nil {
            map["DBInstanceId"] = self.DBInstanceId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
            self.DBInstanceId = dict["DBInstanceId"] as! String
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
    }
}

public class QueryHostBaseInfoByInstanceResponseBody : Tea.TeaModel {
    public class HostInstanceConsoleInfos : Tea.TeaModel {
        public var clusterName: String?

        public var engine: String?

        public var engineVersion: String?

        public var expiredTime: String?

        public var hostName: String?

        public var ip: String?

        public var port: String?

        public var role: String?

        public var status: String?

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
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterName") && dict["ClusterName"] != nil {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("Engine") && dict["Engine"] != nil {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("ExpiredTime") && dict["ExpiredTime"] != nil {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("HostName") && dict["HostName"] != nil {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var hostInstanceConsoleInfos: [QueryHostBaseInfoByInstanceResponseBody.HostInstanceConsoleInfos]?

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
        if self.hostInstanceConsoleInfos != nil {
            var tmp : [Any] = []
            for k in self.hostInstanceConsoleInfos! {
                tmp.append(k.toMap())
            }
            map["HostInstanceConsoleInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostInstanceConsoleInfos") && dict["HostInstanceConsoleInfos"] != nil {
            var tmp : [QueryHostBaseInfoByInstanceResponseBody.HostInstanceConsoleInfos] = []
            for v in dict["HostInstanceConsoleInfos"] as! [Any] {
                var model = QueryHostBaseInfoByInstanceResponseBody.HostInstanceConsoleInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostInstanceConsoleInfos = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryHostBaseInfoByInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHostBaseInfoByInstanceResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryHostBaseInfoByInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryHostInstanceConsoleInfoRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
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
    }
}

public class QueryHostInstanceConsoleInfoResponseBody : Tea.TeaModel {
    public class HostInstanceConsoleInfos : Tea.TeaModel {
        public class PerfInfo : Tea.TeaModel {
            public var cpuRatio: Double?

            public var diskCurr: Double?

            public var memRatio: Double?

            public var perfIdbPio: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpuRatio != nil {
                    map["CpuRatio"] = self.cpuRatio!
                }
                if self.diskCurr != nil {
                    map["DiskCurr"] = self.diskCurr!
                }
                if self.memRatio != nil {
                    map["MemRatio"] = self.memRatio!
                }
                if self.perfIdbPio != nil {
                    map["PerfIdbPio"] = self.perfIdbPio!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CpuRatio") && dict["CpuRatio"] != nil {
                    self.cpuRatio = dict["CpuRatio"] as! Double
                }
                if dict.keys.contains("DiskCurr") && dict["DiskCurr"] != nil {
                    self.diskCurr = dict["DiskCurr"] as! Double
                }
                if dict.keys.contains("MemRatio") && dict["MemRatio"] != nil {
                    self.memRatio = dict["MemRatio"] as! Double
                }
                if dict.keys.contains("PerfIdbPio") && dict["PerfIdbPio"] != nil {
                    self.perfIdbPio = dict["PerfIdbPio"] as! Double
                }
            }
        }
        public var cpuCores: Int32?

        public var cpuIncreaseRatioValue: Int32?

        public var DBInstanceDescription: String?

        public var DBInstanceId: String?

        public var diskSize: Int32?

        public var engine: String?

        public var engineVersion: String?

        public var ip: String?

        public var levelName: String?

        public var maxConnIncreaseRatioValue: Int32?

        public var memSize: Int32?

        public var memoryIncreaseRatioValue: Int32?

        public var perfInfo: QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos.PerfInfo?

        public var port: String?

        public var role: String?

        public var status: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.perfInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cpuCores != nil {
                map["CpuCores"] = self.cpuCores!
            }
            if self.cpuIncreaseRatioValue != nil {
                map["CpuIncreaseRatioValue"] = self.cpuIncreaseRatioValue!
            }
            if self.DBInstanceDescription != nil {
                map["DBInstanceDescription"] = self.DBInstanceDescription!
            }
            if self.DBInstanceId != nil {
                map["DBInstanceId"] = self.DBInstanceId!
            }
            if self.diskSize != nil {
                map["DiskSize"] = self.diskSize!
            }
            if self.engine != nil {
                map["Engine"] = self.engine!
            }
            if self.engineVersion != nil {
                map["EngineVersion"] = self.engineVersion!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.levelName != nil {
                map["LevelName"] = self.levelName!
            }
            if self.maxConnIncreaseRatioValue != nil {
                map["MaxConnIncreaseRatioValue"] = self.maxConnIncreaseRatioValue!
            }
            if self.memSize != nil {
                map["MemSize"] = self.memSize!
            }
            if self.memoryIncreaseRatioValue != nil {
                map["MemoryIncreaseRatioValue"] = self.memoryIncreaseRatioValue!
            }
            if self.perfInfo != nil {
                map["PerfInfo"] = self.perfInfo?.toMap()
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CpuCores") && dict["CpuCores"] != nil {
                self.cpuCores = dict["CpuCores"] as! Int32
            }
            if dict.keys.contains("CpuIncreaseRatioValue") && dict["CpuIncreaseRatioValue"] != nil {
                self.cpuIncreaseRatioValue = dict["CpuIncreaseRatioValue"] as! Int32
            }
            if dict.keys.contains("DBInstanceDescription") && dict["DBInstanceDescription"] != nil {
                self.DBInstanceDescription = dict["DBInstanceDescription"] as! String
            }
            if dict.keys.contains("DBInstanceId") && dict["DBInstanceId"] != nil {
                self.DBInstanceId = dict["DBInstanceId"] as! String
            }
            if dict.keys.contains("DiskSize") && dict["DiskSize"] != nil {
                self.diskSize = dict["DiskSize"] as! Int32
            }
            if dict.keys.contains("Engine") && dict["Engine"] != nil {
                self.engine = dict["Engine"] as! String
            }
            if dict.keys.contains("EngineVersion") && dict["EngineVersion"] != nil {
                self.engineVersion = dict["EngineVersion"] as! String
            }
            if dict.keys.contains("Ip") && dict["Ip"] != nil {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("LevelName") && dict["LevelName"] != nil {
                self.levelName = dict["LevelName"] as! String
            }
            if dict.keys.contains("MaxConnIncreaseRatioValue") && dict["MaxConnIncreaseRatioValue"] != nil {
                self.maxConnIncreaseRatioValue = dict["MaxConnIncreaseRatioValue"] as! Int32
            }
            if dict.keys.contains("MemSize") && dict["MemSize"] != nil {
                self.memSize = dict["MemSize"] as! Int32
            }
            if dict.keys.contains("MemoryIncreaseRatioValue") && dict["MemoryIncreaseRatioValue"] != nil {
                self.memoryIncreaseRatioValue = dict["MemoryIncreaseRatioValue"] as! Int32
            }
            if dict.keys.contains("PerfInfo") && dict["PerfInfo"] != nil {
                var model = QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos.PerfInfo()
                model.fromMap(dict["PerfInfo"] as! [String: Any])
                self.perfInfo = model
            }
            if dict.keys.contains("Port") && dict["Port"] != nil {
                self.port = dict["Port"] as! String
            }
            if dict.keys.contains("Role") && dict["Role"] != nil {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
        }
    }
    public var hostInstanceConsoleInfos: [QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos]?

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
        if self.hostInstanceConsoleInfos != nil {
            var tmp : [Any] = []
            for k in self.hostInstanceConsoleInfos! {
                tmp.append(k.toMap())
            }
            map["HostInstanceConsoleInfos"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HostInstanceConsoleInfos") && dict["HostInstanceConsoleInfos"] != nil {
            var tmp : [QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos] = []
            for v in dict["HostInstanceConsoleInfos"] as! [Any] {
                var model = QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.hostInstanceConsoleInfos = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class QueryHostInstanceConsoleInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryHostInstanceConsoleInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = QueryHostInstanceConsoleInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ReplaceDedicatedHostRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var failoverMode: String?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.failoverMode != nil {
            map["FailoverMode"] = self.failoverMode!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("FailoverMode") && dict["FailoverMode"] != nil {
            self.failoverMode = dict["FailoverMode"] as! String
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
    }
}

public class ReplaceDedicatedHostResponseBody : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class ReplaceDedicatedHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReplaceDedicatedHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ReplaceDedicatedHostResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RestartDedicatedHostRequest : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var failoverMode: String?

    public var forceStop: Bool?

    public var ownerId: Int64?

    public var regionId: String?

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
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.failoverMode != nil {
            map["FailoverMode"] = self.failoverMode!
        }
        if self.forceStop != nil {
            map["ForceStop"] = self.forceStop!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("FailoverMode") && dict["FailoverMode"] != nil {
            self.failoverMode = dict["FailoverMode"] as! String
        }
        if dict.keys.contains("ForceStop") && dict["ForceStop"] != nil {
            self.forceStop = dict["ForceStop"] as! Bool
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
    }
}

public class RestartDedicatedHostResponseBody : Tea.TeaModel {
    public var dedicatedHostId: String?

    public var requestId: String?

    public var taskId: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.dedicatedHostId != nil {
            map["DedicatedHostId"] = self.dedicatedHostId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DedicatedHostId") && dict["DedicatedHostId"] != nil {
            self.dedicatedHostId = dict["DedicatedHostId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") && dict["TaskId"] != nil {
            self.taskId = dict["TaskId"] as! Int32
        }
    }
}

public class RestartDedicatedHostResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartDedicatedHostResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = RestartDedicatedHostResponseBody()
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
        try self.validateRequired(self.headers, "headers")
        try self.validateRequired(self.statusCode, "statusCode")
        try self.validateRequired(self.body, "body")
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
