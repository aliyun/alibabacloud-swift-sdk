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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DeleteWithInstance") {
                self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("DataDisks") {
            var tmp : [AddonNodeTemplate.DataDisks] = []
            for v in dict["DataDisks"] as! [Any] {
                var model = AddonNodeTemplate.DataDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisks = tmp
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EnableHT") {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OsName") {
            self.osName = dict["OsName"] as! String
        }
        if dict.keys.contains("OsNameEN") {
            self.osNameEN = dict["OsNameEN"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SystemDisk") {
            var model = AddonNodeTemplate.SystemDisk()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
            self.systemDisk = model
        }
    }
}

public class NodeTemplate : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DeleteWithInstance") {
                self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Category") {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Level") {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("DataDisks") {
            var tmp : [NodeTemplate.DataDisks] = []
            for v in dict["DataDisks"] as! [Any] {
                var model = NodeTemplate.DataDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.dataDisks = tmp
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EnableHT") {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SystemDisk") {
            var model = NodeTemplate.SystemDisk()
            model.fromMap(dict["SystemDisk"] as! [String: Any])
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
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocationStrategy") {
            self.allocationStrategy = dict["AllocationStrategy"] as! String
        }
        if dict.keys.contains("ComputeNodes") {
            var tmp : [NodeTemplate] = []
            for v in dict["ComputeNodes"] as! [Any] {
                var model = NodeTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.computeNodes = tmp
        }
        if dict.keys.contains("EnableScaleIn") {
            self.enableScaleIn = dict["EnableScaleIn"] as! Bool
        }
        if dict.keys.contains("EnableScaleOut") {
            self.enableScaleOut = dict["EnableScaleOut"] as! Bool
        }
        if dict.keys.contains("HostnamePrefix") {
            self.hostnamePrefix = dict["HostnamePrefix"] as! String
        }
        if dict.keys.contains("HostnameSuffix") {
            self.hostnameSuffix = dict["HostnameSuffix"] as! String
        }
        if dict.keys.contains("InitialCount") {
            self.initialCount = dict["InitialCount"] as! Int32
        }
        if dict.keys.contains("InterConnect") {
            self.interConnect = dict["InterConnect"] as! String
        }
        if dict.keys.contains("KeepAliveNodes") {
            self.keepAliveNodes = dict["KeepAliveNodes"] as! [String]
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! Int32
        }
        if dict.keys.contains("MaxCountPerCycle") {
            self.maxCountPerCycle = dict["MaxCountPerCycle"] as! Int64
        }
        if dict.keys.contains("MinCount") {
            self.minCount = dict["MinCount"] as! Int32
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("VSwitchIds") {
            self.vSwitchIds = dict["VSwitchIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("MountDirectory") {
            self.mountDirectory = dict["MountDirectory"] as! String
        }
        if dict.keys.contains("MountOptions") {
            self.mountOptions = dict["MountOptions"] as! String
        }
        if dict.keys.contains("MountTargetDomain") {
            self.mountTargetDomain = dict["MountTargetDomain"] as! String
        }
        if dict.keys.contains("NASDirectory") {
            self.NASDirectory = dict["NASDirectory"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileSystemId") {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("MountDirectory") {
                self.mountDirectory = dict["MountDirectory"] as! String
            }
            if dict.keys.contains("MountOptions") {
                self.mountOptions = dict["MountOptions"] as! String
            }
            if dict.keys.contains("MountTarget") {
                self.mountTarget = dict["MountTarget"] as! String
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("StorageDirectory") {
                self.storageDirectory = dict["StorageDirectory"] as! String
            }
            if dict.keys.contains("VolumeType") {
                self.volumeType = dict["VolumeType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            var tmp : [AttachSharedStoragesRequest.SharedStorages] = []
            for v in dict["SharedStorages"] as! [Any] {
                var model = AttachSharedStoragesRequest.SharedStorages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            self.sharedStoragesShrink = dict["SharedStorages"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AttachSharedStoragesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourcesSpec") {
                self.resourcesSpec = dict["ResourcesSpec"] as! String
            }
            if dict.keys.contains("ServicesSpec") {
                self.servicesSpec = dict["ServicesSpec"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Script") {
                self.script = dict["Script"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DNS") {
                var model = CreateClusterRequest.Manager.DNS()
                model.fromMap(dict["DNS"] as! [String: Any])
                self.DNS = model
            }
            if dict.keys.contains("DirectoryService") {
                var model = CreateClusterRequest.Manager.DirectoryService()
                model.fromMap(dict["DirectoryService"] as! [String: Any])
                self.directoryService = model
            }
            if dict.keys.contains("ManagerNode") {
                var model = NodeTemplate()
                model.fromMap(dict["ManagerNode"] as! [String: Any])
                self.managerNode = model
            }
            if dict.keys.contains("Scheduler") {
                var model = CreateClusterRequest.Manager.Scheduler()
                model.fromMap(dict["Scheduler"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            var tmp : [CreateClusterRequest.AdditionalPackages] = []
            for v in dict["AdditionalPackages"] as! [Any] {
                var model = CreateClusterRequest.AdditionalPackages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.additionalPackages = tmp
        }
        if dict.keys.contains("Addons") {
            var tmp : [CreateClusterRequest.Addons] = []
            for v in dict["Addons"] as! [Any] {
                var model = CreateClusterRequest.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterCategory") {
            self.clusterCategory = dict["ClusterCategory"] as! String
        }
        if dict.keys.contains("ClusterCredentials") {
            var model = CreateClusterRequest.ClusterCredentials()
            model.fromMap(dict["ClusterCredentials"] as! [String: Any])
            self.clusterCredentials = model
        }
        if dict.keys.contains("ClusterCustomConfiguration") {
            var model = CreateClusterRequest.ClusterCustomConfiguration()
            model.fromMap(dict["ClusterCustomConfiguration"] as! [String: Any])
            self.clusterCustomConfiguration = model
        }
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterMode") {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterVSwitchId") {
            self.clusterVSwitchId = dict["ClusterVSwitchId"] as! String
        }
        if dict.keys.contains("ClusterVpcId") {
            self.clusterVpcId = dict["ClusterVpcId"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("IsEnterpriseSecurityGroup") {
            self.isEnterpriseSecurityGroup = dict["IsEnterpriseSecurityGroup"] as! Bool
        }
        if dict.keys.contains("Manager") {
            var model = CreateClusterRequest.Manager()
            model.fromMap(dict["Manager"] as! [String: Any])
            self.manager = model
        }
        if dict.keys.contains("MaxCoreCount") {
            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! Int32
        }
        if dict.keys.contains("Queues") {
            var tmp : [QueueTemplate] = []
            for v in dict["Queues"] as! [Any] {
                var model = QueueTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queues = tmp
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            var tmp : [SharedStorageTemplate] = []
            for v in dict["SharedStorages"] as! [Any] {
                var model = SharedStorageTemplate()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sharedStorages = tmp
        }
        if dict.keys.contains("Tags") {
            var tmp : [CreateClusterRequest.Tags] = []
            for v in dict["Tags"] as! [Any] {
                var model = CreateClusterRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            self.additionalPackagesShrink = dict["AdditionalPackages"] as! String
        }
        if dict.keys.contains("Addons") {
            self.addonsShrink = dict["Addons"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterCategory") {
            self.clusterCategory = dict["ClusterCategory"] as! String
        }
        if dict.keys.contains("ClusterCredentials") {
            self.clusterCredentialsShrink = dict["ClusterCredentials"] as! String
        }
        if dict.keys.contains("ClusterCustomConfiguration") {
            self.clusterCustomConfigurationShrink = dict["ClusterCustomConfiguration"] as! String
        }
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterMode") {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterVSwitchId") {
            self.clusterVSwitchId = dict["ClusterVSwitchId"] as! String
        }
        if dict.keys.contains("ClusterVpcId") {
            self.clusterVpcId = dict["ClusterVpcId"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("IsEnterpriseSecurityGroup") {
            self.isEnterpriseSecurityGroup = dict["IsEnterpriseSecurityGroup"] as! Bool
        }
        if dict.keys.contains("Manager") {
            self.managerShrink = dict["Manager"] as! String
        }
        if dict.keys.contains("MaxCoreCount") {
            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! Int32
        }
        if dict.keys.contains("Queues") {
            self.queuesShrink = dict["Queues"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            self.sharedStoragesShrink = dict["SharedStorages"] as! String
        }
        if dict.keys.contains("Tags") {
            self.tagsShrink = dict["Tags"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

public class CreateNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeNode: NodeTemplate?

    public var count: Int32?

    public var HPCInterConnect: String?

    public var hostnamePrefix: String?

    public var hostnameSuffix: String?

    public var keepAlive: String?

    public var queueName: String?

    public var ramRole: String?

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
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.hostnamePrefix != nil {
            map["HostnamePrefix"] = self.hostnamePrefix!
        }
        if self.hostnameSuffix != nil {
            map["HostnameSuffix"] = self.hostnameSuffix!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeNode") {
            var model = NodeTemplate()
            model.fromMap(dict["ComputeNode"] as! [String: Any])
            self.computeNode = model
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("HPCInterConnect") {
            self.HPCInterConnect = dict["HPCInterConnect"] as! String
        }
        if dict.keys.contains("HostnamePrefix") {
            self.hostnamePrefix = dict["HostnamePrefix"] as! String
        }
        if dict.keys.contains("HostnameSuffix") {
            self.hostnameSuffix = dict["HostnameSuffix"] as! String
        }
        if dict.keys.contains("KeepAlive") {
            self.keepAlive = dict["KeepAlive"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
    }
}

public class CreateNodesShrinkRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeNodeShrink: String?

    public var count: Int32?

    public var HPCInterConnect: String?

    public var hostnamePrefix: String?

    public var hostnameSuffix: String?

    public var keepAlive: String?

    public var queueName: String?

    public var ramRole: String?

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
        if self.HPCInterConnect != nil {
            map["HPCInterConnect"] = self.HPCInterConnect!
        }
        if self.hostnamePrefix != nil {
            map["HostnamePrefix"] = self.hostnamePrefix!
        }
        if self.hostnameSuffix != nil {
            map["HostnameSuffix"] = self.hostnameSuffix!
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
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeNode") {
            self.computeNodeShrink = dict["ComputeNode"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("HPCInterConnect") {
            self.HPCInterConnect = dict["HPCInterConnect"] as! String
        }
        if dict.keys.contains("HostnamePrefix") {
            self.hostnamePrefix = dict["HostnamePrefix"] as! String
        }
        if dict.keys.contains("HostnameSuffix") {
            self.hostnameSuffix = dict["HostnameSuffix"] as! String
        }
        if dict.keys.contains("KeepAlive") {
            self.keepAlive = dict["KeepAlive"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("RamRole") {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Queue") {
            var model = QueueTemplate()
            model.fromMap(dict["Queue"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Queue") {
            self.queueShrink = dict["Queue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AuthKey") {
                self.authKey = dict["AuthKey"] as! String
            }
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            var tmp : [CreateUsersRequest.User] = []
            for v in dict["User"] as! [Any] {
                var model = CreateUsersRequest.User()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            self.userShrink = dict["User"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

public class DeleteJobsRequest : Tea.TeaModel {
    public class JobSpec : Tea.TeaModel {
        public class TaskSpec : Tea.TeaModel {
            public var arrayIndex: [Int32]?

            public var taskName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayIndex != nil {
                    map["ArrayIndex"] = self.arrayIndex!
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayIndex") {
                    self.arrayIndex = dict["ArrayIndex"] as! [Int32]
                }
                if dict.keys.contains("TaskName") {
                    self.taskName = dict["TaskName"] as! String
                }
            }
        }
        public var jobId: String?

        public var taskSpec: [DeleteJobsRequest.JobSpec.TaskSpec]?

        public override init() {
            super.init()
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
            if self.taskSpec != nil {
                var tmp : [Any] = []
                for k in self.taskSpec! {
                    tmp.append(k.toMap())
                }
                map["TaskSpec"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobId") {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("TaskSpec") {
                var tmp : [DeleteJobsRequest.JobSpec.TaskSpec] = []
                for v in dict["TaskSpec"] as! [Any] {
                    var model = DeleteJobsRequest.JobSpec.TaskSpec()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taskSpec = tmp
            }
        }
    }
    public var jobSpec: [DeleteJobsRequest.JobSpec]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobSpec != nil {
            var tmp : [Any] = []
            for k in self.jobSpec! {
                tmp.append(k.toMap())
            }
            map["JobSpec"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobSpec") {
            var tmp : [DeleteJobsRequest.JobSpec] = []
            for v in dict["JobSpec"] as! [Any] {
                var model = DeleteJobsRequest.JobSpec()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobSpec = tmp
        }
    }
}

public class DeleteJobsShrinkRequest : Tea.TeaModel {
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
        if self.jobSpecShrink != nil {
            map["JobSpec"] = self.jobSpecShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobSpec") {
            self.jobSpecShrink = dict["JobSpec"] as! String
        }
    }
}

public class DeleteJobsResponseBody : Tea.TeaModel {
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

public class DeleteJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobsResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = DeleteJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIdsShrink = dict["InstanceIds"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("QueueNames") {
            self.queueNames = dict["QueueNames"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("QueueNames") {
            self.queueNamesShrink = dict["QueueNames"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteQueuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserName") {
                self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            var tmp : [DeleteUsersRequest.User] = []
            for v in dict["User"] as! [Any] {
                var model = DeleteUsersRequest.User()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("User") {
            self.userShrink = dict["User"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonName") {
            self.addonName = dict["AddonName"] as! String
        }
        if dict.keys.contains("AddonVersion") {
            self.addonVersion = dict["AddonVersion"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AutoCreate") {
                        self.autoCreate = dict["AutoCreate"] as! Bool
                    }
                    if dict.keys.contains("Bandwidth") {
                        self.bandwidth = dict["Bandwidth"] as! String
                    }
                    if dict.keys.contains("EipInstanceId") {
                        self.eipInstanceId = dict["EipInstanceId"] as! String
                    }
                    if dict.keys.contains("InstanceChargeType") {
                        self.instanceChargeType = dict["InstanceChargeType"] as! String
                    }
                    if dict.keys.contains("InternetChargeType") {
                        self.internetChargeType = dict["InternetChargeType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsResources") {
                    var tmp : [AddonNodeTemplate] = []
                    for v in dict["EcsResources"] as! [Any] {
                        var model = AddonNodeTemplate()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ecsResources = tmp
                }
                if dict.keys.contains("EipResource") {
                    var model = DescribeAddonTemplateResponseBody.Addon.ResourcesSpec.EipResource()
                    model.fromMap(dict["EipResource"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HelpText") {
                        self.helpText = dict["HelpText"] as! String
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IpProtocol") {
                        self.ipProtocol = dict["IpProtocol"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Double
                    }
                    if dict.keys.contains("SourceCidrIp") {
                        self.sourceCidrIp = dict["SourceCidrIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputParams") {
                    var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.InputParams] = []
                    for v in dict["InputParams"] as! [Any] {
                        var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec.InputParams()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.inputParams = tmp
                }
                if dict.keys.contains("NetworkACL") {
                    var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec.NetworkACL] = []
                    for v in dict["NetworkACL"] as! [Any] {
                        var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec.NetworkACL()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.networkACL = tmp
                }
                if dict.keys.contains("ServiceAccessType") {
                    self.serviceAccessType = dict["ServiceAccessType"] as! String
                }
                if dict.keys.contains("ServiceAccessUrl") {
                    self.serviceAccessUrl = dict["ServiceAccessUrl"] as! String
                }
                if dict.keys.contains("ServiceName") {
                    self.serviceName = dict["ServiceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("LastUpdate") {
                self.lastUpdate = dict["LastUpdate"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourcesSpec") {
                var model = DescribeAddonTemplateResponseBody.Addon.ResourcesSpec()
                model.fromMap(dict["ResourcesSpec"] as! [String: Any])
                self.resourcesSpec = model
            }
            if dict.keys.contains("ServicesSpec") {
                var tmp : [DescribeAddonTemplateResponseBody.Addon.ServicesSpec] = []
                for v in dict["ServicesSpec"] as! [Any] {
                    var model = DescribeAddonTemplateResponseBody.Addon.ServicesSpec()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.servicesSpec = tmp
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addon") {
            var model = DescribeAddonTemplateResponseBody.Addon()
            model.fromMap(dict["Addon"] as! [String: Any])
            self.addon = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAddonTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MountDirectory") {
                self.mountDirectory = dict["MountDirectory"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            var tmp : [DetachSharedStoragesRequest.SharedStorages] = []
            for v in dict["SharedStorages"] as! [Any] {
                var model = DetachSharedStoragesRequest.SharedStorages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            self.sharedStoragesShrink = dict["SharedStorages"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DetachSharedStoragesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonId") {
            self.addonId = dict["AddonId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AutoCreate") {
                        self.autoCreate = dict["AutoCreate"] as! Bool
                    }
                    if dict.keys.contains("Bandwidth") {
                        self.bandwidth = dict["Bandwidth"] as! String
                    }
                    if dict.keys.contains("EipAddress") {
                        self.eipAddress = dict["EipAddress"] as! String
                    }
                    if dict.keys.contains("EipInstanceId") {
                        self.eipInstanceId = dict["EipInstanceId"] as! String
                    }
                    if dict.keys.contains("InstanceChargeType") {
                        self.instanceChargeType = dict["InstanceChargeType"] as! String
                    }
                    if dict.keys.contains("InternetChargeType") {
                        self.internetChargeType = dict["InternetChargeType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("EcsResources") {
                    var tmp : [AddonNodeTemplate] = []
                    for v in dict["EcsResources"] as! [Any] {
                        var model = AddonNodeTemplate()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.ecsResources = tmp
                }
                if dict.keys.contains("EipResource") {
                    var model = GetAddonResponseBody.Addon.ResourcesSpec.EipResource()
                    model.fromMap(dict["EipResource"] as! [String: Any])
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HelpText") {
                        self.helpText = dict["HelpText"] as! String
                    }
                    if dict.keys.contains("Label") {
                        self.label = dict["Label"] as! String
                    }
                    if dict.keys.contains("Name") {
                        self.name = dict["Name"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Value") {
                        self.value = dict["Value"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IpProtocol") {
                        self.ipProtocol = dict["IpProtocol"] as! String
                    }
                    if dict.keys.contains("Port") {
                        self.port = dict["Port"] as! Double
                    }
                    if dict.keys.contains("SourceCidrIp") {
                        self.sourceCidrIp = dict["SourceCidrIp"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InputParams") {
                    var tmp : [GetAddonResponseBody.Addon.ServicesSpec.InputParams] = []
                    for v in dict["InputParams"] as! [Any] {
                        var model = GetAddonResponseBody.Addon.ServicesSpec.InputParams()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.inputParams = tmp
                }
                if dict.keys.contains("NetworkACL") {
                    var tmp : [GetAddonResponseBody.Addon.ServicesSpec.NetworkACL] = []
                    for v in dict["NetworkACL"] as! [Any] {
                        var model = GetAddonResponseBody.Addon.ServicesSpec.NetworkACL()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.networkACL = tmp
                }
                if dict.keys.contains("ServiceAccessType") {
                    self.serviceAccessType = dict["ServiceAccessType"] as! String
                }
                if dict.keys.contains("ServiceAccessUrl") {
                    self.serviceAccessUrl = dict["ServiceAccessUrl"] as! String
                }
                if dict.keys.contains("ServiceName") {
                    self.serviceName = dict["ServiceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddonId") {
                self.addonId = dict["AddonId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Icon") {
                self.icon = dict["Icon"] as! String
            }
            if dict.keys.contains("InstallTime") {
                self.installTime = dict["InstallTime"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("ResourcesSpec") {
                var model = GetAddonResponseBody.Addon.ResourcesSpec()
                model.fromMap(dict["ResourcesSpec"] as! [String: Any])
                self.resourcesSpec = model
            }
            if dict.keys.contains("ServicesSpec") {
                var tmp : [GetAddonResponseBody.Addon.ServicesSpec] = []
                for v in dict["ServicesSpec"] as! [Any] {
                    var model = GetAddonResponseBody.Addon.ServicesSpec()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.servicesSpec = tmp
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addon") {
            var model = GetAddonResponseBody.Addon()
            model.fromMap(dict["Addon"] as! [String: Any])
            self.addon = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAddonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Script") {
                self.script = dict["Script"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public class ManagerNode : Tea.TeaModel {
            public var expiredTime: String?

            public var instanceChargeType: String?

            public var instanceId: String?

            public var instanceType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
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
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("InstanceChargeType") {
                    self.instanceChargeType = dict["InstanceChargeType"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DNS") {
                var model = GetClusterResponseBody.Manager.DNS()
                model.fromMap(dict["DNS"] as! [String: Any])
                self.DNS = model
            }
            if dict.keys.contains("DirectoryService") {
                var model = GetClusterResponseBody.Manager.DirectoryService()
                model.fromMap(dict["DirectoryService"] as! [String: Any])
                self.directoryService = model
            }
            if dict.keys.contains("ManagerNode") {
                var model = GetClusterResponseBody.Manager.ManagerNode()
                model.fromMap(dict["ManagerNode"] as! [String: Any])
                self.managerNode = model
            }
            if dict.keys.contains("Scheduler") {
                var model = GetClusterResponseBody.Manager.Scheduler()
                model.fromMap(dict["Scheduler"] as! [String: Any])
                self.scheduler = model
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

    public var requestId: String?

    public var resourceGroupId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterCategory") {
            self.clusterCategory = dict["ClusterCategory"] as! String
        }
        if dict.keys.contains("ClusterCreateTime") {
            self.clusterCreateTime = dict["ClusterCreateTime"] as! String
        }
        if dict.keys.contains("ClusterCustomConfiguration") {
            var model = GetClusterResponseBody.ClusterCustomConfiguration()
            model.fromMap(dict["ClusterCustomConfiguration"] as! [String: Any])
            self.clusterCustomConfiguration = model
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterMode") {
            self.clusterMode = dict["ClusterMode"] as! String
        }
        if dict.keys.contains("ClusterModifyTime") {
            self.clusterModifyTime = dict["ClusterModifyTime"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("ClusterStatus") {
            self.clusterStatus = dict["ClusterStatus"] as! String
        }
        if dict.keys.contains("ClusterVSwitchId") {
            self.clusterVSwitchId = dict["ClusterVSwitchId"] as! String
        }
        if dict.keys.contains("ClusterVpcId") {
            self.clusterVpcId = dict["ClusterVpcId"] as! String
        }
        if dict.keys.contains("DeleteProtection") {
            self.deleteProtection = dict["DeleteProtection"] as! String
        }
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
        if dict.keys.contains("EnableScaleIn") {
            self.enableScaleIn = dict["EnableScaleIn"] as! Bool
        }
        if dict.keys.contains("EnableScaleOut") {
            self.enableScaleOut = dict["EnableScaleOut"] as! Bool
        }
        if dict.keys.contains("GrowInterval") {
            self.growInterval = dict["GrowInterval"] as! Int32
        }
        if dict.keys.contains("IdleInterval") {
            self.idleInterval = dict["IdleInterval"] as! Int32
        }
        if dict.keys.contains("Manager") {
            var model = GetClusterResponseBody.Manager()
            model.fromMap(dict["Manager"] as! [String: Any])
            self.manager = model
        }
        if dict.keys.contains("MaxCoreCount") {
            self.maxCoreCount = dict["MaxCoreCount"] as! String
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int64
        }
        if dict.keys.contains("HiddenProcess") {
            self.hiddenProcess = dict["HiddenProcess"] as! Bool
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int64
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LogLevel") {
                    self.logLevel = dict["LogLevel"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Method") {
                    self.method = dict["Method"] as! String
                }
                if dict.keys.contains("RequestId") {
                    self.requestId = dict["RequestId"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Target") {
                    self.target = dict["Target"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("StageName") {
                self.stageName = dict["StageName"] as! String
            }
            if dict.keys.contains("Stages") {
                var tmp : [GetCommonLogDetailResponseBody.LogDetail.Stages] = []
                for v in dict["Stages"] as! [Any] {
                    var model = GetCommonLogDetailResponseBody.LogDetail.Stages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("LogDetail") {
            var tmp : [GetCommonLogDetailResponseBody.LogDetail] = []
            for v in dict["LogDetail"] as! [Any] {
                var model = GetCommonLogDetailResponseBody.LogDetail()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logDetail = tmp
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("OperatorUid") {
            self.operatorUid = dict["OperatorUid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCommonLogDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class GetQueueResponseBody : Tea.TeaModel {
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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationStrategy") {
                self.allocationStrategy = dict["AllocationStrategy"] as! String
            }
            if dict.keys.contains("ComputeNodes") {
                var tmp : [NodeTemplate] = []
                for v in dict["ComputeNodes"] as! [Any] {
                    var model = NodeTemplate()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.computeNodes = tmp
            }
            if dict.keys.contains("EnableScaleIn") {
                self.enableScaleIn = dict["EnableScaleIn"] as! Bool
            }
            if dict.keys.contains("EnableScaleOut") {
                self.enableScaleOut = dict["EnableScaleOut"] as! Bool
            }
            if dict.keys.contains("HostnamePrefix") {
                self.hostnamePrefix = dict["HostnamePrefix"] as! String
            }
            if dict.keys.contains("HostnameSuffix") {
                self.hostnameSuffix = dict["HostnameSuffix"] as! String
            }
            if dict.keys.contains("InitialCount") {
                self.initialCount = dict["InitialCount"] as! Int32
            }
            if dict.keys.contains("InterConnect") {
                self.interConnect = dict["InterConnect"] as! String
            }
            if dict.keys.contains("KeepAliveNodes") {
                self.keepAliveNodes = dict["KeepAliveNodes"] as! [String]
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int32
            }
            if dict.keys.contains("MaxCountPerCycle") {
                self.maxCountPerCycle = dict["MaxCountPerCycle"] as! Int64
            }
            if dict.keys.contains("MinCount") {
                self.minCount = dict["MinCount"] as! Int32
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("RamRole") {
                self.ramRole = dict["RamRole"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Queue") {
            var model = GetQueueResponseBody.Queue()
            model.fromMap(dict["Queue"] as! [String: Any])
            self.queue = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonName") {
            self.addonName = dict["AddonName"] as! String
        }
        if dict.keys.contains("AddonVersion") {
            self.addonVersion = dict["AddonVersion"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ResourcesSpec") {
            self.resourcesSpec = dict["ResourcesSpec"] as! String
        }
        if dict.keys.contains("ServicesSpec") {
            self.servicesSpec = dict["ServicesSpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonId") {
            self.addonId = dict["AddonId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallAddonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            var tmp : [InstallSoftwaresRequest.AdditionalPackages] = []
            for v in dict["AdditionalPackages"] as! [Any] {
                var model = InstallSoftwaresRequest.AdditionalPackages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.additionalPackages = tmp
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            self.additionalPackagesShrink = dict["AdditionalPackages"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallSoftwaresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonNames") {
            self.addonNames = dict["AddonNames"] as! [String]
        }
        if dict.keys.contains("ClusterCategory") {
            self.clusterCategory = dict["ClusterCategory"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addons") {
            var tmp : [ListAddonTemplatesResponseBody.Addons] = []
            for v in dict["Addons"] as! [Any] {
                var model = ListAddonTemplatesResponseBody.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAddonTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonIds") {
            self.addonIds = dict["AddonIds"] as! [String]
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonIds") {
            self.addonIdsShrink = dict["AddonIds"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddonId") {
                self.addonId = dict["AddonId"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("InstallTime") {
                self.installTime = dict["InstallTime"] as! String
            }
            if dict.keys.contains("Label") {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addons") {
            var tmp : [ListAddonsResponseBody.Addons] = []
            for v in dict["Addons"] as! [Any] {
                var model = ListAddonsResponseBody.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAddonsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountTargetDomain") {
                    self.mountTargetDomain = dict["MountTargetDomain"] as! String
                }
                if dict.keys.contains("NetworkType") {
                    self.networkType = dict["NetworkType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("FileSystemId") {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("FileSystemType") {
                self.fileSystemType = dict["FileSystemType"] as! String
            }
            if dict.keys.contains("MountTargetList") {
                var tmp : [ListAvailableFileSystemsResponseBody.FileSystemList.MountTargetList] = []
                for v in dict["MountTargetList"] as! [Any] {
                    var model = ListAvailableFileSystemsResponseBody.FileSystemList.MountTargetList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.mountTargetList = tmp
            }
            if dict.keys.contains("ProtocolType") {
                self.protocolType = dict["ProtocolType"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("StorageType") {
                self.storageType = dict["StorageType"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("FileSystemList") {
            var tmp : [ListAvailableFileSystemsResponseBody.FileSystemList] = []
            for v in dict["FileSystemList"] as! [Any] {
                var model = ListAvailableFileSystemsResponseBody.FileSystemList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.fileSystemList = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableFileSystemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryService") {
            var model = ListAvailableImagesRequest.DirectoryService()
            model.fromMap(dict["DirectoryService"] as! [String: Any])
            self.directoryService = model
        }
        if dict.keys.contains("EnableHT") {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("HPCInterConnect") {
            self.HPCInterConnect = dict["HPCInterConnect"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsPublic") {
            self.isPublic = dict["IsPublic"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Scheduler") {
            var model = ListAvailableImagesRequest.Scheduler()
            model.fromMap(dict["Scheduler"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DirectoryService") {
            self.directoryServiceShrink = dict["DirectoryService"] as! String
        }
        if dict.keys.contains("EnableHT") {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("HPCInterConnect") {
            self.HPCInterConnect = dict["HPCInterConnect"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsPublic") {
            self.isPublic = dict["IsPublic"] as! Bool
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Scheduler") {
            self.schedulerShrink = dict["Scheduler"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Architecture") {
                self.architecture = dict["Architecture"] as! String
            }
            if dict.keys.contains("BootMode") {
                self.bootMode = dict["BootMode"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageName") {
                self.imageName = dict["ImageName"] as! String
            }
            if dict.keys.contains("ImageOwnerAlias") {
                self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
            }
            if dict.keys.contains("OSName") {
                self.OSName = dict["OSName"] as! String
            }
            if dict.keys.contains("OSNameEn") {
                self.OSNameEn = dict["OSNameEn"] as! String
            }
            if dict.keys.contains("Platform") {
                self.platform = dict["Platform"] as! String
            }
            if dict.keys.contains("Size") {
                self.size = dict["Size"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var tmp : [ListAvailableImagesResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListAvailableImagesResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterIds") {
            self.clusterIds = dict["ClusterIds"] as! [String]
        }
        if dict.keys.contains("ClusterNames") {
            self.clusterNames = dict["ClusterNames"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterIds") {
            self.clusterIdsShrink = dict["ClusterIds"] as! String
        }
        if dict.keys.contains("ClusterNames") {
            self.clusterNamesShrink = dict["ClusterNames"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("EcsInstanceId") {
                        self.ecsInstanceId = dict["EcsInstanceId"] as! String
                    }
                    if dict.keys.contains("EipInstanceId") {
                        self.eipInstanceId = dict["EipInstanceId"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ServiceAccessType") {
                        self.serviceAccessType = dict["ServiceAccessType"] as! String
                    }
                    if dict.keys.contains("ServiceAccessUrl") {
                        self.serviceAccessUrl = dict["ServiceAccessUrl"] as! String
                    }
                    if dict.keys.contains("ServiceName") {
                        self.serviceName = dict["ServiceName"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddonId") {
                    self.addonId = dict["AddonId"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Label") {
                    self.label = dict["Label"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("ResourcesSpec") {
                    var model = ListClustersResponseBody.Clusters.Addons.ResourcesSpec()
                    model.fromMap(dict["ResourcesSpec"] as! [String: Any])
                    self.resourcesSpec = model
                }
                if dict.keys.contains("ServicesSpec") {
                    var tmp : [ListClustersResponseBody.Clusters.Addons.ServicesSpec] = []
                    for v in dict["ServicesSpec"] as! [Any] {
                        var model = ListClustersResponseBody.Clusters.Addons.ServicesSpec()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.servicesSpec = tmp
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Args") {
                    self.args = dict["Args"] as! String
                }
                if dict.keys.contains("Script") {
                    self.script = dict["Script"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DNS") {
                    var model = ListClustersResponseBody.Clusters.Manager.DNS()
                    model.fromMap(dict["DNS"] as! [String: Any])
                    self.DNS = model
                }
                if dict.keys.contains("DirectoryService") {
                    var model = ListClustersResponseBody.Clusters.Manager.DirectoryService()
                    model.fromMap(dict["DirectoryService"] as! [String: Any])
                    self.directoryService = model
                }
                if dict.keys.contains("Scheduler") {
                    var model = ListClustersResponseBody.Clusters.Manager.Scheduler()
                    model.fromMap(dict["Scheduler"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AbnormalCounts") {
                    self.abnormalCounts = dict["AbnormalCounts"] as! Int32
                }
                if dict.keys.contains("CreatingCounts") {
                    self.creatingCounts = dict["CreatingCounts"] as! Int32
                }
                if dict.keys.contains("RunningCounts") {
                    self.runningCounts = dict["RunningCounts"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("NormalCounts") {
                    self.normalCounts = dict["NormalCounts"] as! Int32
                }
                if dict.keys.contains("SudoCounts") {
                    self.sudoCounts = dict["SudoCounts"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdditionalPackages") {
                var tmp : [ListClustersResponseBody.Clusters.AdditionalPackages] = []
                for v in dict["AdditionalPackages"] as! [Any] {
                    var model = ListClustersResponseBody.Clusters.AdditionalPackages()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.additionalPackages = tmp
            }
            if dict.keys.contains("Addons") {
                var tmp : [ListClustersResponseBody.Clusters.Addons] = []
                for v in dict["Addons"] as! [Any] {
                    var model = ListClustersResponseBody.Clusters.Addons()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.addons = tmp
            }
            if dict.keys.contains("ClusterCategory") {
                self.clusterCategory = dict["ClusterCategory"] as! String
            }
            if dict.keys.contains("ClusterCreateTime") {
                self.clusterCreateTime = dict["ClusterCreateTime"] as! String
            }
            if dict.keys.contains("ClusterCredentials") {
                self.clusterCredentials = dict["ClusterCredentials"] as! [String]
            }
            if dict.keys.contains("ClusterCustomConfiguration") {
                var model = ListClustersResponseBody.Clusters.ClusterCustomConfiguration()
                model.fromMap(dict["ClusterCustomConfiguration"] as! [String: Any])
                self.clusterCustomConfiguration = model
            }
            if dict.keys.contains("ClusterDescription") {
                self.clusterDescription = dict["ClusterDescription"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("ClusterMode") {
                self.clusterMode = dict["ClusterMode"] as! String
            }
            if dict.keys.contains("ClusterModifyTime") {
                self.clusterModifyTime = dict["ClusterModifyTime"] as! String
            }
            if dict.keys.contains("ClusterName") {
                self.clusterName = dict["ClusterName"] as! String
            }
            if dict.keys.contains("ClusterStatus") {
                self.clusterStatus = dict["ClusterStatus"] as! String
            }
            if dict.keys.contains("ClusterUsedCoreTime") {
                self.clusterUsedCoreTime = dict["ClusterUsedCoreTime"] as! Double
            }
            if dict.keys.contains("ClusterVSwitchId") {
                self.clusterVSwitchId = dict["ClusterVSwitchId"] as! String
            }
            if dict.keys.contains("ClusterVpcId") {
                self.clusterVpcId = dict["ClusterVpcId"] as! String
            }
            if dict.keys.contains("DeletionProtection") {
                self.deletionProtection = dict["DeletionProtection"] as! Bool
            }
            if dict.keys.contains("EhpcVersion") {
                self.ehpcVersion = dict["EhpcVersion"] as! String
            }
            if dict.keys.contains("Manager") {
                var model = ListClustersResponseBody.Clusters.Manager()
                model.fromMap(dict["Manager"] as! [String: Any])
                self.manager = model
            }
            if dict.keys.contains("MaxCoreCount") {
                self.maxCoreCount = dict["MaxCoreCount"] as! Int64
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int64
            }
            if dict.keys.contains("Nodes") {
                var model = ListClustersResponseBody.Clusters.Nodes()
                model.fromMap(dict["Nodes"] as! [String: Any])
                self.nodes = model
            }
            if dict.keys.contains("ResourceGroupId") {
                self.resourceGroupId = dict["ResourceGroupId"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
            }
            if dict.keys.contains("Users") {
                var model = ListClustersResponseBody.Clusters.Users()
                model.fromMap(dict["Users"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clusters") {
            var tmp : [ListClustersResponseBody.Clusters] = []
            for v in dict["Clusters"] as! [Any] {
                var model = ListClustersResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") {
            self.actionName = dict["ActionName"] as! [String]
        }
        if dict.keys.contains("ActionStatus") {
            self.actionStatus = dict["ActionStatus"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int64
        }
        if dict.keys.contains("IsReverse") {
            self.isReverse = dict["IsReverse"] as! Bool
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("OperatorUid") {
            self.operatorUid = dict["OperatorUid"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ActionName") {
            self.actionNameShrink = dict["ActionName"] as! String
        }
        if dict.keys.contains("ActionStatus") {
            self.actionStatus = dict["ActionStatus"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int64
        }
        if dict.keys.contains("IsReverse") {
            self.isReverse = dict["IsReverse"] as! Bool
        }
        if dict.keys.contains("LogRequestId") {
            self.logRequestId = dict["LogRequestId"] as! String
        }
        if dict.keys.contains("LogType") {
            self.logType = dict["LogType"] as! String
        }
        if dict.keys.contains("OperatorUid") {
            self.operatorUid = dict["OperatorUid"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int64
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Action") {
                self.action = dict["Action"] as! String
            }
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("LogType") {
                self.logType = dict["LogType"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("OperatorUid") {
                self.operatorUid = dict["OperatorUid"] as! String
            }
            if dict.keys.contains("RequestId") {
                self.requestId = dict["RequestId"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("Target") {
                self.target = dict["Target"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") {
            var tmp : [ListCommonLogsResponseBody.Logs] = []
            for v in dict["Logs"] as! [Any] {
                var model = ListCommonLogsResponseBody.Logs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.logs = tmp
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
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCommonLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdditionalPackageInfos") {
                var tmp : [ListInstalledSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos] = []
                for v in dict["AdditionalPackageInfos"] as! [Any] {
                    var model = ListInstalledSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            var model = ListInstalledSoftwaresResponseBody.AdditionalPackages()
            model.fromMap(dict["AdditionalPackages"] as! [String: Any])
            self.additionalPackages = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstalledSoftwaresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Hostnames") {
            self.hostnames = dict["Hostnames"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! [String]
        }
        if dict.keys.contains("QueueNames") {
            self.queueNames = dict["QueueNames"] as! [String]
        }
        if dict.keys.contains("Sequence") {
            self.sequence = dict["Sequence"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Hostnames") {
            self.hostnamesShrink = dict["Hostnames"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddressShrink = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("QueueNames") {
            self.queueNamesShrink = dict["QueueNames"] as! String
        }
        if dict.keys.contains("Sequence") {
            self.sequence = dict["Sequence"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
        if dict.keys.contains("Status") {
            self.statusShrink = dict["Status"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpu") {
                    self.cpu = dict["Cpu"] as! Int32
                }
                if dict.keys.contains("Gpu") {
                    self.gpu = dict["Gpu"] as! Int32
                }
                if dict.keys.contains("Memory") {
                    self.memory = dict["Memory"] as! Int32
                }
            }
        }
        public var addTime: String?

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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AddTime") {
                self.addTime = dict["AddTime"] as! String
            }
            if dict.keys.contains("ExpiredTime") {
                self.expiredTime = dict["ExpiredTime"] as! String
            }
            if dict.keys.contains("Hostname") {
                self.hostname = dict["Hostname"] as! String
            }
            if dict.keys.contains("HtEnabled") {
                self.htEnabled = dict["HtEnabled"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("KeepAlive") {
                self.keepAlive = dict["KeepAlive"] as! Bool
            }
            if dict.keys.contains("PublicIpAddress") {
                self.publicIpAddress = dict["PublicIpAddress"] as! String
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("SpotStrategy") {
                self.spotStrategy = dict["SpotStrategy"] as! String
            }
            if dict.keys.contains("StateInSched") {
                self.stateInSched = dict["StateInSched"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TotalResources") {
                var model = ListNodesResponseBody.Nodes.TotalResources()
                model.fromMap(dict["TotalResources"] as! [String: Any])
                self.totalResources = model
            }
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") {
            var tmp : [ListNodesResponseBody.Nodes] = []
            for v in dict["Nodes"] as! [Any] {
                var model = ListNodesResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("QueueNames") {
            self.queueNames = dict["QueueNames"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("QueueNames") {
            self.queueNamesShrink = dict["QueueNames"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreatingCounts") {
                    self.creatingCounts = dict["CreatingCounts"] as! Int32
                }
                if dict.keys.contains("ExceptionCounts") {
                    self.exceptionCounts = dict["ExceptionCounts"] as! Int32
                }
                if dict.keys.contains("RunningCounts") {
                    self.runningCounts = dict["RunningCounts"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ComputeNodes") {
                var tmp : [NodeTemplate] = []
                for v in dict["ComputeNodes"] as! [Any] {
                    var model = NodeTemplate()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.computeNodes = tmp
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("EnableScaleIn") {
                self.enableScaleIn = dict["EnableScaleIn"] as! Bool
            }
            if dict.keys.contains("EnableScaleOut") {
                self.enableScaleOut = dict["EnableScaleOut"] as! Bool
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int32
            }
            if dict.keys.contains("MaxCountPerCycle") {
                self.maxCountPerCycle = dict["MaxCountPerCycle"] as! Int32
            }
            if dict.keys.contains("MinCount") {
                self.minCount = dict["MinCount"] as! Int32
            }
            if dict.keys.contains("Nodes") {
                var model = ListQueuesResponseBody.Queues.Nodes()
                model.fromMap(dict["Nodes"] as! [String: Any])
                self.nodes = model
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("TotalCores") {
                self.totalCores = dict["TotalCores"] as! Int32
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Queues") {
            var tmp : [ListQueuesResponseBody.Queues] = []
            for v in dict["Queues"] as! [Any] {
                var model = ListQueuesResponseBody.Queues()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.queues = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListQueuesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("FileSystemType") {
            self.fileSystemType = dict["FileSystemType"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("MountDirectory") {
                    self.mountDirectory = dict["MountDirectory"] as! String
                }
                if dict.keys.contains("MountOptions") {
                    self.mountOptions = dict["MountOptions"] as! String
                }
                if dict.keys.contains("MountTarget") {
                    self.mountTarget = dict["MountTarget"] as! String
                }
                if dict.keys.contains("ProtocolType") {
                    self.protocolType = dict["ProtocolType"] as! String
                }
                if dict.keys.contains("StorageDirectory") {
                    self.storageDirectory = dict["StorageDirectory"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileSystemId") {
                self.fileSystemId = dict["FileSystemId"] as! String
            }
            if dict.keys.contains("FileSystemProtocol") {
                self.fileSystemProtocol = dict["FileSystemProtocol"] as! String
            }
            if dict.keys.contains("FileSystemType") {
                self.fileSystemType = dict["FileSystemType"] as! String
            }
            if dict.keys.contains("MountInfo") {
                var tmp : [ListSharedStoragesResponseBody.SharedStorages.MountInfo] = []
                for v in dict["MountInfo"] as! [Any] {
                    var model = ListSharedStoragesResponseBody.SharedStorages.MountInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SharedStorages") {
            var tmp : [ListSharedStoragesResponseBody.SharedStorages] = []
            for v in dict["SharedStorages"] as! [Any] {
                var model = ListSharedStoragesResponseBody.SharedStorages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.sharedStorages = tmp
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSharedStoragesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Architecture") {
                self.architecture = dict["Architecture"] as! String
            }
            if dict.keys.contains("OsTag") {
                self.osTag = dict["OsTag"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Category") {
            self.category = dict["Category"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OsInfos") {
            var tmp : [ListSoftwaresRequest.OsInfos] = []
            for v in dict["OsInfos"] as! [Any] {
                var model = ListSoftwaresRequest.OsInfos()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.osInfos = tmp
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
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

                            public override func fromMap(_ dict: [String: Any]) -> Void {
                                if dict.keys.contains("Architecture") {
                                    self.architecture = dict["Architecture"] as! String
                                }
                                if dict.keys.contains("OsTag") {
                                    self.osTag = dict["OsTag"] as! String
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

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("SupportOsInfos") {
                                var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs.SupportOsInfos] = []
                                for v in dict["SupportOsInfos"] as! [Any] {
                                    var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs.SupportOsInfos()
                                    if v != nil {
                                        model.fromMap(v as! [String: Any])
                                    }
                                    tmp.append(model)
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

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Latest") {
                            self.latest = dict["Latest"] as! String
                        }
                        if dict.keys.contains("SupportOs") {
                            var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos.SupportOs()
                            model.fromMap(dict["SupportOs"] as! [String: Any])
                            self.supportOs = model
                        }
                        if dict.keys.contains("Version") {
                            self.version = dict["Version"] as! String
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

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VersionInfos") {
                        var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos] = []
                        for v in dict["VersionInfos"] as! [Any] {
                            var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions.VersionInfos()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Category") {
                    self.category = dict["Category"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Icon") {
                    self.icon = dict["Icon"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Versions") {
                    var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos.Versions()
                    model.fromMap(dict["Versions"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AdditionalPackageInfos") {
                var tmp : [ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos] = []
                for v in dict["AdditionalPackageInfos"] as! [Any] {
                    var model = ListSoftwaresResponseBody.AdditionalPackages.AdditionalPackageInfos()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            var model = ListSoftwaresResponseBody.AdditionalPackages()
            model.fromMap(dict["AdditionalPackages"] as! [String: Any])
            self.additionalPackages = model
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSoftwaresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AddTime") {
                    self.addTime = dict["AddTime"] as! String
                }
                if dict.keys.contains("Group") {
                    self.group = dict["Group"] as! String
                }
                if dict.keys.contains("GroupId") {
                    self.groupId = dict["GroupId"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("UserInfo") {
                var tmp : [ListUsersResponseBody.Users.UserInfo] = []
                for v in dict["UserInfo"] as! [Any] {
                    var model = ListUsersResponseBody.Users.UserInfo()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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
        if dict.keys.contains("Users") {
            var model = ListUsersResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AddonId") {
            self.addonId = dict["AddonId"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnInstallAddonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") {
                self.version = dict["Version"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            var tmp : [UninstallSoftwaresRequest.AdditionalPackages] = []
            for v in dict["AdditionalPackages"] as! [Any] {
                var model = UninstallSoftwaresRequest.AdditionalPackages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.additionalPackages = tmp
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalPackages") {
            self.additionalPackagesShrink = dict["AdditionalPackages"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UninstallSoftwaresResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Script") {
                self.script = dict["Script"] as! String
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

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterCustomConfiguration?.validate()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterCustomConfiguration") {
            var model = UpdateClusterRequest.ClusterCustomConfiguration()
            model.fromMap(dict["ClusterCustomConfiguration"] as! [String: Any])
            self.clusterCustomConfiguration = model
        }
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableScaleIn") {
            self.enableScaleIn = dict["EnableScaleIn"] as! Bool
        }
        if dict.keys.contains("EnableScaleOut") {
            self.enableScaleOut = dict["EnableScaleOut"] as! Bool
        }
        if dict.keys.contains("GrowInterval") {
            self.growInterval = dict["GrowInterval"] as! Int32
        }
        if dict.keys.contains("IdleInterval") {
            self.idleInterval = dict["IdleInterval"] as! Int32
        }
        if dict.keys.contains("MaxCoreCount") {
            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! Int32
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

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterCustomConfiguration") {
            self.clusterCustomConfigurationShrink = dict["ClusterCustomConfiguration"] as! String
        }
        if dict.keys.contains("ClusterDescription") {
            self.clusterDescription = dict["ClusterDescription"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterName") {
            self.clusterName = dict["ClusterName"] as! String
        }
        if dict.keys.contains("DeletionProtection") {
            self.deletionProtection = dict["DeletionProtection"] as! Bool
        }
        if dict.keys.contains("EnableScaleIn") {
            self.enableScaleIn = dict["EnableScaleIn"] as! Bool
        }
        if dict.keys.contains("EnableScaleOut") {
            self.enableScaleOut = dict["EnableScaleOut"] as! Bool
        }
        if dict.keys.contains("GrowInterval") {
            self.growInterval = dict["GrowInterval"] as! Int32
        }
        if dict.keys.contains("IdleInterval") {
            self.idleInterval = dict["IdleInterval"] as! Int32
        }
        if dict.keys.contains("MaxCoreCount") {
            self.maxCoreCount = dict["MaxCoreCount"] as! Int32
        }
        if dict.keys.contains("MaxCount") {
            self.maxCount = dict["MaxCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! String
            }
            if dict.keys.contains("KeepAlive") {
                self.keepAlive = dict["KeepAlive"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instances") {
            var tmp : [UpdateNodesRequest.Instances] = []
            for v in dict["Instances"] as! [Any] {
                var model = UpdateNodesRequest.Instances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instances") {
            self.instancesShrink = dict["Instances"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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
            if self.vSwitchIds != nil {
                map["VSwitchIds"] = self.vSwitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationStrategy") {
                self.allocationStrategy = dict["AllocationStrategy"] as! String
            }
            if dict.keys.contains("ComputeNodes") {
                var tmp : [NodeTemplate] = []
                for v in dict["ComputeNodes"] as! [Any] {
                    var model = NodeTemplate()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.computeNodes = tmp
            }
            if dict.keys.contains("EnableScaleIn") {
                self.enableScaleIn = dict["EnableScaleIn"] as! Bool
            }
            if dict.keys.contains("EnableScaleOut") {
                self.enableScaleOut = dict["EnableScaleOut"] as! Bool
            }
            if dict.keys.contains("HostnamePrefix") {
                self.hostnamePrefix = dict["HostnamePrefix"] as! String
            }
            if dict.keys.contains("HostnameSuffix") {
                self.hostnameSuffix = dict["HostnameSuffix"] as! String
            }
            if dict.keys.contains("InitialCount") {
                self.initialCount = dict["InitialCount"] as! Int32
            }
            if dict.keys.contains("InterConnect") {
                self.interConnect = dict["InterConnect"] as! String
            }
            if dict.keys.contains("KeepAliveNodes") {
                self.keepAliveNodes = dict["KeepAliveNodes"] as! [String]
            }
            if dict.keys.contains("MaxCount") {
                self.maxCount = dict["MaxCount"] as! Int32
            }
            if dict.keys.contains("MaxCountPerCycle") {
                self.maxCountPerCycle = dict["MaxCountPerCycle"] as! Int64
            }
            if dict.keys.contains("MinCount") {
                self.minCount = dict["MinCount"] as! Int32
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("RamRole") {
                self.ramRole = dict["RamRole"] as! String
            }
            if dict.keys.contains("VSwitchIds") {
                self.vSwitchIds = dict["VSwitchIds"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Queue") {
            var model = UpdateQueueRequest.Queue()
            model.fromMap(dict["Queue"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Queue") {
            self.queueShrink = dict["Queue"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Group") {
            self.group = dict["Group"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
