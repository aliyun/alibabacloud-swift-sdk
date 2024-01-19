import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

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
        if dict.keys.contains("Count") && dict["Count"] != nil {
            self.count = dict["Count"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("TimeToLiveInDays") && dict["TimeToLiveInDays"] != nil {
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
        if dict.keys.contains("AccessTokenCode") && dict["AccessTokenCode"] != nil {
            self.accessTokenCode = dict["AccessTokenCode"] as! String
        }
        if dict.keys.contains("AccessTokenId") && dict["AccessTokenId"] != nil {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = CreateAccessTokenResponseBody()
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
                if dict.keys.contains("Block") && dict["Block"] != nil {
                    self.block = dict["Block"] as! Bool
                }
                if dict.keys.contains("Device") && dict["Device"] != nil {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Part") && dict["Part"] != nil {
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
            if dict.keys.contains("Size") && dict["Size"] != nil {
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
            if dict.keys.contains("Block") && dict["Block"] != nil {
                self.block = dict["Block"] as! Bool
            }
            if dict.keys.contains("Device") && dict["Device"] != nil {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("ClientToken") && dict["ClientToken"] != nil {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ContainerNamespace") && dict["ContainerNamespace"] != nil {
            self.containerNamespace = dict["ContainerNamespace"] as! String
        }
        if dict.keys.contains("ContainerRepository") && dict["ContainerRepository"] != nil {
            self.containerRepository = dict["ContainerRepository"] as! String
        }
        if dict.keys.contains("ContainerTag") && dict["ContainerTag"] != nil {
            self.containerTag = dict["ContainerTag"] as! String
        }
        if dict.keys.contains("DataDisk") && dict["DataDisk"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Frequency") && dict["Frequency"] != nil {
            self.frequency = dict["Frequency"] as! Int32
        }
        if dict.keys.contains("ImageName") && dict["ImageName"] != nil {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceRamRole") && dict["InstanceRamRole"] != nil {
            self.instanceRamRole = dict["InstanceRamRole"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("LaunchTemplateId") && dict["LaunchTemplateId"] != nil {
            self.launchTemplateId = dict["LaunchTemplateId"] as! String
        }
        if dict.keys.contains("LaunchTemplateVersion") && dict["LaunchTemplateVersion"] != nil {
            self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
        }
        if dict.keys.contains("LicenseType") && dict["LicenseType"] != nil {
            self.licenseType = dict["LicenseType"] as! String
        }
        if dict.keys.contains("MaxNumberOfImageToKeep") && dict["MaxNumberOfImageToKeep"] != nil {
            self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetMode") && dict["NetMode"] != nil {
            self.netMode = dict["NetMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ReplicationParameters") && dict["ReplicationParameters"] != nil {
            self.replicationParameters = dict["ReplicationParameters"] as! String
        }
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("RunOnce") && dict["RunOnce"] != nil {
            self.runOnce = dict["RunOnce"] as! Bool
        }
        if dict.keys.contains("ScheduledStartTime") && dict["ScheduledStartTime"] != nil {
            self.scheduledStartTime = dict["ScheduledStartTime"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! String
        }
        if dict.keys.contains("SystemDiskPart") && dict["SystemDiskPart"] != nil {
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
        if dict.keys.contains("SystemDiskSize") && dict["SystemDiskSize"] != nil {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ValidTime") && dict["ValidTime"] != nil {
            self.validTime = dict["ValidTime"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = CreateReplicationJobResponseBody()
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SyncData") && dict["SyncData"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("AccessTokenId") && dict["AccessTokenId"] != nil {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("Force") && dict["Force"] != nil {
            self.force = dict["Force"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = DeleteSourceServerResponseBody()
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
            self.businessStatus = dict["BusinessStatus"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! [String]
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! [String]
        }
        if dict.keys.contains("JobType") && dict["JobType"] != nil {
            self.jobType = dict["JobType"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
                                if dict.keys.contains("Block") && dict["Block"] != nil {
                                    self.block = dict["Block"] as! Bool
                                }
                                if dict.keys.contains("Device") && dict["Device"] != nil {
                                    self.device = dict["Device"] as! String
                                }
                                if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
                            if dict.keys.contains("Part") && dict["Part"] != nil {
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
                        if dict.keys.contains("Index") && dict["Index"] != nil {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("Parts") && dict["Parts"] != nil {
                            var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks.DataDisk.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Size") && dict["Size"] != nil {
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
                    if dict.keys.contains("DataDisk") && dict["DataDisk"] != nil {
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
                        if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                            self.endTime = dict["EndTime"] as! String
                        }
                        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                            self.imageId = dict["ImageId"] as! String
                        }
                        if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                            self.startTime = dict["StartTime"] as! String
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
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
                    if dict.keys.contains("ReplicationJobRun") && dict["ReplicationJobRun"] != nil {
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
                        if dict.keys.contains("Block") && dict["Block"] != nil {
                            self.block = dict["Block"] as! Bool
                        }
                        if dict.keys.contains("Device") && dict["Device"] != nil {
                            self.device = dict["Device"] as! String
                        }
                        if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
                    if dict.keys.contains("SystemDiskPart") && dict["SystemDiskPart"] != nil {
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
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
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
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
                if dict.keys.contains("BusinessStatus") && dict["BusinessStatus"] != nil {
                    self.businessStatus = dict["BusinessStatus"] as! String
                }
                if dict.keys.contains("ContainerNamespace") && dict["ContainerNamespace"] != nil {
                    self.containerNamespace = dict["ContainerNamespace"] as! String
                }
                if dict.keys.contains("ContainerRepository") && dict["ContainerRepository"] != nil {
                    self.containerRepository = dict["ContainerRepository"] as! String
                }
                if dict.keys.contains("ContainerTag") && dict["ContainerTag"] != nil {
                    self.containerTag = dict["ContainerTag"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DataDisks") && dict["DataDisks"] != nil {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                    self.endTime = dict["EndTime"] as! String
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("Frequency") && dict["Frequency"] != nil {
                    self.frequency = dict["Frequency"] as! Int32
                }
                if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageName") && dict["ImageName"] != nil {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceRamRole") && dict["InstanceRamRole"] != nil {
                    self.instanceRamRole = dict["InstanceRamRole"] as! String
                }
                if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("JobType") && dict["JobType"] != nil {
                    self.jobType = dict["JobType"] as! Int32
                }
                if dict.keys.contains("LaunchTemplateId") && dict["LaunchTemplateId"] != nil {
                    self.launchTemplateId = dict["LaunchTemplateId"] as! String
                }
                if dict.keys.contains("LaunchTemplateVersion") && dict["LaunchTemplateVersion"] != nil {
                    self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
                }
                if dict.keys.contains("LicenseType") && dict["LicenseType"] != nil {
                    self.licenseType = dict["LicenseType"] as! String
                }
                if dict.keys.contains("MaxNumberOfImageToKeep") && dict["MaxNumberOfImageToKeep"] != nil {
                    self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NetMode") && dict["NetMode"] != nil {
                    self.netMode = dict["NetMode"] as! Int32
                }
                if dict.keys.contains("Progress") && dict["Progress"] != nil {
                    self.progress = dict["Progress"] as! Double
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ReplicationJobRuns") && dict["ReplicationJobRuns"] != nil {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.ReplicationJobRuns()
                    model.fromMap(dict["ReplicationJobRuns"] as! [String: Any])
                    self.replicationJobRuns = model
                }
                if dict.keys.contains("ReplicationParameters") && dict["ReplicationParameters"] != nil {
                    self.replicationParameters = dict["ReplicationParameters"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("RunOnce") && dict["RunOnce"] != nil {
                    self.runOnce = dict["RunOnce"] as! Bool
                }
                if dict.keys.contains("ScheduledStartTime") && dict["ScheduledStartTime"] != nil {
                    self.scheduledStartTime = dict["ScheduledStartTime"] as! String
                }
                if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("StatusInfo") && dict["StatusInfo"] != nil {
                    self.statusInfo = dict["StatusInfo"] as! String
                }
                if dict.keys.contains("SystemDiskParts") && dict["SystemDiskParts"] != nil {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.SystemDiskParts()
                    model.fromMap(dict["SystemDiskParts"] as! [String: Any])
                    self.systemDiskParts = model
                }
                if dict.keys.contains("SystemDiskSize") && dict["SystemDiskSize"] != nil {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeReplicationJobsResponseBody.ReplicationJobs.ReplicationJob.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
                }
                if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
                    self.targetType = dict["TargetType"] as! String
                }
                if dict.keys.contains("TransitionInstanceId") && dict["TransitionInstanceId"] != nil {
                    self.transitionInstanceId = dict["TransitionInstanceId"] as! String
                }
                if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ValidTime") && dict["ValidTime"] != nil {
                    self.validTime = dict["ValidTime"] as! String
                }
                if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
            if dict.keys.contains("ReplicationJob") && dict["ReplicationJob"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReplicationJobs") && dict["ReplicationJobs"] != nil {
            var model = DescribeReplicationJobsResponseBody.ReplicationJobs()
            model.fromMap(dict["ReplicationJobs"] as! [String: Any])
            self.replicationJobs = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var jobId: String?

    public var name: String?

    public var ownerId: Int64?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceGroupId: String?

    public var resourceOwnerAccount: String?

    public var sourceId: [String]?

    public var state: String?

    public var tag: [DescribeSourceServersRequest.Tag]?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
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
        if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
            self.sourceId = dict["SourceId"] as! [String]
        }
        if dict.keys.contains("State") && dict["State"] != nil {
            self.state = dict["State"] as! String
        }
        if dict.keys.contains("Tag") && dict["Tag"] != nil {
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
                                if dict.keys.contains("CanBlock") && dict["CanBlock"] != nil {
                                    self.canBlock = dict["CanBlock"] as! Bool
                                }
                                if dict.keys.contains("Device") && dict["Device"] != nil {
                                    self.device = dict["Device"] as! String
                                }
                                if dict.keys.contains("Need") && dict["Need"] != nil {
                                    self.need = dict["Need"] as! Bool
                                }
                                if dict.keys.contains("Path") && dict["Path"] != nil {
                                    self.path = dict["Path"] as! String
                                }
                                if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
                            if dict.keys.contains("Part") && dict["Part"] != nil {
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
                        if dict.keys.contains("Index") && dict["Index"] != nil {
                            self.index = dict["Index"] as! Int32
                        }
                        if dict.keys.contains("Parts") && dict["Parts"] != nil {
                            var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks.DataDisk.Parts()
                            model.fromMap(dict["Parts"] as! [String: Any])
                            self.parts = model
                        }
                        if dict.keys.contains("Path") && dict["Path"] != nil {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("Size") && dict["Size"] != nil {
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
                    if dict.keys.contains("DataDisk") && dict["DataDisk"] != nil {
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
                        if dict.keys.contains("CanBlock") && dict["CanBlock"] != nil {
                            self.canBlock = dict["CanBlock"] as! Bool
                        }
                        if dict.keys.contains("Device") && dict["Device"] != nil {
                            self.device = dict["Device"] as! String
                        }
                        if dict.keys.contains("Need") && dict["Need"] != nil {
                            self.need = dict["Need"] as! Bool
                        }
                        if dict.keys.contains("Path") && dict["Path"] != nil {
                            self.path = dict["Path"] as! String
                        }
                        if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
                    if dict.keys.contains("SystemDiskPart") && dict["SystemDiskPart"] != nil {
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
                        if dict.keys.contains("Key") && dict["Key"] != nil {
                            self.key = dict["Key"] as! String
                        }
                        if dict.keys.contains("Value") && dict["Value"] != nil {
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
                    if dict.keys.contains("Tag") && dict["Tag"] != nil {
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

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDisks?.validate()
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AgentVersion") && dict["AgentVersion"] != nil {
                    self.agentVersion = dict["AgentVersion"] as! String
                }
                if dict.keys.contains("Architecture") && dict["Architecture"] != nil {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("DataDisks") && dict["DataDisks"] != nil {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("ErrorCode") && dict["ErrorCode"] != nil {
                    self.errorCode = dict["ErrorCode"] as! String
                }
                if dict.keys.contains("HeartbeatRate") && dict["HeartbeatRate"] != nil {
                    self.heartbeatRate = dict["HeartbeatRate"] as! Int32
                }
                if dict.keys.contains("JobId") && dict["JobId"] != nil {
                    self.jobId = dict["JobId"] as! String
                }
                if dict.keys.contains("KernelLevel") && dict["KernelLevel"] != nil {
                    self.kernelLevel = dict["KernelLevel"] as! Int32
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("ReplicationDriver") && dict["ReplicationDriver"] != nil {
                    self.replicationDriver = dict["ReplicationDriver"] as! String
                }
                if dict.keys.contains("ResourceGroupId") && dict["ResourceGroupId"] != nil {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
                    self.sourceId = dict["SourceId"] as! String
                }
                if dict.keys.contains("State") && dict["State"] != nil {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("StatusInfo") && dict["StatusInfo"] != nil {
                    self.statusInfo = dict["StatusInfo"] as! String
                }
                if dict.keys.contains("SystemDiskParts") && dict["SystemDiskParts"] != nil {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.SystemDiskParts()
                    model.fromMap(dict["SystemDiskParts"] as! [String: Any])
                    self.systemDiskParts = model
                }
                if dict.keys.contains("SystemDiskSize") && dict["SystemDiskSize"] != nil {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
                if dict.keys.contains("SystemInfo") && dict["SystemInfo"] != nil {
                    self.systemInfo = dict["SystemInfo"] as! String
                }
                if dict.keys.contains("Tags") && dict["Tags"] != nil {
                    var model = DescribeSourceServersResponseBody.SourceServers.SourceServer.Tags()
                    model.fromMap(dict["Tags"] as! [String: Any])
                    self.tags = model
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
            if dict.keys.contains("SourceServer") && dict["SourceServer"] != nil {
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
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SourceServers") && dict["SourceServers"] != nil {
            var model = DescribeSourceServersResponseBody.SourceServers()
            model.fromMap(dict["SourceServers"] as! [String: Any])
            self.sourceServers = model
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
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
            var model = DescribeSourceServersResponseBody()
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
        if dict.keys.contains("AccessTokenId") && dict["AccessTokenId"] != nil {
            self.accessTokenId = dict["AccessTokenId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = DisableAccessTokenResponseBody()
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
        if dict.keys.contains("AccessTokenId") && dict["AccessTokenId"] != nil {
            self.accessTokenId = dict["AccessTokenId"] as! [String]
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
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
                if dict.keys.contains("AccessTokenId") && dict["AccessTokenId"] != nil {
                    self.accessTokenId = dict["AccessTokenId"] as! String
                }
                if dict.keys.contains("Count") && dict["Count"] != nil {
                    self.count = dict["Count"] as! String
                }
                if dict.keys.contains("CreationTime") && dict["CreationTime"] != nil {
                    self.creationTime = dict["CreationTime"] as! String
                }
                if dict.keys.contains("Description") && dict["Description"] != nil {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Name") && dict["Name"] != nil {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("RegisteredCount") && dict["RegisteredCount"] != nil {
                    self.registeredCount = dict["RegisteredCount"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TimeToLiveInDays") && dict["TimeToLiveInDays"] != nil {
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
            if dict.keys.contains("AccessToken") && dict["AccessToken"] != nil {
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
        if dict.keys.contains("AccessTokens") && dict["AccessTokens"] != nil {
            var model = ListAccessTokensResponseBody.AccessTokens()
            model.fromMap(dict["AccessTokens"] as! [String: Any])
            self.accessTokens = model
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
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
                if dict.keys.contains("Block") && dict["Block"] != nil {
                    self.block = dict["Block"] as! Bool
                }
                if dict.keys.contains("Device") && dict["Device"] != nil {
                    self.device = dict["Device"] as! String
                }
                if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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
            if dict.keys.contains("Index") && dict["Index"] != nil {
                self.index = dict["Index"] as! Int32
            }
            if dict.keys.contains("Part") && dict["Part"] != nil {
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
            if dict.keys.contains("Size") && dict["Size"] != nil {
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
            if dict.keys.contains("Block") && dict["Block"] != nil {
                self.block = dict["Block"] as! Bool
            }
            if dict.keys.contains("Device") && dict["Device"] != nil {
                self.device = dict["Device"] as! String
            }
            if dict.keys.contains("SizeBytes") && dict["SizeBytes"] != nil {
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

    public var licenseType: String?

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
        if dict.keys.contains("ContainerNamespace") && dict["ContainerNamespace"] != nil {
            self.containerNamespace = dict["ContainerNamespace"] as! String
        }
        if dict.keys.contains("ContainerRepository") && dict["ContainerRepository"] != nil {
            self.containerRepository = dict["ContainerRepository"] as! String
        }
        if dict.keys.contains("ContainerTag") && dict["ContainerTag"] != nil {
            self.containerTag = dict["ContainerTag"] as! String
        }
        if dict.keys.contains("DataDisk") && dict["DataDisk"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Frequency") && dict["Frequency"] != nil {
            self.frequency = dict["Frequency"] as! Int32
        }
        if dict.keys.contains("ImageName") && dict["ImageName"] != nil {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceRamRole") && dict["InstanceRamRole"] != nil {
            self.instanceRamRole = dict["InstanceRamRole"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("LaunchTemplateId") && dict["LaunchTemplateId"] != nil {
            self.launchTemplateId = dict["LaunchTemplateId"] as! String
        }
        if dict.keys.contains("LaunchTemplateVersion") && dict["LaunchTemplateVersion"] != nil {
            self.launchTemplateVersion = dict["LaunchTemplateVersion"] as! String
        }
        if dict.keys.contains("LicenseType") && dict["LicenseType"] != nil {
            self.licenseType = dict["LicenseType"] as! String
        }
        if dict.keys.contains("MaxNumberOfImageToKeep") && dict["MaxNumberOfImageToKeep"] != nil {
            self.maxNumberOfImageToKeep = dict["MaxNumberOfImageToKeep"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("NetMode") && dict["NetMode"] != nil {
            self.netMode = dict["NetMode"] as! Int32
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ReplicationParameters") && dict["ReplicationParameters"] != nil {
            self.replicationParameters = dict["ReplicationParameters"] as! String
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("ScheduledStartTime") && dict["ScheduledStartTime"] != nil {
            self.scheduledStartTime = dict["ScheduledStartTime"] as! String
        }
        if dict.keys.contains("SystemDiskPart") && dict["SystemDiskPart"] != nil {
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
        if dict.keys.contains("SystemDiskSize") && dict["SystemDiskSize"] != nil {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("TargetType") && dict["TargetType"] != nil {
            self.targetType = dict["TargetType"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ValidTime") && dict["ValidTime"] != nil {
            self.validTime = dict["ValidTime"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
        }
        if dict.keys.contains("SourceId") && dict["SourceId"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            var model = ModifySourceServerAttributeResponseBody()
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
            if dict.keys.contains("Key") && dict["Key"] != nil {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") && dict["Value"] != nil {
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
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
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
        if dict.keys.contains("All") && dict["All"] != nil {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("OwnerId") && dict["OwnerId"] != nil {
            self.ownerId = dict["OwnerId"] as! Int64
        }
        if dict.keys.contains("ResourceId") && dict["ResourceId"] != nil {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceOwnerAccount") && dict["ResourceOwnerAccount"] != nil {
            self.resourceOwnerAccount = dict["ResourceOwnerAccount"] as! String
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
