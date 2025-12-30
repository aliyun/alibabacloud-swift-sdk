import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddonNodeTemplate : Tea.TeaModel {
    public class DataDisks : Tea.TeaModel {
        public var category: String?

        public var deleteWithInstance: Bool?

        public var level: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.deleteWithInstance != nil {
                map["DeleteWithInstance"] = self.deleteWithInstance!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["DeleteWithInstance"] as? Bool {
                self.deleteWithInstance = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public class SystemDisk : Tea.TeaModel {
        public var category: String?

        public var level: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var dataDisks: [AddonNodeTemplate.DataDisks]?

    public var duration: Int32?

    public var enableHT: Bool?

    public var imageId: String?

    public var instanceChargeType: String?

    public var instanceId: String?

    public var instanceType: String?

    public var osName: String?

    public var osNameEN: String?

    public var period: Int32?

    public var periodUnit: String?

    public var privateIpAddress: String?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var systemDisk: AddonNodeTemplate.SystemDisk?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.enableHT != nil {
            map["EnableHT"] = self.enableHT!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.osName != nil {
            map["OsName"] = self.osName!
        }
        if self.osNameEN != nil {
            map["OsNameEN"] = self.osNameEN!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["DataDisks"] as? [Any?] {
            var tmp : [AddonNodeTemplate.DataDisks] = []
            for v in value {
                if v != nil {
                    var model = AddonNodeTemplate.DataDisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataDisks = tmp
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EnableHT"] as? Bool {
            self.enableHT = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceChargeType"] as? String {
            self.instanceChargeType = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["OsName"] as? String {
            self.osName = value
        }
        if let value = dict["OsNameEN"] as? String {
            self.osNameEN = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddress = value
        }
        if let value = dict["SpotPriceLimit"] as? Double {
            self.spotPriceLimit = value
        }
        if let value = dict["SpotStrategy"] as? String {
            self.spotStrategy = value
        }
        if let value = dict["SystemDisk"] as? [String: Any?] {
            var model = AddonNodeTemplate.SystemDisk()
            model.fromMap(value)
            self.systemDisk = model
        }
    }
}

public class NodeTemplate : Tea.TeaModel {
    public class DataDisks : Tea.TeaModel {
        public var category: String?

        public var deleteWithInstance: Bool?

        public var device: String?

        public var level: String?

        public var mountDir: String?

        public var size: Int32?

        public var snapshotId: String?

        public override init() {
            super.init()
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
            if self.deleteWithInstance != nil {
                map["DeleteWithInstance"] = self.deleteWithInstance!
            }
            if self.device != nil {
                map["Device"] = self.device!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.mountDir != nil {
                map["MountDir"] = self.mountDir!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.snapshotId != nil {
                map["SnapshotId"] = self.snapshotId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["DeleteWithInstance"] as? Bool {
                self.deleteWithInstance = value
            }
            if let value = dict["Device"] as? String {
                self.device = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["MountDir"] as? String {
                self.mountDir = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
            if let value = dict["SnapshotId"] as? String {
                self.snapshotId = value
            }
        }
    }
    public class SystemDisk : Tea.TeaModel {
        public var category: String?

        public var level: String?

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
            if self.category != nil {
                map["Category"] = self.category!
            }
            if self.level != nil {
                map["Level"] = self.level!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Category"] as? String {
                self.category = value
            }
            if let value = dict["Level"] as? String {
                self.level = value
            }
            if let value = dict["Size"] as? Int32 {
                self.size = value
            }
        }
    }
    public var autoRenew: Bool?

    public var autoRenewPeriod: Int32?

    public var dataDisks: [NodeTemplate.DataDisks]?

    public var duration: Int32?

    public var enableHT: Bool?

    public var imageId: String?

    public var instanceChargeType: String?

    public var instanceType: String?

    public var period: Int32?

    public var periodUnit: String?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var systemDisk: NodeTemplate.SystemDisk?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.systemDisk?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.enableHT != nil {
            map["EnableHT"] = self.enableHT!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.systemDisk != nil {
            map["SystemDisk"] = self.systemDisk?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenew"] as? Bool {
            self.autoRenew = value
        }
        if let value = dict["AutoRenewPeriod"] as? Int32 {
            self.autoRenewPeriod = value
        }
        if let value = dict["DataDisks"] as? [Any?] {
            var tmp : [NodeTemplate.DataDisks] = []
            for v in value {
                if v != nil {
                    var model = NodeTemplate.DataDisks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.dataDisks = tmp
        }
        if let value = dict["Duration"] as? Int32 {
            self.duration = value
        }
        if let value = dict["EnableHT"] as? Bool {
            self.enableHT = value
        }
        if let value = dict["ImageId"] as? String {
            self.imageId = value
        }
        if let value = dict["InstanceChargeType"] as? String {
            self.instanceChargeType = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Period"] as? Int32 {
            self.period = value
        }
        if let value = dict["PeriodUnit"] as? String {
            self.periodUnit = value
        }
        if let value = dict["SpotPriceLimit"] as? Double {
            self.spotPriceLimit = value
        }
        if let value = dict["SpotStrategy"] as? String {
            self.spotStrategy = value
        }
        if let value = dict["SystemDisk"] as? [String: Any?] {
            var model = NodeTemplate.SystemDisk()
            model.fromMap(value)
            self.systemDisk = model
        }
    }
}

public class QueueTemplate : Tea.TeaModel {
    public var allocationStrategy: String?

    public var computeNodes: [NodeTemplate]?

    public var enableScaleIn: Bool?

    public var enableScaleOut: Bool?

    public var hostnamePrefix: String?

    public var hostnameSuffix: String?

    public var initialCount: Int32?

    public var interConnect: String?

    public var keepAliveNodes: [String]?

    public var maxCount: Int32?

    public var maxCountPerCycle: Int64?

    public var minCount: Int32?

    public var queueName: String?

    public var ramRole: String?

    public var reservedNodePoolId: String?

    public var vSwitchIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocationStrategy != nil {
            map["AllocationStrategy"] = self.allocationStrategy!
        }
        if self.computeNodes != nil {
            var tmp : [Any] = []
            for k in self.computeNodes! {
                tmp.append(k.toMap())
            }
            map["ComputeNodes"] = tmp
        }
        if self.enableScaleIn != nil {
            map["EnableScaleIn"] = self.enableScaleIn!
        }
        if self.enableScaleOut != nil {
            map["EnableScaleOut"] = self.enableScaleOut!
        }
        if self.hostnamePrefix != nil {
            map["HostnamePrefix"] = self.hostnamePrefix!
        }
        if self.hostnameSuffix != nil {
            map["HostnameSuffix"] = self.hostnameSuffix!
        }
        if self.initialCount != nil {
            map["InitialCount"] = self.initialCount!
        }
        if self.interConnect != nil {
            map["InterConnect"] = self.interConnect!
        }
        if self.keepAliveNodes != nil {
            map["KeepAliveNodes"] = self.keepAliveNodes!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.maxCountPerCycle != nil {
            map["MaxCountPerCycle"] = self.maxCountPerCycle!
        }
        if self.minCount != nil {
            map["MinCount"] = self.minCount!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.reservedNodePoolId != nil {
            map["ReservedNodePoolId"] = self.reservedNodePoolId!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllocationStrategy"] as? String {
            self.allocationStrategy = value
        }
        if let value = dict["ComputeNodes"] as? [Any?] {
            var tmp : [NodeTemplate] = []
            for v in value {
                if v != nil {
                    var model = NodeTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.computeNodes = tmp
        }
        if let value = dict["EnableScaleIn"] as? Bool {
            self.enableScaleIn = value
        }
        if let value = dict["EnableScaleOut"] as? Bool {
            self.enableScaleOut = value
        }
        if let value = dict["HostnamePrefix"] as? String {
            self.hostnamePrefix = value
        }
        if let value = dict["HostnameSuffix"] as? String {
            self.hostnameSuffix = value
        }
        if let value = dict["InitialCount"] as? Int32 {
            self.initialCount = value
        }
        if let value = dict["InterConnect"] as? String {
            self.interConnect = value
        }
        if let value = dict["KeepAliveNodes"] as? [String] {
            self.keepAliveNodes = value
        }
        if let value = dict["MaxCount"] as? Int32 {
            self.maxCount = value
        }
        if let value = dict["MaxCountPerCycle"] as? Int64 {
            self.maxCountPerCycle = value
        }
        if let value = dict["MinCount"] as? Int32 {
            self.minCount = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["ReservedNodePoolId"] as? String {
            self.reservedNodePoolId = value
        }
        if let value = dict["VSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
    }
}

public class SharedStorageTemplate : Tea.TeaModel {
    public var fileSystemId: String?

    public var mountDirectory: String?

    public var mountOptions: String?

    public var mountTargetDomain: String?

    public var NASDirectory: String?

    public var protocolType: String?

    public override init() {
        super.init()
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
        if self.mountDirectory != nil {
            map["MountDirectory"] = self.mountDirectory!
        }
        if self.mountOptions != nil {
            map["MountOptions"] = self.mountOptions!
        }
        if self.mountTargetDomain != nil {
            map["MountTargetDomain"] = self.mountTargetDomain!
        }
        if self.NASDirectory != nil {
            map["NASDirectory"] = self.NASDirectory!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["MountDirectory"] as? String {
            self.mountDirectory = value
        }
        if let value = dict["MountOptions"] as? String {
            self.mountOptions = value
        }
        if let value = dict["MountTargetDomain"] as? String {
            self.mountTargetDomain = value
        }
        if let value = dict["NASDirectory"] as? String {
            self.NASDirectory = value
        }
        if let value = dict["ProtocolType"] as? String {
            self.protocolType = value
        }
    }
}

public class AttachNodesRequest : Tea.TeaModel {
    public class ComputeNode : Tea.TeaModel {
        public var imageId: String?

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
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceIds != nil {
                map["InstanceIds"] = self.instanceIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InstanceIds"] as? [String] {
                self.instanceIds = value
            }
        }
    }
    public var clusterId: String?

    public var computeNode: AttachNodesRequest.ComputeNode?

    public var queueName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.computeNode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.computeNode != nil {
            map["ComputeNode"] = self.computeNode?.toMap()
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ComputeNode"] as? [String: Any?] {
            var model = AttachNodesRequest.ComputeNode()
            model.fromMap(value)
            self.computeNode = model
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
    }
}

public class AttachNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeNodeShrink: String?

    public var queueName: String?

    public override init() {
        super.init()
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
        if self.computeNodeShrink != nil {
            map["ComputeNode"] = self.computeNodeShrink!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ComputeNode"] as? String {
            self.computeNodeShrink = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
    }
}

public class AttachNodesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class AttachNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class AttachSharedStoragesRequest : Tea.TeaModel {
    public class SharedStorages : Tea.TeaModel {
        public var fileSystemId: String?

        public var location: String?

        public var mountDirectory: String?

        public var mountOptions: String?

        public var mountTarget: String?

        public var protocolType: String?

        public var storageDirectory: String?

        public var volumeType: String?

        public override init() {
            super.init()
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
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.mountDirectory != nil {
                map["MountDirectory"] = self.mountDirectory!
            }
            if self.mountOptions != nil {
                map["MountOptions"] = self.mountOptions!
            }
            if self.mountTarget != nil {
                map["MountTarget"] = self.mountTarget!
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.storageDirectory != nil {
                map["StorageDirectory"] = self.storageDirectory!
            }
            if self.volumeType != nil {
                map["VolumeType"] = self.volumeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["Location"] as? String {
                self.location = value
            }
            if let value = dict["MountDirectory"] as? String {
                self.mountDirectory = value
            }
            if let value = dict["MountOptions"] as? String {
                self.mountOptions = value
            }
            if let value = dict["MountTarget"] as? String {
                self.mountTarget = value
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["StorageDirectory"] as? String {
                self.storageDirectory = value
            }
            if let value = dict["VolumeType"] as? String {
                self.volumeType = value
            }
        }
    }
    public var clusterId: String?

    public var sharedStorages: [AttachSharedStoragesRequest.SharedStorages]?

    public override init() {
        super.init()
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
        if self.sharedStorages != nil {
            var tmp : [Any] = []
            for k in self.sharedStorages! {
                tmp.append(k.toMap())
            }
            map["SharedStorages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SharedStorages"] as? [Any?] {
            var tmp : [AttachSharedStoragesRequest.SharedStorages] = []
            for v in value {
                if v != nil {
                    var model = AttachSharedStoragesRequest.SharedStorages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedStorages = tmp
        }
    }
}

public class AttachSharedStoragesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var sharedStoragesShrink: String?

    public override init() {
        super.init()
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
        if self.sharedStoragesShrink != nil {
            map["SharedStorages"] = self.sharedStoragesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SharedStorages"] as? String {
            self.sharedStoragesShrink = value
        }
    }
}

public class AttachSharedStoragesResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class AttachSharedStoragesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachSharedStoragesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AttachSharedStoragesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class AdditionalPackages : Tea.TeaModel {
        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class Addons : Tea.TeaModel {
        public var name: String?

        public var resourcesSpec: String?

        public var servicesSpec: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.resourcesSpec != nil {
                map["ResourcesSpec"] = self.resourcesSpec!
            }
            if self.servicesSpec != nil {
                map["ServicesSpec"] = self.servicesSpec!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourcesSpec"] as? String {
                self.resourcesSpec = value
            }
            if let value = dict["ServicesSpec"] as? String {
                self.servicesSpec = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class ClusterCredentials : Tea.TeaModel {
        public var keyPairName: String?

        public var password: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["KeyPairName"] as? String {
                self.keyPairName = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
        }
    }
    public class ClusterCustomConfiguration : Tea.TeaModel {
        public var args: String?

        public var script: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Args"] as? String {
                self.args = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
        }
    }
    public class Manager : Tea.TeaModel {
        public class DNS : Tea.TeaModel {
            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class DirectoryService : Tea.TeaModel {
            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Scheduler : Tea.TeaModel {
            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var DNS: CreateClusterRequest.Manager.DNS?

        public var directoryService: CreateClusterRequest.Manager.DirectoryService?

        public var managerNode: NodeTemplate?

        public var scheduler: CreateClusterRequest.Manager.Scheduler?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.DNS?.validate()
            try self.directoryService?.validate()
            try self.managerNode?.validate()
            try self.scheduler?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DNS != nil {
                map["DNS"] = self.DNS?.toMap()
            }
            if self.directoryService != nil {
                map["DirectoryService"] = self.directoryService?.toMap()
            }
            if self.managerNode != nil {
                map["ManagerNode"] = self.managerNode?.toMap()
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DNS"] as? [String: Any?] {
                var model = CreateClusterRequest.Manager.DNS()
                model.fromMap(value)
                self.DNS = model
            }
            if let value = dict["DirectoryService"] as? [String: Any?] {
                var model = CreateClusterRequest.Manager.DirectoryService()
                model.fromMap(value)
                self.directoryService = model
            }
            if let value = dict["ManagerNode"] as? [String: Any?] {
                var model = NodeTemplate()
                model.fromMap(value)
                self.managerNode = model
            }
            if let value = dict["Scheduler"] as? [String: Any?] {
                var model = CreateClusterRequest.Manager.Scheduler()
                model.fromMap(value)
                self.scheduler = model
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
    public var additionalPackages: [CreateClusterRequest.AdditionalPackages]?

    public var addons: [CreateClusterRequest.Addons]?

    public var clientVersion: String?

    public var clusterCategory: String?

    public var clusterCredentials: CreateClusterRequest.ClusterCredentials?

    public var clusterCustomConfiguration: CreateClusterRequest.ClusterCustomConfiguration?

    public var clusterDescription: String?

    public var clusterMode: String?

    public var clusterName: String?

    public var clusterVSwitchId: String?

    public var clusterVpcId: String?

    public var deletionProtection: Bool?

    public var isEnterpriseSecurityGroup: Bool?

    public var manager: CreateClusterRequest.Manager?

    public var maxCoreCount: Int32?

    public var maxCount: Int32?

    public var queues: [QueueTemplate]?

    public var resourceGroupId: String?

    public var securityGroupId: String?

    public var sharedStorages: [SharedStorageTemplate]?

    public var tags: [CreateClusterRequest.Tags]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterCredentials?.validate()
        try self.clusterCustomConfiguration?.validate()
        try self.manager?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackages != nil {
            var tmp : [Any] = []
            for k in self.additionalPackages! {
                tmp.append(k.toMap())
            }
            map["AdditionalPackages"] = tmp
        }
        if self.addons != nil {
            var tmp : [Any] = []
            for k in self.addons! {
                tmp.append(k.toMap())
            }
            map["Addons"] = tmp
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterCategory != nil {
            map["ClusterCategory"] = self.clusterCategory!
        }
        if self.clusterCredentials != nil {
            map["ClusterCredentials"] = self.clusterCredentials?.toMap()
        }
        if self.clusterCustomConfiguration != nil {
            map["ClusterCustomConfiguration"] = self.clusterCustomConfiguration?.toMap()
        }
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterVSwitchId != nil {
            map["ClusterVSwitchId"] = self.clusterVSwitchId!
        }
        if self.clusterVpcId != nil {
            map["ClusterVpcId"] = self.clusterVpcId!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.isEnterpriseSecurityGroup != nil {
            map["IsEnterpriseSecurityGroup"] = self.isEnterpriseSecurityGroup!
        }
        if self.manager != nil {
            map["Manager"] = self.manager?.toMap()
        }
        if self.maxCoreCount != nil {
            map["MaxCoreCount"] = self.maxCoreCount!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.queues != nil {
            var tmp : [Any] = []
            for k in self.queues! {
                tmp.append(k.toMap())
            }
            map["Queues"] = tmp
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.sharedStorages != nil {
            var tmp : [Any] = []
            for k in self.sharedStorages! {
                tmp.append(k.toMap())
            }
            map["SharedStorages"] = tmp
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["Tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? [Any?] {
            var tmp : [CreateClusterRequest.AdditionalPackages] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.AdditionalPackages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalPackages = tmp
        }
        if let value = dict["Addons"] as? [Any?] {
            var tmp : [CreateClusterRequest.Addons] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.Addons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addons = tmp
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ClusterCategory"] as? String {
            self.clusterCategory = value
        }
        if let value = dict["ClusterCredentials"] as? [String: Any?] {
            var model = CreateClusterRequest.ClusterCredentials()
            model.fromMap(value)
            self.clusterCredentials = model
        }
        if let value = dict["ClusterCustomConfiguration"] as? [String: Any?] {
            var model = CreateClusterRequest.ClusterCustomConfiguration()
            model.fromMap(value)
            self.clusterCustomConfiguration = model
        }
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterMode"] as? String {
            self.clusterMode = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterVSwitchId"] as? String {
            self.clusterVSwitchId = value
        }
        if let value = dict["ClusterVpcId"] as? String {
            self.clusterVpcId = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["IsEnterpriseSecurityGroup"] as? Bool {
            self.isEnterpriseSecurityGroup = value
        }
        if let value = dict["Manager"] as? [String: Any?] {
            var model = CreateClusterRequest.Manager()
            model.fromMap(value)
            self.manager = model
        }
        if let value = dict["MaxCoreCount"] as? Int32 {
            self.maxCoreCount = value
        }
        if let value = dict["MaxCount"] as? Int32 {
            self.maxCount = value
        }
        if let value = dict["Queues"] as? [Any?] {
            var tmp : [QueueTemplate] = []
            for v in value {
                if v != nil {
                    var model = QueueTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queues = tmp
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["SharedStorages"] as? [Any?] {
            var tmp : [SharedStorageTemplate] = []
            for v in value {
                if v != nil {
                    var model = SharedStorageTemplate()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedStorages = tmp
        }
        if let value = dict["Tags"] as? [Any?] {
            var tmp : [CreateClusterRequest.Tags] = []
            for v in value {
                if v != nil {
                    var model = CreateClusterRequest.Tags()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tags = tmp
        }
    }
}

public class CreateClusterShrinkRequest : Tea.TeaModel {
    public var additionalPackagesShrink: String?

    public var addonsShrink: String?

    public var clientVersion: String?

    public var clusterCategory: String?

    public var clusterCredentialsShrink: String?

    public var clusterCustomConfigurationShrink: String?

    public var clusterDescription: String?

    public var clusterMode: String?

    public var clusterName: String?

    public var clusterVSwitchId: String?

    public var clusterVpcId: String?

    public var deletionProtection: Bool?

    public var isEnterpriseSecurityGroup: Bool?

    public var managerShrink: String?

    public var maxCoreCount: Int32?

    public var maxCount: Int32?

    public var queuesShrink: String?

    public var resourceGroupId: String?

    public var securityGroupId: String?

    public var sharedStoragesShrink: String?

    public var tagsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackagesShrink != nil {
            map["AdditionalPackages"] = self.additionalPackagesShrink!
        }
        if self.addonsShrink != nil {
            map["Addons"] = self.addonsShrink!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterCategory != nil {
            map["ClusterCategory"] = self.clusterCategory!
        }
        if self.clusterCredentialsShrink != nil {
            map["ClusterCredentials"] = self.clusterCredentialsShrink!
        }
        if self.clusterCustomConfigurationShrink != nil {
            map["ClusterCustomConfiguration"] = self.clusterCustomConfigurationShrink!
        }
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterVSwitchId != nil {
            map["ClusterVSwitchId"] = self.clusterVSwitchId!
        }
        if self.clusterVpcId != nil {
            map["ClusterVpcId"] = self.clusterVpcId!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.isEnterpriseSecurityGroup != nil {
            map["IsEnterpriseSecurityGroup"] = self.isEnterpriseSecurityGroup!
        }
        if self.managerShrink != nil {
            map["Manager"] = self.managerShrink!
        }
        if self.maxCoreCount != nil {
            map["MaxCoreCount"] = self.maxCoreCount!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.queuesShrink != nil {
            map["Queues"] = self.queuesShrink!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.sharedStoragesShrink != nil {
            map["SharedStorages"] = self.sharedStoragesShrink!
        }
        if self.tagsShrink != nil {
            map["Tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? String {
            self.additionalPackagesShrink = value
        }
        if let value = dict["Addons"] as? String {
            self.addonsShrink = value
        }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ClusterCategory"] as? String {
            self.clusterCategory = value
        }
        if let value = dict["ClusterCredentials"] as? String {
            self.clusterCredentialsShrink = value
        }
        if let value = dict["ClusterCustomConfiguration"] as? String {
            self.clusterCustomConfigurationShrink = value
        }
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterMode"] as? String {
            self.clusterMode = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterVSwitchId"] as? String {
            self.clusterVSwitchId = value
        }
        if let value = dict["ClusterVpcId"] as? String {
            self.clusterVpcId = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["IsEnterpriseSecurityGroup"] as? Bool {
            self.isEnterpriseSecurityGroup = value
        }
        if let value = dict["Manager"] as? String {
            self.managerShrink = value
        }
        if let value = dict["MaxCoreCount"] as? Int32 {
            self.maxCoreCount = value
        }
        if let value = dict["MaxCount"] as? Int32 {
            self.maxCount = value
        }
        if let value = dict["Queues"] as? String {
            self.queuesShrink = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["SharedStorages"] as? String {
            self.sharedStoragesShrink = value
        }
        if let value = dict["Tags"] as? String {
            self.tagsShrink = value
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = CreateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class JobSpec : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public var cores: Int32?

            public var gpus: Int32?

            public var memory: String?

            public var nodes: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cores != nil {
                    map["Cores"] = self.cores!
                }
                if self.gpus != nil {
                    map["Gpus"] = self.gpus!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cores"] as? Int32 {
                    self.cores = value
                }
                if let value = dict["Gpus"] as? Int32 {
                    self.gpus = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
                if let value = dict["Nodes"] as? Int32 {
                    self.nodes = value
                }
            }
        }
        public var arrayRequest: String?

        public var commandLine: String?

        public var jobQueue: String?

        public var postCmdLine: String?

        public var priority: String?

        public var resources: CreateJobRequest.JobSpec.Resources?

        public var runasUser: String?

        public var runasUserPassword: String?

        public var stderrPath: String?

        public var stdoutPath: String?

        public var variables: String?

        public var wallTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrayRequest != nil {
                map["ArrayRequest"] = self.arrayRequest!
            }
            if self.commandLine != nil {
                map["CommandLine"] = self.commandLine!
            }
            if self.jobQueue != nil {
                map["JobQueue"] = self.jobQueue!
            }
            if self.postCmdLine != nil {
                map["PostCmdLine"] = self.postCmdLine!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resources != nil {
                map["Resources"] = self.resources?.toMap()
            }
            if self.runasUser != nil {
                map["RunasUser"] = self.runasUser!
            }
            if self.runasUserPassword != nil {
                map["RunasUserPassword"] = self.runasUserPassword!
            }
            if self.stderrPath != nil {
                map["StderrPath"] = self.stderrPath!
            }
            if self.stdoutPath != nil {
                map["StdoutPath"] = self.stdoutPath!
            }
            if self.variables != nil {
                map["Variables"] = self.variables!
            }
            if self.wallTime != nil {
                map["WallTime"] = self.wallTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArrayRequest"] as? String {
                self.arrayRequest = value
            }
            if let value = dict["CommandLine"] as? String {
                self.commandLine = value
            }
            if let value = dict["JobQueue"] as? String {
                self.jobQueue = value
            }
            if let value = dict["PostCmdLine"] as? String {
                self.postCmdLine = value
            }
            if let value = dict["Priority"] as? String {
                self.priority = value
            }
            if let value = dict["Resources"] as? [String: Any?] {
                var model = CreateJobRequest.JobSpec.Resources()
                model.fromMap(value)
                self.resources = model
            }
            if let value = dict["RunasUser"] as? String {
                self.runasUser = value
            }
            if let value = dict["RunasUserPassword"] as? String {
                self.runasUserPassword = value
            }
            if let value = dict["StderrPath"] as? String {
                self.stderrPath = value
            }
            if let value = dict["StdoutPath"] as? String {
                self.stdoutPath = value
            }
            if let value = dict["Variables"] as? String {
                self.variables = value
            }
            if let value = dict["WallTime"] as? String {
                self.wallTime = value
            }
        }
    }
    public var clusterId: String?

    public var jobName: String?

    public var jobSpec: CreateJobRequest.JobSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobSpec != nil {
            map["JobSpec"] = self.jobSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["JobSpec"] as? [String: Any?] {
            var model = CreateJobRequest.JobSpec()
            model.fromMap(value)
            self.jobSpec = model
        }
    }
}

public class CreateJobShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobName: String?

    public var jobSpecShrink: String?

    public override init() {
        super.init()
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
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.jobSpecShrink != nil {
            map["JobSpec"] = self.jobSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobName"] as? String {
            self.jobName = value
        }
        if let value = dict["JobSpec"] as? String {
            self.jobSpecShrink = value
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
    public var jobId: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
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
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class CreateJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeNode: NodeTemplate?

    public var count: Int32?

    public var deploymentSetId: String?

    public var HPCInterConnect: String?

    public var hostnamePrefix: String?

    public var hostnameSuffix: String?

    public var hostnames: [String]?

    public var keepAlive: String?

    public var queueName: String?

    public var ramRole: String?

    public var reservedNodePoolId: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.computeNode?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.computeNode != nil {
            map["ComputeNode"] = self.computeNode?.toMap()
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.deploymentSetId != nil {
            map["DeploymentSetId"] = self.deploymentSetId!
        }
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.hostnamePrefix != nil {
            map["HostnamePrefix"] = self.hostnamePrefix!
        }
        if self.hostnameSuffix != nil {
            map["HostnameSuffix"] = self.hostnameSuffix!
        }
        if self.hostnames != nil {
            map["Hostnames"] = self.hostnames!
        }
        if self.keepAlive != nil {
            map["KeepAlive"] = self.keepAlive!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.reservedNodePoolId != nil {
            map["ReservedNodePoolId"] = self.reservedNodePoolId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ComputeNode"] as? [String: Any?] {
            var model = NodeTemplate()
            model.fromMap(value)
            self.computeNode = model
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["DeploymentSetId"] as? String {
            self.deploymentSetId = value
        }
        if let value = dict["HPCInterConnect"] as? String {
            self.HPCInterConnect = value
        }
        if let value = dict["HostnamePrefix"] as? String {
            self.hostnamePrefix = value
        }
        if let value = dict["HostnameSuffix"] as? String {
            self.hostnameSuffix = value
        }
        if let value = dict["Hostnames"] as? [String] {
            self.hostnames = value
        }
        if let value = dict["KeepAlive"] as? String {
            self.keepAlive = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["ReservedNodePoolId"] as? String {
            self.reservedNodePoolId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeNodeShrink: String?

    public var count: Int32?

    public var deploymentSetId: String?

    public var HPCInterConnect: String?

    public var hostnamePrefix: String?

    public var hostnameSuffix: String?

    public var hostnamesShrink: String?

    public var keepAlive: String?

    public var queueName: String?

    public var ramRole: String?

    public var reservedNodePoolId: String?

    public var vSwitchId: String?

    public override init() {
        super.init()
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
        if self.computeNodeShrink != nil {
            map["ComputeNode"] = self.computeNodeShrink!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.deploymentSetId != nil {
            map["DeploymentSetId"] = self.deploymentSetId!
        }
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.hostnamePrefix != nil {
            map["HostnamePrefix"] = self.hostnamePrefix!
        }
        if self.hostnameSuffix != nil {
            map["HostnameSuffix"] = self.hostnameSuffix!
        }
        if self.hostnamesShrink != nil {
            map["Hostnames"] = self.hostnamesShrink!
        }
        if self.keepAlive != nil {
            map["KeepAlive"] = self.keepAlive!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.ramRole != nil {
            map["RamRole"] = self.ramRole!
        }
        if self.reservedNodePoolId != nil {
            map["ReservedNodePoolId"] = self.reservedNodePoolId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ComputeNode"] as? String {
            self.computeNodeShrink = value
        }
        if let value = dict["Count"] as? Int32 {
            self.count = value
        }
        if let value = dict["DeploymentSetId"] as? String {
            self.deploymentSetId = value
        }
        if let value = dict["HPCInterConnect"] as? String {
            self.HPCInterConnect = value
        }
        if let value = dict["HostnamePrefix"] as? String {
            self.hostnamePrefix = value
        }
        if let value = dict["HostnameSuffix"] as? String {
            self.hostnameSuffix = value
        }
        if let value = dict["Hostnames"] as? String {
            self.hostnamesShrink = value
        }
        if let value = dict["KeepAlive"] as? String {
            self.keepAlive = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
        if let value = dict["RamRole"] as? String {
            self.ramRole = value
        }
        if let value = dict["ReservedNodePoolId"] as? String {
            self.reservedNodePoolId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
    }
}

public class CreateNodesResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class CreateNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateQueueRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queue: QueueTemplate?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.queue != nil {
            map["Queue"] = self.queue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Queue"] as? [String: Any?] {
            var model = QueueTemplate()
            model.fromMap(value)
            self.queue = model
        }
    }
}

public class CreateQueueShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueShrink: String?

    public override init() {
        super.init()
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
        if self.queueShrink != nil {
            map["Queue"] = self.queueShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Queue"] as? String {
            self.queueShrink = value
        }
    }
}

public class CreateQueueResponseBody : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var authKey: String?

        public var group: String?

        public var password: String?

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
            if self.authKey != nil {
                map["AuthKey"] = self.authKey!
            }
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AuthKey"] as? String {
                self.authKey = value
            }
            if let value = dict["Group"] as? String {
                self.group = value
            }
            if let value = dict["Password"] as? String {
                self.password = value
            }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var clusterId: String?

    public var user: [CreateUsersRequest.User]?

    public override init() {
        super.init()
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
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["User"] as? [Any?] {
            var tmp : [CreateUsersRequest.User] = []
            for v in value {
                if v != nil {
                    var model = CreateUsersRequest.User()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.user = tmp
        }
    }
}

public class CreateUsersShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var userShrink: String?

    public override init() {
        super.init()
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
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["User"] as? String {
            self.userShrink = value
        }
    }
}

public class CreateUsersResponseBody : Tea.TeaModel {
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

public class CreateUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = CreateUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = DeleteClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteNodesRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
    }
}

public class DeleteNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
    }
}

public class DeleteNodesResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var success: Bool?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
    }
}

public class DeleteNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteQueuesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueNames: [String]?

    public override init() {
        super.init()
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
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["QueueNames"] as? [String] {
            self.queueNames = value
        }
    }
}

public class DeleteQueuesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueNamesShrink: String?

    public override init() {
        super.init()
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
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
    }
}

public class DeleteQueuesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class DeleteQueuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQueuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteQueuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
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
            if self.userName != nil {
                map["UserName"] = self.userName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserName"] as? String {
                self.userName = value
            }
        }
    }
    public var clusterId: String?

    public var user: [DeleteUsersRequest.User]?

    public override init() {
        super.init()
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
        if self.user != nil {
            var tmp : [Any] = []
            for k in self.user! {
                tmp.append(k.toMap())
            }
            map["User"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["User"] as? [Any?] {
            var tmp : [DeleteUsersRequest.User] = []
            for v in value {
                if v != nil {
                    var model = DeleteUsersRequest.User()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.user = tmp
        }
    }
}

public class DeleteUsersShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var userShrink: String?

    public override init() {
        super.init()
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
        if self.userShrink != nil {
            map["User"] = self.userShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["User"] as? String {
            self.userShrink = value
        }
    }
}

public class DeleteUsersResponseBody : Tea.TeaModel {
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

public class DeleteUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeAddonTemplateRequest : Tea.TeaModel {
    public var addonName: String?

    public var addonVersion: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.addonName != nil {
            map["AddonName"] = self.addonName!
        }
        if self.addonVersion != nil {
            map["AddonVersion"] = self.addonVersion!
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
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonName"] as? String {
            self.addonName = value
        }
        if let value = dict["AddonVersion"] as? String {
            self.addonVersion = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
        if let value = dict["ZoneId"] as? String {
            self.zoneId = value
        }
    }
}

public class DescribeAddonTemplateResponseBody : Tea.TeaModel {
    public class Addon : Tea.TeaModel {
        public class ResourcesSpec : Tea.TeaModel {
            public class EipResource : Tea.TeaModel {
                public var autoCreate: Bool?

                public var bandwidth: String?

                public var eipInstanceId: String?

                public var instanceChargeType: String?

                public var internetChargeType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoCreate != nil {
                        map["AutoCreate"] = self.autoCreate!
                    }
                    if self.bandwidth != nil {
                        map["Bandwidth"] = self.bandwidth!
                    }
                    if self.eipInstanceId != nil {
                        map["EipInstanceId"] = self.eipInstanceId!
                    }
                    if self.instanceChargeType != nil {
                        map["InstanceChargeType"] = self.instanceChargeType!
                    }
                    if self.internetChargeType != nil {
                        map["InternetChargeType"] = self.internetChargeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutoCreate"] as? Bool {
                        self.autoCreate = value
                    }
                    if let value = dict["Bandwidth"] as? String {
                        self.bandwidth = value
                    }
                    if let value = dict["EipInstanceId"] as? String {
                        self.eipInstanceId = value
                    }
                    if let value = dict["InstanceChargeType"] as? String {
                        self.instanceChargeType = value
                    }
                    if let value = dict["InternetChargeType"] as? String {
                        self.internetChargeType = value
                    }
                }
            }
            public var ecsResources: [AddonNodeTemplate]?

            public var eipResource: DescribeAddonTemplateResponseBody.Addon.ResourcesSpec.EipResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.eipResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsResources != nil {
                    var tmp : [Any] = []
                    for k in self.ecsResources! {
                        tmp.append(k.toMap())
                    }
                    map["EcsResources"] = tmp
                }
                if self.eipResource != nil {
                    map["EipResource"] = self.eipResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EcsResources"] as? [Any?] {
                    var tmp : [AddonNodeTemplate] = []
                    for v in value {
                        if v != nil {
                            var model = AddonNodeTemplate()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ecsResources = tmp
                }
                if let value = dict["EipResource"] as? [String: Any?] {
                    var model = DescribeAddonTemplateResponseBody.Addon.ResourcesSpec.EipResource()
                    model.fromMap(value)
                    self.eipResource = model
                }
            }
        }
        public class ServicesSpec : Tea.TeaModel {
            public class InputParams : Tea.TeaModel {
                public var helpText: String?

                public var label: String?

                public var name: String?

                public var type: String?

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
                    if self.helpText != nil {
                        map["HelpText"] = self.helpText!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HelpText"] as? String {
                        self.helpText = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class NetworkACL : Tea.TeaModel {
                public var ipProtocol: String?

                public var port: Double?

                public var sourceCidrIp: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ipProtocol != nil {
                        map["IpProtocol"] = self.ipProtocol!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.sourceCidrIp != nil {
                        map["SourceCidrIp"] = self.sourceCidrIp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IpProtocol"] as? String {
                        self.ipProtocol = value
                    }
                    if let value = dict["Port"] as? Double {
                        self.port = value
                    }
                    if let value = dict["SourceCidrIp"] as? String {
                        self.sourceCidrIp = value
                    }
                }
            }
            public var inputParams: [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.InputParams]?

            public var networkACL: [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.NetworkACL]?

            public var serviceAccessType: String?

            public var serviceAccessUrl: String?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputParams != nil {
                    var tmp : [Any] = []
                    for k in self.inputParams! {
                        tmp.append(k.toMap())
                    }
                    map["InputParams"] = tmp
                }
                if self.networkACL != nil {
                    var tmp : [Any] = []
                    for k in self.networkACL! {
                        tmp.append(k.toMap())
                    }
                    map["NetworkACL"] = tmp
                }
                if self.serviceAccessType != nil {
                    map["ServiceAccessType"] = self.serviceAccessType!
                }
                if self.serviceAccessUrl != nil {
                    map["ServiceAccessUrl"] = self.serviceAccessUrl!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InputParams"] as? [Any?] {
                    var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.InputParams] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec.InputParams()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.inputParams = tmp
                }
                if let value = dict["NetworkACL"] as? [Any?] {
                    var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.NetworkACL] = []
                    for v in value {
                        if v != nil {
                            var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec.NetworkACL()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.networkACL = tmp
                }
                if let value = dict["ServiceAccessType"] as? String {
                    self.serviceAccessType = value
                }
                if let value = dict["ServiceAccessUrl"] as? String {
                    self.serviceAccessUrl = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
            }
        }
        public var description_: String?

        public var icon: String?

        public var label: String?

        public var lastUpdate: String?

        public var name: String?

        public var resourcesSpec: DescribeAddonTemplateResponseBody.Addon.ResourcesSpec?

        public var servicesSpec: [DescribeAddonTemplateResponseBody.Addon.ServicesSpec]?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourcesSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.lastUpdate != nil {
                map["LastUpdate"] = self.lastUpdate!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourcesSpec != nil {
                map["ResourcesSpec"] = self.resourcesSpec?.toMap()
            }
            if self.servicesSpec != nil {
                var tmp : [Any] = []
                for k in self.servicesSpec! {
                    tmp.append(k.toMap())
                }
                map["ServicesSpec"] = tmp
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Icon"] as? String {
                self.icon = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["LastUpdate"] as? String {
                self.lastUpdate = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourcesSpec"] as? [String: Any?] {
                var model = DescribeAddonTemplateResponseBody.Addon.ResourcesSpec()
                model.fromMap(value)
                self.resourcesSpec = model
            }
            if let value = dict["ServicesSpec"] as? [Any?] {
                var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec] = []
                for v in value {
                    if v != nil {
                        var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.servicesSpec = tmp
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var addon: DescribeAddonTemplateResponseBody.Addon?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        try self.addon?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addon != nil {
            map["Addon"] = self.addon?.toMap()
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
        if let value = dict["Addon"] as? [String: Any?] {
            var model = DescribeAddonTemplateResponseBody.Addon()
            model.fromMap(value)
            self.addon = model
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
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

public class DescribeAddonTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddonTemplateResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DescribeAddonTemplateResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachSharedStoragesRequest : Tea.TeaModel {
    public class SharedStorages : Tea.TeaModel {
        public var mountDirectory: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.mountDirectory != nil {
                map["MountDirectory"] = self.mountDirectory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["MountDirectory"] as? String {
                self.mountDirectory = value
            }
        }
    }
    public var clusterId: String?

    public var sharedStorages: [DetachSharedStoragesRequest.SharedStorages]?

    public override init() {
        super.init()
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
        if self.sharedStorages != nil {
            var tmp : [Any] = []
            for k in self.sharedStorages! {
                tmp.append(k.toMap())
            }
            map["SharedStorages"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SharedStorages"] as? [Any?] {
            var tmp : [DetachSharedStoragesRequest.SharedStorages] = []
            for v in value {
                if v != nil {
                    var model = DetachSharedStoragesRequest.SharedStorages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedStorages = tmp
        }
    }
}

public class DetachSharedStoragesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var sharedStoragesShrink: String?

    public override init() {
        super.init()
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
        if self.sharedStoragesShrink != nil {
            map["SharedStorages"] = self.sharedStoragesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["SharedStorages"] as? String {
            self.sharedStoragesShrink = value
        }
    }
}

public class DetachSharedStoragesResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class DetachSharedStoragesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachSharedStoragesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DetachSharedStoragesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetAddonRequest : Tea.TeaModel {
    public var addonId: String?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addonId != nil {
            map["AddonId"] = self.addonId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonId"] as? String {
            self.addonId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class GetAddonResponseBody : Tea.TeaModel {
    public class Addon : Tea.TeaModel {
        public class ResourcesSpec : Tea.TeaModel {
            public class EipResource : Tea.TeaModel {
                public var autoCreate: Bool?

                public var bandwidth: String?

                public var eipAddress: String?

                public var eipInstanceId: String?

                public var instanceChargeType: String?

                public var internetChargeType: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoCreate != nil {
                        map["AutoCreate"] = self.autoCreate!
                    }
                    if self.bandwidth != nil {
                        map["Bandwidth"] = self.bandwidth!
                    }
                    if self.eipAddress != nil {
                        map["EipAddress"] = self.eipAddress!
                    }
                    if self.eipInstanceId != nil {
                        map["EipInstanceId"] = self.eipInstanceId!
                    }
                    if self.instanceChargeType != nil {
                        map["InstanceChargeType"] = self.instanceChargeType!
                    }
                    if self.internetChargeType != nil {
                        map["InternetChargeType"] = self.internetChargeType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["AutoCreate"] as? Bool {
                        self.autoCreate = value
                    }
                    if let value = dict["Bandwidth"] as? String {
                        self.bandwidth = value
                    }
                    if let value = dict["EipAddress"] as? String {
                        self.eipAddress = value
                    }
                    if let value = dict["EipInstanceId"] as? String {
                        self.eipInstanceId = value
                    }
                    if let value = dict["InstanceChargeType"] as? String {
                        self.instanceChargeType = value
                    }
                    if let value = dict["InternetChargeType"] as? String {
                        self.internetChargeType = value
                    }
                }
            }
            public var ecsResources: [AddonNodeTemplate]?

            public var eipResource: GetAddonResponseBody.Addon.ResourcesSpec.EipResource?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.eipResource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.ecsResources != nil {
                    var tmp : [Any] = []
                    for k in self.ecsResources! {
                        tmp.append(k.toMap())
                    }
                    map["EcsResources"] = tmp
                }
                if self.eipResource != nil {
                    map["EipResource"] = self.eipResource?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["EcsResources"] as? [Any?] {
                    var tmp : [AddonNodeTemplate] = []
                    for v in value {
                        if v != nil {
                            var model = AddonNodeTemplate()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.ecsResources = tmp
                }
                if let value = dict["EipResource"] as? [String: Any?] {
                    var model = GetAddonResponseBody.Addon.ResourcesSpec.EipResource()
                    model.fromMap(value)
                    self.eipResource = model
                }
            }
        }
        public class ServicesSpec : Tea.TeaModel {
            public class InputParams : Tea.TeaModel {
                public var helpText: String?

                public var label: String?

                public var name: String?

                public var type: String?

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
                    if self.helpText != nil {
                        map["HelpText"] = self.helpText!
                    }
                    if self.label != nil {
                        map["Label"] = self.label!
                    }
                    if self.name != nil {
                        map["Name"] = self.name!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.value != nil {
                        map["Value"] = self.value!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["HelpText"] as? String {
                        self.helpText = value
                    }
                    if let value = dict["Label"] as? String {
                        self.label = value
                    }
                    if let value = dict["Name"] as? String {
                        self.name = value
                    }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Value"] as? String {
                        self.value = value
                    }
                }
            }
            public class NetworkACL : Tea.TeaModel {
                public var ipProtocol: String?

                public var port: Double?

                public var sourceCidrIp: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ipProtocol != nil {
                        map["IpProtocol"] = self.ipProtocol!
                    }
                    if self.port != nil {
                        map["Port"] = self.port!
                    }
                    if self.sourceCidrIp != nil {
                        map["SourceCidrIp"] = self.sourceCidrIp!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["IpProtocol"] as? String {
                        self.ipProtocol = value
                    }
                    if let value = dict["Port"] as? Double {
                        self.port = value
                    }
                    if let value = dict["SourceCidrIp"] as? String {
                        self.sourceCidrIp = value
                    }
                }
            }
            public var inputParams: [GetAddonResponseBody.Addon.ServicesSpec.InputParams]?

            public var networkACL: [GetAddonResponseBody.Addon.ServicesSpec.NetworkACL]?

            public var serviceAccessType: String?

            public var serviceAccessUrl: String?

            public var serviceName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.inputParams != nil {
                    var tmp : [Any] = []
                    for k in self.inputParams! {
                        tmp.append(k.toMap())
                    }
                    map["InputParams"] = tmp
                }
                if self.networkACL != nil {
                    var tmp : [Any] = []
                    for k in self.networkACL! {
                        tmp.append(k.toMap())
                    }
                    map["NetworkACL"] = tmp
                }
                if self.serviceAccessType != nil {
                    map["ServiceAccessType"] = self.serviceAccessType!
                }
                if self.serviceAccessUrl != nil {
                    map["ServiceAccessUrl"] = self.serviceAccessUrl!
                }
                if self.serviceName != nil {
                    map["ServiceName"] = self.serviceName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["InputParams"] as? [Any?] {
                    var tmp : [GetAddonResponseBody.Addon.ServicesSpec.InputParams] = []
                    for v in value {
                        if v != nil {
                            var model = GetAddonResponseBody.Addon.ServicesSpec.InputParams()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.inputParams = tmp
                }
                if let value = dict["NetworkACL"] as? [Any?] {
                    var tmp : [GetAddonResponseBody.Addon.ServicesSpec.NetworkACL] = []
                    for v in value {
                        if v != nil {
                            var model = GetAddonResponseBody.Addon.ServicesSpec.NetworkACL()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.networkACL = tmp
                }
                if let value = dict["ServiceAccessType"] as? String {
                    self.serviceAccessType = value
                }
                if let value = dict["ServiceAccessUrl"] as? String {
                    self.serviceAccessUrl = value
                }
                if let value = dict["ServiceName"] as? String {
                    self.serviceName = value
                }
            }
        }
        public var addonId: String?

        public var description_: String?

        public var icon: String?

        public var installTime: String?

        public var label: String?

        public var name: String?

        public var resourcesSpec: GetAddonResponseBody.Addon.ResourcesSpec?

        public var servicesSpec: [GetAddonResponseBody.Addon.ServicesSpec]?

        public var status: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resourcesSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addonId != nil {
                map["AddonId"] = self.addonId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.icon != nil {
                map["Icon"] = self.icon!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.resourcesSpec != nil {
                map["ResourcesSpec"] = self.resourcesSpec?.toMap()
            }
            if self.servicesSpec != nil {
                var tmp : [Any] = []
                for k in self.servicesSpec! {
                    tmp.append(k.toMap())
                }
                map["ServicesSpec"] = tmp
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddonId"] as? String {
                self.addonId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Icon"] as? String {
                self.icon = value
            }
            if let value = dict["InstallTime"] as? String {
                self.installTime = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["ResourcesSpec"] as? [String: Any?] {
                var model = GetAddonResponseBody.Addon.ResourcesSpec()
                model.fromMap(value)
                self.resourcesSpec = model
            }
            if let value = dict["ServicesSpec"] as? [Any?] {
                var tmp : [GetAddonResponseBody.Addon.ServicesSpec] = []
                for v in value {
                    if v != nil {
                        var model = GetAddonResponseBody.Addon.ServicesSpec()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.servicesSpec = tmp
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var addon: GetAddonResponseBody.Addon?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.addon?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addon != nil {
            map["Addon"] = self.addon?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addon"] as? [String: Any?] {
            var model = GetAddonResponseBody.Addon()
            model.fromMap(value)
            self.addon = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAddonResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetAddonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class GetClusterResponseBody : Tea.TeaModel {
    public class ClusterCustomConfiguration : Tea.TeaModel {
        public var args: String?

        public var script: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Args"] as? String {
                self.args = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
        }
    }
    public class Manager : Tea.TeaModel {
        public class DNS : Tea.TeaModel {
            public var status: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class DirectoryService : Tea.TeaModel {
            public var status: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class ManagerNode : Tea.TeaModel {
            public class SystemDisk : Tea.TeaModel {
                public var category: String?

                public var level: String?

                public var size: Int64?

                public override init() {
                    super.init()
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
                    if self.level != nil {
                        map["Level"] = self.level!
                    }
                    if self.size != nil {
                        map["Size"] = self.size!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Category"] as? String {
                        self.category = value
                    }
                    if let value = dict["Level"] as? String {
                        self.level = value
                    }
                    if let value = dict["Size"] as? Int64 {
                        self.size = value
                    }
                }
            }
            public var autoRenew: Bool?

            public var autoRenewPeriod: Int64?

            public var duration: Int64?

            public var enableHt: Bool?

            public var expiredTime: String?

            public var imageId: String?

            public var instanceChargeType: String?

            public var instanceId: String?

            public var instanceType: String?

            public var period: Int64?

            public var periodUnit: String?

            public var spotPriceLimit: Double?

            public var spotStrategy: String?

            public var systemDisk: GetClusterResponseBody.Manager.ManagerNode.SystemDisk?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.systemDisk?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenew != nil {
                    map["AutoRenew"] = self.autoRenew!
                }
                if self.autoRenewPeriod != nil {
                    map["AutoRenewPeriod"] = self.autoRenewPeriod!
                }
                if self.duration != nil {
                    map["Duration"] = self.duration!
                }
                if self.enableHt != nil {
                    map["EnableHt"] = self.enableHt!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.instanceChargeType != nil {
                    map["InstanceChargeType"] = self.instanceChargeType!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.period != nil {
                    map["Period"] = self.period!
                }
                if self.periodUnit != nil {
                    map["PeriodUnit"] = self.periodUnit!
                }
                if self.spotPriceLimit != nil {
                    map["SpotPriceLimit"] = self.spotPriceLimit!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.systemDisk != nil {
                    map["SystemDisk"] = self.systemDisk?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AutoRenew"] as? Bool {
                    self.autoRenew = value
                }
                if let value = dict["AutoRenewPeriod"] as? Int64 {
                    self.autoRenewPeriod = value
                }
                if let value = dict["Duration"] as? Int64 {
                    self.duration = value
                }
                if let value = dict["EnableHt"] as? Bool {
                    self.enableHt = value
                }
                if let value = dict["ExpiredTime"] as? String {
                    self.expiredTime = value
                }
                if let value = dict["ImageId"] as? String {
                    self.imageId = value
                }
                if let value = dict["InstanceChargeType"] as? String {
                    self.instanceChargeType = value
                }
                if let value = dict["InstanceId"] as? String {
                    self.instanceId = value
                }
                if let value = dict["InstanceType"] as? String {
                    self.instanceType = value
                }
                if let value = dict["Period"] as? Int64 {
                    self.period = value
                }
                if let value = dict["PeriodUnit"] as? String {
                    self.periodUnit = value
                }
                if let value = dict["SpotPriceLimit"] as? Double {
                    self.spotPriceLimit = value
                }
                if let value = dict["SpotStrategy"] as? String {
                    self.spotStrategy = value
                }
                if let value = dict["SystemDisk"] as? [String: Any?] {
                    var model = GetClusterResponseBody.Manager.ManagerNode.SystemDisk()
                    model.fromMap(value)
                    self.systemDisk = model
                }
            }
        }
        public class Scheduler : Tea.TeaModel {
            public var status: String?

            public var type: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Type"] as? String {
                    self.type = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var DNS: GetClusterResponseBody.Manager.DNS?

        public var directoryService: GetClusterResponseBody.Manager.DirectoryService?

        public var managerNode: GetClusterResponseBody.Manager.ManagerNode?

        public var scheduler: GetClusterResponseBody.Manager.Scheduler?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.DNS?.validate()
            try self.directoryService?.validate()
            try self.managerNode?.validate()
            try self.scheduler?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.DNS != nil {
                map["DNS"] = self.DNS?.toMap()
            }
            if self.directoryService != nil {
                map["DirectoryService"] = self.directoryService?.toMap()
            }
            if self.managerNode != nil {
                map["ManagerNode"] = self.managerNode?.toMap()
            }
            if self.scheduler != nil {
                map["Scheduler"] = self.scheduler?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["DNS"] as? [String: Any?] {
                var model = GetClusterResponseBody.Manager.DNS()
                model.fromMap(value)
                self.DNS = model
            }
            if let value = dict["DirectoryService"] as? [String: Any?] {
                var model = GetClusterResponseBody.Manager.DirectoryService()
                model.fromMap(value)
                self.directoryService = model
            }
            if let value = dict["ManagerNode"] as? [String: Any?] {
                var model = GetClusterResponseBody.Manager.ManagerNode()
                model.fromMap(value)
                self.managerNode = model
            }
            if let value = dict["Scheduler"] as? [String: Any?] {
                var model = GetClusterResponseBody.Manager.Scheduler()
                model.fromMap(value)
                self.scheduler = model
            }
        }
    }
    public class MonitorSpec : Tea.TeaModel {
        public var enableComputeLoadMonitor: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableComputeLoadMonitor != nil {
                map["EnableComputeLoadMonitor"] = self.enableComputeLoadMonitor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableComputeLoadMonitor"] as? Bool {
                self.enableComputeLoadMonitor = value
            }
        }
    }
    public class SchedulerSpec : Tea.TeaModel {
        public var enablePowerSaving: Bool?

        public var enableTopologyAwareness: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enablePowerSaving != nil {
                map["EnablePowerSaving"] = self.enablePowerSaving!
            }
            if self.enableTopologyAwareness != nil {
                map["EnableTopologyAwareness"] = self.enableTopologyAwareness!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnablePowerSaving"] as? Bool {
                self.enablePowerSaving = value
            }
            if let value = dict["EnableTopologyAwareness"] as? Bool {
                self.enableTopologyAwareness = value
            }
        }
    }
    public var clientVersion: String?

    public var clusterCategory: String?

    public var clusterCreateTime: String?

    public var clusterCustomConfiguration: GetClusterResponseBody.ClusterCustomConfiguration?

    public var clusterId: String?

    public var clusterMode: String?

    public var clusterModifyTime: String?

    public var clusterName: String?

    public var clusterStatus: String?

    public var clusterVSwitchId: String?

    public var clusterVpcId: String?

    public var deleteProtection: String?

    public var ehpcVersion: String?

    public var enableScaleIn: Bool?

    public var enableScaleOut: Bool?

    public var growInterval: Int32?

    public var idleInterval: Int32?

    public var manager: GetClusterResponseBody.Manager?

    public var maxCoreCount: String?

    public var maxCount: String?

    public var monitorSpec: GetClusterResponseBody.MonitorSpec?

    public var requestId: String?

    public var resourceGroupId: String?

    public var schedulerSpec: GetClusterResponseBody.SchedulerSpec?

    public var securityGroupId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterCustomConfiguration?.validate()
        try self.manager?.validate()
        try self.monitorSpec?.validate()
        try self.schedulerSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterCategory != nil {
            map["ClusterCategory"] = self.clusterCategory!
        }
        if self.clusterCreateTime != nil {
            map["ClusterCreateTime"] = self.clusterCreateTime!
        }
        if self.clusterCustomConfiguration != nil {
            map["ClusterCustomConfiguration"] = self.clusterCustomConfiguration?.toMap()
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterMode != nil {
            map["ClusterMode"] = self.clusterMode!
        }
        if self.clusterModifyTime != nil {
            map["ClusterModifyTime"] = self.clusterModifyTime!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.clusterStatus != nil {
            map["ClusterStatus"] = self.clusterStatus!
        }
        if self.clusterVSwitchId != nil {
            map["ClusterVSwitchId"] = self.clusterVSwitchId!
        }
        if self.clusterVpcId != nil {
            map["ClusterVpcId"] = self.clusterVpcId!
        }
        if self.deleteProtection != nil {
            map["DeleteProtection"] = self.deleteProtection!
        }
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        if self.enableScaleIn != nil {
            map["EnableScaleIn"] = self.enableScaleIn!
        }
        if self.enableScaleOut != nil {
            map["EnableScaleOut"] = self.enableScaleOut!
        }
        if self.growInterval != nil {
            map["GrowInterval"] = self.growInterval!
        }
        if self.idleInterval != nil {
            map["IdleInterval"] = self.idleInterval!
        }
        if self.manager != nil {
            map["Manager"] = self.manager?.toMap()
        }
        if self.maxCoreCount != nil {
            map["MaxCoreCount"] = self.maxCoreCount!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.monitorSpec != nil {
            map["MonitorSpec"] = self.monitorSpec?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.schedulerSpec != nil {
            map["SchedulerSpec"] = self.schedulerSpec?.toMap()
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ClusterCategory"] as? String {
            self.clusterCategory = value
        }
        if let value = dict["ClusterCreateTime"] as? String {
            self.clusterCreateTime = value
        }
        if let value = dict["ClusterCustomConfiguration"] as? [String: Any?] {
            var model = GetClusterResponseBody.ClusterCustomConfiguration()
            model.fromMap(value)
            self.clusterCustomConfiguration = model
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterMode"] as? String {
            self.clusterMode = value
        }
        if let value = dict["ClusterModifyTime"] as? String {
            self.clusterModifyTime = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["ClusterStatus"] as? String {
            self.clusterStatus = value
        }
        if let value = dict["ClusterVSwitchId"] as? String {
            self.clusterVSwitchId = value
        }
        if let value = dict["ClusterVpcId"] as? String {
            self.clusterVpcId = value
        }
        if let value = dict["DeleteProtection"] as? String {
            self.deleteProtection = value
        }
        if let value = dict["EhpcVersion"] as? String {
            self.ehpcVersion = value
        }
        if let value = dict["EnableScaleIn"] as? Bool {
            self.enableScaleIn = value
        }
        if let value = dict["EnableScaleOut"] as? Bool {
            self.enableScaleOut = value
        }
        if let value = dict["GrowInterval"] as? Int32 {
            self.growInterval = value
        }
        if let value = dict["IdleInterval"] as? Int32 {
            self.idleInterval = value
        }
        if let value = dict["Manager"] as? [String: Any?] {
            var model = GetClusterResponseBody.Manager()
            model.fromMap(value)
            self.manager = model
        }
        if let value = dict["MaxCoreCount"] as? String {
            self.maxCoreCount = value
        }
        if let value = dict["MaxCount"] as? String {
            self.maxCount = value
        }
        if let value = dict["MonitorSpec"] as? [String: Any?] {
            var model = GetClusterResponseBody.MonitorSpec()
            model.fromMap(value)
            self.monitorSpec = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceGroupId"] as? String {
            self.resourceGroupId = value
        }
        if let value = dict["SchedulerSpec"] as? [String: Any?] {
            var model = GetClusterResponseBody.SchedulerSpec()
            model.fromMap(value)
            self.schedulerSpec = model
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
    }
}

public class GetClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetCommonLogDetailRequest : Tea.TeaModel {
    public var from: Int64?

    public var hiddenProcess: Bool?

    public var logRequestId: String?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.hiddenProcess != nil {
            map["HiddenProcess"] = self.hiddenProcess!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["HiddenProcess"] as? Bool {
            self.hiddenProcess = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
    }
}

public class GetCommonLogDetailResponseBody : Tea.TeaModel {
    public class LogDetail : Tea.TeaModel {
        public class Stages : Tea.TeaModel {
            public var logLevel: String?

            public var message: String?

            public var method: String?

            public var requestId: String?

            public var status: String?

            public var target: String?

            public var time: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.logLevel != nil {
                    map["LogLevel"] = self.logLevel!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.method != nil {
                    map["Method"] = self.method!
                }
                if self.requestId != nil {
                    map["RequestId"] = self.requestId!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.target != nil {
                    map["Target"] = self.target!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["LogLevel"] as? String {
                    self.logLevel = value
                }
                if let value = dict["Message"] as? String {
                    self.message = value
                }
                if let value = dict["Method"] as? String {
                    self.method = value
                }
                if let value = dict["RequestId"] as? String {
                    self.requestId = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Target"] as? String {
                    self.target = value
                }
                if let value = dict["Time"] as? String {
                    self.time = value
                }
            }
        }
        public var stageName: String?

        public var stages: [GetCommonLogDetailResponseBody.LogDetail.Stages]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.stageName != nil {
                map["StageName"] = self.stageName!
            }
            if self.stages != nil {
                var tmp : [Any] = []
                for k in self.stages! {
                    tmp.append(k.toMap())
                }
                map["Stages"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["StageName"] as? String {
                self.stageName = value
            }
            if let value = dict["Stages"] as? [Any?] {
                var tmp : [GetCommonLogDetailResponseBody.LogDetail.Stages] = []
                for v in value {
                    if v != nil {
                        var model = GetCommonLogDetailResponseBody.LogDetail.Stages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.stages = tmp
            }
        }
    }
    public var action: String?

    public var clusterId: String?

    public var logDetail: [GetCommonLogDetailResponseBody.LogDetail]?

    public var logType: String?

    public var operatorUid: String?

    public var requestId: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.action != nil {
            map["Action"] = self.action!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.logDetail != nil {
            var tmp : [Any] = []
            for k in self.logDetail! {
                tmp.append(k.toMap())
            }
            map["LogDetail"] = tmp
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.operatorUid != nil {
            map["OperatorUid"] = self.operatorUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["LogDetail"] as? [Any?] {
            var tmp : [GetCommonLogDetailResponseBody.LogDetail] = []
            for v in value {
                if v != nil {
                    var model = GetCommonLogDetailResponseBody.LogDetail()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logDetail = tmp
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["OperatorUid"] as? String {
            self.operatorUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class GetCommonLogDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommonLogDetailResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetCommonLogDetailResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobId: String?

    public override init() {
        super.init()
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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class JobInfo : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public var cores: String?

            public var gpus: String?

            public var memory: String?

            public var nodes: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cores != nil {
                    map["Cores"] = self.cores!
                }
                if self.gpus != nil {
                    map["Gpus"] = self.gpus!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cores"] as? String {
                    self.cores = value
                }
                if let value = dict["Gpus"] as? String {
                    self.gpus = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
                if let value = dict["Nodes"] as? String {
                    self.nodes = value
                }
            }
        }
        public class ResourcesUsed : Tea.TeaModel {
            public var cores: String?

            public var memory: String?

            public var nodes: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cores != nil {
                    map["Cores"] = self.cores!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cores"] as? String {
                    self.cores = value
                }
                if let value = dict["Memory"] as? String {
                    self.memory = value
                }
                if let value = dict["Nodes"] as? String {
                    self.nodes = value
                }
            }
        }
        public class Variables : Tea.TeaModel {
            public var name: String?

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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.value != nil {
                    map["Value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Value"] as? String {
                    self.value = value
                }
            }
        }
        public var arrayJobId: String?

        public var arrayJobSubId: String?

        public var arrayRequest: String?

        public var commandLine: String?

        public var createTime: String?

        public var errorLog: String?

        public var extraInfo: String?

        public var jobId: String?

        public var jobName: String?

        public var jobQueue: String?

        public var lastModifyTime: String?

        public var nodeList: String?

        public var outputLog: String?

        public var priority: String?

        public var resources: GetJobResponseBody.JobInfo.Resources?

        public var resourcesUsed: GetJobResponseBody.JobInfo.ResourcesUsed?

        public var runasUser: String?

        public var startTime: String?

        public var state: String?

        public var variables: [GetJobResponseBody.JobInfo.Variables]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.resources?.validate()
            try self.resourcesUsed?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.arrayJobId != nil {
                map["ArrayJobId"] = self.arrayJobId!
            }
            if self.arrayJobSubId != nil {
                map["ArrayJobSubId"] = self.arrayJobSubId!
            }
            if self.arrayRequest != nil {
                map["ArrayRequest"] = self.arrayRequest!
            }
            if self.commandLine != nil {
                map["CommandLine"] = self.commandLine!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.errorLog != nil {
                map["ErrorLog"] = self.errorLog!
            }
            if self.extraInfo != nil {
                map["ExtraInfo"] = self.extraInfo!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobQueue != nil {
                map["JobQueue"] = self.jobQueue!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.nodeList != nil {
                map["NodeList"] = self.nodeList!
            }
            if self.outputLog != nil {
                map["OutputLog"] = self.outputLog!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.resources != nil {
                map["Resources"] = self.resources?.toMap()
            }
            if self.resourcesUsed != nil {
                map["ResourcesUsed"] = self.resourcesUsed?.toMap()
            }
            if self.runasUser != nil {
                map["RunasUser"] = self.runasUser!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.variables != nil {
                var tmp : [Any] = []
                for k in self.variables! {
                    tmp.append(k.toMap())
                }
                map["Variables"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ArrayJobId"] as? String {
                self.arrayJobId = value
            }
            if let value = dict["ArrayJobSubId"] as? String {
                self.arrayJobSubId = value
            }
            if let value = dict["ArrayRequest"] as? String {
                self.arrayRequest = value
            }
            if let value = dict["CommandLine"] as? String {
                self.commandLine = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ErrorLog"] as? String {
                self.errorLog = value
            }
            if let value = dict["ExtraInfo"] as? String {
                self.extraInfo = value
            }
            if let value = dict["JobId"] as? String {
                self.jobId = value
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["JobQueue"] as? String {
                self.jobQueue = value
            }
            if let value = dict["LastModifyTime"] as? String {
                self.lastModifyTime = value
            }
            if let value = dict["NodeList"] as? String {
                self.nodeList = value
            }
            if let value = dict["OutputLog"] as? String {
                self.outputLog = value
            }
            if let value = dict["Priority"] as? String {
                self.priority = value
            }
            if let value = dict["Resources"] as? [String: Any?] {
                var model = GetJobResponseBody.JobInfo.Resources()
                model.fromMap(value)
                self.resources = model
            }
            if let value = dict["ResourcesUsed"] as? [String: Any?] {
                var model = GetJobResponseBody.JobInfo.ResourcesUsed()
                model.fromMap(value)
                self.resourcesUsed = model
            }
            if let value = dict["RunasUser"] as? String {
                self.runasUser = value
            }
            if let value = dict["StartTime"] as? String {
                self.startTime = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["Variables"] as? [Any?] {
                var tmp : [GetJobResponseBody.JobInfo.Variables] = []
                for v in value {
                    if v != nil {
                        var model = GetJobResponseBody.JobInfo.Variables()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.variables = tmp
            }
        }
    }
    public var jobInfo: GetJobResponseBody.JobInfo?

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
        try self.jobInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobInfo != nil {
            map["JobInfo"] = self.jobInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["JobInfo"] as? [String: Any?] {
            var model = GetJobResponseBody.JobInfo()
            model.fromMap(value)
            self.jobInfo = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetJobLogRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobId: String?

    public var logType: String?

    public var offset: String?

    public var size: String?

    public override init() {
        super.init()
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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.offset != nil {
            map["Offset"] = self.offset!
        }
        if self.size != nil {
            map["Size"] = self.size!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobId"] as? String {
            self.jobId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["Offset"] as? String {
            self.offset = value
        }
        if let value = dict["Size"] as? String {
            self.size = value
        }
    }
}

public class GetJobLogResponseBody : Tea.TeaModel {
    public var jobId: String?

    public var requestId: String?

    public var stderrLog: String?

    public var stderrLogSize: String?

    public var stdoutLog: String?

    public var stdoutLogSize: String?

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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.stderrLog != nil {
            map["StderrLog"] = self.stderrLog!
        }
        if self.stderrLogSize != nil {
            map["StderrLogSize"] = self.stderrLogSize!
        }
        if self.stdoutLog != nil {
            map["StdoutLog"] = self.stdoutLog!
        }
        if self.stdoutLogSize != nil {
            map["StdoutLogSize"] = self.stdoutLogSize!
        }
        if self.success != nil {
            map["Success"] = self.success!
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
        if let value = dict["StderrLog"] as? String {
            self.stderrLog = value
        }
        if let value = dict["StderrLogSize"] as? String {
            self.stderrLogSize = value
        }
        if let value = dict["StdoutLog"] as? String {
            self.stdoutLog = value
        }
        if let value = dict["StdoutLogSize"] as? String {
            self.stdoutLogSize = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class GetJobLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetJobLogResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetJobLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class GetQueueRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueName: String?

    public override init() {
        super.init()
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
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["QueueName"] as? String {
            self.queueName = value
        }
    }
}

public class GetQueueResponseBody : Tea.TeaModel {
    public class Queue : Tea.TeaModel {
        public var allocationStrategy: String?

        public var computeNodes: [NodeTemplate]?

        public var createTime: String?

        public var enableScaleIn: Bool?

        public var enableScaleOut: Bool?

        public var hostnamePrefix: String?

        public var hostnameSuffix: String?

        public var initialCount: Int32?

        public var interConnect: String?

        public var keepAliveNodes: [String]?

        public var maxCount: Int32?

        public var maxCountPerCycle: Int64?

        public var minCount: Int32?

        public var queueName: String?

        public var ramRole: String?

        public var reservedNodePoolId: String?

        public var updateTime: String?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationStrategy != nil {
                map["AllocationStrategy"] = self.allocationStrategy!
            }
            if self.computeNodes != nil {
                var tmp : [Any] = []
                for k in self.computeNodes! {
                    tmp.append(k.toMap())
                }
                map["ComputeNodes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableScaleIn != nil {
                map["EnableScaleIn"] = self.enableScaleIn!
            }
            if self.enableScaleOut != nil {
                map["EnableScaleOut"] = self.enableScaleOut!
            }
            if self.hostnamePrefix != nil {
                map["HostnamePrefix"] = self.hostnamePrefix!
            }
            if self.hostnameSuffix != nil {
                map["HostnameSuffix"] = self.hostnameSuffix!
            }
            if self.initialCount != nil {
                map["InitialCount"] = self.initialCount!
            }
            if self.interConnect != nil {
                map["InterConnect"] = self.interConnect!
            }
            if self.keepAliveNodes != nil {
                map["KeepAliveNodes"] = self.keepAliveNodes!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.maxCountPerCycle != nil {
                map["MaxCountPerCycle"] = self.maxCountPerCycle!
            }
            if self.minCount != nil {
                map["MinCount"] = self.minCount!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.reservedNodePoolId != nil {
                map["ReservedNodePoolId"] = self.reservedNodePoolId!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationStrategy"] as? String {
                self.allocationStrategy = value
            }
            if let value = dict["ComputeNodes"] as? [Any?] {
                var tmp : [NodeTemplate] = []
                for v in value {
                    if v != nil {
                        var model = NodeTemplate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.computeNodes = tmp
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnableScaleIn"] as? Bool {
                self.enableScaleIn = value
            }
            if let value = dict["EnableScaleOut"] as? Bool {
                self.enableScaleOut = value
            }
            if let value = dict["HostnamePrefix"] as? String {
                self.hostnamePrefix = value
            }
            if let value = dict["HostnameSuffix"] as? String {
                self.hostnameSuffix = value
            }
            if let value = dict["InitialCount"] as? Int32 {
                self.initialCount = value
            }
            if let value = dict["InterConnect"] as? String {
                self.interConnect = value
            }
            if let value = dict["KeepAliveNodes"] as? [String] {
                self.keepAliveNodes = value
            }
            if let value = dict["MaxCount"] as? Int32 {
                self.maxCount = value
            }
            if let value = dict["MaxCountPerCycle"] as? Int64 {
                self.maxCountPerCycle = value
            }
            if let value = dict["MinCount"] as? Int32 {
                self.minCount = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["RamRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["ReservedNodePoolId"] as? String {
                self.reservedNodePoolId = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
        }
    }
    public var queue: GetQueueResponseBody.Queue?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queue != nil {
            map["Queue"] = self.queue?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Queue"] as? [String: Any?] {
            var model = GetQueueResponseBody.Queue()
            model.fromMap(value)
            self.queue = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class GetQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallAddonRequest : Tea.TeaModel {
    public var addonName: String?

    public var addonVersion: String?

    public var clusterId: String?

    public var resourcesSpec: String?

    public var servicesSpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addonName != nil {
            map["AddonName"] = self.addonName!
        }
        if self.addonVersion != nil {
            map["AddonVersion"] = self.addonVersion!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.resourcesSpec != nil {
            map["ResourcesSpec"] = self.resourcesSpec!
        }
        if self.servicesSpec != nil {
            map["ServicesSpec"] = self.servicesSpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonName"] as? String {
            self.addonName = value
        }
        if let value = dict["AddonVersion"] as? String {
            self.addonVersion = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ResourcesSpec"] as? String {
            self.resourcesSpec = value
        }
        if let value = dict["ServicesSpec"] as? String {
            self.servicesSpec = value
        }
    }
}

public class InstallAddonResponseBody : Tea.TeaModel {
    public var addonId: String?

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
        if self.addonId != nil {
            map["AddonId"] = self.addonId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonId"] as? String {
            self.addonId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class InstallAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallAddonResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InstallAddonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class InstallSoftwaresRequest : Tea.TeaModel {
    public class AdditionalPackages : Tea.TeaModel {
        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var additionalPackages: [InstallSoftwaresRequest.AdditionalPackages]?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackages != nil {
            var tmp : [Any] = []
            for k in self.additionalPackages! {
                tmp.append(k.toMap())
            }
            map["AdditionalPackages"] = tmp
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? [Any?] {
            var tmp : [InstallSoftwaresRequest.AdditionalPackages] = []
            for v in value {
                if v != nil {
                    var model = InstallSoftwaresRequest.AdditionalPackages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalPackages = tmp
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class InstallSoftwaresShrinkRequest : Tea.TeaModel {
    public var additionalPackagesShrink: String?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackagesShrink != nil {
            map["AdditionalPackages"] = self.additionalPackagesShrink!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? String {
            self.additionalPackagesShrink = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class InstallSoftwaresResponseBody : Tea.TeaModel {
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

public class InstallSoftwaresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallSoftwaresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = InstallSoftwaresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAddonTemplatesRequest : Tea.TeaModel {
    public var addonNames: [String]?

    public var clusterCategory: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.addonNames != nil {
            map["AddonNames"] = self.addonNames!
        }
        if self.clusterCategory != nil {
            map["ClusterCategory"] = self.clusterCategory!
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonNames"] as? [String] {
            self.addonNames = value
        }
        if let value = dict["ClusterCategory"] as? String {
            self.clusterCategory = value
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["RegionId"] as? String {
            self.regionId = value
        }
    }
}

public class ListAddonTemplatesResponseBody : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var description_: String?

        public var label: String?

        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var addons: [ListAddonTemplatesResponseBody.Addons]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.addons != nil {
            var tmp : [Any] = []
            for k in self.addons! {
                tmp.append(k.toMap())
            }
            map["Addons"] = tmp
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
        if let value = dict["Addons"] as? [Any?] {
            var tmp : [ListAddonTemplatesResponseBody.Addons] = []
            for v in value {
                if v != nil {
                    var model = ListAddonTemplatesResponseBody.Addons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addons = tmp
        }
        if let value = dict["PageNumber"] as? Int64 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int64 {
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

public class ListAddonTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAddonTemplatesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAddonTemplatesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAddonsRequest : Tea.TeaModel {
    public var addonIds: [String]?

    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addonIds != nil {
            map["AddonIds"] = self.addonIds!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonIds"] as? [String] {
            self.addonIds = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAddonsShrinkRequest : Tea.TeaModel {
    public var addonIdsShrink: String?

    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addonIdsShrink != nil {
            map["AddonIds"] = self.addonIdsShrink!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonIds"] as? String {
            self.addonIdsShrink = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListAddonsResponseBody : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var addonId: String?

        public var description_: String?

        public var installTime: String?

        public var label: String?

        public var name: String?

        public var status: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addonId != nil {
                map["AddonId"] = self.addonId!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.installTime != nil {
                map["InstallTime"] = self.installTime!
            }
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AddonId"] as? String {
                self.addonId = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["InstallTime"] as? String {
                self.installTime = value
            }
            if let value = dict["Label"] as? String {
                self.label = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var addons: [ListAddonsResponseBody.Addons]?

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
        if self.addons != nil {
            var tmp : [Any] = []
            for k in self.addons! {
                tmp.append(k.toMap())
            }
            map["Addons"] = tmp
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
        if let value = dict["Addons"] as? [Any?] {
            var tmp : [ListAddonsResponseBody.Addons] = []
            for v in value {
                if v != nil {
                    var model = ListAddonsResponseBody.Addons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addons = tmp
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

public class ListAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAddonsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAddonsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAvailableFileSystemsRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
    }
}

public class ListAvailableFileSystemsResponseBody : Tea.TeaModel {
    public class FileSystemList : Tea.TeaModel {
        public class MountTargetList : Tea.TeaModel {
            public var mountTargetDomain: String?

            public var networkType: String?

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
                if self.mountTargetDomain != nil {
                    map["MountTargetDomain"] = self.mountTargetDomain!
                }
                if self.networkType != nil {
                    map["NetworkType"] = self.networkType!
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
                if let value = dict["MountTargetDomain"] as? String {
                    self.mountTargetDomain = value
                }
                if let value = dict["NetworkType"] as? String {
                    self.networkType = value
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
        public var createTime: String?

        public var fileSystemId: String?

        public var fileSystemType: String?

        public var mountTargetList: [ListAvailableFileSystemsResponseBody.FileSystemList.MountTargetList]?

        public var protocolType: String?

        public var status: String?

        public var storageType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.fileSystemId != nil {
                map["FileSystemId"] = self.fileSystemId!
            }
            if self.fileSystemType != nil {
                map["FileSystemType"] = self.fileSystemType!
            }
            if self.mountTargetList != nil {
                var tmp : [Any] = []
                for k in self.mountTargetList! {
                    tmp.append(k.toMap())
                }
                map["MountTargetList"] = tmp
            }
            if self.protocolType != nil {
                map["ProtocolType"] = self.protocolType!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.storageType != nil {
                map["StorageType"] = self.storageType!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FileSystemType"] as? String {
                self.fileSystemType = value
            }
            if let value = dict["MountTargetList"] as? [Any?] {
                var tmp : [ListAvailableFileSystemsResponseBody.FileSystemList.MountTargetList] = []
                for v in value {
                    if v != nil {
                        var model = ListAvailableFileSystemsResponseBody.FileSystemList.MountTargetList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountTargetList = tmp
            }
            if let value = dict["ProtocolType"] as? String {
                self.protocolType = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["StorageType"] as? String {
                self.storageType = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var fileSystemList: [ListAvailableFileSystemsResponseBody.FileSystemList]?

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
        if self.fileSystemList != nil {
            var tmp : [Any] = []
            for k in self.fileSystemList! {
                tmp.append(k.toMap())
            }
            map["FileSystemList"] = tmp
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
        if let value = dict["FileSystemList"] as? [Any?] {
            var tmp : [ListAvailableFileSystemsResponseBody.FileSystemList] = []
            for v in value {
                if v != nil {
                    var model = ListAvailableFileSystemsResponseBody.FileSystemList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.fileSystemList = tmp
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

public class ListAvailableFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableFileSystemsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAvailableFileSystemsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAvailableImagesRequest : Tea.TeaModel {
    public class DirectoryService : Tea.TeaModel {
        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public class Scheduler : Tea.TeaModel {
        public var type: String?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var directoryService: ListAvailableImagesRequest.DirectoryService?

    public var enableHT: Bool?

    public var HPCInterConnect: String?

    public var imageOwnerAlias: String?

    public var instanceType: String?

    public var isPublic: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var scheduler: ListAvailableImagesRequest.Scheduler?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.directoryService?.validate()
        try self.scheduler?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryService != nil {
            map["DirectoryService"] = self.directoryService?.toMap()
        }
        if self.enableHT != nil {
            map["EnableHT"] = self.enableHT!
        }
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isPublic != nil {
            map["IsPublic"] = self.isPublic!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.scheduler != nil {
            map["Scheduler"] = self.scheduler?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryService"] as? [String: Any?] {
            var model = ListAvailableImagesRequest.DirectoryService()
            model.fromMap(value)
            self.directoryService = model
        }
        if let value = dict["EnableHT"] as? Bool {
            self.enableHT = value
        }
        if let value = dict["HPCInterConnect"] as? String {
            self.HPCInterConnect = value
        }
        if let value = dict["ImageOwnerAlias"] as? String {
            self.imageOwnerAlias = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsPublic"] as? Bool {
            self.isPublic = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Scheduler"] as? [String: Any?] {
            var model = ListAvailableImagesRequest.Scheduler()
            model.fromMap(value)
            self.scheduler = model
        }
    }
}

public class ListAvailableImagesShrinkRequest : Tea.TeaModel {
    public var directoryServiceShrink: String?

    public var enableHT: Bool?

    public var HPCInterConnect: String?

    public var imageOwnerAlias: String?

    public var instanceType: String?

    public var isPublic: Bool?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var schedulerShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.directoryServiceShrink != nil {
            map["DirectoryService"] = self.directoryServiceShrink!
        }
        if self.enableHT != nil {
            map["EnableHT"] = self.enableHT!
        }
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isPublic != nil {
            map["IsPublic"] = self.isPublic!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.schedulerShrink != nil {
            map["Scheduler"] = self.schedulerShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DirectoryService"] as? String {
            self.directoryServiceShrink = value
        }
        if let value = dict["EnableHT"] as? Bool {
            self.enableHT = value
        }
        if let value = dict["HPCInterConnect"] as? String {
            self.HPCInterConnect = value
        }
        if let value = dict["ImageOwnerAlias"] as? String {
            self.imageOwnerAlias = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsPublic"] as? Bool {
            self.isPublic = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Scheduler"] as? String {
            self.schedulerShrink = value
        }
    }
}

public class ListAvailableImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var architecture: String?

        public var bootMode: String?

        public var description_: String?

        public var imageId: String?

        public var imageName: String?

        public var imageOwnerAlias: String?

        public var OSName: String?

        public var OSNameEn: String?

        public var platform: String?

        public var size: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.bootMode != nil {
                map["BootMode"] = self.bootMode!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageName != nil {
                map["ImageName"] = self.imageName!
            }
            if self.imageOwnerAlias != nil {
                map["ImageOwnerAlias"] = self.imageOwnerAlias!
            }
            if self.OSName != nil {
                map["OSName"] = self.OSName!
            }
            if self.OSNameEn != nil {
                map["OSNameEn"] = self.OSNameEn!
            }
            if self.platform != nil {
                map["Platform"] = self.platform!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Architecture"] as? String {
                self.architecture = value
            }
            if let value = dict["BootMode"] as? String {
                self.bootMode = value
            }
            if let value = dict["Description"] as? String {
                self.description_ = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["ImageName"] as? String {
                self.imageName = value
            }
            if let value = dict["ImageOwnerAlias"] as? String {
                self.imageOwnerAlias = value
            }
            if let value = dict["OSName"] as? String {
                self.OSName = value
            }
            if let value = dict["OSNameEn"] as? String {
                self.OSNameEn = value
            }
            if let value = dict["Platform"] as? String {
                self.platform = value
            }
            if let value = dict["Size"] as? String {
                self.size = value
            }
        }
    }
    public var images: [ListAvailableImagesResponseBody.Images]?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestId: String?

    public var success: Bool?

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
        if self.images != nil {
            var tmp : [Any] = []
            for k in self.images! {
                tmp.append(k.toMap())
            }
            map["Images"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Images"] as? [Any?] {
            var tmp : [ListAvailableImagesResponseBody.Images] = []
            for v in value {
                if v != nil {
                    var model = ListAvailableImagesResponseBody.Images()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.images = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListAvailableImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListAvailableImagesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
    public var clusterIds: [String]?

    public var clusterNames: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterIds != nil {
            map["ClusterIds"] = self.clusterIds!
        }
        if self.clusterNames != nil {
            map["ClusterNames"] = self.clusterNames!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterIds"] as? [String] {
            self.clusterIds = value
        }
        if let value = dict["ClusterNames"] as? [String] {
            self.clusterNames = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListClustersShrinkRequest : Tea.TeaModel {
    public var clusterIdsShrink: String?

    public var clusterNamesShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterIdsShrink != nil {
            map["ClusterIds"] = self.clusterIdsShrink!
        }
        if self.clusterNamesShrink != nil {
            map["ClusterNames"] = self.clusterNamesShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterIds"] as? String {
            self.clusterIdsShrink = value
        }
        if let value = dict["ClusterNames"] as? String {
            self.clusterNamesShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class AdditionalPackages : Tea.TeaModel {
            public var name: String?

            public var version: String?

            public override init() {
                super.init()
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
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class Addons : Tea.TeaModel {
            public class ResourcesSpec : Tea.TeaModel {
                public var ecsInstanceId: String?

                public var eipInstanceId: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.ecsInstanceId != nil {
                        map["EcsInstanceId"] = self.ecsInstanceId!
                    }
                    if self.eipInstanceId != nil {
                        map["EipInstanceId"] = self.eipInstanceId!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["EcsInstanceId"] as? String {
                        self.ecsInstanceId = value
                    }
                    if let value = dict["EipInstanceId"] as? String {
                        self.eipInstanceId = value
                    }
                }
            }
            public class ServicesSpec : Tea.TeaModel {
                public var serviceAccessType: String?

                public var serviceAccessUrl: String?

                public var serviceName: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.serviceAccessType != nil {
                        map["ServiceAccessType"] = self.serviceAccessType!
                    }
                    if self.serviceAccessUrl != nil {
                        map["ServiceAccessUrl"] = self.serviceAccessUrl!
                    }
                    if self.serviceName != nil {
                        map["ServiceName"] = self.serviceName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["ServiceAccessType"] as? String {
                        self.serviceAccessType = value
                    }
                    if let value = dict["ServiceAccessUrl"] as? String {
                        self.serviceAccessUrl = value
                    }
                    if let value = dict["ServiceName"] as? String {
                        self.serviceName = value
                    }
                }
            }
            public var addonId: String?

            public var description_: String?

            public var label: String?

            public var name: String?

            public var resourcesSpec: ListClustersResponseBody.Clusters.Addons.ResourcesSpec?

            public var servicesSpec: [ListClustersResponseBody.Clusters.Addons.ServicesSpec]?

            public var status: String?

            public var version: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resourcesSpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addonId != nil {
                    map["AddonId"] = self.addonId!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.label != nil {
                    map["Label"] = self.label!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.resourcesSpec != nil {
                    map["ResourcesSpec"] = self.resourcesSpec?.toMap()
                }
                if self.servicesSpec != nil {
                    var tmp : [Any] = []
                    for k in self.servicesSpec! {
                        tmp.append(k.toMap())
                    }
                    map["ServicesSpec"] = tmp
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddonId"] as? String {
                    self.addonId = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Label"] as? String {
                    self.label = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["ResourcesSpec"] as? [String: Any?] {
                    var model = ListClustersResponseBody.Clusters.Addons.ResourcesSpec()
                    model.fromMap(value)
                    self.resourcesSpec = model
                }
                if let value = dict["ServicesSpec"] as? [Any?] {
                    var tmp : [ListClustersResponseBody.Clusters.Addons.ServicesSpec] = []
                    for v in value {
                        if v != nil {
                            var model = ListClustersResponseBody.Clusters.Addons.ServicesSpec()
                            if v != nil {
                                model.fromMap(v as? [String: Any?])
                            }
                            tmp.append(model)
                        }
                    }
                    self.servicesSpec = tmp
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public class ClusterCustomConfiguration : Tea.TeaModel {
            public var args: String?

            public var script: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.args != nil {
                    map["Args"] = self.args!
                }
                if self.script != nil {
                    map["Script"] = self.script!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Args"] as? String {
                    self.args = value
                }
                if let value = dict["Script"] as? String {
                    self.script = value
                }
            }
        }
        public class Manager : Tea.TeaModel {
            public class DNS : Tea.TeaModel {
                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public class DirectoryService : Tea.TeaModel {
                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public class Scheduler : Tea.TeaModel {
                public var type: String?

                public var version: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Type"] as? String {
                        self.type = value
                    }
                    if let value = dict["Version"] as? String {
                        self.version = value
                    }
                }
            }
            public var DNS: ListClustersResponseBody.Clusters.Manager.DNS?

            public var directoryService: ListClustersResponseBody.Clusters.Manager.DirectoryService?

            public var scheduler: ListClustersResponseBody.Clusters.Manager.Scheduler?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.DNS?.validate()
                try self.directoryService?.validate()
                try self.scheduler?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.DNS != nil {
                    map["DNS"] = self.DNS?.toMap()
                }
                if self.directoryService != nil {
                    map["DirectoryService"] = self.directoryService?.toMap()
                }
                if self.scheduler != nil {
                    map["Scheduler"] = self.scheduler?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["DNS"] as? [String: Any?] {
                    var model = ListClustersResponseBody.Clusters.Manager.DNS()
                    model.fromMap(value)
                    self.DNS = model
                }
                if let value = dict["DirectoryService"] as? [String: Any?] {
                    var model = ListClustersResponseBody.Clusters.Manager.DirectoryService()
                    model.fromMap(value)
                    self.directoryService = model
                }
                if let value = dict["Scheduler"] as? [String: Any?] {
                    var model = ListClustersResponseBody.Clusters.Manager.Scheduler()
                    model.fromMap(value)
                    self.scheduler = model
                }
            }
        }
        public class Nodes : Tea.TeaModel {
            public var abnormalCounts: Int32?

            public var creatingCounts: Int32?

            public var runningCounts: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.abnormalCounts != nil {
                    map["AbnormalCounts"] = self.abnormalCounts!
                }
                if self.creatingCounts != nil {
                    map["CreatingCounts"] = self.creatingCounts!
                }
                if self.runningCounts != nil {
                    map["RunningCounts"] = self.runningCounts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AbnormalCounts"] as? Int32 {
                    self.abnormalCounts = value
                }
                if let value = dict["CreatingCounts"] as? Int32 {
                    self.creatingCounts = value
                }
                if let value = dict["RunningCounts"] as? Int32 {
                    self.runningCounts = value
                }
            }
        }
        public class Users : Tea.TeaModel {
            public var normalCounts: Int32?

            public var sudoCounts: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.normalCounts != nil {
                    map["NormalCounts"] = self.normalCounts!
                }
                if self.sudoCounts != nil {
                    map["SudoCounts"] = self.sudoCounts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["NormalCounts"] as? Int32 {
                    self.normalCounts = value
                }
                if let value = dict["SudoCounts"] as? Int32 {
                    self.sudoCounts = value
                }
            }
        }
        public var additionalPackages: [ListClustersResponseBody.Clusters.AdditionalPackages]?

        public var addons: [ListClustersResponseBody.Clusters.Addons]?

        public var clusterCategory: String?

        public var clusterCreateTime: String?

        public var clusterCredentials: [String]?

        public var clusterCustomConfiguration: ListClustersResponseBody.Clusters.ClusterCustomConfiguration?

        public var clusterDescription: String?

        public var clusterId: String?

        public var clusterMode: String?

        public var clusterModifyTime: String?

        public var clusterName: String?

        public var clusterStatus: String?

        public var clusterUsedCoreTime: Double?

        public var clusterVSwitchId: String?

        public var clusterVpcId: String?

        public var deletionProtection: Bool?

        public var ehpcVersion: String?

        public var manager: ListClustersResponseBody.Clusters.Manager?

        public var maxCoreCount: Int64?

        public var maxCount: Int64?

        public var nodes: ListClustersResponseBody.Clusters.Nodes?

        public var resourceGroupId: String?

        public var securityGroupId: String?

        public var users: ListClustersResponseBody.Clusters.Users?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.clusterCustomConfiguration?.validate()
            try self.manager?.validate()
            try self.nodes?.validate()
            try self.users?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalPackages != nil {
                var tmp : [Any] = []
                for k in self.additionalPackages! {
                    tmp.append(k.toMap())
                }
                map["AdditionalPackages"] = tmp
            }
            if self.addons != nil {
                var tmp : [Any] = []
                for k in self.addons! {
                    tmp.append(k.toMap())
                }
                map["Addons"] = tmp
            }
            if self.clusterCategory != nil {
                map["ClusterCategory"] = self.clusterCategory!
            }
            if self.clusterCreateTime != nil {
                map["ClusterCreateTime"] = self.clusterCreateTime!
            }
            if self.clusterCredentials != nil {
                map["ClusterCredentials"] = self.clusterCredentials!
            }
            if self.clusterCustomConfiguration != nil {
                map["ClusterCustomConfiguration"] = self.clusterCustomConfiguration?.toMap()
            }
            if self.clusterDescription != nil {
                map["ClusterDescription"] = self.clusterDescription!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.clusterMode != nil {
                map["ClusterMode"] = self.clusterMode!
            }
            if self.clusterModifyTime != nil {
                map["ClusterModifyTime"] = self.clusterModifyTime!
            }
            if self.clusterName != nil {
                map["ClusterName"] = self.clusterName!
            }
            if self.clusterStatus != nil {
                map["ClusterStatus"] = self.clusterStatus!
            }
            if self.clusterUsedCoreTime != nil {
                map["ClusterUsedCoreTime"] = self.clusterUsedCoreTime!
            }
            if self.clusterVSwitchId != nil {
                map["ClusterVSwitchId"] = self.clusterVSwitchId!
            }
            if self.clusterVpcId != nil {
                map["ClusterVpcId"] = self.clusterVpcId!
            }
            if self.deletionProtection != nil {
                map["DeletionProtection"] = self.deletionProtection!
            }
            if self.ehpcVersion != nil {
                map["EhpcVersion"] = self.ehpcVersion!
            }
            if self.manager != nil {
                map["Manager"] = self.manager?.toMap()
            }
            if self.maxCoreCount != nil {
                map["MaxCoreCount"] = self.maxCoreCount!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.nodes != nil {
                map["Nodes"] = self.nodes?.toMap()
            }
            if self.resourceGroupId != nil {
                map["ResourceGroupId"] = self.resourceGroupId!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
            }
            if self.users != nil {
                map["Users"] = self.users?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalPackages"] as? [Any?] {
                var tmp : [ListClustersResponseBody.Clusters.AdditionalPackages] = []
                for v in value {
                    if v != nil {
                        var model = ListClustersResponseBody.Clusters.AdditionalPackages()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.additionalPackages = tmp
            }
            if let value = dict["Addons"] as? [Any?] {
                var tmp : [ListClustersResponseBody.Clusters.Addons] = []
                for v in value {
                    if v != nil {
                        var model = ListClustersResponseBody.Clusters.Addons()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.addons = tmp
            }
            if let value = dict["ClusterCategory"] as? String {
                self.clusterCategory = value
            }
            if let value = dict["ClusterCreateTime"] as? String {
                self.clusterCreateTime = value
            }
            if let value = dict["ClusterCredentials"] as? [String] {
                self.clusterCredentials = value
            }
            if let value = dict["ClusterCustomConfiguration"] as? [String: Any?] {
                var model = ListClustersResponseBody.Clusters.ClusterCustomConfiguration()
                model.fromMap(value)
                self.clusterCustomConfiguration = model
            }
            if let value = dict["ClusterDescription"] as? String {
                self.clusterDescription = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["ClusterMode"] as? String {
                self.clusterMode = value
            }
            if let value = dict["ClusterModifyTime"] as? String {
                self.clusterModifyTime = value
            }
            if let value = dict["ClusterName"] as? String {
                self.clusterName = value
            }
            if let value = dict["ClusterStatus"] as? String {
                self.clusterStatus = value
            }
            if let value = dict["ClusterUsedCoreTime"] as? Double {
                self.clusterUsedCoreTime = value
            }
            if let value = dict["ClusterVSwitchId"] as? String {
                self.clusterVSwitchId = value
            }
            if let value = dict["ClusterVpcId"] as? String {
                self.clusterVpcId = value
            }
            if let value = dict["DeletionProtection"] as? Bool {
                self.deletionProtection = value
            }
            if let value = dict["EhpcVersion"] as? String {
                self.ehpcVersion = value
            }
            if let value = dict["Manager"] as? [String: Any?] {
                var model = ListClustersResponseBody.Clusters.Manager()
                model.fromMap(value)
                self.manager = model
            }
            if let value = dict["MaxCoreCount"] as? Int64 {
                self.maxCoreCount = value
            }
            if let value = dict["MaxCount"] as? Int64 {
                self.maxCount = value
            }
            if let value = dict["Nodes"] as? [String: Any?] {
                var model = ListClustersResponseBody.Clusters.Nodes()
                model.fromMap(value)
                self.nodes = model
            }
            if let value = dict["ResourceGroupId"] as? String {
                self.resourceGroupId = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
            }
            if let value = dict["Users"] as? [String: Any?] {
                var model = ListClustersResponseBody.Clusters.Users()
                model.fromMap(value)
                self.users = model
            }
        }
    }
    public var clusters: [ListClustersResponseBody.Clusters]?

    public var pageNumber: String?

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
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["Clusters"] = tmp
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
        if let value = dict["Clusters"] as? [Any?] {
            var tmp : [ListClustersResponseBody.Clusters] = []
            for v in value {
                if v != nil {
                    var model = ListClustersResponseBody.Clusters()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.clusters = tmp
        }
        if let value = dict["PageNumber"] as? String {
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

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["headers"] as? [String: String] {
            self.headers = value
        }
        if let value = dict["statusCode"] as? Int32 {
            self.statusCode = value
        }
        if let value = dict["body"] as? [String: Any?] {
            var model = ListClustersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListCommonLogsRequest : Tea.TeaModel {
    public var actionName: [String]?

    public var actionStatus: String?

    public var clusterId: String?

    public var from: Int64?

    public var isReverse: Bool?

    public var logRequestId: String?

    public var logType: String?

    public var operatorUid: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resource: String?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionName != nil {
            map["ActionName"] = self.actionName!
        }
        if self.actionStatus != nil {
            map["ActionStatus"] = self.actionStatus!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isReverse != nil {
            map["IsReverse"] = self.isReverse!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.operatorUid != nil {
            map["OperatorUid"] = self.operatorUid!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionName"] as? [String] {
            self.actionName = value
        }
        if let value = dict["ActionStatus"] as? String {
            self.actionStatus = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["IsReverse"] as? Bool {
            self.isReverse = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["OperatorUid"] as? String {
            self.operatorUid = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
    }
}

public class ListCommonLogsShrinkRequest : Tea.TeaModel {
    public var actionNameShrink: String?

    public var actionStatus: String?

    public var clusterId: String?

    public var from: Int64?

    public var isReverse: Bool?

    public var logRequestId: String?

    public var logType: String?

    public var operatorUid: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resource: String?

    public var to: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.actionNameShrink != nil {
            map["ActionName"] = self.actionNameShrink!
        }
        if self.actionStatus != nil {
            map["ActionStatus"] = self.actionStatus!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.isReverse != nil {
            map["IsReverse"] = self.isReverse!
        }
        if self.logRequestId != nil {
            map["LogRequestId"] = self.logRequestId!
        }
        if self.logType != nil {
            map["LogType"] = self.logType!
        }
        if self.operatorUid != nil {
            map["OperatorUid"] = self.operatorUid!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ActionName"] as? String {
            self.actionNameShrink = value
        }
        if let value = dict["ActionStatus"] as? String {
            self.actionStatus = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["From"] as? Int64 {
            self.from = value
        }
        if let value = dict["IsReverse"] as? Bool {
            self.isReverse = value
        }
        if let value = dict["LogRequestId"] as? String {
            self.logRequestId = value
        }
        if let value = dict["LogType"] as? String {
            self.logType = value
        }
        if let value = dict["OperatorUid"] as? String {
            self.operatorUid = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
        }
        if let value = dict["To"] as? Int64 {
            self.to = value
        }
    }
}

public class ListCommonLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public var action: String?

        public var clusterId: String?

        public var logType: String?

        public var message: String?

        public var operatorUid: String?

        public var requestId: String?

        public var status: String?

        public var target: String?

        public var time: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.action != nil {
                map["Action"] = self.action!
            }
            if self.clusterId != nil {
                map["ClusterId"] = self.clusterId!
            }
            if self.logType != nil {
                map["LogType"] = self.logType!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.operatorUid != nil {
                map["OperatorUid"] = self.operatorUid!
            }
            if self.requestId != nil {
                map["RequestId"] = self.requestId!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.target != nil {
                map["Target"] = self.target!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Action"] as? String {
                self.action = value
            }
            if let value = dict["ClusterId"] as? String {
                self.clusterId = value
            }
            if let value = dict["LogType"] as? String {
                self.logType = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["OperatorUid"] as? String {
                self.operatorUid = value
            }
            if let value = dict["RequestId"] as? String {
                self.requestId = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["Target"] as? String {
                self.target = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
        }
    }
    public var logs: [ListCommonLogsResponseBody.Logs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logs != nil {
            var tmp : [Any] = []
            for k in self.logs! {
                tmp.append(k.toMap())
            }
            map["Logs"] = tmp
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
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Logs"] as? [Any?] {
            var tmp : [ListCommonLogsResponseBody.Logs] = []
            for v in value {
                if v != nil {
                    var model = ListCommonLogsResponseBody.Logs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.logs = tmp
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
        if let value = dict["Uid"] as? String {
            self.uid = value
        }
    }
}

public class ListCommonLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommonLogsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListCommonLogsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListInstalledSoftwaresRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListInstalledSoftwaresResponseBody : Tea.TeaModel {
    public class AdditionalPackages : Tea.TeaModel {
        public class AdditionalPackageInfos : Tea.TeaModel {
            public var category: String?

            public var createTime: String?

            public var description_: String?

            public var icon: String?

            public var name: String?

            public var status: String?

            public var version: String?

            public override init() {
                super.init()
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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["CreateTime"] as? String {
                    self.createTime = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Icon"] as? String {
                    self.icon = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["Version"] as? String {
                    self.version = value
                }
            }
        }
        public var additionalPackageInfos: [ListInstalledSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalPackageInfos != nil {
                var tmp : [Any] = []
                for k in self.additionalPackageInfos! {
                    tmp.append(k.toMap())
                }
                map["AdditionalPackageInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalPackageInfos"] as? [Any?] {
                var tmp : [ListInstalledSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListInstalledSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.additionalPackageInfos = tmp
            }
        }
    }
    public var additionalPackages: ListInstalledSoftwaresResponseBody.AdditionalPackages?

    public var pageNumber: String?

    public var pageSize: String?

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
        try self.additionalPackages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackages != nil {
            map["AdditionalPackages"] = self.additionalPackages?.toMap()
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
        if let value = dict["AdditionalPackages"] as? [String: Any?] {
            var model = ListInstalledSoftwaresResponseBody.AdditionalPackages()
            model.fromMap(value)
            self.additionalPackages = model
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListInstalledSoftwaresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstalledSoftwaresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListInstalledSoftwaresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public class JobFilter : Tea.TeaModel {
        public class Diagnosis : Tea.TeaModel {
            public var operator_: String?

            public var option: String?

            public var threshold: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.operator_ != nil {
                    map["Operator"] = self.operator_!
                }
                if self.option != nil {
                    map["Option"] = self.option!
                }
                if self.threshold != nil {
                    map["Threshold"] = self.threshold!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["Option"] as? String {
                    self.option = value
                }
                if let value = dict["Threshold"] as? String {
                    self.threshold = value
                }
            }
        }
        public class SortBy : Tea.TeaModel {
            public var executeOrder: String?

            public var pendOrder: String?

            public var submitOrder: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.executeOrder != nil {
                    map["ExecuteOrder"] = self.executeOrder!
                }
                if self.pendOrder != nil {
                    map["PendOrder"] = self.pendOrder!
                }
                if self.submitOrder != nil {
                    map["SubmitOrder"] = self.submitOrder!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ExecuteOrder"] as? String {
                    self.executeOrder = value
                }
                if let value = dict["PendOrder"] as? String {
                    self.pendOrder = value
                }
                if let value = dict["SubmitOrder"] as? String {
                    self.submitOrder = value
                }
            }
        }
        public var createTimeEnd: String?

        public var createTimeStart: String?

        public var diagnosis: [ListJobsRequest.JobFilter.Diagnosis]?

        public var jobName: String?

        public var jobStatus: String?

        public var nodes: [String]?

        public var queues: [String]?

        public var sortBy: ListJobsRequest.JobFilter.SortBy?

        public var users: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.sortBy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.createTimeEnd != nil {
                map["CreateTimeEnd"] = self.createTimeEnd!
            }
            if self.createTimeStart != nil {
                map["CreateTimeStart"] = self.createTimeStart!
            }
            if self.diagnosis != nil {
                var tmp : [Any] = []
                for k in self.diagnosis! {
                    tmp.append(k.toMap())
                }
                map["Diagnosis"] = tmp
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobStatus != nil {
                map["JobStatus"] = self.jobStatus!
            }
            if self.nodes != nil {
                map["Nodes"] = self.nodes!
            }
            if self.queues != nil {
                map["Queues"] = self.queues!
            }
            if self.sortBy != nil {
                map["SortBy"] = self.sortBy?.toMap()
            }
            if self.users != nil {
                map["Users"] = self.users!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTimeEnd"] as? String {
                self.createTimeEnd = value
            }
            if let value = dict["CreateTimeStart"] as? String {
                self.createTimeStart = value
            }
            if let value = dict["Diagnosis"] as? [Any?] {
                var tmp : [ListJobsRequest.JobFilter.Diagnosis] = []
                for v in value {
                    if v != nil {
                        var model = ListJobsRequest.JobFilter.Diagnosis()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.diagnosis = tmp
            }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["JobStatus"] as? String {
                self.jobStatus = value
            }
            if let value = dict["Nodes"] as? [String] {
                self.nodes = value
            }
            if let value = dict["Queues"] as? [String] {
                self.queues = value
            }
            if let value = dict["SortBy"] as? [String: Any?] {
                var model = ListJobsRequest.JobFilter.SortBy()
                model.fromMap(value)
                self.sortBy = model
            }
            if let value = dict["Users"] as? [String] {
                self.users = value
            }
        }
    }
    public var clusterId: String?

    public var jobFilter: ListJobsRequest.JobFilter?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.jobFilter?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.jobFilter != nil {
            map["JobFilter"] = self.jobFilter?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobFilter"] as? [String: Any?] {
            var model = ListJobsRequest.JobFilter()
            model.fromMap(value)
            self.jobFilter = model
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobFilterShrink: String?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.jobFilterShrink != nil {
            map["JobFilter"] = self.jobFilterShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobFilter"] as? String {
            self.jobFilterShrink = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class JobSpec : Tea.TeaModel {
            public class Resources : Tea.TeaModel {
                public var cores: String?

                public var gpus: String?

                public var memory: String?

                public var nodes: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cores != nil {
                        map["Cores"] = self.cores!
                    }
                    if self.gpus != nil {
                        map["Gpus"] = self.gpus!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cores"] as? String {
                        self.cores = value
                    }
                    if let value = dict["Gpus"] as? String {
                        self.gpus = value
                    }
                    if let value = dict["Memory"] as? String {
                        self.memory = value
                    }
                    if let value = dict["Nodes"] as? String {
                        self.nodes = value
                    }
                }
            }
            public class ResourcesActualOccupied : Tea.TeaModel {
                public var cores: String?

                public var gpus: String?

                public var memory: String?

                public var nodes: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.cores != nil {
                        map["Cores"] = self.cores!
                    }
                    if self.gpus != nil {
                        map["Gpus"] = self.gpus!
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["Cores"] as? String {
                        self.cores = value
                    }
                    if let value = dict["Gpus"] as? String {
                        self.gpus = value
                    }
                    if let value = dict["Memory"] as? String {
                        self.memory = value
                    }
                    if let value = dict["Nodes"] as? String {
                        self.nodes = value
                    }
                }
            }
            public var arrayJobId: String?

            public var arrayJobSubId: String?

            public var arrayRequest: String?

            public var comment: String?

            public var id: String?

            public var jobQueue: String?

            public var lastModifyTime: String?

            public var nodeList: String?

            public var priority: String?

            public var resources: ListJobsResponseBody.Jobs.JobSpec.Resources?

            public var resourcesActualOccupied: ListJobsResponseBody.Jobs.JobSpec.ResourcesActualOccupied?

            public var runasUser: String?

            public var startTime: String?

            public var state: String?

            public var stderrPath: String?

            public var stdoutPath: String?

            public var submitTime: String?

            public var variables: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resources?.validate()
                try self.resourcesActualOccupied?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayJobId != nil {
                    map["ArrayJobId"] = self.arrayJobId!
                }
                if self.arrayJobSubId != nil {
                    map["ArrayJobSubId"] = self.arrayJobSubId!
                }
                if self.arrayRequest != nil {
                    map["ArrayRequest"] = self.arrayRequest!
                }
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.jobQueue != nil {
                    map["JobQueue"] = self.jobQueue!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.nodeList != nil {
                    map["NodeList"] = self.nodeList!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.resources != nil {
                    map["Resources"] = self.resources?.toMap()
                }
                if self.resourcesActualOccupied != nil {
                    map["ResourcesActualOccupied"] = self.resourcesActualOccupied?.toMap()
                }
                if self.runasUser != nil {
                    map["RunasUser"] = self.runasUser!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.stderrPath != nil {
                    map["StderrPath"] = self.stderrPath!
                }
                if self.stdoutPath != nil {
                    map["StdoutPath"] = self.stdoutPath!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                if self.variables != nil {
                    map["Variables"] = self.variables!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["ArrayJobId"] as? String {
                    self.arrayJobId = value
                }
                if let value = dict["ArrayJobSubId"] as? String {
                    self.arrayJobSubId = value
                }
                if let value = dict["ArrayRequest"] as? String {
                    self.arrayRequest = value
                }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["Id"] as? String {
                    self.id = value
                }
                if let value = dict["JobQueue"] as? String {
                    self.jobQueue = value
                }
                if let value = dict["LastModifyTime"] as? String {
                    self.lastModifyTime = value
                }
                if let value = dict["NodeList"] as? String {
                    self.nodeList = value
                }
                if let value = dict["Priority"] as? String {
                    self.priority = value
                }
                if let value = dict["Resources"] as? [String: Any?] {
                    var model = ListJobsResponseBody.Jobs.JobSpec.Resources()
                    model.fromMap(value)
                    self.resources = model
                }
                if let value = dict["ResourcesActualOccupied"] as? [String: Any?] {
                    var model = ListJobsResponseBody.Jobs.JobSpec.ResourcesActualOccupied()
                    model.fromMap(value)
                    self.resourcesActualOccupied = model
                }
                if let value = dict["RunasUser"] as? String {
                    self.runasUser = value
                }
                if let value = dict["StartTime"] as? String {
                    self.startTime = value
                }
                if let value = dict["State"] as? String {
                    self.state = value
                }
                if let value = dict["StderrPath"] as? String {
                    self.stderrPath = value
                }
                if let value = dict["StdoutPath"] as? String {
                    self.stdoutPath = value
                }
                if let value = dict["SubmitTime"] as? String {
                    self.submitTime = value
                }
                if let value = dict["Variables"] as? String {
                    self.variables = value
                }
            }
        }
        public var jobName: String?

        public var jobSpec: ListJobsResponseBody.Jobs.JobSpec?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.jobSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.jobSpec != nil {
                map["JobSpec"] = self.jobSpec?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["JobName"] as? String {
                self.jobName = value
            }
            if let value = dict["JobSpec"] as? [String: Any?] {
                var model = ListJobsResponseBody.Jobs.JobSpec()
                model.fromMap(value)
                self.jobSpec = model
            }
        }
    }
    public var jobs: [ListJobsResponseBody.Jobs]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var success: Bool?

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
        if self.jobs != nil {
            var tmp : [Any] = []
            for k in self.jobs! {
                tmp.append(k.toMap())
            }
            map["Jobs"] = tmp
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
        if self.success != nil {
            map["Success"] = self.success!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Jobs"] as? [Any?] {
            var tmp : [ListJobsResponseBody.Jobs] = []
            for v in value {
                if v != nil {
                    var model = ListJobsResponseBody.Jobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.jobs = tmp
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
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hostnames: [String]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var privateIpAddress: [String]?

    public var queueNames: [String]?

    public var sequence: String?

    public var sortBy: String?

    public var status: [String]?

    public override init() {
        super.init()
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
        if self.hostnames != nil {
            map["Hostnames"] = self.hostnames!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        if self.sequence != nil {
            map["Sequence"] = self.sequence!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Hostnames"] as? [String] {
            self.hostnames = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrivateIpAddress"] as? [String] {
            self.privateIpAddress = value
        }
        if let value = dict["QueueNames"] as? [String] {
            self.queueNames = value
        }
        if let value = dict["Sequence"] as? String {
            self.sequence = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? [String] {
            self.status = value
        }
    }
}

public class ListNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hostnamesShrink: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var privateIpAddressShrink: String?

    public var queueNamesShrink: String?

    public var sequence: String?

    public var sortBy: String?

    public var statusShrink: String?

    public override init() {
        super.init()
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
        if self.hostnamesShrink != nil {
            map["Hostnames"] = self.hostnamesShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.privateIpAddressShrink != nil {
            map["PrivateIpAddress"] = self.privateIpAddressShrink!
        }
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        if self.sequence != nil {
            map["Sequence"] = self.sequence!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        if self.statusShrink != nil {
            map["Status"] = self.statusShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Hostnames"] as? String {
            self.hostnamesShrink = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["PrivateIpAddress"] as? String {
            self.privateIpAddressShrink = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
        if let value = dict["Sequence"] as? String {
            self.sequence = value
        }
        if let value = dict["SortBy"] as? String {
            self.sortBy = value
        }
        if let value = dict["Status"] as? String {
            self.statusShrink = value
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class TotalResources : Tea.TeaModel {
            public var cpu: Int32?

            public var gpu: Int32?

            public var memory: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cpu != nil {
                    map["Cpu"] = self.cpu!
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.memory != nil {
                    map["Memory"] = self.memory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Cpu"] as? Int32 {
                    self.cpu = value
                }
                if let value = dict["Gpu"] as? Int32 {
                    self.gpu = value
                }
                if let value = dict["Memory"] as? Int32 {
                    self.memory = value
                }
            }
        }
        public var addTime: String?

        public var deploymentSetId: String?

        public var expiredTime: String?

        public var hostname: String?

        public var htEnabled: Bool?

        public var id: String?

        public var imageId: String?

        public var instanceType: String?

        public var ipAddress: String?

        public var keepAlive: Bool?

        public var publicIpAddress: String?

        public var queueName: String?

        public var spotStrategy: String?

        public var stateInSched: String?

        public var status: String?

        public var totalResources: ListNodesResponseBody.Nodes.TotalResources?

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
            try self.totalResources?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.addTime != nil {
                map["AddTime"] = self.addTime!
            }
            if self.deploymentSetId != nil {
                map["DeploymentSetId"] = self.deploymentSetId!
            }
            if self.expiredTime != nil {
                map["ExpiredTime"] = self.expiredTime!
            }
            if self.hostname != nil {
                map["Hostname"] = self.hostname!
            }
            if self.htEnabled != nil {
                map["HtEnabled"] = self.htEnabled!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.keepAlive != nil {
                map["KeepAlive"] = self.keepAlive!
            }
            if self.publicIpAddress != nil {
                map["PublicIpAddress"] = self.publicIpAddress!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            if self.stateInSched != nil {
                map["StateInSched"] = self.stateInSched!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.totalResources != nil {
                map["TotalResources"] = self.totalResources?.toMap()
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
            if let value = dict["AddTime"] as? String {
                self.addTime = value
            }
            if let value = dict["DeploymentSetId"] as? String {
                self.deploymentSetId = value
            }
            if let value = dict["ExpiredTime"] as? String {
                self.expiredTime = value
            }
            if let value = dict["Hostname"] as? String {
                self.hostname = value
            }
            if let value = dict["HtEnabled"] as? Bool {
                self.htEnabled = value
            }
            if let value = dict["Id"] as? String {
                self.id = value
            }
            if let value = dict["ImageId"] as? String {
                self.imageId = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IpAddress"] as? String {
                self.ipAddress = value
            }
            if let value = dict["KeepAlive"] as? Bool {
                self.keepAlive = value
            }
            if let value = dict["PublicIpAddress"] as? String {
                self.publicIpAddress = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["SpotStrategy"] as? String {
                self.spotStrategy = value
            }
            if let value = dict["StateInSched"] as? String {
                self.stateInSched = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TotalResources"] as? [String: Any?] {
                var model = ListNodesResponseBody.Nodes.TotalResources()
                model.fromMap(value)
                self.totalResources = model
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
    public var nodes: [ListNodesResponseBody.Nodes]?

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
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
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
        if let value = dict["Nodes"] as? [Any?] {
            var tmp : [ListNodesResponseBody.Nodes] = []
            for v in value {
                if v != nil {
                    var model = ListNodesResponseBody.Nodes()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.nodes = tmp
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

public class ListNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListQueuesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueNames: [String]?

    public override init() {
        super.init()
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
        if self.queueNames != nil {
            map["QueueNames"] = self.queueNames!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["QueueNames"] as? [String] {
            self.queueNames = value
        }
    }
}

public class ListQueuesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueNamesShrink: String?

    public override init() {
        super.init()
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
        if self.queueNamesShrink != nil {
            map["QueueNames"] = self.queueNamesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["QueueNames"] as? String {
            self.queueNamesShrink = value
        }
    }
}

public class ListQueuesResponseBody : Tea.TeaModel {
    public class Queues : Tea.TeaModel {
        public class Nodes : Tea.TeaModel {
            public var creatingCounts: Int32?

            public var exceptionCounts: Int32?

            public var runningCounts: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.creatingCounts != nil {
                    map["CreatingCounts"] = self.creatingCounts!
                }
                if self.exceptionCounts != nil {
                    map["ExceptionCounts"] = self.exceptionCounts!
                }
                if self.runningCounts != nil {
                    map["RunningCounts"] = self.runningCounts!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["CreatingCounts"] as? Int32 {
                    self.creatingCounts = value
                }
                if let value = dict["ExceptionCounts"] as? Int32 {
                    self.exceptionCounts = value
                }
                if let value = dict["RunningCounts"] as? Int32 {
                    self.runningCounts = value
                }
            }
        }
        public var computeNodes: [NodeTemplate]?

        public var createTime: String?

        public var enableScaleIn: Bool?

        public var enableScaleOut: Bool?

        public var maxCount: Int32?

        public var maxCountPerCycle: Int32?

        public var minCount: Int32?

        public var nodes: ListQueuesResponseBody.Queues.Nodes?

        public var queueName: String?

        public var totalCores: Int32?

        public var updateTime: String?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.nodes?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.computeNodes != nil {
                var tmp : [Any] = []
                for k in self.computeNodes! {
                    tmp.append(k.toMap())
                }
                map["ComputeNodes"] = tmp
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.enableScaleIn != nil {
                map["EnableScaleIn"] = self.enableScaleIn!
            }
            if self.enableScaleOut != nil {
                map["EnableScaleOut"] = self.enableScaleOut!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.maxCountPerCycle != nil {
                map["MaxCountPerCycle"] = self.maxCountPerCycle!
            }
            if self.minCount != nil {
                map["MinCount"] = self.minCount!
            }
            if self.nodes != nil {
                map["Nodes"] = self.nodes?.toMap()
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.totalCores != nil {
                map["TotalCores"] = self.totalCores!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ComputeNodes"] as? [Any?] {
                var tmp : [NodeTemplate] = []
                for v in value {
                    if v != nil {
                        var model = NodeTemplate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.computeNodes = tmp
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["EnableScaleIn"] as? Bool {
                self.enableScaleIn = value
            }
            if let value = dict["EnableScaleOut"] as? Bool {
                self.enableScaleOut = value
            }
            if let value = dict["MaxCount"] as? Int32 {
                self.maxCount = value
            }
            if let value = dict["MaxCountPerCycle"] as? Int32 {
                self.maxCountPerCycle = value
            }
            if let value = dict["MinCount"] as? Int32 {
                self.minCount = value
            }
            if let value = dict["Nodes"] as? [String: Any?] {
                var model = ListQueuesResponseBody.Queues.Nodes()
                model.fromMap(value)
                self.nodes = model
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["TotalCores"] as? Int32 {
                self.totalCores = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
        }
    }
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var queues: [ListQueuesResponseBody.Queues]?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.queues != nil {
            var tmp : [Any] = []
            for k in self.queues! {
                tmp.append(k.toMap())
            }
            map["Queues"] = tmp
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
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Queues"] as? [Any?] {
            var tmp : [ListQueuesResponseBody.Queues] = []
            for v in value {
                if v != nil {
                    var model = ListQueuesResponseBody.Queues()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.queues = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListQueuesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListQueuesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListQueuesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListRegionsRequest : Tea.TeaModel {
    public var acceptLanguage: String?

    public var maxResults: Int32?

    public var nextToken: String?

    public var specCode: String?

    public override init() {
        super.init()
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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.specCode != nil {
            map["SpecCode"] = self.specCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AcceptLanguage"] as? String {
            self.acceptLanguage = value
        }
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["SpecCode"] as? String {
            self.specCode = value
        }
    }
}

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var localName: String?

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
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
        }
    }
    public var maxResults: Int32?

    public var nextToken: String?

    public var regions: [ListRegionsResponseBody.Regions]?

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
        if self.maxResults != nil {
            map["MaxResults"] = self.maxResults!
        }
        if self.nextToken != nil {
            map["NextToken"] = self.nextToken!
        }
        if self.regions != nil {
            var tmp : [Any] = []
            for k in self.regions! {
                tmp.append(k.toMap())
            }
            map["Regions"] = tmp
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
        if let value = dict["MaxResults"] as? Int32 {
            self.maxResults = value
        }
        if let value = dict["NextToken"] as? String {
            self.nextToken = value
        }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [ListRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = ListRegionsResponseBody.Regions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.regions = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListRegionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListRegionsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListRegionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSharedStoragesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var fileSystemId: String?

    public var fileSystemType: String?

    public override init() {
        super.init()
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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
        }
        if self.fileSystemType != nil {
            map["FileSystemType"] = self.fileSystemType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["FileSystemId"] as? String {
            self.fileSystemId = value
        }
        if let value = dict["FileSystemType"] as? String {
            self.fileSystemType = value
        }
    }
}

public class ListSharedStoragesResponseBody : Tea.TeaModel {
    public class SharedStorages : Tea.TeaModel {
        public class MountInfo : Tea.TeaModel {
            public var mountDirectory: String?

            public var mountOptions: String?

            public var mountTarget: String?

            public var protocolType: String?

            public var storageDirectory: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.mountDirectory != nil {
                    map["MountDirectory"] = self.mountDirectory!
                }
                if self.mountOptions != nil {
                    map["MountOptions"] = self.mountOptions!
                }
                if self.mountTarget != nil {
                    map["MountTarget"] = self.mountTarget!
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.storageDirectory != nil {
                    map["StorageDirectory"] = self.storageDirectory!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["MountDirectory"] as? String {
                    self.mountDirectory = value
                }
                if let value = dict["MountOptions"] as? String {
                    self.mountOptions = value
                }
                if let value = dict["MountTarget"] as? String {
                    self.mountTarget = value
                }
                if let value = dict["ProtocolType"] as? String {
                    self.protocolType = value
                }
                if let value = dict["StorageDirectory"] as? String {
                    self.storageDirectory = value
                }
            }
        }
        public var fileSystemId: String?

        public var fileSystemProtocol: String?

        public var fileSystemType: String?

        public var mountInfo: [ListSharedStoragesResponseBody.SharedStorages.MountInfo]?

        public override init() {
            super.init()
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
            if self.fileSystemProtocol != nil {
                map["FileSystemProtocol"] = self.fileSystemProtocol!
            }
            if self.fileSystemType != nil {
                map["FileSystemType"] = self.fileSystemType!
            }
            if self.mountInfo != nil {
                var tmp : [Any] = []
                for k in self.mountInfo! {
                    tmp.append(k.toMap())
                }
                map["MountInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["FileSystemId"] as? String {
                self.fileSystemId = value
            }
            if let value = dict["FileSystemProtocol"] as? String {
                self.fileSystemProtocol = value
            }
            if let value = dict["FileSystemType"] as? String {
                self.fileSystemType = value
            }
            if let value = dict["MountInfo"] as? [Any?] {
                var tmp : [ListSharedStoragesResponseBody.SharedStorages.MountInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListSharedStoragesResponseBody.SharedStorages.MountInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.mountInfo = tmp
            }
        }
    }
    public var requestId: String?

    public var sharedStorages: [ListSharedStoragesResponseBody.SharedStorages]?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.sharedStorages != nil {
            var tmp : [Any] = []
            for k in self.sharedStorages! {
                tmp.append(k.toMap())
            }
            map["SharedStorages"] = tmp
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SharedStorages"] as? [Any?] {
            var tmp : [ListSharedStoragesResponseBody.SharedStorages] = []
            for v in value {
                if v != nil {
                    var model = ListSharedStoragesResponseBody.SharedStorages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.sharedStorages = tmp
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class ListSharedStoragesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSharedStoragesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSharedStoragesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListSoftwaresRequest : Tea.TeaModel {
    public class OsInfos : Tea.TeaModel {
        public var architecture: String?

        public var osTag: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.architecture != nil {
                map["Architecture"] = self.architecture!
            }
            if self.osTag != nil {
                map["OsTag"] = self.osTag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Architecture"] as? String {
                self.architecture = value
            }
            if let value = dict["OsTag"] as? String {
                self.osTag = value
            }
        }
    }
    public var category: String?

    public var clusterId: String?

    public var name: String?

    public var osInfos: [ListSoftwaresRequest.OsInfos]?

    public var pageNumber: String?

    public var pageSize: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.osInfos != nil {
            var tmp : [Any] = []
            for k in self.osInfos! {
                tmp.append(k.toMap())
            }
            map["OsInfos"] = tmp
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Category"] as? String {
            self.category = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["OsInfos"] as? [Any?] {
            var tmp : [ListSoftwaresRequest.OsInfos] = []
            for v in value {
                if v != nil {
                    var model = ListSoftwaresRequest.OsInfos()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.osInfos = tmp
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
    }
}

public class ListSoftwaresResponseBody : Tea.TeaModel {
    public class AdditionalPackages : Tea.TeaModel {
        public class AdditionalPackageInfos : Tea.TeaModel {
            public class Versions : Tea.TeaModel {
                public class VersionInfos : Tea.TeaModel {
                    public class SupportOs : Tea.TeaModel {
                        public class SupportOsInfos : Tea.TeaModel {
                            public var architecture: String?

                            public var osTag: String?

                            public override init() {
                                super.init()
                            }

                            public init(_ dict: [String: Any]) {
                                super.init()
                                self.fromMap(dict)
                            }

                            public override func validate() throws -> Void {
                            }

                            public override func toMap() -> [String : Any] {
                                var map = super.toMap()
                                if self.architecture != nil {
                                    map["Architecture"] = self.architecture!
                                }
                                if self.osTag != nil {
                                    map["OsTag"] = self.osTag!
                                }
                                return map
                            }

                            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                                guard let dict else { return }
                                if let value = dict["Architecture"] as? String {
                                    self.architecture = value
                                }
                                if let value = dict["OsTag"] as? String {
                                    self.osTag = value
                                }
                            }
                        }
                        public var supportOsInfos: [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs.SupportOsInfos]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.supportOsInfos != nil {
                                var tmp : [Any] = []
                                for k in self.supportOsInfos! {
                                    tmp.append(k.toMap())
                                }
                                map["SupportOsInfos"] = tmp
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any?]?) -> Void {
                            guard let dict else { return }
                            if let value = dict["SupportOsInfos"] as? [Any?] {
                                var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs.SupportOsInfos] = []
                                for v in value {
                                    if v != nil {
                                        var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs.SupportOsInfos()
                                        if v != nil {
                                            model.fromMap(v as? [String: Any?])
                                        }
                                        tmp.append(model)
                                    }
                                }
                                self.supportOsInfos = tmp
                            }
                        }
                    }
                    public var latest: String?

                    public var supportOs: ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs?

                    public var version: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.supportOs?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.latest != nil {
                            map["Latest"] = self.latest!
                        }
                        if self.supportOs != nil {
                            map["SupportOs"] = self.supportOs?.toMap()
                        }
                        if self.version != nil {
                            map["Version"] = self.version!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any?]?) -> Void {
                        guard let dict else { return }
                        if let value = dict["Latest"] as? String {
                            self.latest = value
                        }
                        if let value = dict["SupportOs"] as? [String: Any?] {
                            var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs()
                            model.fromMap(value)
                            self.supportOs = model
                        }
                        if let value = dict["Version"] as? String {
                            self.version = value
                        }
                    }
                }
                public var versionInfos: [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.versionInfos != nil {
                        var tmp : [Any] = []
                        for k in self.versionInfos! {
                            tmp.append(k.toMap())
                        }
                        map["VersionInfos"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any?]?) -> Void {
                    guard let dict else { return }
                    if let value = dict["VersionInfos"] as? [Any?] {
                        var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos] = []
                        for v in value {
                            if v != nil {
                                var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos()
                                if v != nil {
                                    model.fromMap(v as? [String: Any?])
                                }
                                tmp.append(model)
                            }
                        }
                        self.versionInfos = tmp
                    }
                }
            }
            public var category: String?

            public var description_: String?

            public var icon: String?

            public var name: String?

            public var versions: ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.versions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.category != nil {
                    map["Category"] = self.category!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.icon != nil {
                    map["Icon"] = self.icon!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.versions != nil {
                    map["Versions"] = self.versions?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Category"] as? String {
                    self.category = value
                }
                if let value = dict["Description"] as? String {
                    self.description_ = value
                }
                if let value = dict["Icon"] as? String {
                    self.icon = value
                }
                if let value = dict["Name"] as? String {
                    self.name = value
                }
                if let value = dict["Versions"] as? [String: Any?] {
                    var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions()
                    model.fromMap(value)
                    self.versions = model
                }
            }
        }
        public var additionalPackageInfos: [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.additionalPackageInfos != nil {
                var tmp : [Any] = []
                for k in self.additionalPackageInfos! {
                    tmp.append(k.toMap())
                }
                map["AdditionalPackageInfos"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AdditionalPackageInfos"] as? [Any?] {
                var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos] = []
                for v in value {
                    if v != nil {
                        var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.additionalPackageInfos = tmp
            }
        }
    }
    public var additionalPackages: ListSoftwaresResponseBody.AdditionalPackages?

    public var pageNumber: String?

    public var pageSize: String?

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
        try self.additionalPackages?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackages != nil {
            map["AdditionalPackages"] = self.additionalPackages?.toMap()
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
        if let value = dict["AdditionalPackages"] as? [String: Any?] {
            var model = ListSoftwaresResponseBody.AdditionalPackages()
            model.fromMap(value)
            self.additionalPackages = model
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? String {
            self.totalCount = value
        }
    }
}

public class ListSoftwaresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSoftwaresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListSoftwaresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListUsersRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public override init() {
        super.init()
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
    }
}

public class ListUsersResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class UserInfo : Tea.TeaModel {
            public var addTime: String?

            public var group: String?

            public var groupId: String?

            public var userId: String?

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
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.groupId != nil {
                    map["GroupId"] = self.groupId!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["AddTime"] as? String {
                    self.addTime = value
                }
                if let value = dict["Group"] as? String {
                    self.group = value
                }
                if let value = dict["GroupId"] as? String {
                    self.groupId = value
                }
                if let value = dict["UserId"] as? String {
                    self.userId = value
                }
                if let value = dict["UserName"] as? String {
                    self.userName = value
                }
            }
        }
        public var userInfo: [ListUsersResponseBody.Users.UserInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.userInfo != nil {
                var tmp : [Any] = []
                for k in self.userInfo! {
                    tmp.append(k.toMap())
                }
                map["UserInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["UserInfo"] as? [Any?] {
                var tmp : [ListUsersResponseBody.Users.UserInfo] = []
                for v in value {
                    if v != nil {
                        var model = ListUsersResponseBody.Users.UserInfo()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.userInfo = tmp
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var users: ListUsersResponseBody.Users?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.users?.validate()
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
        if self.users != nil {
            map["Users"] = self.users?.toMap()
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
        if let value = dict["Users"] as? [String: Any?] {
            var model = ListUsersResponseBody.Users()
            model.fromMap(value)
            self.users = model
        }
    }
}

public class ListUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListUsersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobIds: [String]?

    public override init() {
        super.init()
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
        if self.jobIds != nil {
            map["JobIds"] = self.jobIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? [String] {
            self.jobIds = value
        }
    }
}

public class StopJobsShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobIdsShrink: String?

    public override init() {
        super.init()
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
        if self.jobIdsShrink != nil {
            map["JobIds"] = self.jobIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["JobIds"] as? String {
            self.jobIdsShrink = value
        }
    }
}

public class StopJobsResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class StopJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = StopJobsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UnInstallAddonRequest : Tea.TeaModel {
    public var addonId: String?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.addonId != nil {
            map["AddonId"] = self.addonId!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AddonId"] as? String {
            self.addonId = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class UnInstallAddonResponseBody : Tea.TeaModel {
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

public class UnInstallAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnInstallAddonResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UnInstallAddonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UninstallSoftwaresRequest : Tea.TeaModel {
    public class AdditionalPackages : Tea.TeaModel {
        public var name: String?

        public var version: String?

        public override init() {
            super.init()
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
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Version"] as? String {
                self.version = value
            }
        }
    }
    public var additionalPackages: [UninstallSoftwaresRequest.AdditionalPackages]?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackages != nil {
            var tmp : [Any] = []
            for k in self.additionalPackages! {
                tmp.append(k.toMap())
            }
            map["AdditionalPackages"] = tmp
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? [Any?] {
            var tmp : [UninstallSoftwaresRequest.AdditionalPackages] = []
            for v in value {
                if v != nil {
                    var model = UninstallSoftwaresRequest.AdditionalPackages()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.additionalPackages = tmp
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class UninstallSoftwaresShrinkRequest : Tea.TeaModel {
    public var additionalPackagesShrink: String?

    public var clusterId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.additionalPackagesShrink != nil {
            map["AdditionalPackages"] = self.additionalPackagesShrink!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AdditionalPackages"] as? String {
            self.additionalPackagesShrink = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
    }
}

public class UninstallSoftwaresResponseBody : Tea.TeaModel {
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

public class UninstallSoftwaresResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallSoftwaresResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UninstallSoftwaresResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateClusterRequest : Tea.TeaModel {
    public class ClusterCustomConfiguration : Tea.TeaModel {
        public var args: String?

        public var script: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.args != nil {
                map["Args"] = self.args!
            }
            if self.script != nil {
                map["Script"] = self.script!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Args"] as? String {
                self.args = value
            }
            if let value = dict["Script"] as? String {
                self.script = value
            }
        }
    }
    public class MonitorSpec : Tea.TeaModel {
        public var enableComputeLoadMonitor: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableComputeLoadMonitor != nil {
                map["EnableComputeLoadMonitor"] = self.enableComputeLoadMonitor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableComputeLoadMonitor"] as? Bool {
                self.enableComputeLoadMonitor = value
            }
        }
    }
    public class SchedulerSpec : Tea.TeaModel {
        public var enableTopologyAwareness: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enableTopologyAwareness != nil {
                map["EnableTopologyAwareness"] = self.enableTopologyAwareness!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["EnableTopologyAwareness"] as? Bool {
                self.enableTopologyAwareness = value
            }
        }
    }
    public var clientVersion: String?

    public var clusterCustomConfiguration: UpdateClusterRequest.ClusterCustomConfiguration?

    public var clusterDescription: String?

    public var clusterId: String?

    public var clusterName: String?

    public var deletionProtection: Bool?

    public var enableScaleIn: Bool?

    public var enableScaleOut: Bool?

    public var growInterval: Int32?

    public var idleInterval: Int32?

    public var maxCoreCount: Int32?

    public var maxCount: Int32?

    public var monitorSpec: UpdateClusterRequest.MonitorSpec?

    public var schedulerSpec: UpdateClusterRequest.SchedulerSpec?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterCustomConfiguration?.validate()
        try self.monitorSpec?.validate()
        try self.schedulerSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterCustomConfiguration != nil {
            map["ClusterCustomConfiguration"] = self.clusterCustomConfiguration?.toMap()
        }
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.enableScaleIn != nil {
            map["EnableScaleIn"] = self.enableScaleIn!
        }
        if self.enableScaleOut != nil {
            map["EnableScaleOut"] = self.enableScaleOut!
        }
        if self.growInterval != nil {
            map["GrowInterval"] = self.growInterval!
        }
        if self.idleInterval != nil {
            map["IdleInterval"] = self.idleInterval!
        }
        if self.maxCoreCount != nil {
            map["MaxCoreCount"] = self.maxCoreCount!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.monitorSpec != nil {
            map["MonitorSpec"] = self.monitorSpec?.toMap()
        }
        if self.schedulerSpec != nil {
            map["SchedulerSpec"] = self.schedulerSpec?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ClusterCustomConfiguration"] as? [String: Any?] {
            var model = UpdateClusterRequest.ClusterCustomConfiguration()
            model.fromMap(value)
            self.clusterCustomConfiguration = model
        }
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["EnableScaleIn"] as? Bool {
            self.enableScaleIn = value
        }
        if let value = dict["EnableScaleOut"] as? Bool {
            self.enableScaleOut = value
        }
        if let value = dict["GrowInterval"] as? Int32 {
            self.growInterval = value
        }
        if let value = dict["IdleInterval"] as? Int32 {
            self.idleInterval = value
        }
        if let value = dict["MaxCoreCount"] as? Int32 {
            self.maxCoreCount = value
        }
        if let value = dict["MaxCount"] as? Int32 {
            self.maxCount = value
        }
        if let value = dict["MonitorSpec"] as? [String: Any?] {
            var model = UpdateClusterRequest.MonitorSpec()
            model.fromMap(value)
            self.monitorSpec = model
        }
        if let value = dict["SchedulerSpec"] as? [String: Any?] {
            var model = UpdateClusterRequest.SchedulerSpec()
            model.fromMap(value)
            self.schedulerSpec = model
        }
    }
}

public class UpdateClusterShrinkRequest : Tea.TeaModel {
    public var clientVersion: String?

    public var clusterCustomConfigurationShrink: String?

    public var clusterDescription: String?

    public var clusterId: String?

    public var clusterName: String?

    public var deletionProtection: Bool?

    public var enableScaleIn: Bool?

    public var enableScaleOut: Bool?

    public var growInterval: Int32?

    public var idleInterval: Int32?

    public var maxCoreCount: Int32?

    public var maxCount: Int32?

    public var monitorSpecShrink: String?

    public var schedulerSpecShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterCustomConfigurationShrink != nil {
            map["ClusterCustomConfiguration"] = self.clusterCustomConfigurationShrink!
        }
        if self.clusterDescription != nil {
            map["ClusterDescription"] = self.clusterDescription!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterName != nil {
            map["ClusterName"] = self.clusterName!
        }
        if self.deletionProtection != nil {
            map["DeletionProtection"] = self.deletionProtection!
        }
        if self.enableScaleIn != nil {
            map["EnableScaleIn"] = self.enableScaleIn!
        }
        if self.enableScaleOut != nil {
            map["EnableScaleOut"] = self.enableScaleOut!
        }
        if self.growInterval != nil {
            map["GrowInterval"] = self.growInterval!
        }
        if self.idleInterval != nil {
            map["IdleInterval"] = self.idleInterval!
        }
        if self.maxCoreCount != nil {
            map["MaxCoreCount"] = self.maxCoreCount!
        }
        if self.maxCount != nil {
            map["MaxCount"] = self.maxCount!
        }
        if self.monitorSpecShrink != nil {
            map["MonitorSpec"] = self.monitorSpecShrink!
        }
        if self.schedulerSpecShrink != nil {
            map["SchedulerSpec"] = self.schedulerSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClientVersion"] as? String {
            self.clientVersion = value
        }
        if let value = dict["ClusterCustomConfiguration"] as? String {
            self.clusterCustomConfigurationShrink = value
        }
        if let value = dict["ClusterDescription"] as? String {
            self.clusterDescription = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["ClusterName"] as? String {
            self.clusterName = value
        }
        if let value = dict["DeletionProtection"] as? Bool {
            self.deletionProtection = value
        }
        if let value = dict["EnableScaleIn"] as? Bool {
            self.enableScaleIn = value
        }
        if let value = dict["EnableScaleOut"] as? Bool {
            self.enableScaleOut = value
        }
        if let value = dict["GrowInterval"] as? Int32 {
            self.growInterval = value
        }
        if let value = dict["IdleInterval"] as? Int32 {
            self.idleInterval = value
        }
        if let value = dict["MaxCoreCount"] as? Int32 {
            self.maxCoreCount = value
        }
        if let value = dict["MaxCount"] as? Int32 {
            self.maxCount = value
        }
        if let value = dict["MonitorSpec"] as? String {
            self.monitorSpecShrink = value
        }
        if let value = dict["SchedulerSpec"] as? String {
            self.schedulerSpecShrink = value
        }
    }
}

public class UpdateClusterResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClusterResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateClusterResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateNodesRequest : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public var instanceId: String?

        public var keepAlive: Bool?

        public override init() {
            super.init()
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
            if self.keepAlive != nil {
                map["KeepAlive"] = self.keepAlive!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceId"] as? String {
                self.instanceId = value
            }
            if let value = dict["KeepAlive"] as? Bool {
                self.keepAlive = value
            }
        }
    }
    public var clusterId: String?

    public var instances: [UpdateNodesRequest.Instances]?

    public override init() {
        super.init()
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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [UpdateNodesRequest.Instances] = []
            for v in value {
                if v != nil {
                    var model = UpdateNodesRequest.Instances()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
        }
    }
}

public class UpdateNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var instancesShrink: String?

    public override init() {
        super.init()
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
        if self.instancesShrink != nil {
            map["Instances"] = self.instancesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Instances"] as? String {
            self.instancesShrink = value
        }
    }
}

public class UpdateNodesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateNodesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateNodesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateQueueRequest : Tea.TeaModel {
    public class Queue : Tea.TeaModel {
        public var allocationStrategy: String?

        public var computeNodes: [NodeTemplate]?

        public var enableScaleIn: Bool?

        public var enableScaleOut: Bool?

        public var hostnamePrefix: String?

        public var hostnameSuffix: String?

        public var initialCount: Int32?

        public var interConnect: String?

        public var keepAliveNodes: [String]?

        public var maxCount: Int32?

        public var maxCountPerCycle: Int64?

        public var minCount: Int32?

        public var queueName: String?

        public var ramRole: String?

        public var reservedNodePoolId: String?

        public var vSwitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationStrategy != nil {
                map["AllocationStrategy"] = self.allocationStrategy!
            }
            if self.computeNodes != nil {
                var tmp : [Any] = []
                for k in self.computeNodes! {
                    tmp.append(k.toMap())
                }
                map["ComputeNodes"] = tmp
            }
            if self.enableScaleIn != nil {
                map["EnableScaleIn"] = self.enableScaleIn!
            }
            if self.enableScaleOut != nil {
                map["EnableScaleOut"] = self.enableScaleOut!
            }
            if self.hostnamePrefix != nil {
                map["HostnamePrefix"] = self.hostnamePrefix!
            }
            if self.hostnameSuffix != nil {
                map["HostnameSuffix"] = self.hostnameSuffix!
            }
            if self.initialCount != nil {
                map["InitialCount"] = self.initialCount!
            }
            if self.interConnect != nil {
                map["InterConnect"] = self.interConnect!
            }
            if self.keepAliveNodes != nil {
                map["KeepAliveNodes"] = self.keepAliveNodes!
            }
            if self.maxCount != nil {
                map["MaxCount"] = self.maxCount!
            }
            if self.maxCountPerCycle != nil {
                map["MaxCountPerCycle"] = self.maxCountPerCycle!
            }
            if self.minCount != nil {
                map["MinCount"] = self.minCount!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.ramRole != nil {
                map["RamRole"] = self.ramRole!
            }
            if self.reservedNodePoolId != nil {
                map["ReservedNodePoolId"] = self.reservedNodePoolId!
            }
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AllocationStrategy"] as? String {
                self.allocationStrategy = value
            }
            if let value = dict["ComputeNodes"] as? [Any?] {
                var tmp : [NodeTemplate] = []
                for v in value {
                    if v != nil {
                        var model = NodeTemplate()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.computeNodes = tmp
            }
            if let value = dict["EnableScaleIn"] as? Bool {
                self.enableScaleIn = value
            }
            if let value = dict["EnableScaleOut"] as? Bool {
                self.enableScaleOut = value
            }
            if let value = dict["HostnamePrefix"] as? String {
                self.hostnamePrefix = value
            }
            if let value = dict["HostnameSuffix"] as? String {
                self.hostnameSuffix = value
            }
            if let value = dict["InitialCount"] as? Int32 {
                self.initialCount = value
            }
            if let value = dict["InterConnect"] as? String {
                self.interConnect = value
            }
            if let value = dict["KeepAliveNodes"] as? [String] {
                self.keepAliveNodes = value
            }
            if let value = dict["MaxCount"] as? Int32 {
                self.maxCount = value
            }
            if let value = dict["MaxCountPerCycle"] as? Int64 {
                self.maxCountPerCycle = value
            }
            if let value = dict["MinCount"] as? Int32 {
                self.minCount = value
            }
            if let value = dict["QueueName"] as? String {
                self.queueName = value
            }
            if let value = dict["RamRole"] as? String {
                self.ramRole = value
            }
            if let value = dict["ReservedNodePoolId"] as? String {
                self.reservedNodePoolId = value
            }
            if let value = dict["VSwitchIds"] as? [String] {
                self.vSwitchIds = value
            }
        }
    }
    public var clusterId: String?

    public var queue: UpdateQueueRequest.Queue?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queue?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.queue != nil {
            map["Queue"] = self.queue?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Queue"] as? [String: Any?] {
            var model = UpdateQueueRequest.Queue()
            model.fromMap(value)
            self.queue = model
        }
    }
}

public class UpdateQueueShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var queueShrink: String?

    public override init() {
        super.init()
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
        if self.queueShrink != nil {
            map["Queue"] = self.queueShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Queue"] as? String {
            self.queueShrink = value
        }
    }
}

public class UpdateQueueResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? Bool {
            self.success = value
        }
    }
}

public class UpdateQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQueueResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateQueueResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateUserRequest : Tea.TeaModel {
    public var clusterId: String?

    public var group: String?

    public var password: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.group != nil {
            map["Group"] = self.group!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["Group"] as? String {
            self.group = value
        }
        if let value = dict["Password"] as? String {
            self.password = value
        }
        if let value = dict["UserName"] as? String {
            self.userName = value
        }
    }
}

public class UpdateUserResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.success != nil {
            map["Success"] = self.success!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Success"] as? String {
            self.success = value
        }
    }
}

public class UpdateUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateUserResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = UpdateUserResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
