import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AttachVscMountPointRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIds: [String: Any]?

    public var mountPointId: String?

    public var vscIds: [String]?

    public var vscType: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.vscIds != nil {
            map["VscIds"] = self.vscIds!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("VscIds") && dict["VscIds"] != nil {
            self.vscIds = dict["VscIds"] as! [String]
        }
        if dict.keys.contains("VscType") && dict["VscType"] != nil {
            self.vscType = dict["VscType"] as! String
        }
    }
}

public class AttachVscMountPointShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIdsShrink: String?

    public var mountPointId: String?

    public var vscIdsShrink: String?

    public var vscType: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.vscIdsShrink != nil {
            map["VscIds"] = self.vscIdsShrink!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("VscIds") && dict["VscIds"] != nil {
            self.vscIdsShrink = dict["VscIds"] as! String
        }
        if dict.keys.contains("VscType") && dict["VscType"] != nil {
            self.vscType = dict["VscType"] as! String
        }
    }
}

public class AttachVscMountPointResponseBody : Tea.TeaModel {
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

public class AttachVscMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachVscMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachVscMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class BindVscMountPointAliasRequest : Tea.TeaModel {
    public var aliasPrefix: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var mountPointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliasPrefix != nil {
            map["AliasPrefix"] = self.aliasPrefix!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AliasPrefix") && dict["AliasPrefix"] != nil {
            self.aliasPrefix = dict["AliasPrefix"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
    }
}

public class BindVscMountPointAliasResponseBody : Tea.TeaModel {
    public var mountPointAlias: String?

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
        if self.mountPointAlias != nil {
            map["MountPointAlias"] = self.mountPointAlias!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MountPointAlias") && dict["MountPointAlias"] != nil {
            self.mountPointAlias = dict["MountPointAlias"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class BindVscMountPointAliasResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: BindVscMountPointAliasResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = BindVscMountPointAliasResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessGroupRequest : Tea.TeaModel {
    public var accessGroupName: String?

    public var description_: String?

    public var inputRegionId: String?

    public var networkType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupName") && dict["AccessGroupName"] != nil {
            self.accessGroupName = dict["AccessGroupName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
    }
}

public class CreateAccessGroupResponseBody : Tea.TeaModel {
    public var accessGroupId: String?

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
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccessGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAccessRuleRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var description_: String?

    public var inputRegionId: String?

    public var networkSegment: String?

    public var priority: Int32?

    public var RWAccessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.networkSegment != nil {
            map["NetworkSegment"] = self.networkSegment!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.RWAccessType != nil {
            map["RWAccessType"] = self.RWAccessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("NetworkSegment") && dict["NetworkSegment"] != nil {
            self.networkSegment = dict["NetworkSegment"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RWAccessType") && dict["RWAccessType"] != nil {
            self.RWAccessType = dict["RWAccessType"] as! String
        }
    }
}

public class CreateAccessRuleResponseBody : Tea.TeaModel {
    public var accessRuleId: String?

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
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
            self.accessRuleId = dict["AccessRuleId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateAccessRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateFileSystemRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var description_: String?

    public var fileSystemName: String?

    public var inputRegionId: String?

    public var partitionNumber: Int32?

    public var protocolType: String?

    public var provisionedThroughputInMiBps: Int64?

    public var spaceCapacity: Int64?

    public var storageSetName: String?

    public var storageType: String?

    public var throughputMode: String?

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
        if self.dataRedundancyType != nil {
            map["DataRedundancyType"] = self.dataRedundancyType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemName != nil {
            map["FileSystemName"] = self.fileSystemName!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.partitionNumber != nil {
            map["PartitionNumber"] = self.partitionNumber!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.provisionedThroughputInMiBps != nil {
            map["ProvisionedThroughputInMiBps"] = self.provisionedThroughputInMiBps!
        }
        if self.spaceCapacity != nil {
            map["SpaceCapacity"] = self.spaceCapacity!
        }
        if self.storageSetName != nil {
            map["StorageSetName"] = self.storageSetName!
        }
        if self.storageType != nil {
            map["StorageType"] = self.storageType!
        }
        if self.throughputMode != nil {
            map["ThroughputMode"] = self.throughputMode!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DataRedundancyType") && dict["DataRedundancyType"] != nil {
            self.dataRedundancyType = dict["DataRedundancyType"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemName") && dict["FileSystemName"] != nil {
            self.fileSystemName = dict["FileSystemName"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("PartitionNumber") && dict["PartitionNumber"] != nil {
            self.partitionNumber = dict["PartitionNumber"] as! Int32
        }
        if dict.keys.contains("ProtocolType") && dict["ProtocolType"] != nil {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("ProvisionedThroughputInMiBps") && dict["ProvisionedThroughputInMiBps"] != nil {
            self.provisionedThroughputInMiBps = dict["ProvisionedThroughputInMiBps"] as! Int64
        }
        if dict.keys.contains("SpaceCapacity") && dict["SpaceCapacity"] != nil {
            self.spaceCapacity = dict["SpaceCapacity"] as! Int64
        }
        if dict.keys.contains("StorageSetName") && dict["StorageSetName"] != nil {
            self.storageSetName = dict["StorageSetName"] as! String
        }
        if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
            self.storageType = dict["StorageType"] as! String
        }
        if dict.keys.contains("ThroughputMode") && dict["ThroughputMode"] != nil {
            self.throughputMode = dict["ThroughputMode"] as! String
        }
        if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateFileSystemResponseBody : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateFileSystemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateMountPointRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var networkType: String?

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
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.networkType != nil {
            map["NetworkType"] = self.networkType!
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
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
            self.networkType = dict["NetworkType"] as! String
        }
        if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateMountPointResponseBody : Tea.TeaModel {
    public var mountPointId: String?

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
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateUserGroupsMappingRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var groupNames: [String]?

    public var inputRegionId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.groupNames != nil {
            map["GroupNames"] = self.groupNames!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GroupNames") && dict["GroupNames"] != nil {
            self.groupNames = dict["GroupNames"] as! [String]
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateUserGroupsMappingShrinkRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var groupNamesShrink: String?

    public var inputRegionId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.groupNamesShrink != nil {
            map["GroupNames"] = self.groupNamesShrink!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GroupNames") && dict["GroupNames"] != nil {
            self.groupNamesShrink = dict["GroupNames"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class CreateUserGroupsMappingResponseBody : Tea.TeaModel {
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

public class CreateUserGroupsMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUserGroupsMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUserGroupsMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateVscMountPointRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIds: [String: Any]?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
    }
}

public class CreateVscMountPointShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIdsShrink: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
    }
}

public class CreateVscMountPointResponseBody : Tea.TeaModel {
    public var mountPointId: String?

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
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateVscMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVscMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateVscMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessGroupRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class DeleteAccessGroupResponseBody : Tea.TeaModel {
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

public class DeleteAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccessGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAccessRuleRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var accessRuleId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
            self.accessRuleId = dict["AccessRuleId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class DeleteAccessRuleResponseBody : Tea.TeaModel {
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

public class DeleteAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteAccessRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteFileSystemRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class DeleteFileSystemResponseBody : Tea.TeaModel {
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

public class DeleteFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteFileSystemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteMountPointRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var mountPointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
    }
}

public class DeleteMountPointResponseBody : Tea.TeaModel {
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

public class DeleteMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUserGroupsMappingRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var groupNames: [String: Any]?

    public var inputRegionId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.groupNames != nil {
            map["GroupNames"] = self.groupNames!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GroupNames") && dict["GroupNames"] != nil {
            self.groupNames = dict["GroupNames"] as! [String: Any]
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteUserGroupsMappingShrinkRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var groupNamesShrink: String?

    public var inputRegionId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.groupNamesShrink != nil {
            map["GroupNames"] = self.groupNamesShrink!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("GroupNames") && dict["GroupNames"] != nil {
            self.groupNamesShrink = dict["GroupNames"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("UserName") && dict["UserName"] != nil {
            self.userName = dict["UserName"] as! String
        }
    }
}

public class DeleteUserGroupsMappingResponseBody : Tea.TeaModel {
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

public class DeleteUserGroupsMappingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUserGroupsMappingResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUserGroupsMappingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteVscMountPointRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var mountPointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
    }
}

public class DeleteVscMountPointResponseBody : Tea.TeaModel {
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

public class DeleteVscMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVscMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteVscMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.acceptLanguage != nil {
            map["AcceptLanguage"] = self.acceptLanguage!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AcceptLanguage") && dict["AcceptLanguage"] != nil {
            self.acceptLanguage = dict["AcceptLanguage"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
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
                if dict.keys.contains("LocalName") && dict["LocalName"] != nil {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionEndpoint") && dict["RegionEndpoint"] != nil {
                    self.regionEndpoint = dict["RegionEndpoint"] as! String
                }
                if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
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

public class DescribeVscMountPointsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceId: String?

    public var mountPointId: String?

    public var status: String?

    public var vscId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.vscId != nil {
            map["VscId"] = self.vscId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("VscId") && dict["VscId"] != nil {
            self.vscId = dict["VscId"] as! String
        }
    }
}

public class DescribeVscMountPointsResponseBody : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class Vscs : Tea.TeaModel {
                public var vscId: String?

                public var vscStatus: String?

                public var vscType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vscId != nil {
                        map["VscId"] = self.vscId!
                    }
                    if self.vscStatus != nil {
                        map["VscStatus"] = self.vscStatus!
                    }
                    if self.vscType != nil {
                        map["VscType"] = self.vscType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VscId") && dict["VscId"] != nil {
                        self.vscId = dict["VscId"] as! String
                    }
                    if dict.keys.contains("VscStatus") && dict["VscStatus"] != nil {
                        self.vscStatus = dict["VscStatus"] as! String
                    }
                    if dict.keys.contains("VscType") && dict["VscType"] != nil {
                        self.vscType = dict["VscType"] as! String
                    }
                }
            }
            public var instanceId: String?

            public var status: String?

            public var vscs: [DescribeVscMountPointsResponseBody.MountPoints.Instances.Vscs]?

            public override init() {
                super.init()
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vscs != nil {
                    var tmp : [Any] = []
                    for k in self.vscs! {
                        tmp.append(k.toMap())
                    }
                    map["Vscs"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") && dict["InstanceId"] != nil {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Status") && dict["Status"] != nil {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Vscs") && dict["Vscs"] != nil {
                    var tmp : [DescribeVscMountPointsResponseBody.MountPoints.Instances.Vscs] = []
                    for v in dict["Vscs"] as! [Any] {
                        var model = DescribeVscMountPointsResponseBody.MountPoints.Instances.Vscs()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.vscs = tmp
                }
            }
        }
        public var description_: String?

        public var instanceTotalCount: Int32?

        public var instances: [DescribeVscMountPointsResponseBody.MountPoints.Instances]?

        public var mountPointAlias: String?

        public var mountPointId: String?

        public override init() {
            super.init()
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
            if self.instanceTotalCount != nil {
                map["InstanceTotalCount"] = self.instanceTotalCount!
            }
            if self.instances != nil {
                var tmp : [Any] = []
                for k in self.instances! {
                    tmp.append(k.toMap())
                }
                map["Instances"] = tmp
            }
            if self.mountPointAlias != nil {
                map["MountPointAlias"] = self.mountPointAlias!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstanceTotalCount") && dict["InstanceTotalCount"] != nil {
                self.instanceTotalCount = dict["InstanceTotalCount"] as! Int32
            }
            if dict.keys.contains("Instances") && dict["Instances"] != nil {
                var tmp : [DescribeVscMountPointsResponseBody.MountPoints.Instances] = []
                for v in dict["Instances"] as! [Any] {
                    var model = DescribeVscMountPointsResponseBody.MountPoints.Instances()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.instances = tmp
            }
            if dict.keys.contains("MountPointAlias") && dict["MountPointAlias"] != nil {
                self.mountPointAlias = dict["MountPointAlias"] as! String
            }
            if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
                self.mountPointId = dict["MountPointId"] as! String
            }
        }
    }
    public var mountPoints: [DescribeVscMountPointsResponseBody.MountPoints]?

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
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["MountPoints"] = tmp
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
        if dict.keys.contains("MountPoints") && dict["MountPoints"] != nil {
            var tmp : [DescribeVscMountPointsResponseBody.MountPoints] = []
            for v in dict["MountPoints"] as! [Any] {
                var model = DescribeVscMountPointsResponseBody.MountPoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mountPoints = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class DescribeVscMountPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVscMountPointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeVscMountPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DetachVscMountPointRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIds: [String: Any]?

    public var mountPointId: String?

    public var vscIds: [String]?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.vscIds != nil {
            map["VscIds"] = self.vscIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIds = dict["InstanceIds"] as! [String: Any]
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("VscIds") && dict["VscIds"] != nil {
            self.vscIds = dict["VscIds"] as! [String]
        }
    }
}

public class DetachVscMountPointShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIdsShrink: String?

    public var mountPointId: String?

    public var vscIdsShrink: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.vscIdsShrink != nil {
            map["VscIds"] = self.vscIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("InstanceIds") && dict["InstanceIds"] != nil {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("VscIds") && dict["VscIds"] != nil {
            self.vscIdsShrink = dict["VscIds"] as! String
        }
    }
}

public class DetachVscMountPointResponseBody : Tea.TeaModel {
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

public class DetachVscMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachVscMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachVscMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessGroupRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class GetAccessGroupResponseBody : Tea.TeaModel {
    public class AccessGroup : Tea.TeaModel {
        public var accessGroupId: String?

        public var accessGroupName: String?

        public var createTime: String?

        public var description_: String?

        public var isDefault: Bool?

        public var mountPointCount: Int32?

        public var networkType: String?

        public var regionId: String?

        public var ruleCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.accessGroupName != nil {
                map["AccessGroupName"] = self.accessGroupName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.mountPointCount != nil {
                map["MountPointCount"] = self.mountPointCount!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.ruleCount != nil {
                map["RuleCount"] = self.ruleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("AccessGroupName") && dict["AccessGroupName"] != nil {
                self.accessGroupName = dict["AccessGroupName"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("MountPointCount") && dict["MountPointCount"] != nil {
                self.mountPointCount = dict["MountPointCount"] as! Int32
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RuleCount") && dict["RuleCount"] != nil {
                self.ruleCount = dict["RuleCount"] as! Int32
            }
        }
    }
    public var accessGroup: GetAccessGroupResponseBody.AccessGroup?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessGroup?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroup != nil {
            map["AccessGroup"] = self.accessGroup?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroup") && dict["AccessGroup"] != nil {
            var model = GetAccessGroupResponseBody.AccessGroup()
            model.fromMap(dict["AccessGroup"] as! [String: Any])
            self.accessGroup = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAccessGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccessRuleRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var accessRuleId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
            self.accessRuleId = dict["AccessRuleId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class GetAccessRuleResponseBody : Tea.TeaModel {
    public class AccessRule : Tea.TeaModel {
        public var accessGroupId: String?

        public var accessRuleId: String?

        public var createTime: String?

        public var description_: String?

        public var networkSegment: String?

        public var priority: Int32?

        public var RWAccessType: String?

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
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.accessRuleId != nil {
                map["AccessRuleId"] = self.accessRuleId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.networkSegment != nil {
                map["NetworkSegment"] = self.networkSegment!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.RWAccessType != nil {
                map["RWAccessType"] = self.RWAccessType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
                self.accessRuleId = dict["AccessRuleId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NetworkSegment") && dict["NetworkSegment"] != nil {
                self.networkSegment = dict["NetworkSegment"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RWAccessType") && dict["RWAccessType"] != nil {
                self.RWAccessType = dict["RWAccessType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var accessRule: GetAccessRuleResponseBody.AccessRule?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.accessRule?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessRule != nil {
            map["AccessRule"] = self.accessRule?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessRule") && dict["AccessRule"] != nil {
            var model = GetAccessRuleResponseBody.AccessRule()
            model.fromMap(dict["AccessRule"] as! [String: Any])
            self.accessRule = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAccessRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetFileSystemRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class GetFileSystemResponseBody : Tea.TeaModel {
    public class FileSystem : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var fileSystemName: String?

        public var meteringSpaceSize: Double?

        public var mountPointCount: Int64?

        public var numberOfDirectories: Int64?

        public var numberOfFiles: Int64?

        public var protocolType: String?

        public var provisionedThroughputInMiBps: Int64?

        public var regionId: String?

        public var spaceCapacity: Int64?

        public var storagePackageId: String?

        public var storageType: String?

        public var throughputMode: String?

        public var usedSpaceSize: Double?

        public var version: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.fileSystemName != nil {
                map["FileSystemName"] = self.fileSystemName!
            }
            if self.meteringSpaceSize != nil {
                map["MeteringSpaceSize"] = self.meteringSpaceSize!
            }
            if self.mountPointCount != nil {
                map["MountPointCount"] = self.mountPointCount!
            }
            if self.numberOfDirectories != nil {
                map["NumberOfDirectories"] = self.numberOfDirectories!
            }
            if self.numberOfFiles != nil {
                map["NumberOfFiles"] = self.numberOfFiles!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.provisionedThroughputInMiBps != nil {
                map["ProvisionedThroughputInMiBps"] = self.provisionedThroughputInMiBps!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.spaceCapacity != nil {
                map["SpaceCapacity"] = self.spaceCapacity!
            }
            if self.storagePackageId != nil {
                map["StoragePackageId"] = self.storagePackageId!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.throughputMode != nil {
                map["ThroughputMode"] = self.throughputMode!
            }
            if self.usedSpaceSize != nil {
                map["UsedSpaceSize"] = self.usedSpaceSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("FileSystemName") && dict["FileSystemName"] != nil {
                self.fileSystemName = dict["FileSystemName"] as! String
            }
            if dict.keys.contains("MeteringSpaceSize") && dict["MeteringSpaceSize"] != nil {
                self.meteringSpaceSize = dict["MeteringSpaceSize"] as! Double
            }
            if dict.keys.contains("MountPointCount") && dict["MountPointCount"] != nil {
                self.mountPointCount = dict["MountPointCount"] as! Int64
            }
            if dict.keys.contains("NumberOfDirectories") && dict["NumberOfDirectories"] != nil {
                self.numberOfDirectories = dict["NumberOfDirectories"] as! Int64
            }
            if dict.keys.contains("NumberOfFiles") && dict["NumberOfFiles"] != nil {
                self.numberOfFiles = dict["NumberOfFiles"] as! Int64
            }
            if dict.keys.contains("ProtocolType") && dict["ProtocolType"] != nil {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("ProvisionedThroughputInMiBps") && dict["ProvisionedThroughputInMiBps"] != nil {
                self.provisionedThroughputInMiBps = dict["ProvisionedThroughputInMiBps"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SpaceCapacity") && dict["SpaceCapacity"] != nil {
                self.spaceCapacity = dict["SpaceCapacity"] as! Int64
            }
            if dict.keys.contains("StoragePackageId") && dict["StoragePackageId"] != nil {
                self.storagePackageId = dict["StoragePackageId"] as! String
            }
            if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("ThroughputMode") && dict["ThroughputMode"] != nil {
                self.throughputMode = dict["ThroughputMode"] as! String
            }
            if dict.keys.contains("UsedSpaceSize") && dict["UsedSpaceSize"] != nil {
                self.usedSpaceSize = dict["UsedSpaceSize"] as! Double
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var fileSystem: GetFileSystemResponseBody.FileSystem?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.fileSystem?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystem != nil {
            map["FileSystem"] = self.fileSystem?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystem") && dict["FileSystem"] != nil {
            var model = GetFileSystemResponseBody.FileSystem()
            model.fromMap(dict["FileSystem"] as! [String: Any])
            self.fileSystem = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetFileSystemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetMountPointRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var mountPointId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
    }
}

public class GetMountPointResponseBody : Tea.TeaModel {
    public class MountPoint : Tea.TeaModel {
        public var accessGroupId: String?

        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var mountPointDomain: String?

        public var mountPointId: String?

        public var networkType: String?

        public var regionId: String?

        public var status: String?

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
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.mountPointDomain != nil {
                map["MountPointDomain"] = self.mountPointDomain!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("MountPointDomain") && dict["MountPointDomain"] != nil {
                self.mountPointDomain = dict["MountPointDomain"] as! String
            }
            if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
                self.mountPointId = dict["MountPointId"] as! String
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var mountPoint: GetMountPointResponseBody.MountPoint?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.mountPoint?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mountPoint != nil {
            map["MountPoint"] = self.mountPoint?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MountPoint") && dict["MountPoint"] != nil {
            var model = GetMountPointResponseBody.MountPoint()
            model.fromMap(dict["MountPoint"] as! [String: Any])
            self.mountPoint = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetRegionRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class GetRegionResponseBody : Tea.TeaModel {
    public class AvailableZones : Tea.TeaModel {
        public class Options : Tea.TeaModel {
            public var protocolType: String?

            public var storageType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.storageType != nil {
                    map["StorageType"] = self.storageType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ProtocolType") && dict["ProtocolType"] != nil {
                    self.protocolType = dict["ProtocolType"] as! String
                }
                if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                    self.storageType = dict["StorageType"] as! String
                }
            }
        }
        public var options: [GetRegionResponseBody.AvailableZones.Options]?

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
            if self.options != nil {
                var tmp : [Any] = []
                for k in self.options! {
                    tmp.append(k.toMap())
                }
                map["Options"] = tmp
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Options") && dict["Options"] != nil {
                var tmp : [GetRegionResponseBody.AvailableZones.Options] = []
                for v in dict["Options"] as! [Any] {
                    var model = GetRegionResponseBody.AvailableZones.Options()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.options = tmp
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var availableZones: [GetRegionResponseBody.AvailableZones]?

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
        if self.availableZones != nil {
            var tmp : [Any] = []
            for k in self.availableZones! {
                tmp.append(k.toMap())
            }
            map["AvailableZones"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableZones") && dict["AvailableZones"] != nil {
            var tmp : [GetRegionResponseBody.AvailableZones] = []
            for v in dict["AvailableZones"] as! [Any] {
                var model = GetRegionResponseBody.AvailableZones()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.availableZones = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetRegionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetRegionResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetRegionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessGroupsRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public var limit: Int32?

    public var orderBy: String?

    public var orderType: String?

    public var startOffset: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.startOffset != nil {
            map["StartOffset"] = self.startOffset!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("StartOffset") && dict["StartOffset"] != nil {
            self.startOffset = dict["StartOffset"] as! Int32
        }
    }
}

public class ListAccessGroupsResponseBody : Tea.TeaModel {
    public class AccessGroups : Tea.TeaModel {
        public var accessGroupId: String?

        public var accessGroupName: String?

        public var createTime: String?

        public var description_: String?

        public var isDefault: Bool?

        public var mountPointCount: Int32?

        public var networkType: String?

        public var regionId: String?

        public var ruleCount: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.accessGroupName != nil {
                map["AccessGroupName"] = self.accessGroupName!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.mountPointCount != nil {
                map["MountPointCount"] = self.mountPointCount!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.ruleCount != nil {
                map["RuleCount"] = self.ruleCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("AccessGroupName") && dict["AccessGroupName"] != nil {
                self.accessGroupName = dict["AccessGroupName"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("IsDefault") && dict["IsDefault"] != nil {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("MountPointCount") && dict["MountPointCount"] != nil {
                self.mountPointCount = dict["MountPointCount"] as! Int32
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RuleCount") && dict["RuleCount"] != nil {
                self.ruleCount = dict["RuleCount"] as! Int32
            }
        }
    }
    public var accessGroups: [ListAccessGroupsResponseBody.AccessGroups]?

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
        if self.accessGroups != nil {
            var tmp : [Any] = []
            for k in self.accessGroups! {
                tmp.append(k.toMap())
            }
            map["AccessGroups"] = tmp
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
        if dict.keys.contains("AccessGroups") && dict["AccessGroups"] != nil {
            var tmp : [ListAccessGroupsResponseBody.AccessGroups] = []
            for v in dict["AccessGroups"] as! [Any] {
                var model = ListAccessGroupsResponseBody.AccessGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accessGroups = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAccessGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessGroupsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAccessGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAccessRulesRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var inputRegionId: String?

    public var limit: Int32?

    public var orderBy: String?

    public var orderType: String?

    public var startOffset: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.startOffset != nil {
            map["StartOffset"] = self.startOffset!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("StartOffset") && dict["StartOffset"] != nil {
            self.startOffset = dict["StartOffset"] as! Int32
        }
    }
}

public class ListAccessRulesResponseBody : Tea.TeaModel {
    public class AccessRules : Tea.TeaModel {
        public var accessGroupId: String?

        public var accessRuleId: String?

        public var createTime: String?

        public var description_: String?

        public var networkSegment: String?

        public var priority: Int32?

        public var RWAccessType: String?

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
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.accessRuleId != nil {
                map["AccessRuleId"] = self.accessRuleId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.networkSegment != nil {
                map["NetworkSegment"] = self.networkSegment!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.RWAccessType != nil {
                map["RWAccessType"] = self.RWAccessType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
                self.accessRuleId = dict["AccessRuleId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("NetworkSegment") && dict["NetworkSegment"] != nil {
                self.networkSegment = dict["NetworkSegment"] as! String
            }
            if dict.keys.contains("Priority") && dict["Priority"] != nil {
                self.priority = dict["Priority"] as! Int32
            }
            if dict.keys.contains("RWAccessType") && dict["RWAccessType"] != nil {
                self.RWAccessType = dict["RWAccessType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
        }
    }
    public var accessRules: [ListAccessRulesResponseBody.AccessRules]?

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
        if self.accessRules != nil {
            var tmp : [Any] = []
            for k in self.accessRules! {
                tmp.append(k.toMap())
            }
            map["AccessRules"] = tmp
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
        if dict.keys.contains("AccessRules") && dict["AccessRules"] != nil {
            var tmp : [ListAccessRulesResponseBody.AccessRules] = []
            for v in dict["AccessRules"] as! [Any] {
                var model = ListAccessRulesResponseBody.AccessRules()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.accessRules = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListAccessRulesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAccessRulesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAccessRulesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFileSystemsRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public var limit: Int32?

    public var orderBy: String?

    public var orderType: String?

    public var startOffset: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.startOffset != nil {
            map["StartOffset"] = self.startOffset!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("StartOffset") && dict["StartOffset"] != nil {
            self.startOffset = dict["StartOffset"] as! Int32
        }
    }
}

public class ListFileSystemsResponseBody : Tea.TeaModel {
    public class FileSystems : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var fileSystemName: String?

        public var meteringSpaceSize: Double?

        public var mountPointCount: Int64?

        public var numberOfDirectories: Int64?

        public var numberOfFiles: Int64?

        public var protocolType: String?

        public var provisionedThroughputInMiBps: Int64?

        public var regionId: String?

        public var spaceCapacity: Int64?

        public var storagePackageId: String?

        public var storageType: String?

        public var throughputMode: String?

        public var usedSpaceSize: Double?

        public var version: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.fileSystemName != nil {
                map["FileSystemName"] = self.fileSystemName!
            }
            if self.meteringSpaceSize != nil {
                map["MeteringSpaceSize"] = self.meteringSpaceSize!
            }
            if self.mountPointCount != nil {
                map["MountPointCount"] = self.mountPointCount!
            }
            if self.numberOfDirectories != nil {
                map["NumberOfDirectories"] = self.numberOfDirectories!
            }
            if self.numberOfFiles != nil {
                map["NumberOfFiles"] = self.numberOfFiles!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.provisionedThroughputInMiBps != nil {
                map["ProvisionedThroughputInMiBps"] = self.provisionedThroughputInMiBps!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.spaceCapacity != nil {
                map["SpaceCapacity"] = self.spaceCapacity!
            }
            if self.storagePackageId != nil {
                map["StoragePackageId"] = self.storagePackageId!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.throughputMode != nil {
                map["ThroughputMode"] = self.throughputMode!
            }
            if self.usedSpaceSize != nil {
                map["UsedSpaceSize"] = self.usedSpaceSize!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("FileSystemName") && dict["FileSystemName"] != nil {
                self.fileSystemName = dict["FileSystemName"] as! String
            }
            if dict.keys.contains("MeteringSpaceSize") && dict["MeteringSpaceSize"] != nil {
                self.meteringSpaceSize = dict["MeteringSpaceSize"] as! Double
            }
            if dict.keys.contains("MountPointCount") && dict["MountPointCount"] != nil {
                self.mountPointCount = dict["MountPointCount"] as! Int64
            }
            if dict.keys.contains("NumberOfDirectories") && dict["NumberOfDirectories"] != nil {
                self.numberOfDirectories = dict["NumberOfDirectories"] as! Int64
            }
            if dict.keys.contains("NumberOfFiles") && dict["NumberOfFiles"] != nil {
                self.numberOfFiles = dict["NumberOfFiles"] as! Int64
            }
            if dict.keys.contains("ProtocolType") && dict["ProtocolType"] != nil {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("ProvisionedThroughputInMiBps") && dict["ProvisionedThroughputInMiBps"] != nil {
                self.provisionedThroughputInMiBps = dict["ProvisionedThroughputInMiBps"] as! Int64
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("SpaceCapacity") && dict["SpaceCapacity"] != nil {
                self.spaceCapacity = dict["SpaceCapacity"] as! Int64
            }
            if dict.keys.contains("StoragePackageId") && dict["StoragePackageId"] != nil {
                self.storagePackageId = dict["StoragePackageId"] as! String
            }
            if dict.keys.contains("StorageType") && dict["StorageType"] != nil {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("ThroughputMode") && dict["ThroughputMode"] != nil {
                self.throughputMode = dict["ThroughputMode"] as! String
            }
            if dict.keys.contains("UsedSpaceSize") && dict["UsedSpaceSize"] != nil {
                self.usedSpaceSize = dict["UsedSpaceSize"] as! Double
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
            if dict.keys.contains("ZoneId") && dict["ZoneId"] != nil {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var fileSystems: [ListFileSystemsResponseBody.FileSystems]?

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
        if self.fileSystems != nil {
            var tmp : [Any] = []
            for k in self.fileSystems! {
                tmp.append(k.toMap())
            }
            map["FileSystems"] = tmp
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
        if dict.keys.contains("FileSystems") && dict["FileSystems"] != nil {
            var tmp : [ListFileSystemsResponseBody.FileSystems] = []
            for v in dict["FileSystems"] as! [Any] {
                var model = ListFileSystemsResponseBody.FileSystems()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fileSystems = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFileSystemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFileSystemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListMountPointsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var limit: Int32?

    public var orderBy: String?

    public var orderType: String?

    public var startOffset: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.orderBy != nil {
            map["OrderBy"] = self.orderBy!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.startOffset != nil {
            map["StartOffset"] = self.startOffset!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("OrderBy") && dict["OrderBy"] != nil {
            self.orderBy = dict["OrderBy"] as! String
        }
        if dict.keys.contains("OrderType") && dict["OrderType"] != nil {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("StartOffset") && dict["StartOffset"] != nil {
            self.startOffset = dict["StartOffset"] as! Int32
        }
    }
}

public class ListMountPointsResponseBody : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
        public var accessGroupId: String?

        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var mountPointDomain: String?

        public var mountPointId: String?

        public var networkType: String?

        public var regionId: String?

        public var status: String?

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
            if self.accessGroupId != nil {
                map["AccessGroupId"] = self.accessGroupId!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.mountPointDomain != nil {
                map["MountPointDomain"] = self.mountPointDomain!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
                self.accessGroupId = dict["AccessGroupId"] as! String
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("MountPointDomain") && dict["MountPointDomain"] != nil {
                self.mountPointDomain = dict["MountPointDomain"] as! String
            }
            if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
                self.mountPointId = dict["MountPointId"] as! String
            }
            if dict.keys.contains("NetworkType") && dict["NetworkType"] != nil {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("RegionId") && dict["RegionId"] != nil {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("VSwitchId") && dict["VSwitchId"] != nil {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") && dict["VpcId"] != nil {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var mountPoints: [ListMountPointsResponseBody.MountPoints]?

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
        if self.mountPoints != nil {
            var tmp : [Any] = []
            for k in self.mountPoints! {
                tmp.append(k.toMap())
            }
            map["MountPoints"] = tmp
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
        if dict.keys.contains("MountPoints") && dict["MountPoints"] != nil {
            var tmp : [ListMountPointsResponseBody.MountPoints] = []
            for v in dict["MountPoints"] as! [Any] {
                var model = ListMountPointsResponseBody.MountPoints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.mountPoints = tmp
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListMountPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListMountPointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListMountPointsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUserGroupsMappingsRequest : Tea.TeaModel {
    public var filesystemId: String?

    public var inputRegionId: String?

    public var limit: Int32?

    public var nextToken: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filesystemId != nil {
            map["FilesystemId"] = self.filesystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.limit != nil {
            map["Limit"] = self.limit!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FilesystemId") && dict["FilesystemId"] != nil {
            self.filesystemId = dict["FilesystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Limit") && dict["Limit"] != nil {
            self.limit = dict["Limit"] as! Int32
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
    }
}

public class ListUserGroupsMappingsResponseBody : Tea.TeaModel {
    public class UserGroupsMappings : Tea.TeaModel {
        public var groupNames: [String]?

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
            if self.groupNames != nil {
                map["GroupNames"] = self.groupNames!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("GroupNames") && dict["GroupNames"] != nil {
                self.groupNames = dict["GroupNames"] as! [String]
            }
            if dict.keys.contains("UserName") && dict["UserName"] != nil {
                self.userName = dict["UserName"] as! String
            }
        }
    }
    public var hasMore: Bool?

    public var nextToken: String?

    public var requestId: String?

    public var userGroupsMappings: [ListUserGroupsMappingsResponseBody.UserGroupsMappings]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hasMore != nil {
            map["HasMore"] = self.hasMore!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.userGroupsMappings != nil {
            var tmp : [Any] = []
            for k in self.userGroupsMappings! {
                tmp.append(k.toMap())
            }
            map["UserGroupsMappings"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("HasMore") && dict["HasMore"] != nil {
            self.hasMore = dict["HasMore"] as! Bool
        }
        if dict.keys.contains("NextToken") && dict["NextToken"] != nil {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UserGroupsMappings") && dict["UserGroupsMappings"] != nil {
            var tmp : [ListUserGroupsMappingsResponseBody.UserGroupsMappings] = []
            for v in dict["UserGroupsMappings"] as! [Any] {
                var model = ListUserGroupsMappingsResponseBody.UserGroupsMappings()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.userGroupsMappings = tmp
        }
    }
}

public class ListUserGroupsMappingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUserGroupsMappingsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUserGroupsMappingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccessGroupRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var accessGroupName: String?

    public var description_: String?

    public var inputRegionId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.accessGroupName != nil {
            map["AccessGroupName"] = self.accessGroupName!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("AccessGroupName") && dict["AccessGroupName"] != nil {
            self.accessGroupName = dict["AccessGroupName"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
    }
}

public class ModifyAccessGroupResponseBody : Tea.TeaModel {
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

public class ModifyAccessGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccessGroupResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccessGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyAccessRuleRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var accessRuleId: String?

    public var description_: String?

    public var inputRegionId: String?

    public var priority: Int32?

    public var RWAccessType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.accessRuleId != nil {
            map["AccessRuleId"] = self.accessRuleId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.RWAccessType != nil {
            map["RWAccessType"] = self.RWAccessType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("AccessRuleId") && dict["AccessRuleId"] != nil {
            self.accessRuleId = dict["AccessRuleId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("Priority") && dict["Priority"] != nil {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("RWAccessType") && dict["RWAccessType"] != nil {
            self.RWAccessType = dict["RWAccessType"] as! String
        }
    }
}

public class ModifyAccessRuleResponseBody : Tea.TeaModel {
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

public class ModifyAccessRuleResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyAccessRuleResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyAccessRuleResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyFileSystemRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var fileSystemName: String?

    public var inputRegionId: String?

    public var provisionedThroughputInMiBps: Int64?

    public var spaceCapacity: Int64?

    public var throughputMode: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemName != nil {
            map["FileSystemName"] = self.fileSystemName!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.provisionedThroughputInMiBps != nil {
            map["ProvisionedThroughputInMiBps"] = self.provisionedThroughputInMiBps!
        }
        if self.spaceCapacity != nil {
            map["SpaceCapacity"] = self.spaceCapacity!
        }
        if self.throughputMode != nil {
            map["ThroughputMode"] = self.throughputMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("FileSystemName") && dict["FileSystemName"] != nil {
            self.fileSystemName = dict["FileSystemName"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("ProvisionedThroughputInMiBps") && dict["ProvisionedThroughputInMiBps"] != nil {
            self.provisionedThroughputInMiBps = dict["ProvisionedThroughputInMiBps"] as! Int64
        }
        if dict.keys.contains("SpaceCapacity") && dict["SpaceCapacity"] != nil {
            self.spaceCapacity = dict["SpaceCapacity"] as! Int64
        }
        if dict.keys.contains("ThroughputMode") && dict["ThroughputMode"] != nil {
            self.throughputMode = dict["ThroughputMode"] as! String
        }
    }
}

public class ModifyFileSystemResponseBody : Tea.TeaModel {
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

public class ModifyFileSystemResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyFileSystemResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyFileSystemResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyMountPointRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var mountPointId: String?

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
        if self.accessGroupId != nil {
            map["AccessGroupId"] = self.accessGroupId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.mountPointId != nil {
            map["MountPointId"] = self.mountPointId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessGroupId") && dict["AccessGroupId"] != nil {
            self.accessGroupId = dict["AccessGroupId"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("InputRegionId") && dict["InputRegionId"] != nil {
            self.inputRegionId = dict["InputRegionId"] as! String
        }
        if dict.keys.contains("MountPointId") && dict["MountPointId"] != nil {
            self.mountPointId = dict["MountPointId"] as! String
        }
        if dict.keys.contains("Status") && dict["Status"] != nil {
            self.status = dict["Status"] as! String
        }
    }
}

public class ModifyMountPointResponseBody : Tea.TeaModel {
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

public class ModifyMountPointResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyMountPointResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyMountPointResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
