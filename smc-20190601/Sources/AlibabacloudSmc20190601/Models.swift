import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AssociateSourceServersRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sourceId: [String]?

    public var workgroupId: String?

    public override init() {
        super.init()
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
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class AssociateSourceServersResponseBody : Tea.TeaModel {
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

public class AssociateSourceServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AssociateSourceServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = AssociateSourceServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessTokenRequest : Tea.TeaModel {
    public var count: String?

    public var description_: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var timeToLiveInDays: String?

    public override init() {
        super.init()
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
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.timeToLiveInDays != nil {
            map["TimeToLiveInDays"] = self.timeToLiveInDays!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("TimeToLiveInDays") {
            self.timeToLiveInDays = dict["TimeToLiveInDays"] as! String
        }
    }
}

public class CreateAccessTokenResponseBody : Tea.TeaModel {
    public var accessTokenCode: String?

    public var accessTokenId: String?

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
        if self.accessTokenCode != nil {
            map["AccessTokenCode"] = self.accessTokenCode!
        }
        if self.accessTokenId != nil {
            map["AccessTokenId"] = self.accessTokenId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTokenCode") {
            self.accessTokenCode = dict["AccessTokenCode"] as! String
        }
        if dict.keys.contains("AccessTokenId") {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateCrossZoneMigrationJobRequest : Tea.TeaModel {
    public class Disk : Tea.TeaModel {
        public var category: String?

        public var diskId: String?

        public var performanceLevel: String?

        public override init() {
            super.init()
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
            if self.diskId != nil {
                map["DiskId"] = self.diskId!
            }
            if self.performanceLevel != nil {
                map["PerformanceLevel"] = self.performanceLevel!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DiskId") {
                self.diskId = dict["DiskId"] as! String
            }
            if dict.keys.contains("PerformanceLevel") {
                self.performanceLevel = dict["PerformanceLevel"] as! String
            }
        }
    }
    public var autoPay: Bool?

    public var clientToken: String?

    public var disk: [CreateCrossZoneMigrationJobRequest.Disk]?

    public var instanceId: String?

    public var ownerId: Int64?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var targetInstanceType: String?

    public var targetVSwitchId: String?

    public var targetZoneId: String?

    public override init() {
        super.init()
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
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.disk != nil {
            var tmp : [Any] = []
            for k in self.disk! {
                tmp.append(k.toMap())
            }
            map["Disk"] = tmp
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.targetInstanceType != nil {
            map["TargetInstanceType"] = self.targetInstanceType!
        }
        if self.targetVSwitchId != nil {
            map["TargetVSwitchId"] = self.targetVSwitchId!
        }
        if self.targetZoneId != nil {
            map["TargetZoneId"] = self.targetZoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoPay") {
            self.autoPay = dict["AutoPay"] as! Bool
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("Disk") {
            var tmp : [CreateCrossZoneMigrationJobRequest.Disk] = []
            for v in dict["Disk"] as! [Any] {
                var model = CreateCrossZoneMigrationJobRequest.Disk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.disk = tmp
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("TargetInstanceType") {
            self.targetInstanceType = dict["TargetInstanceType"] as! String
        }
        if dict.keys.contains("TargetVSwitchId") {
            self.targetVSwitchId = dict["TargetVSwitchId"] as! String
        }
        if dict.keys.contains("TargetZoneId") {
            self.targetZoneId = dict["TargetZoneId"] as! String
        }
    }
}

public class CreateCrossZoneMigrationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateCrossZoneMigrationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateCrossZoneMigrationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateCrossZoneMigrationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateReplicationJobRequest : Tea.TeaModel {
    public class DataDisk : Tea.TeaModel {
        public class Part : Tea.TeaModel {
            public var block: Bool?

            public var device: String?

            public var sizeBytes: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.block != nil {
                    map["Block"] = self.block!
                }
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.sizeBytes != nil {
                    map["SizeBytes"] = self.sizeBytes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Block") {
                    self.block = dict["Block"] as! Bool
                }
                if dict.keys.contains("Device") {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("SizeBytes") {
                    self.sizeBytes = dict["SizeBytes"] as! Int64
                }
            }
        }
        public var index: Int32?

        public var part: [CreateReplicationJobRequest.DataDisk.Part]?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.part != nil {
                var tmp : [Any] = []
                for k in self.part! {
                    tmp.append(k.toMap())
                }
                map["Part"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Part") {
                var tmp : [CreateReplicationJobRequest.DataDisk.Part] = []
                for v in dict["Part"] as! [Any] {
                    var model = CreateReplicationJobRequest.DataDisk.Part()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.part = tmp
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public class Disks : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public class Part : Tea.TeaModel {
                public var block: Bool?

                public var path: String?

                public var sizeBytes: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.block != nil {
                        map["Block"] = self.block!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.sizeBytes != nil {
                        map["SizeBytes"] = self.sizeBytes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Block") {
                        self.block = dict["Block"] as! Bool
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("SizeBytes") {
                        self.sizeBytes = dict["SizeBytes"] as! Int64
                    }
                }
            }
            public var diskId: String?

            public var LVM: Bool?

            public var part: [CreateReplicationJobRequest.Disks.Data.Part]?

            public var size: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskId != nil {
                    map["DiskId"] = self.diskId!
                }
                if self.LVM != nil {
                    map["LVM"] = self.LVM!
                }
                if self.part != nil {
                    var tmp : [Any] = []
                    for k in self.part! {
                        tmp.append(k.toMap())
                    }
                    map["Part"] = tmp
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskId") {
                    self.diskId = dict["DiskId"] as! String
                }
                if dict.keys.contains("LVM") {
                    self.LVM = dict["LVM"] as! Bool
                }
                if dict.keys.contains("Part") {
                    var tmp : [CreateReplicationJobRequest.Disks.Data.Part] = []
                    for v in dict["Part"] as! [Any] {
                        var model = CreateReplicationJobRequest.Disks.Data.Part()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.part = tmp
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
            }
        }
        public class System : Tea.TeaModel {
            public class Part : Tea.TeaModel {
                public var block: Bool?

                public var path: String?

                public var sizeBytes: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.block != nil {
                        map["Block"] = self.block!
                    }
                    if self.path != nil {
                        map["Path"] = self.path!
                    }
                    if self.sizeBytes != nil {
                        map["SizeBytes"] = self.sizeBytes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Block") {
                        self.block = dict["Block"] as! Bool
                    }
                    if dict.keys.contains("Path") {
                        self.path = dict["Path"] as! String
                    }
                    if dict.keys.contains("SizeBytes") {
                        self.sizeBytes = dict["SizeBytes"] as! Int64
                    }
                }
            }
            public var LVM: Bool?

            public var part: [CreateReplicationJobRequest.Disks.System.Part]?

            public var size: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.LVM != nil {
                    map["LVM"] = self.LVM!
                }
                if self.part != nil {
                    var tmp : [Any] = []
                    for k in self.part! {
                        tmp.append(k.toMap())
                    }
                    map["Part"] = tmp
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LVM") {
                    self.LVM = dict["LVM"] as! Bool
                }
                if dict.keys.contains("Part") {
                    var tmp : [CreateReplicationJobRequest.Disks.System.Part] = []
                    for v in dict["Part"] as! [Any] {
                        var model = CreateReplicationJobRequest.Disks.System.Part()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.part = tmp
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
            }
        }
        public var data: [CreateReplicationJobRequest.Disks.Data]?

        public var system: CreateReplicationJobRequest.Disks.System?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.system?.validate()
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
            if self.system != nil {
                map["System"] = self.system?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                var tmp : [CreateReplicationJobRequest.Disks.Data] = []
                for v in dict["Data"] as! [Any] {
                    var model = CreateReplicationJobRequest.Disks.Data()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.data = tmp
            }
            if dict.keys.contains("System") {
                var model = CreateReplicationJobRequest.Disks.System()
                model.fromMap(dict["System"] as! [String: Any])
                self.system = model
            }
        }
    }
    public class SystemDiskPart : Tea.TeaModel {
        public var block: Bool?

        public var device: String?

        public var sizeBytes: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.block != nil {
                map["Block"] = self.block!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.sizeBytes != nil {
                map["SizeBytes"] = self.sizeBytes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Block") {
                self.block = dict["Block"] as! Bool
            }
            if dict.keys.contains("Device") {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("SizeBytes") {
                self.sizeBytes = dict["SizeBytes"] as! Int64
            }
        }
    }
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var clientToken: String?

    public var containerNamespace: String?

    public var containerRepository: String?

    public var containerTag: String?

    public var dataDisk: [CreateReplicationJobRequest.DataDisk]?

    public var description_: String?

    public var disks: CreateReplicationJobRequest.Disks?

    public var frequency: Int32?

    public var imageName: String?

    public var instanceId: String?

    public var instanceRamRole: String?

    public var instanceType: String?

    public var jobType: Int32?

    public var launchTemplateId: String?

    public var launchTemplateVersion: String?

    public var licenseType: String?

    public var maxNumberOfImageToKeep: Int32?

    public var name: String?

    public var netMode: Int32?

    public var ownerId: Int64?

    public var regionId: String?

    public var replicationParameters: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var runOnce: Bool?

    public var scheduledStartTime: String?

    public var sourceId: String?

    public var systemDiskPart: [CreateReplicationJobRequest.SystemDiskPart]?

    public var systemDiskSize: Int32?

    public var tag: [CreateReplicationJobRequest.Tag]?

    public var targetType: String?

    public var vSwitchId: String?

    public var validTime: String?

    public var vpcId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.disks?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.containerNamespace != nil {
            map["ContainerNamespace"] = self.containerNamespace!
        }
        if self.containerRepository != nil {
            map["ContainerRepository"] = self.containerRepository!
        }
        if self.containerTag != nil {
            map["ContainerTag"] = self.containerTag!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["DataDisk"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.disks != nil {
            map["Disks"] = self.disks?.toMap()
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceRamRole != nil {
            map["InstanceRamRole"] = self.instanceRamRole!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.launchTemplateId != nil {
            map["LaunchTemplateId"] = self.launchTemplateId!
        }
        if self.launchTemplateVersion != nil {
            map["LaunchTemplateVersion"] = self.launchTemplateVersion!
        }
        if self.licenseType != nil {
            map["LicenseType"] = self.licenseType!
        }
        if self.maxNumberOfImageToKeep != nil {
            map["MaxNumberOfImageToKeep"] = self.maxNumberOfImageToKeep!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netMode != nil {
            map["NetMode"] = self.netMode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.replicationParameters != nil {
            map["ReplicationParameters"] = self.replicationParameters!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.runOnce != nil {
            map["RunOnce"] = self.runOnce!
        }
        if self.scheduledStartTime != nil {
            map["ScheduledStartTime"] = self.scheduledStartTime!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.systemDiskPart != nil {
            var tmp : [Any] = []
            for k in self.systemDiskPart! {
                tmp.append(k.toMap())
            }
            map["SystemDiskPart"] = tmp
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.validTime != nil {
            map["ValidTime"] = self.validTime!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContainerNamespace") {
            self.containerNamespace = dict["ContainerNamespace"] as! String
        }
        if dict.keys.contains("ContainerRepository") {
            self.containerRepository = dict["ContainerRepository"] as! String
        }
        if dict.keys.contains("ContainerTag") {
            self.containerTag = dict["ContainerTag"] as! String
        }
        if dict.keys.contains("DataDisk") {
            var tmp : [CreateReplicationJobRequest.DataDisk] = []
            for v in dict["DataDisk"] as! [Any] {
                var model = CreateReplicationJobRequest.DataDisk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Disks") {
            var model = CreateReplicationJobRequest.Disks()
            model.fromMap(dict["Disks"] as! [String: Any])
            self.disks = model
        }
        if dict.keys.contains("Frequency") {
            self.frequency = dict["Frequency"] as! Int32
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceRamRole") {
            self.instanceRamRole = dict["InstanceRamRole"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("LaunchTemplateId") {
            self.launchTemplateId = dict["LaunchTemplateId"] as! String
        }
        if dict.keys.contains("LaunchTemplateVersion") {
            self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
        }
        if dict.keys.contains("LicenseType") {
            self.licenseType = dict["LicenseType"] as! String
        }
        if dict.keys.contains("MaxNumberOfImageToKeep") {
            self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetMode") {
            self.netMode = dict["NetMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicationParameters") {
            self.replicationParameters = dict["ReplicationParameters"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("RunOnce") {
            self.runOnce = dict["RunOnce"] as! Bool
        }
        if dict.keys.contains("ScheduledStartTime") {
            self.scheduledStartTime = dict["ScheduledStartTime"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SystemDiskPart") {
            var tmp : [CreateReplicationJobRequest.SystemDiskPart] = []
            for v in dict["SystemDiskPart"] as! [Any] {
                var model = CreateReplicationJobRequest.SystemDiskPart()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemDiskPart = tmp
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("Tag") {
            var tmp : [CreateReplicationJobRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = CreateReplicationJobRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ValidTime") {
            self.validTime = dict["ValidTime"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateReplicationJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateReplicationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateReplicationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateReplicationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateWorkgroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class CreateWorkgroupResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var workgroupId: String?

    public override init() {
        super.init()
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
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class CreateWorkgroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateWorkgroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CreateWorkgroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CutOverReplicationJobRequest : Tea.TeaModel {
    public var jobId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var syncData: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.syncData != nil {
            map["SyncData"] = self.syncData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SyncData") {
            self.syncData = dict["SyncData"] as! Bool
        }
    }
}

public class CutOverReplicationJobResponseBody : Tea.TeaModel {
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

public class CutOverReplicationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CutOverReplicationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = CutOverReplicationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessTokenRequest : Tea.TeaModel {
    public var accessTokenId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenId != nil {
            map["AccessTokenId"] = self.accessTokenId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTokenId") {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DeleteAccessTokenResponseBody : Tea.TeaModel {
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

public class DeleteAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteReplicationJobRequest : Tea.TeaModel {
    public var jobId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DeleteReplicationJobResponseBody : Tea.TeaModel {
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

public class DeleteReplicationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteReplicationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteReplicationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSourceServerRequest : Tea.TeaModel {
    public var force: Bool?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sourceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.force != nil {
            map["Force"] = self.force!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Force") {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
    }
}

public class DeleteSourceServerResponseBody : Tea.TeaModel {
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

public class DeleteSourceServerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSourceServerResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteSourceServerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteWorkgroupRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var workgroupId: String?

    public override init() {
        super.init()
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
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class DeleteWorkgroupResponseBody : Tea.TeaModel {
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

public class DeleteWorkgroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteWorkgroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DeleteWorkgroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeReplicationJobsRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var businessStatus: String?

    public var instanceId: [String]?

    public var jobId: [String]?

    public var jobType: Int32?

    public var name: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var regionId: String?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var sourceId: [String]?

    public var status: String?

    public var tag: [DescribeReplicationJobsRequest.Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.businessStatus != nil {
            map["BusinessStatus"] = self.businessStatus!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.jobType != nil {
            map["JobType"] = self.jobType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.status != nil {
            map["Status"] = self.status!
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
        if dict.keys.contains("BusinessStatus") {
            self.businessStatus = dict["BusinessStatus"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! [String]
        }
        if dict.keys.contains("JobType") {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
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
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeReplicationJobsRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeReplicationJobsRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
    }
}

public class DescribeReplicationJobsResponseBody : Tea.TeaModel {
    public class ReplicationJobs : Tea.TeaModel {
        public class ReplicationJob : Tea.TeaModel {
            public class DataDisks : Tea.TeaModel {
                public class DataDisk : Tea.TeaModel {
                    public class Parts : Tea.TeaModel {
                        public class Part : Tea.TeaModel {
                            public var block: Bool?

                            public var device: String?

                            public var sizeBytes: Int64?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.block != nil {
                                    map["Block"] = self.block!
                                }
                                if self.device != nil {
                                    map["Device"] = self.device!
                                }
                                if self.sizeBytes != nil {
                                    map["SizeBytes"] = self.sizeBytes!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Block") {
                                    self.block = dict["Block"] as! Bool
                                }
                                if dict.keys.contains("Device") {
                                    self.device = dict["Device"] as! String
                                }
                                if dict.keys.contains("SizeBytes") {
                                    self.sizeBytes = dict["SizeBytes"] as! Int64
                                }
                            }
                        }
                        public var part: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts.Part]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.part != nil {
                                var tmp : [Any] = []
                                for k in self.part! {
                                    tmp.append(k.toMap())
                                }
                                map["Part"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Part") {
                                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts.Part] = []
                                for v in dict["Part"] as! [Any] {
                                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts.Part()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.part = tmp
                            }
                        }
                    }
                    public var index: Int32?

                    public var parts: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts?

                    public var size: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.parts?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.index != nil {
                            map["Index"] = self.index!
                        }
                        if self.parts != nil {
                            map["Parts"] = self.parts?.toMap()
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Index") {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("Parts") {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                    }
                }
                public var dataDisk: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataDisk != nil {
                        var tmp : [Any] = []
                        for k in self.dataDisk! {
                            tmp.append(k.toMap())
                        }
                        map["DataDisk"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataDisk") {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk] = []
                        for v in dict["DataDisk"] as! [Any] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.dataDisk = tmp
                    }
                }
            }
            public class Disks : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public class Data : Tea.TeaModel {
                        public class Parts : Tea.TeaModel {
                            public class Part : Tea.TeaModel {
                                public var block: Bool?

                                public var path: String?

                                public var sizeBytes: Int64?

                                public override init() {
                                    super.init()
                                }

                                public init(_ dict: [String: Any]) {
                                    super.init()
                                    self.fromMap(dict)
                                }

                                public override func validate() throws -> Void {
                                }

                                public override func toMap() -> [String : Any] {
                                    var map = super.toMap()
                                    if self.block != nil {
                                        map["Block"] = self.block!
                                    }
                                    if self.path != nil {
                                        map["Path"] = self.path!
                                    }
                                    if self.sizeBytes != nil {
                                        map["SizeBytes"] = self.sizeBytes!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("Block") {
                                        self.block = dict["Block"] as! Bool
                                    }
                                    if dict.keys.contains("Path") {
                                        self.path = dict["Path"] as! String
                                    }
                                    if dict.keys.contains("SizeBytes") {
                                        self.sizeBytes = dict["SizeBytes"] as! Int64
                                    }
                                }
                            }
                            public var part: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts.Part]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.part != nil {
                                    var tmp : [Any] = []
                                    for k in self.part! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Part"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Part") {
                                    var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts.Part] = []
                                    for v in dict["Part"] as! [Any] {
                                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.part = tmp
                                }
                            }
                        }
                        public var diskId: String?

                        public var LVM: Bool?

                        public var parts: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts?

                        public var size: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.parts?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.diskId != nil {
                                map["DiskId"] = self.diskId!
                            }
                            if self.LVM != nil {
                                map["LVM"] = self.LVM!
                            }
                            if self.parts != nil {
                                map["Parts"] = self.parts?.toMap()
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("DiskId") {
                                self.diskId = dict["DiskId"] as! String
                            }
                            if dict.keys.contains("LVM") {
                                self.LVM = dict["LVM"] as! Bool
                            }
                            if dict.keys.contains("Parts") {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts()
                                model.fromMap(dict["Parts"] as! [String: Any])
                                self.parts = model
                            }
                            if dict.keys.contains("Size") {
                                self.size = dict["Size"] as! Int32
                            }
                        }
                    }
                    public var data: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data]?

                    public override init() {
                        super.init()
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
                        if dict.keys.contains("Data") {
                            var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data] = []
                            for v in dict["Data"] as! [Any] {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.data = tmp
                        }
                    }
                }
                public class System : Tea.TeaModel {
                    public class Parts : Tea.TeaModel {
                        public class Part : Tea.TeaModel {
                            public var block: Bool?

                            public var path: String?

                            public var sizeBytes: Int64?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.block != nil {
                                    map["Block"] = self.block!
                                }
                                if self.path != nil {
                                    map["Path"] = self.path!
                                }
                                if self.sizeBytes != nil {
                                    map["SizeBytes"] = self.sizeBytes!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Block") {
                                    self.block = dict["Block"] as! Bool
                                }
                                if dict.keys.contains("Path") {
                                    self.path = dict["Path"] as! String
                                }
                                if dict.keys.contains("SizeBytes") {
                                    self.sizeBytes = dict["SizeBytes"] as! Int64
                                }
                            }
                        }
                        public var part: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts.Part]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.part != nil {
                                var tmp : [Any] = []
                                for k in self.part! {
                                    tmp.append(k.toMap())
                                }
                                map["Part"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Part") {
                                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts.Part] = []
                                for v in dict["Part"] as! [Any] {
                                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts.Part()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.part = tmp
                            }
                        }
                    }
                    public var diskId: String?

                    public var LVM: Bool?

                    public var parts: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts?

                    public var size: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.parts?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.diskId != nil {
                            map["DiskId"] = self.diskId!
                        }
                        if self.LVM != nil {
                            map["LVM"] = self.LVM!
                        }
                        if self.parts != nil {
                            map["Parts"] = self.parts?.toMap()
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DiskId") {
                            self.diskId = dict["DiskId"] as! String
                        }
                        if dict.keys.contains("LVM") {
                            self.LVM = dict["LVM"] as! Bool
                        }
                        if dict.keys.contains("Parts") {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                    }
                }
                public var data: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data?

                public var system: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.data?.validate()
                    try self.system?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data?.toMap()
                    }
                    if self.system != nil {
                        map["System"] = self.system?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") {
                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data()
                        model.fromMap(dict["Data"] as! [String: Any])
                        self.data = model
                    }
                    if dict.keys.contains("System") {
                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System()
                        model.fromMap(dict["System"] as! [String: Any])
                        self.system = model
                    }
                }
            }
            public class ReplicationJobRuns : Tea.TeaModel {
                public class ReplicationJobRun : Tea.TeaModel {
                    public var endTime: String?

                    public var imageId: String?

                    public var startTime: String?

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
                        if self.endTime != nil {
                            map["EndTime"] = self.endTime!
                        }
                        if self.imageId != nil {
                            map["ImageId"] = self.imageId!
                        }
                        if self.startTime != nil {
                            map["StartTime"] = self.startTime!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("EndTime") {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("ImageId") {
                            self.imageId = dict["ImageId"] as! String
                        }
                        if dict.keys.contains("StartTime") {
                            self.startTime = dict["StartTime"] as! String
                        }
                        if dict.keys.contains("Type") {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var replicationJobRun: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns.ReplicationJobRun]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.replicationJobRun != nil {
                        var tmp : [Any] = []
                        for k in self.replicationJobRun! {
                            tmp.append(k.toMap())
                        }
                        map["ReplicationJobRun"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ReplicationJobRun") {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns.ReplicationJobRun] = []
                        for v in dict["ReplicationJobRun"] as! [Any] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns.ReplicationJobRun()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.replicationJobRun = tmp
                    }
                }
            }
            public class SystemDiskParts : Tea.TeaModel {
                public class SystemDiskPart : Tea.TeaModel {
                    public var block: Bool?

                    public var device: String?

                    public var sizeBytes: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.block != nil {
                            map["Block"] = self.block!
                        }
                        if self.device != nil {
                            map["Device"] = self.device!
                        }
                        if self.sizeBytes != nil {
                            map["SizeBytes"] = self.sizeBytes!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Block") {
                            self.block = dict["Block"] as! Bool
                        }
                        if dict.keys.contains("Device") {
                            self.device = dict["Device"] as! String
                        }
                        if dict.keys.contains("SizeBytes") {
                            self.sizeBytes = dict["SizeBytes"] as! Int64
                        }
                    }
                }
                public var systemDiskPart: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts.SystemDiskPart]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.systemDiskPart != nil {
                        var tmp : [Any] = []
                        for k in self.systemDiskPart! {
                            tmp.append(k.toMap())
                        }
                        map["SystemDiskPart"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SystemDiskPart") {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts.SystemDiskPart] = []
                        for v in dict["SystemDiskPart"] as! [Any] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts.SystemDiskPart()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.systemDiskPart = tmp
                    }
                }
            }
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var businessStatus: String?

            public var containerNamespace: String?

            public var containerRepository: String?

            public var containerTag: String?

            public var creationTime: String?

            public var dataDisks: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks?

            public var description_: String?

            public var disks: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks?

            public var endTime: String?

            public var errorCode: String?

            public var frequency: Int32?

            public var imageId: String?

            public var imageName: String?

            public var instanceId: String?

            public var instanceRamRole: String?

            public var instanceType: String?

            public var jobId: String?

            public var jobType: Int32?

            public var launchTemplateId: String?

            public var launchTemplateVersion: String?

            public var licenseType: String?

            public var maxNumberOfImageToKeep: Int32?

            public var name: String?

            public var netMode: Int32?

            public var progress: Double?

            public var regionId: String?

            public var replicationJobRuns: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns?

            public var replicationParameters: String?

            public var resourceGroupId: String?

            public var runOnce: Bool?

            public var scheduledStartTime: String?

            public var sourceId: String?

            public var startTime: String?

            public var status: String?

            public var statusInfo: String?

            public var systemDiskParts: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts?

            public var systemDiskSize: Int32?

            public var tags: DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags?

            public var targetType: String?

            public var transitionInstanceId: String?

            public var vSwitchId: String?

            public var validTime: String?

            public var vpcId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDisks?.validate()
                try self.disks?.validate()
                try self.replicationJobRuns?.validate()
                try self.systemDiskParts?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.businessStatus != nil {
                    map["BusinessStatus"] = self.businessStatus!
                }
                if self.containerNamespace != nil {
                    map["ContainerNamespace"] = self.containerNamespace!
                }
                if self.containerRepository != nil {
                    map["ContainerRepository"] = self.containerRepository!
                }
                if self.containerTag != nil {
                    map["ContainerTag"] = self.containerTag!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.dataDisks != nil {
                    map["DataDisks"] = self.dataDisks?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.disks != nil {
                    map["Disks"] = self.disks?.toMap()
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.frequency != nil {
                    map["Frequency"] = self.frequency!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceRamRole != nil {
                    map["InstanceRamRole"] = self.instanceRamRole!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.jobType != nil {
                    map["JobType"] = self.jobType!
                }
                if self.launchTemplateId != nil {
                    map["LaunchTemplateId"] = self.launchTemplateId!
                }
                if self.launchTemplateVersion != nil {
                    map["LaunchTemplateVersion"] = self.launchTemplateVersion!
                }
                if self.licenseType != nil {
                    map["LicenseType"] = self.licenseType!
                }
                if self.maxNumberOfImageToKeep != nil {
                    map["MaxNumberOfImageToKeep"] = self.maxNumberOfImageToKeep!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.netMode != nil {
                    map["NetMode"] = self.netMode!
                }
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.replicationJobRuns != nil {
                    map["ReplicationJobRuns"] = self.replicationJobRuns?.toMap()
                }
                if self.replicationParameters != nil {
                    map["ReplicationParameters"] = self.replicationParameters!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.runOnce != nil {
                    map["RunOnce"] = self.runOnce!
                }
                if self.scheduledStartTime != nil {
                    map["ScheduledStartTime"] = self.scheduledStartTime!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.statusInfo != nil {
                    map["StatusInfo"] = self.statusInfo!
                }
                if self.systemDiskParts != nil {
                    map["SystemDiskParts"] = self.systemDiskParts?.toMap()
                }
                if self.systemDiskSize != nil {
                    map["SystemDiskSize"] = self.systemDiskSize!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.targetType != nil {
                    map["TargetType"] = self.targetType!
                }
                if self.transitionInstanceId != nil {
                    map["TransitionInstanceId"] = self.transitionInstanceId!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.validTime != nil {
                    map["ValidTime"] = self.validTime!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BusinessStatus") {
                    self.businessStatus = dict["BusinessStatus"] as! String
                }
                if dict.keys.contains("ContainerNamespace") {
                    self.containerNamespace = dict["ContainerNamespace"] as! String
                }
                if dict.keys.contains("ContainerRepository") {
                    self.containerRepository = dict["ContainerRepository"] as! String
                }
                if dict.keys.contains("ContainerTag") {
                    self.containerTag = dict["ContainerTag"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DataDisks") {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Disks") {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks()
                    model.fromMap(dict["Disks"] as! [String: Any])
                    self.disks = model
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Frequency") {
                    self.frequency = dict["Frequency"] as! Int32
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageName") {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceRamRole") {
                    self.instanceRamRole = dict["InstanceRamRole"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobType") {
                    self.jobType = dict["JobType"] as! Int32
                }
                if dict.keys.contains("LaunchTemplateId") {
                    self.launchTemplateId = dict["LaunchTemplateId"] as! String
                }
                if dict.keys.contains("LaunchTemplateVersion") {
                    self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
                }
                if dict.keys.contains("LicenseType") {
                    self.licenseType = dict["LicenseType"] as! String
                }
                if dict.keys.contains("MaxNumberOfImageToKeep") {
                    self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NetMode") {
                    self.netMode = dict["NetMode"] as! Int32
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! Double
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ReplicationJobRuns") {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns()
                    model.fromMap(dict["ReplicationJobRuns"] as! [String: Any])
                    self.replicationJobRuns = model
                }
                if dict.keys.contains("ReplicationParameters") {
                    self.replicationParameters = dict["ReplicationParameters"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("RunOnce") {
                    self.runOnce = dict["RunOnce"] as! Bool
                }
                if dict.keys.contains("ScheduledStartTime") {
                    self.scheduledStartTime = dict["ScheduledStartTime"] as! String
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusInfo") {
                    self.statusInfo = dict["StatusInfo"] as! String
                }
                if dict.keys.contains("SystemDiskParts") {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts()
                    model.fromMap(dict["SystemDiskParts"] as! [String: Any])
                    self.systemDiskParts = model
                }
                if dict.keys.contains("SystemDiskSize") {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("TargetType") {
                    self.targetType = dict["TargetType"] as! String
                }
                if dict.keys.contains("TransitionInstanceId") {
                    self.transitionInstanceId = dict["TransitionInstanceId"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ValidTime") {
                    self.validTime = dict["ValidTime"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var replicationJob: [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.replicationJob != nil {
                var tmp : [Any] = []
                for k in self.replicationJob! {
                    tmp.append(k.toMap())
                }
                map["ReplicationJob"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ReplicationJob") {
                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob] = []
                for v in dict["ReplicationJob"] as! [Any] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.replicationJob = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var replicationJobs: DescribeReplicationJobsResponseBody.ReplicationJobs?

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
        try self.replicationJobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.replicationJobs != nil {
            map["ReplicationJobs"] = self.replicationJobs?.toMap()
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
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicationJobs") {
            var model = DescribeReplicationJobsResponseBody.ReplicationJobs()
            model.fromMap(dict["ReplicationJobs"] as! [String: Any])
            self.replicationJobs = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeReplicationJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeReplicationJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeReplicationJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSourceServersRequest : Tea.TeaModel {
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var jobId: String?

    public var name: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var relatedJobType: [String]?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var sourceId: [String]?

    public var state: String?

    public var tag: [DescribeSourceServersRequest.Tag]?

    public var workgroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.relatedJobType != nil {
            map["RelatedJobType"] = self.relatedJobType!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RelatedJobType") {
            self.relatedJobType = dict["RelatedJobType"] as! [String]
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tag") {
            var tmp : [DescribeSourceServersRequest.Tag] = []
            for v in dict["Tag"] as! [Any] {
                var model = DescribeSourceServersRequest.Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tag = tmp
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class DescribeSourceServersResponseBody : Tea.TeaModel {
    public class SourceServers : Tea.TeaModel {
        public class SourceServer : Tea.TeaModel {
            public class DataDisks : Tea.TeaModel {
                public class DataDisk : Tea.TeaModel {
                    public class Parts : Tea.TeaModel {
                        public class Part : Tea.TeaModel {
                            public var canBlock: Bool?

                            public var device: String?

                            public var need: Bool?

                            public var path: String?

                            public var sizeBytes: Int64?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.canBlock != nil {
                                    map["CanBlock"] = self.canBlock!
                                }
                                if self.device != nil {
                                    map["Device"] = self.device!
                                }
                                if self.need != nil {
                                    map["Need"] = self.need!
                                }
                                if self.path != nil {
                                    map["Path"] = self.path!
                                }
                                if self.sizeBytes != nil {
                                    map["SizeBytes"] = self.sizeBytes!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CanBlock") {
                                    self.canBlock = dict["CanBlock"] as! Bool
                                }
                                if dict.keys.contains("Device") {
                                    self.device = dict["Device"] as! String
                                }
                                if dict.keys.contains("Need") {
                                    self.need = dict["Need"] as! Bool
                                }
                                if dict.keys.contains("Path") {
                                    self.path = dict["Path"] as! String
                                }
                                if dict.keys.contains("SizeBytes") {
                                    self.sizeBytes = dict["SizeBytes"] as! Int64
                                }
                            }
                        }
                        public var part: [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts.Part]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.part != nil {
                                var tmp : [Any] = []
                                for k in self.part! {
                                    tmp.append(k.toMap())
                                }
                                map["Part"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Part") {
                                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts.Part] = []
                                for v in dict["Part"] as! [Any] {
                                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts.Part()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.part = tmp
                            }
                        }
                    }
                    public var index: Int32?

                    public var parts: DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts?

                    public var path: String?

                    public var size: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.parts?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.index != nil {
                            map["Index"] = self.index!
                        }
                        if self.parts != nil {
                            map["Parts"] = self.parts?.toMap()
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Index") {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("Parts") {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Path") {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                    }
                }
                public var dataDisk: [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataDisk != nil {
                        var tmp : [Any] = []
                        for k in self.dataDisk! {
                            tmp.append(k.toMap())
                        }
                        map["DataDisk"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataDisk") {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk] = []
                        for v in dict["DataDisk"] as! [Any] {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.dataDisk = tmp
                    }
                }
            }
            public class Disks : Tea.TeaModel {
                public class Data : Tea.TeaModel {
                    public class Data : Tea.TeaModel {
                        public class Parts : Tea.TeaModel {
                            public class Part : Tea.TeaModel {
                                public var canBlock: Bool?

                                public var path: String?

                                public var sizeBytes: Int64?

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
                                    if self.canBlock != nil {
                                        map["CanBlock"] = self.canBlock!
                                    }
                                    if self.path != nil {
                                        map["Path"] = self.path!
                                    }
                                    if self.sizeBytes != nil {
                                        map["SizeBytes"] = self.sizeBytes!
                                    }
                                    if self.type != nil {
                                        map["Type"] = self.type!
                                    }
                                    return map
                                }

                                public override func fromMap(_ dict: [String: Any]) -> Void {
                                    if dict.keys.contains("CanBlock") {
                                        self.canBlock = dict["CanBlock"] as! Bool
                                    }
                                    if dict.keys.contains("Path") {
                                        self.path = dict["Path"] as! String
                                    }
                                    if dict.keys.contains("SizeBytes") {
                                        self.sizeBytes = dict["SizeBytes"] as! Int64
                                    }
                                    if dict.keys.contains("Type") {
                                        self.type = dict["Type"] as! String
                                    }
                                }
                            }
                            public var part: [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts.Part]?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.part != nil {
                                    var tmp : [Any] = []
                                    for k in self.part! {
                                        tmp.append(k.toMap())
                                    }
                                    map["Part"] = tmp
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Part") {
                                    var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts.Part] = []
                                    for v in dict["Part"] as! [Any] {
                                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as! [String: Any])
                                        }
                                        tmp.append(model)
                                    }
                                    self.part = tmp
                                }
                            }
                        }
                        public var offset: Int64?

                        public var parts: DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts?

                        public var size: Int32?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                            try self.parts?.validate()
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.offset != nil {
                                map["Offset"] = self.offset!
                            }
                            if self.parts != nil {
                                map["Parts"] = self.parts?.toMap()
                            }
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Offset") {
                                self.offset = dict["Offset"] as! Int64
                            }
                            if dict.keys.contains("Parts") {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts()
                                model.fromMap(dict["Parts"] as! [String: Any])
                                self.parts = model
                            }
                            if dict.keys.contains("Size") {
                                self.size = dict["Size"] as! Int32
                            }
                        }
                    }
                    public var data: [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data]?

                    public override init() {
                        super.init()
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
                        if dict.keys.contains("Data") {
                            var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data] = []
                            for v in dict["Data"] as! [Any] {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.data = tmp
                        }
                    }
                }
                public class System : Tea.TeaModel {
                    public class Parts : Tea.TeaModel {
                        public class Part : Tea.TeaModel {
                            public var canBlock: Bool?

                            public var path: String?

                            public var sizeBytes: Int64?

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
                                if self.canBlock != nil {
                                    map["CanBlock"] = self.canBlock!
                                }
                                if self.path != nil {
                                    map["Path"] = self.path!
                                }
                                if self.sizeBytes != nil {
                                    map["SizeBytes"] = self.sizeBytes!
                                }
                                if self.type != nil {
                                    map["Type"] = self.type!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("CanBlock") {
                                    self.canBlock = dict["CanBlock"] as! Bool
                                }
                                if dict.keys.contains("Path") {
                                    self.path = dict["Path"] as! String
                                }
                                if dict.keys.contains("SizeBytes") {
                                    self.sizeBytes = dict["SizeBytes"] as! Int64
                                }
                                if dict.keys.contains("Type") {
                                    self.type = dict["Type"] as! String
                                }
                            }
                        }
                        public var part: [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts.Part]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.part != nil {
                                var tmp : [Any] = []
                                for k in self.part! {
                                    tmp.append(k.toMap())
                                }
                                map["Part"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Part") {
                                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts.Part] = []
                                for v in dict["Part"] as! [Any] {
                                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts.Part()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
                                }
                                self.part = tmp
                            }
                        }
                    }
                    public var offset: Int64?

                    public var parts: DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts?

                    public var size: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.parts?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.offset != nil {
                            map["Offset"] = self.offset!
                        }
                        if self.parts != nil {
                            map["Parts"] = self.parts?.toMap()
                        }
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Offset") {
                            self.offset = dict["Offset"] as! Int64
                        }
                        if dict.keys.contains("Parts") {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Size") {
                            self.size = dict["Size"] as! Int32
                        }
                    }
                }
                public var data: DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data?

                public var system: DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.data?.validate()
                    try self.system?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.data != nil {
                        map["Data"] = self.data?.toMap()
                    }
                    if self.system != nil {
                        map["System"] = self.system?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Data") {
                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data()
                        model.fromMap(dict["Data"] as! [String: Any])
                        self.data = model
                    }
                    if dict.keys.contains("System") {
                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System()
                        model.fromMap(dict["System"] as! [String: Any])
                        self.system = model
                    }
                }
            }
            public class SystemDiskParts : Tea.TeaModel {
                public class SystemDiskPart : Tea.TeaModel {
                    public var canBlock: Bool?

                    public var device: String?

                    public var need: Bool?

                    public var path: String?

                    public var sizeBytes: Int64?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.canBlock != nil {
                            map["CanBlock"] = self.canBlock!
                        }
                        if self.device != nil {
                            map["Device"] = self.device!
                        }
                        if self.need != nil {
                            map["Need"] = self.need!
                        }
                        if self.path != nil {
                            map["Path"] = self.path!
                        }
                        if self.sizeBytes != nil {
                            map["SizeBytes"] = self.sizeBytes!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CanBlock") {
                            self.canBlock = dict["CanBlock"] as! Bool
                        }
                        if dict.keys.contains("Device") {
                            self.device = dict["Device"] as! String
                        }
                        if dict.keys.contains("Need") {
                            self.need = dict["Need"] as! Bool
                        }
                        if dict.keys.contains("Path") {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("SizeBytes") {
                            self.sizeBytes = dict["SizeBytes"] as! Int64
                        }
                    }
                }
                public var systemDiskPart: [DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts.SystemDiskPart]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.systemDiskPart != nil {
                        var tmp : [Any] = []
                        for k in self.systemDiskPart! {
                            tmp.append(k.toMap())
                        }
                        map["SystemDiskPart"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("SystemDiskPart") {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts.SystemDiskPart] = []
                        for v in dict["SystemDiskPart"] as! [Any] {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts.SystemDiskPart()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.systemDiskPart = tmp
                    }
                }
            }
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
                        if dict.keys.contains("Key") {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") {
                            self.value = dict["Value"] as! String
                        }
                    }
                }
                public var tag: [DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags.Tag]?

                public override init() {
                    super.init()
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
                    if dict.keys.contains("Tag") {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags.Tag] = []
                        for v in dict["Tag"] as! [Any] {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags.Tag()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.tag = tmp
                    }
                }
            }
            public var agentVersion: String?

            public var architecture: String?

            public var creationTime: String?

            public var dataDisks: DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks?

            public var description_: String?

            public var disks: DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks?

            public var errorCode: String?

            public var heartbeatRate: Int32?

            public var jobId: String?

            public var kernelLevel: Int32?

            public var name: String?

            public var platform: String?

            public var replicationDriver: String?

            public var resourceGroupId: String?

            public var sourceId: String?

            public var state: String?

            public var statusInfo: String?

            public var systemDiskParts: DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts?

            public var systemDiskSize: Int32?

            public var systemInfo: String?

            public var tags: DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags?

            public var workgroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDisks?.validate()
                try self.disks?.validate()
                try self.systemDiskParts?.validate()
                try self.tags?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.agentVersion != nil {
                    map["AgentVersion"] = self.agentVersion!
                }
                if self.architecture != nil {
                    map["Architecture"] = self.architecture!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.dataDisks != nil {
                    map["DataDisks"] = self.dataDisks?.toMap()
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.disks != nil {
                    map["Disks"] = self.disks?.toMap()
                }
                if self.errorCode != nil {
                    map["ErrorCode"] = self.errorCode!
                }
                if self.heartbeatRate != nil {
                    map["HeartbeatRate"] = self.heartbeatRate!
                }
                if self.jobId != nil {
                    map["JobId"] = self.jobId!
                }
                if self.kernelLevel != nil {
                    map["KernelLevel"] = self.kernelLevel!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                if self.replicationDriver != nil {
                    map["ReplicationDriver"] = self.replicationDriver!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.sourceId != nil {
                    map["SourceId"] = self.sourceId!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.statusInfo != nil {
                    map["StatusInfo"] = self.statusInfo!
                }
                if self.systemDiskParts != nil {
                    map["SystemDiskParts"] = self.systemDiskParts?.toMap()
                }
                if self.systemDiskSize != nil {
                    map["SystemDiskSize"] = self.systemDiskSize!
                }
                if self.systemInfo != nil {
                    map["SystemInfo"] = self.systemInfo!
                }
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.workgroupId != nil {
                    map["WorkgroupId"] = self.workgroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentVersion") {
                    self.agentVersion = dict["AgentVersion"] as! String
                }
                if dict.keys.contains("Architecture") {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DataDisks") {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Disks") {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks()
                    model.fromMap(dict["Disks"] as! [String: Any])
                    self.disks = model
                }
                if dict.keys.contains("ErrorCode") {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("HeartbeatRate") {
                    self.heartbeatRate = dict["HeartbeatRate"] as! Int32
                }
                if dict.keys.contains("JobId") {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("KernelLevel") {
                    self.kernelLevel = dict["KernelLevel"] as! Int32
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Platform") {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("ReplicationDriver") {
                    self.replicationDriver = dict["ReplicationDriver"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SourceId") {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("StatusInfo") {
                    self.statusInfo = dict["StatusInfo"] as! String
                }
                if dict.keys.contains("SystemDiskParts") {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts()
                    model.fromMap(dict["SystemDiskParts"] as! [String: Any])
                    self.systemDiskParts = model
                }
                if dict.keys.contains("SystemDiskSize") {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
                if dict.keys.contains("SystemInfo") {
                    self.systemInfo = dict["SystemInfo"] as! String
                }
                if dict.keys.contains("Tags") {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("WorkgroupId") {
                    self.workgroupId = dict["WorkgroupId"] as! String
                }
            }
        }
        public var sourceServer: [DescribeSourceServersResponseBody.SourceServers.SourceServer]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.sourceServer != nil {
                var tmp : [Any] = []
                for k in self.sourceServer! {
                    tmp.append(k.toMap())
                }
                map["SourceServer"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SourceServer") {
                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer] = []
                for v in dict["SourceServer"] as! [Any] {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.sourceServer = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var sourceServers: DescribeSourceServersResponseBody.SourceServers?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.sourceServers?.validate()
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
        if self.sourceServers != nil {
            map["SourceServers"] = self.sourceServers?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceServers") {
            var model = DescribeSourceServersResponseBody.SourceServers()
            model.fromMap(dict["SourceServers"] as! [String: Any])
            self.sourceServers = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeSourceServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSourceServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeSourceServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWorkgroupsRequest : Tea.TeaModel {
    public var name: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var status: String?

    public var workgroupId: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.name != nil {
            map["Name"] = self.name!
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
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! [String]
        }
    }
}

public class DescribeWorkgroupsResponseBody : Tea.TeaModel {
    public class Workgroups : Tea.TeaModel {
        public class Workgroup : Tea.TeaModel {
            public class Warnings : Tea.TeaModel {
                public class Warning : Tea.TeaModel {
                    public class SourceIds : Tea.TeaModel {
                        public var sourceId: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.sourceId != nil {
                                map["SourceId"] = self.sourceId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SourceId") {
                                self.sourceId = dict["SourceId"] as! [String]
                            }
                        }
                    }
                    public var sourceIds: DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning.SourceIds?

                    public var warningType: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.sourceIds?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.sourceIds != nil {
                            map["SourceIds"] = self.sourceIds?.toMap()
                        }
                        if self.warningType != nil {
                            map["WarningType"] = self.warningType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("SourceIds") {
                            var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning.SourceIds()
                            model.fromMap(dict["SourceIds"] as! [String: Any])
                            self.sourceIds = model
                        }
                        if dict.keys.contains("WarningType") {
                            self.warningType = dict["WarningType"] as! String
                        }
                    }
                }
                public var warning: [DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.warning != nil {
                        var tmp : [Any] = []
                        for k in self.warning! {
                            tmp.append(k.toMap())
                        }
                        map["Warning"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Warning") {
                        var tmp : [DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning] = []
                        for v in dict["Warning"] as! [Any] {
                            var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.warning = tmp
                    }
                }
            }
            public var description_: String?

            public var name: String?

            public var status: String?

            public var warnings: DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings?

            public var workgroupId: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.warnings?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.warnings != nil {
                    map["Warnings"] = self.warnings?.toMap()
                }
                if self.workgroupId != nil {
                    map["WorkgroupId"] = self.workgroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Warnings") {
                    var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings()
                    model.fromMap(dict["Warnings"] as! [String: Any])
                    self.warnings = model
                }
                if dict.keys.contains("WorkgroupId") {
                    self.workgroupId = dict["WorkgroupId"] as! String
                }
            }
        }
        public var workgroup: [DescribeWorkgroupsResponseBody.Workgroups.Workgroup]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.workgroup != nil {
                var tmp : [Any] = []
                for k in self.workgroup! {
                    tmp.append(k.toMap())
                }
                map["Workgroup"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Workgroup") {
                var tmp : [DescribeWorkgroupsResponseBody.Workgroups.Workgroup] = []
                for v in dict["Workgroup"] as! [Any] {
                    var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.workgroup = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var workgroups: DescribeWorkgroupsResponseBody.Workgroups?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.workgroups?.validate()
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
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.workgroups != nil {
            map["Workgroups"] = self.workgroups?.toMap()
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
        if dict.keys.contains("Workgroups") {
            var model = DescribeWorkgroupsResponseBody.Workgroups()
            model.fromMap(dict["Workgroups"] as! [String: Any])
            self.workgroups = model
        }
    }
}

public class DescribeWorkgroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWorkgroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DescribeWorkgroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisableAccessTokenRequest : Tea.TeaModel {
    public var accessTokenId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokenId != nil {
            map["AccessTokenId"] = self.accessTokenId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTokenId") {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class DisableAccessTokenResponseBody : Tea.TeaModel {
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

public class DisableAccessTokenResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisableAccessTokenResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisableAccessTokenResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DisassociateSourceServersRequest : Tea.TeaModel {
    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sourceId: [String]?

    public var workgroupId: String?

    public override init() {
        super.init()
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
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class DisassociateSourceServersResponseBody : Tea.TeaModel {
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

public class DisassociateSourceServersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DisassociateSourceServersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = DisassociateSourceServersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessTokensRequest : Tea.TeaModel {
    public var accessTokenId: [String]?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

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
        if self.accessTokenId != nil {
            map["AccessTokenId"] = self.accessTokenId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessTokenId") {
            self.accessTokenId = dict["AccessTokenId"] as! [String]
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class ListAccessTokensResponseBody : Tea.TeaModel {
    public class AccessTokens : Tea.TeaModel {
        public class AccessToken : Tea.TeaModel {
            public var accessTokenId: String?

            public var count: String?

            public var creationTime: String?

            public var description_: String?

            public var name: String?

            public var registeredCount: String?

            public var status: String?

            public var timeToLiveInDays: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accessTokenId != nil {
                    map["AccessTokenId"] = self.accessTokenId!
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.creationTime != nil {
                    map["CreationTime"] = self.creationTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.registeredCount != nil {
                    map["RegisteredCount"] = self.registeredCount!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.timeToLiveInDays != nil {
                    map["TimeToLiveInDays"] = self.timeToLiveInDays!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccessTokenId") {
                    self.accessTokenId = dict["AccessTokenId"] as! String
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! String
                }
                if dict.keys.contains("CreationTime") {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RegisteredCount") {
                    self.registeredCount = dict["RegisteredCount"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TimeToLiveInDays") {
                    self.timeToLiveInDays = dict["TimeToLiveInDays"] as! String
                }
            }
        }
        public var accessToken: [ListAccessTokensResponseBody.AccessTokens.AccessToken]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessToken != nil {
                var tmp : [Any] = []
                for k in self.accessToken! {
                    tmp.append(k.toMap())
                }
                map["AccessToken"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessToken") {
                var tmp : [ListAccessTokensResponseBody.AccessTokens.AccessToken] = []
                for v in dict["AccessToken"] as! [Any] {
                    var model = ListAccessTokensResponseBody.AccessTokens.AccessToken()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.accessToken = tmp
            }
        }
    }
    public var accessTokens: ListAccessTokensResponseBody.AccessTokens?

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
        try self.accessTokens?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessTokens != nil {
            map["AccessTokens"] = self.accessTokens?.toMap()
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
        if dict.keys.contains("AccessTokens") {
            var model = ListAccessTokensResponseBody.AccessTokens()
            model.fromMap(dict["AccessTokens"] as! [String: Any])
            self.accessTokens = model
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

public class ListAccessTokensResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessTokensResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ListAccessTokensResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

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
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
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
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
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
            if dict.keys.contains("TagResource") {
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyReplicationJobAttributeRequest : Tea.TeaModel {
    public class DataDisk : Tea.TeaModel {
        public class Part : Tea.TeaModel {
            public var block: Bool?

            public var device: String?

            public var sizeBytes: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.block != nil {
                    map["Block"] = self.block!
                }
                if self.device != nil {
                    map["Device"] = self.device!
                }
                if self.sizeBytes != nil {
                    map["SizeBytes"] = self.sizeBytes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Block") {
                    self.block = dict["Block"] as! Bool
                }
                if dict.keys.contains("Device") {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("SizeBytes") {
                    self.sizeBytes = dict["SizeBytes"] as! Int64
                }
            }
        }
        public var index: Int32?

        public var part: [ModifyReplicationJobAttributeRequest.DataDisk.Part]?

        public var size: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.index != nil {
                map["Index"] = self.index!
            }
            if self.part != nil {
                var tmp : [Any] = []
                for k in self.part! {
                    tmp.append(k.toMap())
                }
                map["Part"] = tmp
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Index") {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Part") {
                var tmp : [ModifyReplicationJobAttributeRequest.DataDisk.Part] = []
                for v in dict["Part"] as! [Any] {
                    var model = ModifyReplicationJobAttributeRequest.DataDisk.Part()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.part = tmp
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
            }
        }
    }
    public class SystemDiskPart : Tea.TeaModel {
        public var block: Bool?

        public var device: String?

        public var sizeBytes: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.block != nil {
                map["Block"] = self.block!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.sizeBytes != nil {
                map["SizeBytes"] = self.sizeBytes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Block") {
                self.block = dict["Block"] as! Bool
            }
            if dict.keys.contains("Device") {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("SizeBytes") {
                self.sizeBytes = dict["SizeBytes"] as! Int64
            }
        }
    }
    public var containerNamespace: String?

    public var containerRepository: String?

    public var containerTag: String?

    public var dataDisk: [ModifyReplicationJobAttributeRequest.DataDisk]?

    public var description_: String?

    public var frequency: Int32?

    public var imageName: String?

    public var instanceId: String?

    public var instanceRamRole: String?

    public var instanceType: String?

    public var jobId: String?

    public var launchTemplateId: String?

    public var launchTemplateVersion: String?

    public var maxNumberOfImageToKeep: Int32?

    public var name: String?

    public var netMode: Int32?

    public var ownerId: Int64?

    public var replicationParameters: String?

    public var resourceOwnerAccount: String?

    public var scheduledStartTime: String?

    public var systemDiskPart: [ModifyReplicationJobAttributeRequest.SystemDiskPart]?

    public var systemDiskSize: Int32?

    public var targetType: String?

    public var vSwitchId: String?

    public var validTime: String?

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
        if self.containerNamespace != nil {
            map["ContainerNamespace"] = self.containerNamespace!
        }
        if self.containerRepository != nil {
            map["ContainerRepository"] = self.containerRepository!
        }
        if self.containerTag != nil {
            map["ContainerTag"] = self.containerTag!
        }
        if self.dataDisk != nil {
            var tmp : [Any] = []
            for k in self.dataDisk! {
                tmp.append(k.toMap())
            }
            map["DataDisk"] = tmp
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.frequency != nil {
            map["Frequency"] = self.frequency!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceRamRole != nil {
            map["InstanceRamRole"] = self.instanceRamRole!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.launchTemplateId != nil {
            map["LaunchTemplateId"] = self.launchTemplateId!
        }
        if self.launchTemplateVersion != nil {
            map["LaunchTemplateVersion"] = self.launchTemplateVersion!
        }
        if self.maxNumberOfImageToKeep != nil {
            map["MaxNumberOfImageToKeep"] = self.maxNumberOfImageToKeep!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.netMode != nil {
            map["NetMode"] = self.netMode!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.replicationParameters != nil {
            map["ReplicationParameters"] = self.replicationParameters!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.scheduledStartTime != nil {
            map["ScheduledStartTime"] = self.scheduledStartTime!
        }
        if self.systemDiskPart != nil {
            var tmp : [Any] = []
            for k in self.systemDiskPart! {
                tmp.append(k.toMap())
            }
            map["SystemDiskPart"] = tmp
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.targetType != nil {
            map["TargetType"] = self.targetType!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.validTime != nil {
            map["ValidTime"] = self.validTime!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerNamespace") {
            self.containerNamespace = dict["ContainerNamespace"] as! String
        }
        if dict.keys.contains("ContainerRepository") {
            self.containerRepository = dict["ContainerRepository"] as! String
        }
        if dict.keys.contains("ContainerTag") {
            self.containerTag = dict["ContainerTag"] as! String
        }
        if dict.keys.contains("DataDisk") {
            var tmp : [ModifyReplicationJobAttributeRequest.DataDisk] = []
            for v in dict["DataDisk"] as! [Any] {
                var model = ModifyReplicationJobAttributeRequest.DataDisk()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisk = tmp
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Frequency") {
            self.frequency = dict["Frequency"] as! Int32
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceRamRole") {
            self.instanceRamRole = dict["InstanceRamRole"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("LaunchTemplateId") {
            self.launchTemplateId = dict["LaunchTemplateId"] as! String
        }
        if dict.keys.contains("LaunchTemplateVersion") {
            self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
        }
        if dict.keys.contains("MaxNumberOfImageToKeep") {
            self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetMode") {
            self.netMode = dict["NetMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReplicationParameters") {
            self.replicationParameters = dict["ReplicationParameters"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScheduledStartTime") {
            self.scheduledStartTime = dict["ScheduledStartTime"] as! String
        }
        if dict.keys.contains("SystemDiskPart") {
            var tmp : [ModifyReplicationJobAttributeRequest.SystemDiskPart] = []
            for v in dict["SystemDiskPart"] as! [Any] {
                var model = ModifyReplicationJobAttributeRequest.SystemDiskPart()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.systemDiskPart = tmp
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("TargetType") {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ValidTime") {
            self.validTime = dict["ValidTime"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class ModifyReplicationJobAttributeResponseBody : Tea.TeaModel {
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

public class ModifyReplicationJobAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyReplicationJobAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyReplicationJobAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifySourceServerAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var sourceId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.sourceId != nil {
            map["SourceId"] = self.sourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") {
            self.sourceId = dict["SourceId"] as! String
        }
    }
}

public class ModifySourceServerAttributeResponseBody : Tea.TeaModel {
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

public class ModifySourceServerAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifySourceServerAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifySourceServerAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyWorkgroupAttributeRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var workgroupId: String?

    public override init() {
        super.init()
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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        if self.workgroupId != nil {
            map["WorkgroupId"] = self.workgroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("WorkgroupId") {
            self.workgroupId = dict["WorkgroupId"] as! String
        }
    }
}

public class ModifyWorkgroupAttributeResponseBody : Tea.TeaModel {
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

public class ModifyWorkgroupAttributeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyWorkgroupAttributeResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = ModifyWorkgroupAttributeResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartReplicationJobRequest : Tea.TeaModel {
    public var jobId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class StartReplicationJobResponseBody : Tea.TeaModel {
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

public class StartReplicationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartReplicationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StartReplicationJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopReplicationJobRequest : Tea.TeaModel {
    public var jobId: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.ownerId != nil {
            map["OwnerId"] = self.ownerId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
    }
}

public class StopReplicationJobResponseBody : Tea.TeaModel {
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

public class StopReplicationJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopReplicationJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
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
            var model = StopReplicationJobResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
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
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var ownerId: Int64?

    public var resourceId: [String]?

    public var resourceOwnerAccount: String?

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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceOwnerAccount != nil {
            map["ResourceOwnerAccount"] = self.resourceOwnerAccount!
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
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("OwnerId") {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UntagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
