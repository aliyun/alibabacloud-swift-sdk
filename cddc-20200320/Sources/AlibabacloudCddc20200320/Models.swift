import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class CreateDedicatedHostRequest : Tea.TeaModel {
    public class MyBaseEcsClass : Tea.TeaModel {
        public var amount: Int64?

        public var autoRenew: Bool?

        public var chargeType: String?

        public var dataDiskCategory: String?

        public var dataDiskCount: Int64?

        public var dataDiskSize: Int64?

        public var depolymentSetId: String?

        public var ecsClassCode: String?

        public var internetChargeType: String?

        public var internetMaxBandwidthOut: Int64?

        public var keyPairName: String?

        public var password: String?

        public var period: Int64?

        public var periodType: String?

        public var securityGroupIds: [String]?

        public var systemDiskCategory: String?

        public var systemDiskSize: Int64?

        public var tags: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.autoRenew != nil {
                map["AutoRenew"] = self.autoRenew!
            }
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskCount != nil {
                map["DataDiskCount"] = self.dataDiskCount!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            if self.depolymentSetId != nil {
                map["DepolymentSetId"] = self.depolymentSetId!
            }
            if self.ecsClassCode != nil {
                map["EcsClassCode"] = self.ecsClassCode!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.internetMaxBandwidthOut != nil {
                map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
            }
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.periodType != nil {
                map["PeriodType"] = self.periodType!
            }
            if self.securityGroupIds != nil {
                map["SecurityGroupIds"] = self.securityGroupIds!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            if self.tags != nil {
                map["Tags"] = self.tags!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Amount"] as? Int64 {
                self.amount = value
            }
            if let value = dict["AutoRenew"] as? Bool {
                self.autoRenew = value
            }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["DataDiskCategory"] as? String {
                self.dataDiskCategory = value
            }
            if let value = dict["DataDiskCount"] as? Int64 {
                self.dataDiskCount = value
            }
            if let value = dict["DataDiskSize"] as? Int64 {
                self.dataDiskSize = value
            }
            if let value = dict["DepolymentSetId"] as? String {
                self.depolymentSetId = value
            }
            if let value = dict["EcsClassCode"] as? String {
                self.ecsClassCode = value
            }
            if let value = dict["InternetChargeType"] as? String {
                self.internetChargeType = value
            }
            if let value = dict["InternetMaxBandwidthOut"] as? Int64 {
                self.internetMaxBandwidthOut = value
            }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["Period"] as? Int64 {
                self.period = value
            }
            if let value = dict["PeriodType"] as? String {
                self.periodType = value
            }
            if let value = dict["SecurityGroupIds"] as? [String] {
                self.securityGroupIds = value
            }
            if let value = dict["SystemDiskCategory"] as? String {
                self.systemDiskCategory = value
            }
            if let value = dict["SystemDiskSize"] as? Int64 {
                self.systemDiskSize = value
            }
            if let value = dict["Tags"] as? [String] {
                self.tags = value
            }
        }
    }
    public var autoRenew: String?

    public var clientToken: String?

    public var clusterAlias: String?

    public var clusterServices: [String]?

    public var clusterType: String?

    public var dedicatedHostGroupId: String?

    public var hostClass: String?

    public var hostStorage: String?

    public var hostStorageType: String?

    public var imageCategory: String?

    public var myBaseEcsClass: CreateDedicatedHostRequest.MyBaseEcsClass?

    public var osPassword: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var usedTime: String?

    public var vSwitchId: String?

    public var vpcID: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.myBaseEcsClass?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterAlias != nil {
            map["ClusterAlias"] = self.clusterAlias!
        }
        if self.clusterServices != nil {
            map["ClusterServices"] = self.clusterServices!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
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
        if self.myBaseEcsClass != nil {
            map["MyBaseEcsClass"] = self.myBaseEcsClass?.toMap()
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
        if self.vpcID != nil {
            map["VpcID"] = self.vpcID!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterAlias"] as? String {
            self.clusterAlias = value
        }
        if let value = dict["ClusterServices"] as? [String] {
            self.clusterServices = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["HostClass"] as? String {
            self.hostClass = value
        }
        if let value = dict["HostStorage"] as? String {
            self.hostStorage = value
        }
        if let value = dict["HostStorageType"] as? String {
            self.hostStorageType = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["MyBaseEcsClass"] as? [String: Any?] {
            var model = CreateDedicatedHostRequest.MyBaseEcsClass()
            model.fromMap(value)
            self.myBaseEcsClass = model
        }
        if let value = dict["OsPassword"] as? String {
            self.osPassword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UsedTime"] as? String {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcID"] as? String {
            self.vpcID = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateDedicatedHostShrinkRequest : Tea.TeaModel {
    public var autoRenew: String?

    public var clientToken: String?

    public var clusterAlias: String?

    public var clusterServicesShrink: String?

    public var clusterType: String?

    public var dedicatedHostGroupId: String?

    public var hostClass: String?

    public var hostStorage: String?

    public var hostStorageType: String?

    public var imageCategory: String?

    public var myBaseEcsClassShrink: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var payType: String?

    public var period: String?

    public var regionId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var usedTime: String?

    public var vSwitchId: String?

    public var vpcID: String?

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
        if self.clusterAlias != nil {
            map["ClusterAlias"] = self.clusterAlias!
        }
        if self.clusterServicesShrink != nil {
            map["ClusterServices"] = self.clusterServicesShrink!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
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
        if self.myBaseEcsClassShrink != nil {
            map["MyBaseEcsClass"] = self.myBaseEcsClassShrink!
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
        if self.vpcID != nil {
            map["VpcID"] = self.vpcID!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ClusterAlias"] as? String {
            self.clusterAlias = value
        }
        if let value = dict["ClusterServices"] as? String {
            self.clusterServicesShrink = value
        }
        if let value = dict["ClusterType"] as? String {
            self.clusterType = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["HostClass"] as? String {
            self.hostClass = value
        }
        if let value = dict["HostStorage"] as? String {
            self.hostStorage = value
        }
        if let value = dict["HostStorageType"] as? String {
            self.hostStorageType = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["MyBaseEcsClass"] as? String {
            self.myBaseEcsClassShrink = value
        }
        if let value = dict["OsPassword"] as? String {
            self.osPassword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["UsedTime"] as? String {
            self.usedTime = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcID"] as? String {
            self.vpcID = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DedicatedHostId"] as? String {
                    self.dedicatedHostId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DedicateHostList"] as? [Any?] {
                var tmp : [CreateDedicatedHostResponseBody.DedicateHostList.DedicateHostList] = []
                for v in value {
                    if v != nil {
                        var model = CreateDedicatedHostResponseBody.DedicateHostList.DedicateHostList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.dedicateHostList = tmp
            }
        }
    }
    public var clusterName: String?

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
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DedicateHostList"] as? [String: Any?] {
            var model = CreateDedicatedHostResponseBody.DedicateHostList()
            model.fromMap(value)
            self.dedicateHostList = model
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDedicatedHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["BastionInstanceId"] as? String {
            self.bastionInstanceId = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDedicatedHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocationPolicy"] as? String {
            self.allocationPolicy = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["CpuAllocationRatio"] as? Int32 {
            self.cpuAllocationRatio = value
        }
        if let value = dict["DedicatedHostGroupDesc"] as? String {
            self.dedicatedHostGroupDesc = value
        }
        if let value = dict["DiskAllocationRatio"] as? Int32 {
            self.diskAllocationRatio = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["HostReplacePolicy"] as? String {
            self.hostReplacePolicy = value
        }
        if let value = dict["MemAllocationRatio"] as? Int32 {
            self.memAllocationRatio = value
        }
        if let value = dict["OpenPermission"] as? Int32 {
            self.openPermission = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateDedicatedHostGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateMyBaseRequest : Tea.TeaModel {
    public class ECSClassList : Tea.TeaModel {
        public var dataDiskAutoSnapshotPolicyId: String?

        public var dataDiskEncrypted: Bool?

        public var dataDiskKMSKeyId: String?

        public var dataDiskPerformanceLevel: String?

        public var diskCapacity: Int32?

        public var diskCount: Int32?

        public var diskType: String?

        public var instanceType: String?

        public var nodeCount: Int32?

        public var sysDiskAutoSnapshotPolicyId: String?

        public var sysDiskCapacity: Int32?

        public var sysDiskEncrypted: Bool?

        public var sysDiskKMSKeyId: String?

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
            if self.dataDiskAutoSnapshotPolicyId != nil {
                map["dataDiskAutoSnapshotPolicyId"] = self.dataDiskAutoSnapshotPolicyId!
            }
            if self.dataDiskEncrypted != nil {
                map["dataDiskEncrypted"] = self.dataDiskEncrypted!
            }
            if self.dataDiskKMSKeyId != nil {
                map["dataDiskKMSKeyId"] = self.dataDiskKMSKeyId!
            }
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
            if self.sysDiskAutoSnapshotPolicyId != nil {
                map["sysDiskAutoSnapshotPolicyId"] = self.sysDiskAutoSnapshotPolicyId!
            }
            if self.sysDiskCapacity != nil {
                map["sysDiskCapacity"] = self.sysDiskCapacity!
            }
            if self.sysDiskEncrypted != nil {
                map["sysDiskEncrypted"] = self.sysDiskEncrypted!
            }
            if self.sysDiskKMSKeyId != nil {
                map["sysDiskKMSKeyId"] = self.sysDiskKMSKeyId!
            }
            if self.sysDiskType != nil {
                map["sysDiskType"] = self.sysDiskType!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["systemDiskPerformanceLevel"] = self.systemDiskPerformanceLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["dataDiskAutoSnapshotPolicyId"] as? String {
                self.dataDiskAutoSnapshotPolicyId = value
            }
            if let value = dict["dataDiskEncrypted"] as? Bool {
                self.dataDiskEncrypted = value
            }
            if let value = dict["dataDiskKMSKeyId"] as? String {
                self.dataDiskKMSKeyId = value
            }
            if let value = dict["dataDiskPerformanceLevel"] as? String {
                self.dataDiskPerformanceLevel = value
            }
            if let value = dict["diskCapacity"] as? Int32 {
                self.diskCapacity = value
            }
            if let value = dict["diskCount"] as? Int32 {
                self.diskCount = value
            }
            if let value = dict["diskType"] as? String {
                self.diskType = value
            }
            if let value = dict["instanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["nodeCount"] as? Int32 {
                self.nodeCount = value
            }
            if let value = dict["sysDiskAutoSnapshotPolicyId"] as? String {
                self.sysDiskAutoSnapshotPolicyId = value
            }
            if let value = dict["sysDiskCapacity"] as? Int32 {
                self.sysDiskCapacity = value
            }
            if let value = dict["sysDiskEncrypted"] as? Bool {
                self.sysDiskEncrypted = value
            }
            if let value = dict["sysDiskKMSKeyId"] as? String {
                self.sysDiskKMSKeyId = value
            }
            if let value = dict["sysDiskType"] as? String {
                self.sysDiskType = value
            }
            if let value = dict["systemDiskPerformanceLevel"] as? String {
                self.systemDiskPerformanceLevel = value
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
    public var autoPay: Bool?

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

    public var internetChargeType: String?

    public var internetMaxBandwidthOut: Int32?

    public var keyPairName: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var passwordInherit: String?

    public var payType: String?

    public var period: String?

    public var periodType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var tags: [CreateMyBaseRequest.Tags]?

    public var userData: String?

    public var userDataInBase64: Bool?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
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
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandwidthOut != nil {
            map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.userDataInBase64 != nil {
            map["UserDataInBase64"] = self.userDataInBase64!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedicatedHostGroupDescription"] as? String {
            self.dedicatedHostGroupDescription = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["ECSClassList"] as? [Any?] {
            var tmp : [CreateMyBaseRequest.ECSClassList] = []
            for v in value {
                if v != nil {
                    var model = CreateMyBaseRequest.ECSClassList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.ECSClassList = tmp
        }
        if let value = dict["EcsDeploymentSetId"] as? String {
            self.ecsDeploymentSetId = value
        }
        if let value = dict["EcsHostName"] as? String {
            self.ecsHostName = value
        }
        if let value = dict["EcsInstanceName"] as? String {
            self.ecsInstanceName = value
        }
        if let value = dict["EcsUniqueSuffix"] as? String {
            self.ecsUniqueSuffix = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["InternetMaxBandwidthOut"] as? Int32 {
            self.internetMaxBandwidthOut = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["OsPassword"] as? String {
            self.osPassword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PasswordInherit"] as? String {
            self.passwordInherit = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["PeriodType"] as? String {
            self.periodType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateMyBaseRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateMyBaseRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["UserDataInBase64"] as? Bool {
            self.userDataInBase64 = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class CreateMyBaseShrinkRequest : Tea.TeaModel {
    public var autoPay: Bool?

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

    public var internetChargeType: String?

    public var internetMaxBandwidthOut: Int32?

    public var keyPairName: String?

    public var osPassword: String?

    public var ownerId: Int64?

    public var passwordInherit: String?

    public var payType: String?

    public var period: String?

    public var periodType: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var resourceOwnerId: Int64?

    public var securityGroupId: String?

    public var tagsShrink: String?

    public var userData: String?

    public var userDataInBase64: Bool?

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
        if self.autoPay != nil {
            map["AutoPay"] = self.autoPay!
        }
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
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandwidthOut != nil {
            map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
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
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.userDataInBase64 != nil {
            map["UserDataInBase64"] = self.userDataInBase64!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["DedicatedHostGroupDescription"] as? String {
            self.dedicatedHostGroupDescription = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["ECSClassList"] as? String {
            self.ECSClassListShrink = value
        }
        if let value = dict["EcsDeploymentSetId"] as? String {
            self.ecsDeploymentSetId = value
        }
        if let value = dict["EcsHostName"] as? String {
            self.ecsHostName = value
        }
        if let value = dict["EcsInstanceName"] as? String {
            self.ecsInstanceName = value
        }
        if let value = dict["EcsUniqueSuffix"] as? String {
            self.ecsUniqueSuffix = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InternetChargeType"] as? String {
            self.internetChargeType = value
        }
        if let value = dict["InternetMaxBandwidthOut"] as? Int32 {
            self.internetMaxBandwidthOut = value
        }
        if let value = dict["KeyPairName"] as? String {
            self.keyPairName = value
        }
        if let value = dict["OsPassword"] as? String {
            self.osPassword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PasswordInherit"] as? String {
            self.passwordInherit = value
        }
        if let value = dict["PayType"] as? String {
            self.payType = value
        }
        if let value = dict["Period"] as? String {
            self.period = value
        }
        if let value = dict["PeriodType"] as? String {
            self.periodType = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["UserDataInBase64"] as? Bool {
            self.userDataInBase64 = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreateTimestamp"] as? Int64 {
                    self.createTimestamp = value
                }
                if let value = dict["DedicatedHostGroupName"] as? String {
                    self.dedicatedHostGroupName = value
                }
                if let value = dict["ECSInstanceIds"] as? String {
                    self.ECSInstanceIds = value
                }
                if let value = dict["OrderId"] as? String {
                    self.orderId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["OrderList"] as? [Any?] {
                var tmp : [CreateMyBaseResponseBody.OrderList.OrderList] = []
                for v in value {
                    if v != nil {
                        var model = CreateMyBaseResponseBody.OrderList.OrderList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OrderList"] as? [String: Any?] {
            var model = CreateMyBaseResponseBody.OrderList()
            model.fromMap(value)
            self.orderList = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMyBaseResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDedicatedHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteDedicatedHostGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountType"] as? String {
            self.accountType = value
        }
        if let value = dict["AllocationStatus"] as? String {
            self.allocationStatus = value
        }
        if let value = dict["AutoRenew"] as? String {
            self.autoRenew = value
        }
        if let value = dict["CPUAllocationRatio"] as? String {
            self.CPUAllocationRatio = value
        }
        if let value = dict["CpuUsed"] as? String {
            self.cpuUsed = value
        }
        if let value = dict["CreatedTime"] as? String {
            self.createdTime = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["DiskAllocationRatio"] as? String {
            self.diskAllocationRatio = value
        }
        if let value = dict["DistributionTag"] as? String {
            self.distributionTag = value
        }
        if let value = dict["EcsClassCode"] as? String {
            self.ecsClassCode = value
        }
        if let value = dict["ExpiredTime"] as? String {
            self.expiredTime = value
        }
        if let value = dict["HostCPU"] as? Int32 {
            self.hostCPU = value
        }
        if let value = dict["HostClass"] as? String {
            self.hostClass = value
        }
        if let value = dict["HostMem"] as? Int32 {
            self.hostMem = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["HostStatus"] as? String {
            self.hostStatus = value
        }
        if let value = dict["HostStorage"] as? Int32 {
            self.hostStorage = value
        }
        if let value = dict["HostType"] as? String {
            self.hostType = value
        }
        if let value = dict["IPAddress"] as? String {
            self.IPAddress = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["InstanceNumber"] as? Int32 {
            self.instanceNumber = value
        }
        if let value = dict["InstanceNumberMaster"] as? Int32 {
            self.instanceNumberMaster = value
        }
        if let value = dict["InstanceNumberROMaster"] as? Int32 {
            self.instanceNumberROMaster = value
        }
        if let value = dict["InstanceNumberROSlave"] as? Int32 {
            self.instanceNumberROSlave = value
        }
        if let value = dict["InstanceNumberSlave"] as? Int32 {
            self.instanceNumberSlave = value
        }
        if let value = dict["MemAllocationRatio"] as? String {
            self.memAllocationRatio = value
        }
        if let value = dict["MemoryUsed"] as? String {
            self.memoryUsed = value
        }
        if let value = dict["OpenPermission"] as? String {
            self.openPermission = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["StorageUsed"] as? String {
            self.storageUsed = value
        }
        if let value = dict["VPCId"] as? String {
            self.VPCId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDedicatedHostAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["Device"] as? String {
                self.device = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["HasDBInstance"] as? Bool {
                self.hasDBInstance = value
            }
            if let value = dict["MaxIOPS"] as? Int32 {
                self.maxIOPS = value
            }
            if let value = dict["MaxThroughput"] as? Int32 {
                self.maxThroughput = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["Disks"] as? [Any?] {
            var tmp : [DescribeDedicatedHostDisksResponseBody.Disks] = []
            for v in value {
                if v != nil {
                    var model = DescribeDedicatedHostDisksResponseBody.Disks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.disks = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDedicatedHostDisksResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["Engine"] as? String {
            self.engine = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ZoneIDList"] as? [String] {
                        self.zoneIDList = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AllocationPolicy"] as? String {
                    self.allocationPolicy = value
                }
                if let value = dict["BastionInstanceId"] as? String {
                    self.bastionInstanceId = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CpuAllocateRation"] as? Double {
                    self.cpuAllocateRation = value
                }
                if let value = dict["CpuAllocatedAmount"] as? Double {
                    self.cpuAllocatedAmount = value
                }
                if let value = dict["CpuAllocationRatio"] as? Int32 {
                    self.cpuAllocationRatio = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["DedicatedHostCountGroupByHostType"] as? [String: Any] {
                    self.dedicatedHostCountGroupByHostType = value
                }
                if let value = dict["DedicatedHostGroupDesc"] as? String {
                    self.dedicatedHostGroupDesc = value
                }
                if let value = dict["DedicatedHostGroupId"] as? String {
                    self.dedicatedHostGroupId = value
                }
                if let value = dict["DeployType"] as? String {
                    self.deployType = value
                }
                if let value = dict["DiskAllocateRation"] as? Double {
                    self.diskAllocateRation = value
                }
                if let value = dict["DiskAllocatedAmount"] as? Double {
                    self.diskAllocatedAmount = value
                }
                if let value = dict["DiskAllocationRatio"] as? Int32 {
                    self.diskAllocationRatio = value
                }
                if let value = dict["DiskUsedAmount"] as? Double {
                    self.diskUsedAmount = value
                }
                if let value = dict["DiskUtility"] as? Double {
                    self.diskUtility = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["HostNumber"] as? Int32 {
                    self.hostNumber = value
                }
                if let value = dict["HostReplacePolicy"] as? String {
                    self.hostReplacePolicy = value
                }
                if let value = dict["InstanceNumber"] as? Int32 {
                    self.instanceNumber = value
                }
                if let value = dict["MemAllocateRation"] as? Double {
                    self.memAllocateRation = value
                }
                if let value = dict["MemAllocatedAmount"] as? Double {
                    self.memAllocatedAmount = value
                }
                if let value = dict["MemAllocationRatio"] as? Int32 {
                    self.memAllocationRatio = value
                }
                if let value = dict["MemUsedAmount"] as? Double {
                    self.memUsedAmount = value
                }
                if let value = dict["MemUtility"] as? Double {
                    self.memUtility = value
                }
                if let value = dict["OpenPermission"] as? String {
                    self.openPermission = value
                }
                if let value = dict["Text"] as? String {
                    self.text = value
                }
                if let value = dict["VPCId"] as? String {
                    self.VPCId = value
                }
                if let value = dict["ZoneIDList"] as? [String: Any?] {
                    var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups.ZoneIDList()
                    model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DedicatedHostGroups"] as? [Any?] {
                var tmp : [DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups.DedicatedHostGroups()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroups"] as? [String: Any?] {
            var model = DescribeDedicatedHostGroupsResponseBody.DedicatedHostGroups()
            model.fromMap(value)
            self.dedicatedHostGroups = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDedicatedHostGroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocationStatus"] as? String {
            self.allocationStatus = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["HostStatus"] as? String {
            self.hostStatus = value
        }
        if let value = dict["HostType"] as? String {
            self.hostType = value
        }
        if let value = dict["OrderId"] as? Int64 {
            self.orderId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumbers"] as? Int32 {
            self.pageNumbers = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["Tags"] as? String {
            self.tags = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccountName"] as? String {
                    self.accountName = value
                }
                if let value = dict["AccountType"] as? String {
                    self.accountType = value
                }
                if let value = dict["AllocationStatus"] as? String {
                    self.allocationStatus = value
                }
                if let value = dict["BastionInstanceId"] as? String {
                    self.bastionInstanceId = value
                }
                if let value = dict["CPUAllocationRatio"] as? String {
                    self.CPUAllocationRatio = value
                }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["ChargeType"] as? String {
                    self.chargeType = value
                }
                if let value = dict["CpuUsed"] as? String {
                    self.cpuUsed = value
                }
                if let value = dict["CreatedTime"] as? String {
                    self.createdTime = value
                }
                if let value = dict["DedicatedHostGroupId"] as? String {
                    self.dedicatedHostGroupId = value
                }
                if let value = dict["DedicatedHostId"] as? String {
                    self.dedicatedHostId = value
                }
                if let value = dict["DiskAllocationRatio"] as? String {
                    self.diskAllocationRatio = value
                }
                if let value = dict["DiskInfo"] as? String {
                    self.diskInfo = value
                }
                if let value = dict["DistributionSymbol"] as? String {
                    self.distributionSymbol = value
                }
                if let value = dict["DistributionTag"] as? String {
                    self.distributionTag = value
                }
                if let value = dict["EcsClassCode"] as? String {
                    self.ecsClassCode = value
                }
                if let value = dict["EcsId"] as? String {
                    self.ecsId = value
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["Engine"] as? String {
                    self.engine = value
                }
                if let value = dict["HostCPU"] as? String {
                    self.hostCPU = value
                }
                if let value = dict["HostClass"] as? String {
                    self.hostClass = value
                }
                if let value = dict["HostMem"] as? String {
                    self.hostMem = value
                }
                if let value = dict["HostName"] as? String {
                    self.hostName = value
                }
                if let value = dict["HostStatus"] as? String {
                    self.hostStatus = value
                }
                if let value = dict["HostStorage"] as? String {
                    self.hostStorage = value
                }
                if let value = dict["HostType"] as? String {
                    self.hostType = value
                }
                if let value = dict["IPAddress"] as? String {
                    self.IPAddress = value
                }
                if let value = dict["ImageCategory"] as? String {
                    self.imageCategory = value
                }
                if let value = dict["InstanceNumber"] as? String {
                    self.instanceNumber = value
                }
                if let value = dict["MemAllocationRatio"] as? String {
                    self.memAllocationRatio = value
                }
                if let value = dict["MemoryUsed"] as? String {
                    self.memoryUsed = value
                }
                if let value = dict["MssqlSupportVersion"] as? String {
                    self.mssqlSupportVersion = value
                }
                if let value = dict["OpenPermission"] as? String {
                    self.openPermission = value
                }
                if let value = dict["StorageUsed"] as? String {
                    self.storageUsed = value
                }
                if let value = dict["VPCId"] as? String {
                    self.VPCId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DedicatedHosts"] as? [Any?] {
                var tmp : [DescribeDedicatedHostsResponseBody.DedicatedHosts.DedicatedHosts] = []
                for v in value {
                    if v != nil {
                        var model = DescribeDedicatedHostsResponseBody.DedicatedHosts.DedicatedHosts()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["DedicatedHosts"] as? [String: Any?] {
            var model = DescribeDedicatedHostsResponseBody.DedicatedHosts()
            model.fromMap(value)
            self.dedicatedHosts = model
        }
        if let value = dict["MaxAutoScaleHostStorage"] as? Int64 {
            self.maxAutoScaleHostStorage = value
        }
        if let value = dict["PageNumbers"] as? Int32 {
            self.pageNumbers = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalRecords"] as? Int32 {
            self.totalRecords = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeDedicatedHostsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DbType"] as? String {
            self.dbType = value
        }
        if let value = dict["ImageCategory"] as? String {
            self.imageCategory = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CloudStorageBandwidth"] as? Double {
                    self.cloudStorageBandwidth = value
                }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["CpuFrequency"] as? String {
                    self.cpuFrequency = value
                }
                if let value = dict["CpuVersion"] as? String {
                    self.cpuVersion = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["EcsClass"] as? String {
                    self.ecsClass = value
                }
                if let value = dict["EcsClassCode"] as? String {
                    self.ecsClassCode = value
                }
                if let value = dict["IsCloudDisk"] as? Int32 {
                    self.isCloudDisk = value
                }
                if let value = dict["LocalStorage"] as? String {
                    self.localStorage = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
                if let value = dict["NetBandWidth"] as? Double {
                    self.netBandWidth = value
                }
                if let value = dict["NetPackage"] as? Int32 {
                    self.netPackage = value
                }
                if let value = dict["RdsClassCode"] as? String {
                    self.rdsClassCode = value
                }
                if let value = dict["StorageIops"] as? Int32 {
                    self.storageIops = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CddcHostType"] as? String {
                self.cddcHostType = value
            }
            if let value = dict["Items"] as? [Any?] {
                var tmp : [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos.Items] = []
                for v in value {
                    if v != nil {
                        var model = DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos.Items()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostEcsLevelInfos"] as? [Any?] {
            var tmp : [DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeHostEcsLevelInfoResponseBody.HostEcsLevelInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostEcsLevelInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHostEcsLevelInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LoginUrl"] as? String {
            self.loginUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeHostWebShellResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ZoneId"] as? String {
                    self.zoneId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RDSRegion"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.RDSRegion] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.RDSRegion()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody.Regions()
            model.fromMap(value)
            self.regions = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeRegionsResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TagResources"] as? [Any?] {
            var tmp : [ListTagResourcesResponseBody.TagResources] = []
            for v in value {
                if v != nil {
                    var model = ListTagResourcesResponseBody.TagResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccountName"] as? String {
            self.accountName = value
        }
        if let value = dict["AccountPassword"] as? String {
            self.accountPassword = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDedicatedHostAccountResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocationStatus"] as? String {
            self.allocationStatus = value
        }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDedicatedHostAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
        }
        if let value = dict["SwitchTime"] as? String {
            self.switchTime = value
        }
        if let value = dict["SwitchTimeMode"] as? String {
            self.switchTimeMode = value
        }
        if let value = dict["TargetClassCode"] as? String {
            self.targetClassCode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDedicatedHostClassResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocationPolicy"] as? String {
            self.allocationPolicy = value
        }
        if let value = dict["CpuAllocationRatio"] as? Int32 {
            self.cpuAllocationRatio = value
        }
        if let value = dict["DedicatedHostGroupDesc"] as? String {
            self.dedicatedHostGroupDesc = value
        }
        if let value = dict["DedicatedHostGroupId"] as? String {
            self.dedicatedHostGroupId = value
        }
        if let value = dict["DiskAllocationRatio"] as? Int32 {
            self.diskAllocationRatio = value
        }
        if let value = dict["HostReplacePolicy"] as? String {
            self.hostReplacePolicy = value
        }
        if let value = dict["MemAllocationRatio"] as? Int32 {
            self.memAllocationRatio = value
        }
        if let value = dict["OpenPermission"] as? String {
            self.openPermission = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDedicatedHostGroupAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["NewPassword"] as? String {
            self.newPassword = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostName"] as? String {
            self.dedicatedHostName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyDedicatedHostPasswordResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DBInstanceId"] as? String {
            self.DBInstanceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["HostName"] as? String {
                self.hostName = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostInstanceConsoleInfos"] as? [Any?] {
            var tmp : [QueryHostBaseInfoByInstanceResponseBody.HostInstanceConsoleInfos] = []
            for v in value {
                if v != nil {
                    var model = QueryHostBaseInfoByInstanceResponseBody.HostInstanceConsoleInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostInstanceConsoleInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryHostBaseInfoByInstanceResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CpuRatio"] as? Double {
                    self.cpuRatio = value
                }
                if let value = dict["DiskCurr"] as? Double {
                    self.diskCurr = value
                }
                if let value = dict["MemRatio"] as? Double {
                    self.memRatio = value
                }
                if let value = dict["PerfIdbPio"] as? Double {
                    self.perfIdbPio = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CpuCores"] as? Int32 {
                self.cpuCores = value
            }
            if let value = dict["CpuIncreaseRatioValue"] as? Int32 {
                self.cpuIncreaseRatioValue = value
            }
            if let value = dict["DBInstanceDescription"] as? String {
                self.DBInstanceDescription = value
            }
            if let value = dict["DBInstanceId"] as? String {
                self.DBInstanceId = value
            }
            if let value = dict["DiskSize"] as? Int32 {
                self.diskSize = value
            }
            if let value = dict["Engine"] as? String {
                self.engine = value
            }
            if let value = dict["EngineVersion"] as? String {
                self.engineVersion = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["LevelName"] as? String {
                self.levelName = value
            }
            if let value = dict["MaxConnIncreaseRatioValue"] as? Int32 {
                self.maxConnIncreaseRatioValue = value
            }
            if let value = dict["MemSize"] as? Int32 {
                self.memSize = value
            }
            if let value = dict["MemoryIncreaseRatioValue"] as? Int32 {
                self.memoryIncreaseRatioValue = value
            }
            if let value = dict["PerfInfo"] as? [String: Any?] {
                var model = QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos.PerfInfo()
                model.fromMap(value)
                self.perfInfo = model
            }
            if let value = dict["Port"] as? String {
                self.port = value
            }
            if let value = dict["Role"] as? String {
                self.role = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HostInstanceConsoleInfos"] as? [Any?] {
            var tmp : [QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos] = []
            for v in value {
                if v != nil {
                    var model = QueryHostInstanceConsoleInfoResponseBody.HostInstanceConsoleInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.hostInstanceConsoleInfos = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = QueryHostInstanceConsoleInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["FailoverMode"] as? String {
            self.failoverMode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? Int32 {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ReplaceDedicatedHostResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["FailoverMode"] as? String {
            self.failoverMode = value
        }
        if let value = dict["ForceStop"] as? Bool {
            self.forceStop = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DedicatedHostId"] as? String {
            self.dedicatedHostId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskId"] as? Int32 {
            self.taskId = value
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
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RestartDedicatedHostResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ResourceOwnerId"] as? Int64 {
            self.resourceOwnerId = value
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

    public override init() {
        super.init()
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
