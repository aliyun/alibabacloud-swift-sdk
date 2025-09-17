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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? [String] {
            self.sourceId = value
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AssociateSourceServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Count"] as? String {
            self.count = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["TimeToLiveInDays"] as? String {
            self.timeToLiveInDays = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenCode"] as? String {
            self.accessTokenCode = value
        }
        if let value = dict["AccessTokenId"] as? String {
            self.accessTokenId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessTokenResponseBody()
            model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["DiskId"] as? String {
                self.diskId = value
            }
            if let value = dict["PerformanceLevel"] as? String {
                self.performanceLevel = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoPay"] as? Bool {
            self.autoPay = value
        }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Disk"] as? [Any?] {
            var tmp : [CreateCrossZoneMigrationJobRequest.Disk] = []
            for v in value {
                if v != nil {
                    var model = CreateCrossZoneMigrationJobRequest.Disk()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.disk = tmp
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
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
        if let value = dict["TargetInstanceType"] as? String {
            self.targetInstanceType = value
        }
        if let value = dict["TargetVSwitchId"] as? String {
            self.targetVSwitchId = value
        }
        if let value = dict["TargetZoneId"] as? String {
            self.targetZoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateCrossZoneMigrationJobResponseBody()
            model.fromMap(value)
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Block"] as? Bool {
                    self.block = value
                }
                if let value = dict["Device"] as? String {
                    self.device = value
                }
                if let value = dict["SizeBytes"] as? Int64 {
                    self.sizeBytes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Part"] as? [Any?] {
                var tmp : [CreateReplicationJobRequest.DataDisk.Part] = []
                for v in value {
                    if v != nil {
                        var model = CreateReplicationJobRequest.DataDisk.Part()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.part = tmp
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Block"] as? Bool {
                        self.block = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["SizeBytes"] as? Int64 {
                        self.sizeBytes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DiskId"] as? String {
                    self.diskId = value
                }
                if let value = dict["LVM"] as? Bool {
                    self.LVM = value
                }
                if let value = dict["Part"] as? [Any?] {
                    var tmp : [CreateReplicationJobRequest.Disks.Data.Part] = []
                    for v in value {
                        if v != nil {
                            var model = CreateReplicationJobRequest.Disks.Data.Part()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.part = tmp
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Block"] as? Bool {
                        self.block = value
                    }
                    if let value = dict["Path"] as? String {
                        self.path = value
                    }
                    if let value = dict["SizeBytes"] as? Int64 {
                        self.sizeBytes = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LVM"] as? Bool {
                    self.LVM = value
                }
                if let value = dict["Part"] as? [Any?] {
                    var tmp : [CreateReplicationJobRequest.Disks.System.Part] = []
                    for v in value {
                        if v != nil {
                            var model = CreateReplicationJobRequest.Disks.System.Part()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.part = tmp
                }
                if let value = dict["Size"] as? Int32 {
                    self.size = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Data"] as? [Any?] {
                var tmp : [CreateReplicationJobRequest.Disks.Data] = []
                for v in value {
                    if v != nil {
                        var model = CreateReplicationJobRequest.Disks.Data()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.data = tmp
            }
            if let value = dict["System"] as? [String: Any?] {
                var model = CreateReplicationJobRequest.Disks.System()
                model.fromMap(value)
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Block"] as? Bool {
                self.block = value
            }
            if let value = dict["Device"] as? String {
                self.device = value
            }
            if let value = dict["SizeBytes"] as? Int64 {
                self.sizeBytes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["ContainerNamespace"] as? String {
            self.containerNamespace = value
        }
        if let value = dict["ContainerRepository"] as? String {
            self.containerRepository = value
        }
        if let value = dict["ContainerTag"] as? String {
            self.containerTag = value
        }
        if let value = dict["DataDisk"] as? [Any?] {
            var tmp : [CreateReplicationJobRequest.DataDisk] = []
            for v in value {
                if v != nil {
                    var model = CreateReplicationJobRequest.DataDisk()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataDisk = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Disks"] as? [String: Any?] {
            var model = CreateReplicationJobRequest.Disks()
            model.fromMap(value)
            self.disks = model
        }
        if let value = dict["Frequency"] as? Int32 {
            self.frequency = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceRamRole"] as? String {
            self.instanceRamRole = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["JobType"] as? Int32 {
            self.jobType = value
        }
        if let value = dict["LaunchTemplateId"] as? String {
            self.launchTemplateId = value
        }
        if let value = dict["LaunchTemplateVersion"] as? String {
            self.launchTemplateVersion = value
        }
        if let value = dict["LicenseType"] as? String {
            self.licenseType = value
        }
        if let value = dict["MaxNumberOfImageToKeep"] as? Int32 {
            self.maxNumberOfImageToKeep = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetMode"] as? Int32 {
            self.netMode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ReplicationParameters"] as? String {
            self.replicationParameters = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["RunOnce"] as? Bool {
            self.runOnce = value
        }
        if let value = dict["ScheduledStartTime"] as? String {
            self.scheduledStartTime = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
        }
        if let value = dict["SystemDiskPart"] as? [Any?] {
            var tmp : [CreateReplicationJobRequest.SystemDiskPart] = []
            for v in value {
                if v != nil {
                    var model = CreateReplicationJobRequest.SystemDiskPart()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemDiskPart = tmp
        }
        if let value = dict["SystemDiskSize"] as? Int32 {
            self.systemDiskSize = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateReplicationJobRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateReplicationJobRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ValidTime"] as? String {
            self.validTime = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateReplicationJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateWorkgroupRequest : Tea.TeaModel {
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
    public var clientToken: String?

    public var description_: String?

    public var name: String?

    public var ownerId: Int64?

    public var resourceOwnerAccount: String?

    public var tag: [CreateWorkgroupRequest.Tag]?

    public override init() {
        super.init()
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
        if let value = dict["ClientToken"] as? String {
            self.clientToken = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [CreateWorkgroupRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = CreateWorkgroupRequest.Tag()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateWorkgroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SyncData"] as? Bool {
            self.syncData = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CutOverReplicationJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenId"] as? String {
            self.accessTokenId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteReplicationJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Force"] as? Bool {
            self.force = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteSourceServerResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteWorkgroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["BusinessStatus"] as? String {
            self.businessStatus = value
        }
        if let value = dict["InstanceId"] as? [String] {
            self.instanceId = value
        }
        if let value = dict["JobId"] as? [String] {
            self.jobId = value
        }
        if let value = dict["JobType"] as? Int32 {
            self.jobType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
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
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? [String] {
            self.sourceId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeReplicationJobsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeReplicationJobsRequest.Tag()
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Block"] as? Bool {
                                    self.block = value
                                }
                                if let value = dict["Device"] as? String {
                                    self.device = value
                                }
                                if let value = dict["SizeBytes"] as? Int64 {
                                    self.sizeBytes = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Part"] as? [Any?] {
                                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts.Part] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["Parts"] as? [String: Any?] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts()
                            model.fromMap(value)
                            self.parts = model
                        }
                        if let value = dict["Size"] as? Int32 {
                            self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DataDisk"] as? [Any?] {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["Block"] as? Bool {
                                        self.block = value
                                    }
                                    if let value = dict["Path"] as? String {
                                        self.path = value
                                    }
                                    if let value = dict["SizeBytes"] as? Int64 {
                                        self.sizeBytes = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Part"] as? [Any?] {
                                    var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts.Part] = []
                                    for v in value {
                                        if v != nil {
                                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts.Part()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["DiskId"] as? String {
                                self.diskId = value
                            }
                            if let value = dict["LVM"] as? Bool {
                                self.LVM = value
                            }
                            if let value = dict["Parts"] as? [String: Any?] {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data.Parts()
                                model.fromMap(value)
                                self.parts = model
                            }
                            if let value = dict["Size"] as? Int32 {
                                self.size = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Data"] as? [Any?] {
                            var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data] = []
                            for v in value {
                                if v != nil {
                                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data.Data()
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Block"] as? Bool {
                                    self.block = value
                                }
                                if let value = dict["Path"] as? String {
                                    self.path = value
                                }
                                if let value = dict["SizeBytes"] as? Int64 {
                                    self.sizeBytes = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Part"] as? [Any?] {
                                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts.Part] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["DiskId"] as? String {
                            self.diskId = value
                        }
                        if let value = dict["LVM"] as? Bool {
                            self.LVM = value
                        }
                        if let value = dict["Parts"] as? [String: Any?] {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System.Parts()
                            model.fromMap(value)
                            self.parts = model
                        }
                        if let value = dict["Size"] as? Int32 {
                            self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [String: Any?] {
                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.Data()
                        model.fromMap(value)
                        self.data = model
                    }
                    if let value = dict["System"] as? [String: Any?] {
                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks.System()
                        model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["EndTime"] as? String {
                            self.endTime = value
                        }
                        if let value = dict["ImageId"] as? String {
                            self.imageId = value
                        }
                        if let value = dict["StartTime"] as? String {
                            self.startTime = value
                        }
                        if let value = dict["Type"] as? String {
                            self.type = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ReplicationJobRun"] as? [Any?] {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns.ReplicationJobRun] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns.ReplicationJobRun()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Block"] as? Bool {
                            self.block = value
                        }
                        if let value = dict["Device"] as? String {
                            self.device = value
                        }
                        if let value = dict["SizeBytes"] as? Int64 {
                            self.sizeBytes = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SystemDiskPart"] as? [Any?] {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts.SystemDiskPart] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts.SystemDiskPart()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags.Tag()
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
                if self.workgroupId != nil {
                    map["WorkgroupId"] = self.workgroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["BusinessStatus"] as? String {
                    self.businessStatus = value
                }
                if let value = dict["ContainerNamespace"] as? String {
                    self.containerNamespace = value
                }
                if let value = dict["ContainerRepository"] as? String {
                    self.containerRepository = value
                }
                if let value = dict["ContainerTag"] as? String {
                    self.containerTag = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["DataDisks"] as? [String: Any?] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks()
                    model.fromMap(value)
                    self.dataDisks = model
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Disks"] as? [String: Any?] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Disks()
                    model.fromMap(value)
                    self.disks = model
                }
                if let value = dict["EndTime"] as? String {
                    self.endTime = value
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["Frequency"] as? Int32 {
                    self.frequency = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["ImageName"] as? String {
                    self.imageName = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceRamRole"] as? String {
                    self.instanceRamRole = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["JobType"] as? Int32 {
                    self.jobType = value
                }
                if let value = dict["LaunchTemplateId"] as? String {
                    self.launchTemplateId = value
                }
                if let value = dict["LaunchTemplateVersion"] as? String {
                    self.launchTemplateVersion = value
                }
                if let value = dict["LicenseType"] as? String {
                    self.licenseType = value
                }
                if let value = dict["MaxNumberOfImageToKeep"] as? Int32 {
                    self.maxNumberOfImageToKeep = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["NetMode"] as? Int32 {
                    self.netMode = value
                }
                if let value = dict["Progress"] as? Double {
                    self.progress = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
                }
                if let value = dict["ReplicationJobRuns"] as? [String: Any?] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns()
                    model.fromMap(value)
                    self.replicationJobRuns = model
                }
                if let value = dict["ReplicationParameters"] as? String {
                    self.replicationParameters = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["RunOnce"] as? Bool {
                    self.runOnce = value
                }
                if let value = dict["ScheduledStartTime"] as? String {
                    self.scheduledStartTime = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["StatusInfo"] as? String {
                    self.statusInfo = value
                }
                if let value = dict["SystemDiskParts"] as? [String: Any?] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts()
                    model.fromMap(value)
                    self.systemDiskParts = model
                }
                if let value = dict["SystemDiskSize"] as? Int32 {
                    self.systemDiskSize = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["TargetType"] as? String {
                    self.targetType = value
                }
                if let value = dict["TransitionInstanceId"] as? String {
                    self.transitionInstanceId = value
                }
                if let value = dict["VSwitchId"] as? String {
                    self.vSwitchId = value
                }
                if let value = dict["ValidTime"] as? String {
                    self.validTime = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
                if let value = dict["WorkgroupId"] as? String {
                    self.workgroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ReplicationJob"] as? [Any?] {
                var tmp : [DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob] = []
                for v in value {
                    if v != nil {
                        var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ReplicationJobs"] as? [String: Any?] {
            var model = DescribeReplicationJobsResponseBody.ReplicationJobs()
            model.fromMap(value)
            self.replicationJobs = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeReplicationJobsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RelatedJobType"] as? [String] {
            self.relatedJobType = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? [String] {
            self.sourceId = value
        }
        if let value = dict["State"] as? String {
            self.state = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeSourceServersRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeSourceServersRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["CanBlock"] as? Bool {
                                    self.canBlock = value
                                }
                                if let value = dict["Device"] as? String {
                                    self.device = value
                                }
                                if let value = dict["Need"] as? Bool {
                                    self.need = value
                                }
                                if let value = dict["Path"] as? String {
                                    self.path = value
                                }
                                if let value = dict["SizeBytes"] as? Int64 {
                                    self.sizeBytes = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Part"] as? [Any?] {
                                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts.Part] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Index"] as? Int32 {
                            self.index = value
                        }
                        if let value = dict["Parts"] as? [String: Any?] {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts()
                            model.fromMap(value)
                            self.parts = model
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["Size"] as? Int32 {
                            self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["DataDisk"] as? [Any?] {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                    guard let dict else { return }
                                    if let value = dict["CanBlock"] as? Bool {
                                        self.canBlock = value
                                    }
                                    if let value = dict["Path"] as? String {
                                        self.path = value
                                    }
                                    if let value = dict["SizeBytes"] as? Int64 {
                                        self.sizeBytes = value
                                    }
                                    if let value = dict["Type"] as? String {
                                        self.type = value
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Part"] as? [Any?] {
                                    var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts.Part] = []
                                    for v in value {
                                        if v != nil {
                                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts.Part()
                                            if v != nil {
                                                model.fromMap(v as? [String: Any?])
                                            }
                                            tmp.append(model)
                                        }
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Offset"] as? Int64 {
                                self.offset = value
                            }
                            if let value = dict["Parts"] as? [String: Any?] {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data.Parts()
                                model.fromMap(value)
                                self.parts = model
                            }
                            if let value = dict["Size"] as? Int32 {
                                self.size = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Data"] as? [Any?] {
                            var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data] = []
                            for v in value {
                                if v != nil {
                                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data.Data()
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

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["CanBlock"] as? Bool {
                                    self.canBlock = value
                                }
                                if let value = dict["Path"] as? String {
                                    self.path = value
                                }
                                if let value = dict["SizeBytes"] as? Int64 {
                                    self.sizeBytes = value
                                }
                                if let value = dict["Type"] as? String {
                                    self.type = value
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["Part"] as? [Any?] {
                                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts.Part] = []
                                for v in value {
                                    if v != nil {
                                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts.Part()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Offset"] as? Int64 {
                            self.offset = value
                        }
                        if let value = dict["Parts"] as? [String: Any?] {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System.Parts()
                            model.fromMap(value)
                            self.parts = model
                        }
                        if let value = dict["Size"] as? Int32 {
                            self.size = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Data"] as? [String: Any?] {
                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.Data()
                        model.fromMap(value)
                        self.data = model
                    }
                    if let value = dict["System"] as? [String: Any?] {
                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks.System()
                        model.fromMap(value)
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["CanBlock"] as? Bool {
                            self.canBlock = value
                        }
                        if let value = dict["Device"] as? String {
                            self.device = value
                        }
                        if let value = dict["Need"] as? Bool {
                            self.need = value
                        }
                        if let value = dict["Path"] as? String {
                            self.path = value
                        }
                        if let value = dict["SizeBytes"] as? Int64 {
                            self.sizeBytes = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["SystemDiskPart"] as? [Any?] {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts.SystemDiskPart] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts.SystemDiskPart()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags.Tag()
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AgentVersion"] as? String {
                    self.agentVersion = value
                }
                if let value = dict["Architecture"] as? String {
                    self.architecture = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["DataDisks"] as? [String: Any?] {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks()
                    model.fromMap(value)
                    self.dataDisks = model
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Disks"] as? [String: Any?] {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Disks()
                    model.fromMap(value)
                    self.disks = model
                }
                if let value = dict["ErrorCode"] as? String {
                    self.errorCode = value
                }
                if let value = dict["HeartbeatRate"] as? Int32 {
                    self.heartbeatRate = value
                }
                if let value = dict["JobId"] as? String {
                    self.jobId = value
                }
                if let value = dict["KernelLevel"] as? Int32 {
                    self.kernelLevel = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Platform"] as? String {
                    self.platform = value
                }
                if let value = dict["ReplicationDriver"] as? String {
                    self.replicationDriver = value
                }
                if let value = dict["ResourceGroupId"] as? String {
                    self.resourceGroupId = value
                }
                if let value = dict["SourceId"] as? String {
                    self.sourceId = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["StatusInfo"] as? String {
                    self.statusInfo = value
                }
                if let value = dict["SystemDiskParts"] as? [String: Any?] {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts()
                    model.fromMap(value)
                    self.systemDiskParts = model
                }
                if let value = dict["SystemDiskSize"] as? Int32 {
                    self.systemDiskSize = value
                }
                if let value = dict["SystemInfo"] as? String {
                    self.systemInfo = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["WorkgroupId"] as? String {
                    self.workgroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["SourceServer"] as? [Any?] {
                var tmp : [DescribeSourceServersResponseBody.SourceServers.SourceServer] = []
                for v in value {
                    if v != nil {
                        var model = DescribeSourceServersResponseBody.SourceServers.SourceServer()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SourceServers"] as? [String: Any?] {
            var model = DescribeSourceServersResponseBody.SourceServers()
            model.fromMap(value)
            self.sourceServers = model
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeSourceServersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeWorkgroupsRequest : Tea.TeaModel {
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
    public var name: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceOwnerAccount: String?

    public var status: String?

    public var tag: [DescribeWorkgroupsRequest.Tag]?

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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["Tag"] as? [Any?] {
            var tmp : [DescribeWorkgroupsRequest.Tag] = []
            for v in value {
                if v != nil {
                    var model = DescribeWorkgroupsRequest.Tag()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tag = tmp
        }
        if let value = dict["WorkgroupId"] as? [String] {
            self.workgroupId = value
        }
    }
}

public class DescribeWorkgroupsResponseBody : Tea.TeaModel {
    public class Workgroups : Tea.TeaModel {
        public class Workgroup : Tea.TeaModel {
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
                public var tag: [DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Tags.Tag]?

                public override init() {
                    super.init()
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Tag"] as? [Any?] {
                        var tmp : [DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Tags.Tag] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Tags.Tag()
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

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SourceId"] as? [String] {
                                self.sourceId = value
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

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["SourceIds"] as? [String: Any?] {
                            var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning.SourceIds()
                            model.fromMap(value)
                            self.sourceIds = model
                        }
                        if let value = dict["WarningType"] as? String {
                            self.warningType = value
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

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Warning"] as? [Any?] {
                        var tmp : [DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning] = []
                        for v in value {
                            if v != nil {
                                var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings.Warning()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.warning = tmp
                    }
                }
            }
            public var description_: String?

            public var name: String?

            public var status: String?

            public var tags: DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Tags?

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
                try self.tags?.validate()
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
                if self.tags != nil {
                    map["Tags"] = self.tags?.toMap()
                }
                if self.warnings != nil {
                    map["Warnings"] = self.warnings?.toMap()
                }
                if self.workgroupId != nil {
                    map["WorkgroupId"] = self.workgroupId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Tags"] as? [String: Any?] {
                    var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Tags()
                    model.fromMap(value)
                    self.tags = model
                }
                if let value = dict["Warnings"] as? [String: Any?] {
                    var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup.Warnings()
                    model.fromMap(value)
                    self.warnings = model
                }
                if let value = dict["WorkgroupId"] as? String {
                    self.workgroupId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Workgroup"] as? [Any?] {
                var tmp : [DescribeWorkgroupsResponseBody.Workgroups.Workgroup] = []
                for v in value {
                    if v != nil {
                        var model = DescribeWorkgroupsResponseBody.Workgroups.Workgroup()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
        if let value = dict["Workgroups"] as? [String: Any?] {
            var model = DescribeWorkgroupsResponseBody.Workgroups()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeWorkgroupsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenId"] as? String {
            self.accessTokenId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisableAccessTokenResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? [String] {
            self.sourceId = value
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DisassociateSourceServersResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokenId"] as? [String] {
            self.accessTokenId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AccessTokenId"] as? String {
                    self.accessTokenId = value
                }
                if let value = dict["Count"] as? String {
                    self.count = value
                }
                if let value = dict["CreationTime"] as? String {
                    self.creationTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["RegisteredCount"] as? String {
                    self.registeredCount = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["TimeToLiveInDays"] as? String {
                    self.timeToLiveInDays = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessToken"] as? [Any?] {
                var tmp : [ListAccessTokensResponseBody.AccessTokens.AccessToken] = []
                for v in value {
                    if v != nil {
                        var model = ListAccessTokensResponseBody.AccessTokens.AccessToken()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessTokens"] as? [String: Any?] {
            var model = ListAccessTokensResponseBody.AccessTokens()
            model.fromMap(value)
            self.accessTokens = model
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
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessTokensResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Block"] as? Bool {
                    self.block = value
                }
                if let value = dict["Device"] as? String {
                    self.device = value
                }
                if let value = dict["SizeBytes"] as? Int64 {
                    self.sizeBytes = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Index"] as? Int32 {
                self.index = value
            }
            if let value = dict["Part"] as? [Any?] {
                var tmp : [ModifyReplicationJobAttributeRequest.DataDisk.Part] = []
                for v in value {
                    if v != nil {
                        var model = ModifyReplicationJobAttributeRequest.DataDisk.Part()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.part = tmp
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Block"] as? Bool {
                self.block = value
            }
            if let value = dict["Device"] as? String {
                self.device = value
            }
            if let value = dict["SizeBytes"] as? Int64 {
                self.sizeBytes = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerNamespace"] as? String {
            self.containerNamespace = value
        }
        if let value = dict["ContainerRepository"] as? String {
            self.containerRepository = value
        }
        if let value = dict["ContainerTag"] as? String {
            self.containerTag = value
        }
        if let value = dict["DataDisk"] as? [Any?] {
            var tmp : [ModifyReplicationJobAttributeRequest.DataDisk] = []
            for v in value {
                if v != nil {
                    var model = ModifyReplicationJobAttributeRequest.DataDisk()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataDisk = tmp
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Frequency"] as? Int32 {
            self.frequency = value
        }
        if let value = dict["ImageName"] as? String {
            self.imageName = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceRamRole"] as? String {
            self.instanceRamRole = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["LaunchTemplateId"] as? String {
            self.launchTemplateId = value
        }
        if let value = dict["LaunchTemplateVersion"] as? String {
            self.launchTemplateVersion = value
        }
        if let value = dict["MaxNumberOfImageToKeep"] as? Int32 {
            self.maxNumberOfImageToKeep = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["NetMode"] as? Int32 {
            self.netMode = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ReplicationParameters"] as? String {
            self.replicationParameters = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["ScheduledStartTime"] as? String {
            self.scheduledStartTime = value
        }
        if let value = dict["SystemDiskPart"] as? [Any?] {
            var tmp : [ModifyReplicationJobAttributeRequest.SystemDiskPart] = []
            for v in value {
                if v != nil {
                    var model = ModifyReplicationJobAttributeRequest.SystemDiskPart()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.systemDiskPart = tmp
        }
        if let value = dict["SystemDiskSize"] as? Int32 {
            self.systemDiskSize = value
        }
        if let value = dict["TargetType"] as? String {
            self.targetType = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["ValidTime"] as? String {
            self.validTime = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyReplicationJobAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["SourceId"] as? String {
            self.sourceId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifySourceServerAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
        }
        if let value = dict["WorkgroupId"] as? String {
            self.workgroupId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyWorkgroupAttributeResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StartReplicationJobResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = StopReplicationJobResponseBody()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["All"] as? Bool {
            self.all = value
        }
        if let value = dict["OwnerId"] as? Int64 {
            self.ownerId = value
        }
        if let value = dict["ResourceId"] as? [String] {
            self.resourceId = value
        }
        if let value = dict["ResourceOwnerAccount"] as? String {
            self.resourceOwnerAccount = value
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
