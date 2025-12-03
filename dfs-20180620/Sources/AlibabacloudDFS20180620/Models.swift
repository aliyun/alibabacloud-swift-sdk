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

    public var instanceIds: [String]?

    public var mountPointId: String?

    public var useAssumeRoleChkServerPerm: Bool?

    public var vscIds: [String]?

    public var vscName: String?

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
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        if self.vscIds != nil {
            map["VscIds"] = self.vscIds!
        }
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
        if let value = dict["VscIds"] as? [String] {
            self.vscIds = value
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
        if let value = dict["VscType"] as? String {
            self.vscType = value
        }
    }
}

public class AttachVscMountPointShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIdsShrink: String?

    public var mountPointId: String?

    public var useAssumeRoleChkServerPerm: Bool?

    public var vscIdsShrink: String?

    public var vscName: String?

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
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        if self.vscIdsShrink != nil {
            map["VscIds"] = self.vscIdsShrink!
        }
        if self.vscName != nil {
            map["VscName"] = self.vscName!
        }
        if self.vscType != nil {
            map["VscType"] = self.vscType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
        if let value = dict["VscIds"] as? String {
            self.vscIdsShrink = value
        }
        if let value = dict["VscName"] as? String {
            self.vscName = value
        }
        if let value = dict["VscType"] as? String {
            self.vscType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = AttachVscMountPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachVscToMountPointsRequest : Tea.TeaModel {
    public class AttachInfos : Tea.TeaModel {
        public var instanceId: String?

        public var mountPointId: String?

        public var vscId: String?

        public var vscName: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            if self.vscName != nil {
                map["VscName"] = self.vscName!
            }
            if self.vscType != nil {
                map["VscType"] = self.vscType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
            if let value = dict["VscName"] as? String {
                self.vscName = value
            }
            if let value = dict["VscType"] as? String {
                self.vscType = value
            }
        }
    }
    public var attachInfos: [AttachVscToMountPointsRequest.AttachInfos]?

    public var inputRegionId: String?

    public var useAssumeRoleChkServerPerm: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachInfos != nil {
            var tmp : [Any] = []
            for k in self.attachInfos! {
                tmp.append(k.toMap())
            }
            map["AttachInfos"] = tmp
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachInfos"] as? [Any?] {
            var tmp : [AttachVscToMountPointsRequest.AttachInfos] = []
            for v in value {
                if v != nil {
                    var model = AttachVscToMountPointsRequest.AttachInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachInfos = tmp
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
    }
}

public class AttachVscToMountPointsShrinkRequest : Tea.TeaModel {
    public var attachInfosShrink: String?

    public var inputRegionId: String?

    public var useAssumeRoleChkServerPerm: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachInfosShrink != nil {
            map["AttachInfos"] = self.attachInfosShrink!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AttachInfos"] as? String {
            self.attachInfosShrink = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
    }
}

public class AttachVscToMountPointsResponseBody : Tea.TeaModel {
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

public class AttachVscToMountPointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachVscToMountPointsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachVscToMountPointsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AliasPrefix"] as? String {
            self.aliasPrefix = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPointAlias"] as? String {
            self.mountPointAlias = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = BindVscMountPointAliasResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["NetworkSegment"] as? String {
            self.networkSegment = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RWAccessType"] as? String {
            self.RWAccessType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateAccessRuleResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateFileSystemRequest : Tea.TeaModel {
    public var dataRedundancyType: String?

    public var dedicatedClusterId: String?

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
        if self.dedicatedClusterId != nil {
            map["DedicatedClusterId"] = self.dedicatedClusterId!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DataRedundancyType"] as? String {
            self.dataRedundancyType = value
        }
        if let value = dict["DedicatedClusterId"] as? String {
            self.dedicatedClusterId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemName"] as? String {
            self.fileSystemName = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["PartitionNumber"] as? Int32 {
            self.partitionNumber = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
        if let value = dict["ProvisionedThroughputInMiBps"] as? Int64 {
            self.provisionedThroughputInMiBps = value
        }
        if let value = dict["SpaceCapacity"] as? Int64 {
            self.spaceCapacity = value
        }
        if let value = dict["StorageSetName"] as? String {
            self.storageSetName = value
        }
        if let value = dict["StorageType"] as? String {
            self.storageType = value
        }
        if let value = dict["ThroughputMode"] as? String {
            self.throughputMode = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateFileSystemResponseBody()
            model.fromMap(value)
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

    public var usePerformanceMode: Bool?

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
        if self.usePerformanceMode != nil {
            map["UsePerformanceMode"] = self.usePerformanceMode!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["NetworkType"] as? String {
            self.networkType = value
        }
        if let value = dict["UsePerformanceMode"] as? Bool {
            self.usePerformanceMode = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateMountPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQosPolicyRequest : Tea.TeaModel {
    public var description_: String?

    public var federationId: String?

    public var fileSystemId: String?

    public var flowIds: [Int32]?

    public var inputRegionId: String?

    public var maxIOBandWidth: Int64?

    public var maxIOps: Int64?

    public var maxMetaQps: Int64?

    public var reqTags: [String]?

    public var zoneIds: [String]?

    public override init() {
        super.init()
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
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.flowIds != nil {
            map["FlowIds"] = self.flowIds!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.maxIOBandWidth != nil {
            map["MaxIOBandWidth"] = self.maxIOBandWidth!
        }
        if self.maxIOps != nil {
            map["MaxIOps"] = self.maxIOps!
        }
        if self.maxMetaQps != nil {
            map["MaxMetaQps"] = self.maxMetaQps!
        }
        if self.reqTags != nil {
            map["ReqTags"] = self.reqTags!
        }
        if self.zoneIds != nil {
            map["ZoneIds"] = self.zoneIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FlowIds"] as? [Int32] {
            self.flowIds = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxIOBandWidth"] as? Int64 {
            self.maxIOBandWidth = value
        }
        if let value = dict["MaxIOps"] as? Int64 {
            self.maxIOps = value
        }
        if let value = dict["MaxMetaQps"] as? Int64 {
            self.maxMetaQps = value
        }
        if let value = dict["ReqTags"] as? [String] {
            self.reqTags = value
        }
        if let value = dict["ZoneIds"] as? [String] {
            self.zoneIds = value
        }
    }
}

public class CreateQosPolicyShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var federationId: String?

    public var fileSystemId: String?

    public var flowIdsShrink: String?

    public var inputRegionId: String?

    public var maxIOBandWidth: Int64?

    public var maxIOps: Int64?

    public var maxMetaQps: Int64?

    public var reqTagsShrink: String?

    public var zoneIdsShrink: String?

    public override init() {
        super.init()
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
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.flowIdsShrink != nil {
            map["FlowIds"] = self.flowIdsShrink!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.maxIOBandWidth != nil {
            map["MaxIOBandWidth"] = self.maxIOBandWidth!
        }
        if self.maxIOps != nil {
            map["MaxIOps"] = self.maxIOps!
        }
        if self.maxMetaQps != nil {
            map["MaxMetaQps"] = self.maxMetaQps!
        }
        if self.reqTagsShrink != nil {
            map["ReqTags"] = self.reqTagsShrink!
        }
        if self.zoneIdsShrink != nil {
            map["ZoneIds"] = self.zoneIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FlowIds"] as? String {
            self.flowIdsShrink = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxIOBandWidth"] as? Int64 {
            self.maxIOBandWidth = value
        }
        if let value = dict["MaxIOps"] as? Int64 {
            self.maxIOps = value
        }
        if let value = dict["MaxMetaQps"] as? Int64 {
            self.maxMetaQps = value
        }
        if let value = dict["ReqTags"] as? String {
            self.reqTagsShrink = value
        }
        if let value = dict["ZoneIds"] as? String {
            self.zoneIdsShrink = value
        }
    }
}

public class CreateQosPolicyResponseBody : Tea.TeaModel {
    public var errorMessages: String?

    public var qosPolicyId: String?

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
        if self.errorMessages != nil {
            map["ErrorMessages"] = self.errorMessages!
        }
        if self.qosPolicyId != nil {
            map["QosPolicyId"] = self.qosPolicyId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorMessages"] as? String {
            self.errorMessages = value
        }
        if let value = dict["QosPolicyId"] as? String {
            self.qosPolicyId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateQosPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQosPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateQosPolicyResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GroupNames"] as? [String] {
            self.groupNames = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GroupNames"] as? String {
            self.groupNamesShrink = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateUserGroupsMappingResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVscMountPointRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIds: [String]?

    public override init() {
        super.init()
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateVscMountPointResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteAccessRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteFileSystemResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteMountPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQosPolicyRequest : Tea.TeaModel {
    public var federationId: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var qosPolicyId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.qosPolicyId != nil {
            map["QosPolicyId"] = self.qosPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["QosPolicyId"] as? String {
            self.qosPolicyId = value
        }
    }
}

public class DeleteQosPolicyResponseBody : Tea.TeaModel {
    public var errorMessages: String?

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
        if self.errorMessages != nil {
            map["ErrorMessages"] = self.errorMessages!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ErrorMessages"] as? String {
            self.errorMessages = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteQosPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQosPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteQosPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUserGroupsMappingRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GroupNames"] as? [String] {
            self.groupNames = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["GroupNames"] as? String {
            self.groupNamesShrink = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteUserGroupsMappingResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteVscMountPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMountPointsVscAttachInfoRequest : Tea.TeaModel {
    public class QueryInfos : Tea.TeaModel {
        public var instanceId: String?

        public var mountPointId: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
        }
    }
    public var inputRegionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var queryInfos: [DescribeMountPointsVscAttachInfoRequest.QueryInfos]?

    public var useAssumeRoleChkServerPerm: Bool?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.queryInfos != nil {
            var tmp : [Any] = []
            for k in self.queryInfos! {
                tmp.append(k.toMap())
            }
            map["QueryInfos"] = tmp
        }
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QueryInfos"] as? [Any?] {
            var tmp : [DescribeMountPointsVscAttachInfoRequest.QueryInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeMountPointsVscAttachInfoRequest.QueryInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queryInfos = tmp
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
    }
}

public class DescribeMountPointsVscAttachInfoShrinkRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var queryInfosShrink: String?

    public var useAssumeRoleChkServerPerm: Bool?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.queryInfosShrink != nil {
            map["QueryInfos"] = self.queryInfosShrink!
        }
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QueryInfos"] as? String {
            self.queryInfosShrink = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
    }
}

public class DescribeMountPointsVscAttachInfoResponseBody : Tea.TeaModel {
    public class AttachInfos : Tea.TeaModel {
        public var instanceId: String?

        public var mountPointId: String?

        public var vscId: String?

        public var vscName: String?

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
            if self.instanceId != nil {
                map["InstanceId"] = self.instanceId!
            }
            if self.mountPointId != nil {
                map["MountPointId"] = self.mountPointId!
            }
            if self.vscId != nil {
                map["VscId"] = self.vscId!
            }
            if self.vscName != nil {
                map["VscName"] = self.vscName!
            }
            if self.vscStatus != nil {
                map["VscStatus"] = self.vscStatus!
            }
            if self.vscType != nil {
                map["VscType"] = self.vscType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["VscId"] as? String {
                self.vscId = value
            }
            if let value = dict["VscName"] as? String {
                self.vscName = value
            }
            if let value = dict["VscStatus"] as? String {
                self.vscStatus = value
            }
            if let value = dict["VscType"] as? String {
                self.vscType = value
            }
        }
    }
    public var attachInfos: [DescribeMountPointsVscAttachInfoResponseBody.AttachInfos]?

    public var maxResults: Int32?

    public var nextToken: String?

    public var requestId: String?

    public var totalCount: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.attachInfos != nil {
            var tmp : [Any] = []
            for k in self.attachInfos! {
                tmp.append(k.toMap())
            }
            map["AttachInfos"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AttachInfos"] as? [Any?] {
            var tmp : [DescribeMountPointsVscAttachInfoResponseBody.AttachInfos] = []
            for v in value {
                if v != nil {
                    var model = DescribeMountPointsVscAttachInfoResponseBody.AttachInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.attachInfos = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class DescribeMountPointsVscAttachInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMountPointsVscAttachInfoResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeMountPointsVscAttachInfoResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LocalName"] as? String {
                    self.localName = value
                }
                if let value = dict["RegionEndpoint"] as? String {
                    self.regionEndpoint = value
                }
                if let value = dict["RegionId"] as? String {
                    self.regionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? [Any?] {
                var tmp : [DescribeRegionsResponseBody.Regions.Region] = []
                for v in value {
                    if v != nil {
                        var model = DescribeRegionsResponseBody.Regions.Region()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["VscId"] as? String {
            self.vscId = value
        }
    }
}

public class DescribeVscMountPointsResponseBody : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
        public class Instances : Tea.TeaModel {
            public class Vscs : Tea.TeaModel {
                public var vscId: String?

                public var vscName: String?

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
                    if self.vscName != nil {
                        map["VscName"] = self.vscName!
                    }
                    if self.vscStatus != nil {
                        map["VscStatus"] = self.vscStatus!
                    }
                    if self.vscType != nil {
                        map["VscType"] = self.vscType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VscId"] as? String {
                        self.vscId = value
                    }
                    if let value = dict["VscName"] as? String {
                        self.vscName = value
                    }
                    if let value = dict["VscStatus"] as? String {
                        self.vscStatus = value
                    }
                    if let value = dict["VscType"] as? String {
                        self.vscType = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Vscs"] as? [Any?] {
                    var tmp : [DescribeVscMountPointsResponseBody.MountPoints.Instances.Vscs] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeVscMountPointsResponseBody.MountPoints.Instances.Vscs()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstanceTotalCount"] as? Int32 {
                self.instanceTotalCount = value
            }
            if let value = dict["Instances"] as? [Any?] {
                var tmp : [DescribeVscMountPointsResponseBody.MountPoints.Instances] = []
                for v in value {
                    if v != nil {
                        var model = DescribeVscMountPointsResponseBody.MountPoints.Instances()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.instances = tmp
            }
            if let value = dict["MountPointAlias"] as? String {
                self.mountPointAlias = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPoints"] as? [Any?] {
            var tmp : [DescribeVscMountPointsResponseBody.MountPoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeVscMountPointsResponseBody.MountPoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DescribeVscMountPointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachVscMountPointRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIds: [String]?

    public var mountPointId: String?

    public var useAssumeRoleChkServerPerm: Bool?

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
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        if self.vscIds != nil {
            map["VscIds"] = self.vscIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
        if let value = dict["VscIds"] as? [String] {
            self.vscIds = value
        }
    }
}

public class DetachVscMountPointShrinkRequest : Tea.TeaModel {
    public var description_: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var instanceIdsShrink: String?

    public var mountPointId: String?

    public var useAssumeRoleChkServerPerm: Bool?

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
        if self.useAssumeRoleChkServerPerm != nil {
            map["UseAssumeRoleChkServerPerm"] = self.useAssumeRoleChkServerPerm!
        }
        if self.vscIdsShrink != nil {
            map["VscIds"] = self.vscIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["UseAssumeRoleChkServerPerm"] as? Bool {
            self.useAssumeRoleChkServerPerm = value
        }
        if let value = dict["VscIds"] as? String {
            self.vscIdsShrink = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DetachVscMountPointResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["AccessGroupName"] as? String {
                self.accessGroupName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["MountPointCount"] as? Int32 {
                self.mountPointCount = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RuleCount"] as? Int32 {
                self.ruleCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroup"] as? [String: Any?] {
            var model = GetAccessGroupResponseBody.AccessGroup()
            model.fromMap(value)
            self.accessGroup = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["AccessRuleId"] as? String {
                self.accessRuleId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["NetworkSegment"] as? String {
                self.networkSegment = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RWAccessType"] as? String {
                self.RWAccessType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessRule"] as? [String: Any?] {
            var model = GetAccessRuleResponseBody.AccessRule()
            model.fromMap(value)
            self.accessRule = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetAccessRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FileSystemName"] as? String {
                self.fileSystemName = value
            }
            if let value = dict["MeteringSpaceSize"] as? Double {
                self.meteringSpaceSize = value
            }
            if let value = dict["MountPointCount"] as? Int64 {
                self.mountPointCount = value
            }
            if let value = dict["NumberOfDirectories"] as? Int64 {
                self.numberOfDirectories = value
            }
            if let value = dict["NumberOfFiles"] as? Int64 {
                self.numberOfFiles = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["ProvisionedThroughputInMiBps"] as? Int64 {
                self.provisionedThroughputInMiBps = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SpaceCapacity"] as? Int64 {
                self.spaceCapacity = value
            }
            if let value = dict["StoragePackageId"] as? String {
                self.storagePackageId = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["ThroughputMode"] as? String {
                self.throughputMode = value
            }
            if let value = dict["UsedSpaceSize"] as? Double {
                self.usedSpaceSize = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystem"] as? [String: Any?] {
            var model = GetFileSystemResponseBody.FileSystem()
            model.fromMap(value)
            self.fileSystem = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetFileSystemResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
    }
}

public class GetMountPointResponseBody : Tea.TeaModel {
    public class MountPoint : Tea.TeaModel {
        public var accessGroupId: String?

        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var mountPointAlias: String?

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
            if self.mountPointAlias != nil {
                map["MountPointAlias"] = self.mountPointAlias!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["MountPointAlias"] as? String {
                self.mountPointAlias = value
            }
            if let value = dict["MountPointDomain"] as? String {
                self.mountPointDomain = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MountPoint"] as? [String: Any?] {
            var model = GetMountPointResponseBody.MountPoint()
            model.fromMap(value)
            self.mountPoint = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetMountPointResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ProtocolType"] as? String {
                    self.protocolType = value
                }
                if let value = dict["StorageType"] as? String {
                    self.storageType = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Options"] as? [Any?] {
                var tmp : [GetRegionResponseBody.AvailableZones.Options] = []
                for v in value {
                    if v != nil {
                        var model = GetRegionResponseBody.AvailableZones.Options()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.options = tmp
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableZones"] as? [Any?] {
            var tmp : [GetRegionResponseBody.AvailableZones] = []
            for v in value {
                if v != nil {
                    var model = GetRegionResponseBody.AvailableZones()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.availableZones = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = GetRegionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccessGroupsRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["StartOffset"] as? Int32 {
            self.startOffset = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["AccessGroupName"] as? String {
                self.accessGroupName = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["MountPointCount"] as? Int32 {
                self.mountPointCount = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RuleCount"] as? Int32 {
                self.ruleCount = value
            }
        }
    }
    public var accessGroups: [ListAccessGroupsResponseBody.AccessGroups]?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AccessGroups"] as? [Any?] {
            var tmp : [ListAccessGroupsResponseBody.AccessGroups] = []
            for v in value {
                if v != nil {
                    var model = ListAccessGroupsResponseBody.AccessGroups()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessGroups = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAccessRulesRequest : Tea.TeaModel {
    public var accessGroupId: String?

    public var inputRegionId: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["StartOffset"] as? Int32 {
            self.startOffset = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["AccessRuleId"] as? String {
                self.accessRuleId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["NetworkSegment"] as? String {
                self.networkSegment = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["RWAccessType"] as? String {
                self.RWAccessType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var accessRules: [ListAccessRulesResponseBody.AccessRules]?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["AccessRules"] as? [Any?] {
            var tmp : [ListAccessRulesResponseBody.AccessRules] = []
            for v in value {
                if v != nil {
                    var model = ListAccessRulesResponseBody.AccessRules()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.accessRules = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListAccessRulesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFederationsRequest : Tea.TeaModel {
    public var federationId: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var maxResults: Int32?

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
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListFederationsResponseBody : Tea.TeaModel {
    public class Federations : Tea.TeaModel {
        public var federationId: String?

        public var fileSystemIds: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.federationId != nil {
                map["FederationId"] = self.federationId!
            }
            if self.fileSystemIds != nil {
                map["FileSystemIds"] = self.fileSystemIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FederationId"] as? String {
                self.federationId = value
            }
            if let value = dict["FileSystemIds"] as? String {
                self.fileSystemIds = value
            }
        }
    }
    public var federations: [ListFederationsResponseBody.Federations]?

    public var maxResults: Int32?

    public var nextToken: String?

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
        if self.federations != nil {
            var tmp : [Any] = []
            for k in self.federations! {
                tmp.append(k.toMap())
            }
            map["Federations"] = tmp
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Federations"] as? [Any?] {
            var tmp : [ListFederationsResponseBody.Federations] = []
            for v in value {
                if v != nil {
                    var model = ListFederationsResponseBody.Federations()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.federations = tmp
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListFederationsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFederationsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListFederationsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListFileSystemsRequest : Tea.TeaModel {
    public var inputRegionId: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["StartOffset"] as? Int32 {
            self.startOffset = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FileSystemName"] as? String {
                self.fileSystemName = value
            }
            if let value = dict["MeteringSpaceSize"] as? Double {
                self.meteringSpaceSize = value
            }
            if let value = dict["MountPointCount"] as? Int64 {
                self.mountPointCount = value
            }
            if let value = dict["NumberOfDirectories"] as? Int64 {
                self.numberOfDirectories = value
            }
            if let value = dict["NumberOfFiles"] as? Int64 {
                self.numberOfFiles = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["ProvisionedThroughputInMiBps"] as? Int64 {
                self.provisionedThroughputInMiBps = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["SpaceCapacity"] as? Int64 {
                self.spaceCapacity = value
            }
            if let value = dict["StoragePackageId"] as? String {
                self.storagePackageId = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["ThroughputMode"] as? String {
                self.throughputMode = value
            }
            if let value = dict["UsedSpaceSize"] as? Double {
                self.usedSpaceSize = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var fileSystems: [ListFileSystemsResponseBody.FileSystems]?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["FileSystems"] as? [Any?] {
            var tmp : [ListFileSystemsResponseBody.FileSystems] = []
            for v in value {
                if v != nil {
                    var model = ListFileSystemsResponseBody.FileSystems()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileSystems = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListFileSystemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListMountPointsRequest : Tea.TeaModel {
    public var fileSystemId: String?

    public var inputRegionId: String?

    public var limit: Int32?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["OrderBy"] as? String {
            self.orderBy = value
        }
        if let value = dict["OrderType"] as? String {
            self.orderType = value
        }
        if let value = dict["StartOffset"] as? Int32 {
            self.startOffset = value
        }
    }
}

public class ListMountPointsResponseBody : Tea.TeaModel {
    public class MountPoints : Tea.TeaModel {
        public var accessGroupId: String?

        public var createTime: String?

        public var description_: String?

        public var fileSystemId: String?

        public var mountPointAlias: String?

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
            if self.mountPointAlias != nil {
                map["MountPointAlias"] = self.mountPointAlias!
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AccessGroupId"] as? String {
                self.accessGroupId = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["MountPointAlias"] as? String {
                self.mountPointAlias = value
            }
            if let value = dict["MountPointDomain"] as? String {
                self.mountPointDomain = value
            }
            if let value = dict["MountPointId"] as? String {
                self.mountPointId = value
            }
            if let value = dict["NetworkType"] as? String {
                self.networkType = value
            }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["VSwitchId"] as? String {
                self.vSwitchId = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var mountPoints: [ListMountPointsResponseBody.MountPoints]?

    public var nextToken: String?

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
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
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
        if let value = dict["MountPoints"] as? [Any?] {
            var tmp : [ListMountPointsResponseBody.MountPoints] = []
            for v in value {
                if v != nil {
                    var model = ListMountPointsResponseBody.MountPoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.mountPoints = tmp
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListMountPointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQosPoliciesRequest : Tea.TeaModel {
    public var federationId: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var maxResults: Int32?

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
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
    }
}

public class ListQosPoliciesResponseBody : Tea.TeaModel {
    public class QosPolicies : Tea.TeaModel {
        public var description_: String?

        public var federationId: String?

        public var fileSystemId: String?

        public var flowIds: String?

        public var maxIOBandWidth: Int64?

        public var maxIOps: Int64?

        public var maxMetaQps: Int64?

        public var qosPolicyId: String?

        public var reqTags: String?

        public var zoneIds: String?

        public override init() {
            super.init()
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
            if self.federationId != nil {
                map["FederationId"] = self.federationId!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.flowIds != nil {
                map["FlowIds"] = self.flowIds!
            }
            if self.maxIOBandWidth != nil {
                map["MaxIOBandWidth"] = self.maxIOBandWidth!
            }
            if self.maxIOps != nil {
                map["MaxIOps"] = self.maxIOps!
            }
            if self.maxMetaQps != nil {
                map["MaxMetaQps"] = self.maxMetaQps!
            }
            if self.qosPolicyId != nil {
                map["QosPolicyId"] = self.qosPolicyId!
            }
            if self.reqTags != nil {
                map["ReqTags"] = self.reqTags!
            }
            if self.zoneIds != nil {
                map["ZoneIds"] = self.zoneIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["FederationId"] as? String {
                self.federationId = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FlowIds"] as? String {
                self.flowIds = value
            }
            if let value = dict["MaxIOBandWidth"] as? Int64 {
                self.maxIOBandWidth = value
            }
            if let value = dict["MaxIOps"] as? Int64 {
                self.maxIOps = value
            }
            if let value = dict["MaxMetaQps"] as? Int64 {
                self.maxMetaQps = value
            }
            if let value = dict["QosPolicyId"] as? String {
                self.qosPolicyId = value
            }
            if let value = dict["ReqTags"] as? String {
                self.reqTags = value
            }
            if let value = dict["ZoneIds"] as? String {
                self.zoneIds = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var qosPolicies: [ListQosPoliciesResponseBody.QosPolicies]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.qosPolicies != nil {
            var tmp : [Any] = []
            for k in self.qosPolicies! {
                tmp.append(k.toMap())
            }
            map["QosPolicies"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["QosPolicies"] as? [Any?] {
            var tmp : [ListQosPoliciesResponseBody.QosPolicies] = []
            for v in value {
                if v != nil {
                    var model = ListQosPoliciesResponseBody.QosPolicies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.qosPolicies = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListQosPoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQosPoliciesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQosPoliciesResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FilesystemId"] as? String {
            self.filesystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Limit"] as? Int32 {
            self.limit = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
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

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["GroupNames"] as? [String] {
                self.groupNames = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["HasMore"] as? Bool {
            self.hasMore = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["UserGroupsMappings"] as? [Any?] {
            var tmp : [ListUserGroupsMappingsResponseBody.UserGroupsMappings] = []
            for v in value {
                if v != nil {
                    var model = ListUserGroupsMappingsResponseBody.UserGroupsMappings()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListUserGroupsMappingsResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["AccessGroupName"] as? String {
            self.accessGroupName = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccessGroupResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["AccessRuleId"] as? String {
            self.accessRuleId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["Priority"] as? Int32 {
            self.priority = value
        }
        if let value = dict["RWAccessType"] as? String {
            self.RWAccessType = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyAccessRuleResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemName"] as? String {
            self.fileSystemName = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["ProvisionedThroughputInMiBps"] as? Int64 {
            self.provisionedThroughputInMiBps = value
        }
        if let value = dict["SpaceCapacity"] as? Int64 {
            self.spaceCapacity = value
        }
        if let value = dict["ThroughputMode"] as? String {
            self.throughputMode = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyFileSystemResponseBody()
            model.fromMap(value)
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessGroupId"] as? String {
            self.accessGroupId = value
        }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MountPointId"] as? String {
            self.mountPointId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ModifyMountPointResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ModifyQosPolicyRequest : Tea.TeaModel {
    public var description_: String?

    public var federationId: String?

    public var fileSystemId: String?

    public var inputRegionId: String?

    public var maxIOBandWidth: Int64?

    public var maxIOps: Int64?

    public var maxMetaQps: Int64?

    public var qosPolicyId: String?

    public override init() {
        super.init()
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
        if self.federationId != nil {
            map["FederationId"] = self.federationId!
        }
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.inputRegionId != nil {
            map["InputRegionId"] = self.inputRegionId!
        }
        if self.maxIOBandWidth != nil {
            map["MaxIOBandWidth"] = self.maxIOBandWidth!
        }
        if self.maxIOps != nil {
            map["MaxIOps"] = self.maxIOps!
        }
        if self.maxMetaQps != nil {
            map["MaxMetaQps"] = self.maxMetaQps!
        }
        if self.qosPolicyId != nil {
            map["QosPolicyId"] = self.qosPolicyId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Description"] as? String {
            self.description_ = value
        }
        if let value = dict["FederationId"] as? String {
            self.federationId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["InputRegionId"] as? String {
            self.inputRegionId = value
        }
        if let value = dict["MaxIOBandWidth"] as? Int64 {
            self.maxIOBandWidth = value
        }
        if let value = dict["MaxIOps"] as? Int64 {
            self.maxIOps = value
        }
        if let value = dict["MaxMetaQps"] as? Int64 {
            self.maxMetaQps = value
        }
        if let value = dict["QosPolicyId"] as? String {
            self.qosPolicyId = value
        }
    }
}

public class ModifyQosPolicyResponseBody : Tea.TeaModel {
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

public class ModifyQosPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyQosPolicyResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ModifyQosPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
