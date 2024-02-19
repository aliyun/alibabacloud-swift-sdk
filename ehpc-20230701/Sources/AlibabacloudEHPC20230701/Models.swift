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
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DeleteWithInstance") && dict["DeleteWithInstance"] != nil {
                self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
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
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
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

    public var instanceType: String?

    public var osName: String?

    public var osNameEN: String?

    public var period: Int32?

    public var periodUnit: String?

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
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("DataDisks") && dict["DataDisks"] != nil {
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
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EnableHT") && dict["EnableHT"] != nil {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("OsName") && dict["OsName"] != nil {
            self.osName = dict["OsName"] as! String
        }
        if dict.keys.contains("OsNameEN") && dict["OsNameEN"] != nil {
            self.osNameEN = dict["OsNameEN"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SpotPriceLimit") && dict["SpotPriceLimit"] != nil {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") && dict["SpotStrategy"] != nil {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SystemDisk") && dict["SystemDisk"] != nil {
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
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("DeleteWithInstance") && dict["DeleteWithInstance"] != nil {
                self.deleteWithInstance = dict["DeleteWithInstance"] as! Bool
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
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
            if dict.keys.contains("Category") && dict["Category"] != nil {
                self.category = dict["Category"] as! String
            }
            if dict.keys.contains("Level") && dict["Level"] != nil {
                self.level = dict["Level"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
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
        if dict.keys.contains("AutoRenew") && dict["AutoRenew"] != nil {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("AutoRenewPeriod") && dict["AutoRenewPeriod"] != nil {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("DataDisks") && dict["DataDisks"] != nil {
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
        if dict.keys.contains("Duration") && dict["Duration"] != nil {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("EnableHT") && dict["EnableHT"] != nil {
            self.enableHT = dict["EnableHT"] as! Bool
        }
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceChargeType") && dict["InstanceChargeType"] != nil {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("InstanceType") && dict["InstanceType"] != nil {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Period") && dict["Period"] != nil {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") && dict["PeriodUnit"] != nil {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SpotPriceLimit") && dict["SpotPriceLimit"] != nil {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") && dict["SpotStrategy"] != nil {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("SystemDisk") && dict["SystemDisk"] != nil {
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

    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("AllocationStrategy") && dict["AllocationStrategy"] != nil {
            self.allocationStrategy = dict["AllocationStrategy"] as! String
        }
        if dict.keys.contains("ComputeNodes") && dict["ComputeNodes"] != nil {
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
        if dict.keys.contains("EnableScaleIn") && dict["EnableScaleIn"] != nil {
            self.enableScaleIn = dict["EnableScaleIn"] as! Bool
        }
        if dict.keys.contains("EnableScaleOut") && dict["EnableScaleOut"] != nil {
            self.enableScaleOut = dict["EnableScaleOut"] as! Bool
        }
        if dict.keys.contains("HostnamePrefix") && dict["HostnamePrefix"] != nil {
            self.hostnamePrefix = dict["HostnamePrefix"] as! String
        }
        if dict.keys.contains("HostnameSuffix") && dict["HostnameSuffix"] != nil {
            self.hostnameSuffix = dict["HostnameSuffix"] as! String
        }
        if dict.keys.contains("InitialCount") && dict["InitialCount"] != nil {
            self.initialCount = dict["InitialCount"] as! Int32
        }
        if dict.keys.contains("InterConnect") && dict["InterConnect"] != nil {
            self.interConnect = dict["InterConnect"] as! String
        }
        if dict.keys.contains("KeepAliveNodes") && dict["KeepAliveNodes"] != nil {
            self.keepAliveNodes = dict["KeepAliveNodes"] as! [String]
        }
        if dict.keys.contains("MaxCount") && dict["MaxCount"] != nil {
            self.maxCount = dict["MaxCount"] as! Int32
        }
        if dict.keys.contains("MaxCountPerCycle") && dict["MaxCountPerCycle"] != nil {
            self.maxCountPerCycle = dict["MaxCountPerCycle"] as! Int64
        }
        if dict.keys.contains("MinCount") && dict["MinCount"] != nil {
            self.minCount = dict["MinCount"] as! Int32
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("RamRole") && dict["RamRole"] != nil {
            self.ramRole = dict["RamRole"] as! String
        }
        if dict.keys.contains("VSwitchIds") && dict["VSwitchIds"] != nil {
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
        if dict.keys.contains("FileSystemId") && dict["FileSystemId"] != nil {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("MountDirectory") && dict["MountDirectory"] != nil {
            self.mountDirectory = dict["MountDirectory"] as! String
        }
        if dict.keys.contains("MountOptions") && dict["MountOptions"] != nil {
            self.mountOptions = dict["MountOptions"] as! String
        }
        if dict.keys.contains("MountTargetDomain") && dict["MountTargetDomain"] != nil {
            self.mountTargetDomain = dict["MountTargetDomain"] as! String
        }
        if dict.keys.contains("NASDirectory") && dict["NASDirectory"] != nil {
            self.NASDirectory = dict["NASDirectory"] as! String
        }
        if dict.keys.contains("ProtocolType") && dict["ProtocolType"] != nil {
            self.protocolType = dict["ProtocolType"] as! String
        }
    }
}

public class AddImageRequest : Tea.TeaModel {
    public class ContainerImageSpec : Tea.TeaModel {
        public class RegistryCredential : Tea.TeaModel {
            public var password: String?

            public var server: String?

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
                if self.password != nil {
                    map["Password"] = self.password!
                }
                if self.server != nil {
                    map["Server"] = self.server!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Password") && dict["Password"] != nil {
                    self.password = dict["Password"] as! String
                }
                if dict.keys.contains("Server") && dict["Server"] != nil {
                    self.server = dict["Server"] as! String
                }
                if dict.keys.contains("UserName") && dict["UserName"] != nil {
                    self.userName = dict["UserName"] as! String
                }
            }
        }
        public var isACREnterprise: Bool?

        public var isACRRegistry: Bool?

        public var registryCredential: AddImageRequest.ContainerImageSpec.RegistryCredential?

        public var registryCriId: String?

        public var registryUrl: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.registryCredential?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.isACREnterprise != nil {
                map["IsACREnterprise"] = self.isACREnterprise!
            }
            if self.isACRRegistry != nil {
                map["IsACRRegistry"] = self.isACRRegistry!
            }
            if self.registryCredential != nil {
                map["RegistryCredential"] = self.registryCredential?.toMap()
            }
            if self.registryCriId != nil {
                map["RegistryCriId"] = self.registryCriId!
            }
            if self.registryUrl != nil {
                map["RegistryUrl"] = self.registryUrl!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("IsACREnterprise") && dict["IsACREnterprise"] != nil {
                self.isACREnterprise = dict["IsACREnterprise"] as! Bool
            }
            if dict.keys.contains("IsACRRegistry") && dict["IsACRRegistry"] != nil {
                self.isACRRegistry = dict["IsACRRegistry"] as! Bool
            }
            if dict.keys.contains("RegistryCredential") && dict["RegistryCredential"] != nil {
                var model = AddImageRequest.ContainerImageSpec.RegistryCredential()
                model.fromMap(dict["RegistryCredential"] as! [String: Any])
                self.registryCredential = model
            }
            if dict.keys.contains("RegistryCriId") && dict["RegistryCriId"] != nil {
                self.registryCriId = dict["RegistryCriId"] as! String
            }
            if dict.keys.contains("RegistryUrl") && dict["RegistryUrl"] != nil {
                self.registryUrl = dict["RegistryUrl"] as! String
            }
        }
    }
    public class VMImageSpec : Tea.TeaModel {
        public var imageId: String?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                self.imageId = dict["ImageId"] as! String
            }
        }
    }
    public var containerImageSpec: AddImageRequest.ContainerImageSpec?

    public var description_: String?

    public var name: String?

    public var VMImageSpec: AddImageRequest.VMImageSpec?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerImageSpec?.validate()
        try self.VMImageSpec?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerImageSpec != nil {
            map["ContainerImageSpec"] = self.containerImageSpec?.toMap()
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.VMImageSpec != nil {
            map["VMImageSpec"] = self.VMImageSpec?.toMap()
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerImageSpec") && dict["ContainerImageSpec"] != nil {
            var model = AddImageRequest.ContainerImageSpec()
            model.fromMap(dict["ContainerImageSpec"] as! [String: Any])
            self.containerImageSpec = model
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("VMImageSpec") && dict["VMImageSpec"] != nil {
            var model = AddImageRequest.VMImageSpec()
            model.fromMap(dict["VMImageSpec"] as! [String: Any])
            self.VMImageSpec = model
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddImageShrinkRequest : Tea.TeaModel {
    public var containerImageSpecShrink: String?

    public var description_: String?

    public var name: String?

    public var VMImageSpecShrink: String?

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
        if self.containerImageSpecShrink != nil {
            map["ContainerImageSpec"] = self.containerImageSpecShrink!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.VMImageSpecShrink != nil {
            map["VMImageSpec"] = self.VMImageSpecShrink!
        }
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerImageSpec") && dict["ContainerImageSpec"] != nil {
            self.containerImageSpecShrink = dict["ContainerImageSpec"] as! String
        }
        if dict.keys.contains("Description") && dict["Description"] != nil {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("VMImageSpec") && dict["VMImageSpec"] != nil {
            self.VMImageSpecShrink = dict["VMImageSpec"] as! String
        }
        if dict.keys.contains("Version") && dict["Version"] != nil {
            self.version = dict["Version"] as! String
        }
    }
}

public class AddImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
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
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class AddImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = AddImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobRequest : Tea.TeaModel {
    public class DeploymentPolicy : Tea.TeaModel {
        public class Network : Tea.TeaModel {
            public var vswitch: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.vswitch != nil {
                    map["Vswitch"] = self.vswitch!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Vswitch") && dict["Vswitch"] != nil {
                    self.vswitch = dict["Vswitch"] as! [String]
                }
            }
        }
        public var allocationSpec: String?

        public var network: CreateJobRequest.DeploymentPolicy.Network?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.network?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.allocationSpec != nil {
                map["AllocationSpec"] = self.allocationSpec!
            }
            if self.network != nil {
                map["Network"] = self.network?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AllocationSpec") && dict["AllocationSpec"] != nil {
                self.allocationSpec = dict["AllocationSpec"] as! String
            }
            if dict.keys.contains("Network") && dict["Network"] != nil {
                var model = CreateJobRequest.DeploymentPolicy.Network()
                model.fromMap(dict["Network"] as! [String: Any])
                self.network = model
            }
        }
    }
    public class Tasks : Tea.TeaModel {
        public class ExecutorPolicy : Tea.TeaModel {
            public class ArraySpec : Tea.TeaModel {
                public var indexEnd: Int32?

                public var indexStart: Int32?

                public var indexStep: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.indexEnd != nil {
                        map["IndexEnd"] = self.indexEnd!
                    }
                    if self.indexStart != nil {
                        map["IndexStart"] = self.indexStart!
                    }
                    if self.indexStep != nil {
                        map["IndexStep"] = self.indexStep!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("IndexEnd") && dict["IndexEnd"] != nil {
                        self.indexEnd = dict["IndexEnd"] as! Int32
                    }
                    if dict.keys.contains("IndexStart") && dict["IndexStart"] != nil {
                        self.indexStart = dict["IndexStart"] as! Int32
                    }
                    if dict.keys.contains("IndexStep") && dict["IndexStep"] != nil {
                        self.indexStep = dict["IndexStep"] as! Int32
                    }
                }
            }
            public var arraySpec: CreateJobRequest.Tasks.ExecutorPolicy.ArraySpec?

            public var maxCount: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.arraySpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arraySpec != nil {
                    map["ArraySpec"] = self.arraySpec?.toMap()
                }
                if self.maxCount != nil {
                    map["MaxCount"] = self.maxCount!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArraySpec") && dict["ArraySpec"] != nil {
                    var model = CreateJobRequest.Tasks.ExecutorPolicy.ArraySpec()
                    model.fromMap(dict["ArraySpec"] as! [String: Any])
                    self.arraySpec = model
                }
                if dict.keys.contains("MaxCount") && dict["MaxCount"] != nil {
                    self.maxCount = dict["MaxCount"] as! Int32
                }
            }
        }
        public class TaskSpec : Tea.TeaModel {
            public class Resource : Tea.TeaModel {
                public class Disks : Tea.TeaModel {
                    public var size: Int32?

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
                        if self.size != nil {
                            map["Size"] = self.size!
                        }
                        if self.type != nil {
                            map["Type"] = self.type!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Size") && dict["Size"] != nil {
                            self.size = dict["Size"] as! Int32
                        }
                        if dict.keys.contains("Type") && dict["Type"] != nil {
                            self.type = dict["Type"] as! String
                        }
                    }
                }
                public var cores: Double?

                public var disks: [CreateJobRequest.Tasks.TaskSpec.Resource.Disks]?

                public var memory: Double?

                public override init() {
                    super.init()
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
                    if self.disks != nil {
                        var tmp : [Any] = []
                        for k in self.disks! {
                            tmp.append(k.toMap())
                        }
                        map["Disks"] = tmp
                    }
                    if self.memory != nil {
                        map["Memory"] = self.memory!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cores") && dict["Cores"] != nil {
                        self.cores = dict["Cores"] as! Double
                    }
                    if dict.keys.contains("Disks") && dict["Disks"] != nil {
                        var tmp : [CreateJobRequest.Tasks.TaskSpec.Resource.Disks] = []
                        for v in dict["Disks"] as! [Any] {
                            var model = CreateJobRequest.Tasks.TaskSpec.Resource.Disks()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.disks = tmp
                    }
                    if dict.keys.contains("Memory") && dict["Memory"] != nil {
                        self.memory = dict["Memory"] as! Double
                    }
                }
            }
            public class TaskExecutor : Tea.TeaModel {
                public class VM : Tea.TeaModel {
                    public var image: String?

                    public var prologScript: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.image != nil {
                            map["Image"] = self.image!
                        }
                        if self.prologScript != nil {
                            map["PrologScript"] = self.prologScript!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Image") && dict["Image"] != nil {
                            self.image = dict["Image"] as! String
                        }
                        if dict.keys.contains("PrologScript") && dict["PrologScript"] != nil {
                            self.prologScript = dict["PrologScript"] as! String
                        }
                    }
                }
                public var VM: CreateJobRequest.Tasks.TaskSpec.TaskExecutor.VM?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.VM?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.VM != nil {
                        map["VM"] = self.VM?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VM") && dict["VM"] != nil {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor.VM()
                        model.fromMap(dict["VM"] as! [String: Any])
                        self.VM = model
                    }
                }
            }
            public var resource: CreateJobRequest.Tasks.TaskSpec.Resource?

            public var taskExecutor: [CreateJobRequest.Tasks.TaskSpec.TaskExecutor]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.resource?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.resource != nil {
                    map["Resource"] = self.resource?.toMap()
                }
                if self.taskExecutor != nil {
                    var tmp : [Any] = []
                    for k in self.taskExecutor! {
                        tmp.append(k.toMap())
                    }
                    map["TaskExecutor"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Resource") && dict["Resource"] != nil {
                    var model = CreateJobRequest.Tasks.TaskSpec.Resource()
                    model.fromMap(dict["Resource"] as! [String: Any])
                    self.resource = model
                }
                if dict.keys.contains("TaskExecutor") && dict["TaskExecutor"] != nil {
                    var tmp : [CreateJobRequest.Tasks.TaskSpec.TaskExecutor] = []
                    for v in dict["TaskExecutor"] as! [Any] {
                        var model = CreateJobRequest.Tasks.TaskSpec.TaskExecutor()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.taskExecutor = tmp
                }
            }
        }
        public var executorPolicy: CreateJobRequest.Tasks.ExecutorPolicy?

        public var taskName: String?

        public var taskSpec: CreateJobRequest.Tasks.TaskSpec?

        public var taskSustainable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.executorPolicy?.validate()
            try self.taskSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.executorPolicy != nil {
                map["ExecutorPolicy"] = self.executorPolicy?.toMap()
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.taskSpec != nil {
                map["TaskSpec"] = self.taskSpec?.toMap()
            }
            if self.taskSustainable != nil {
                map["TaskSustainable"] = self.taskSustainable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExecutorPolicy") && dict["ExecutorPolicy"] != nil {
                var model = CreateJobRequest.Tasks.ExecutorPolicy()
                model.fromMap(dict["ExecutorPolicy"] as! [String: Any])
                self.executorPolicy = model
            }
            if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("TaskSpec") && dict["TaskSpec"] != nil {
                var model = CreateJobRequest.Tasks.TaskSpec()
                model.fromMap(dict["TaskSpec"] as! [String: Any])
                self.taskSpec = model
            }
            if dict.keys.contains("TaskSustainable") && dict["TaskSustainable"] != nil {
                self.taskSustainable = dict["TaskSustainable"] as! Bool
            }
        }
    }
    public var deploymentPolicy: CreateJobRequest.DeploymentPolicy?

    public var jobDescription: String?

    public var jobName: String?

    public var tasks: [CreateJobRequest.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.deploymentPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentPolicy != nil {
            map["DeploymentPolicy"] = self.deploymentPolicy?.toMap()
        }
        if self.jobDescription != nil {
            map["JobDescription"] = self.jobDescription!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentPolicy") && dict["DeploymentPolicy"] != nil {
            var model = CreateJobRequest.DeploymentPolicy()
            model.fromMap(dict["DeploymentPolicy"] as! [String: Any])
            self.deploymentPolicy = model
        }
        if dict.keys.contains("JobDescription") && dict["JobDescription"] != nil {
            self.jobDescription = dict["JobDescription"] as! String
        }
        if dict.keys.contains("JobName") && dict["JobName"] != nil {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            var tmp : [CreateJobRequest.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = CreateJobRequest.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class CreateJobShrinkRequest : Tea.TeaModel {
    public var deploymentPolicyShrink: String?

    public var jobDescription: String?

    public var jobName: String?

    public var tasksShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deploymentPolicyShrink != nil {
            map["DeploymentPolicy"] = self.deploymentPolicyShrink!
        }
        if self.jobDescription != nil {
            map["JobDescription"] = self.jobDescription!
        }
        if self.jobName != nil {
            map["JobName"] = self.jobName!
        }
        if self.tasksShrink != nil {
            map["Tasks"] = self.tasksShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DeploymentPolicy") && dict["DeploymentPolicy"] != nil {
            self.deploymentPolicyShrink = dict["DeploymentPolicy"] as! String
        }
        if dict.keys.contains("JobDescription") && dict["JobDescription"] != nil {
            self.jobDescription = dict["JobDescription"] as! String
        }
        if dict.keys.contains("JobName") && dict["JobName"] != nil {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
            self.tasksShrink = dict["Tasks"] as! String
        }
    }
}

public class CreateJobResponseBody : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = CreateJobResponseBody()
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
                if dict.keys.contains("ArrayIndex") && dict["ArrayIndex"] != nil {
                    self.arrayIndex = dict["ArrayIndex"] as! [Int32]
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
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
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("TaskSpec") && dict["TaskSpec"] != nil {
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
        if dict.keys.contains("JobSpec") && dict["JobSpec"] != nil {
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
        if dict.keys.contains("JobSpec") && dict["JobSpec"] != nil {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
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
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = DeleteJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetImageRequest : Tea.TeaModel {
    public var imageId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
    }
}

public class GetImageResponseBody : Tea.TeaModel {
    public class Image : Tea.TeaModel {
        public class ContainerImageSpec : Tea.TeaModel {
            public class RegistryCredential : Tea.TeaModel {
                public var password: String?

                public var server: String?

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
                    if self.password != nil {
                        map["Password"] = self.password!
                    }
                    if self.server != nil {
                        map["Server"] = self.server!
                    }
                    if self.userName != nil {
                        map["UserName"] = self.userName!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Password") && dict["Password"] != nil {
                        self.password = dict["Password"] as! String
                    }
                    if dict.keys.contains("Server") && dict["Server"] != nil {
                        self.server = dict["Server"] as! String
                    }
                    if dict.keys.contains("UserName") && dict["UserName"] != nil {
                        self.userName = dict["UserName"] as! String
                    }
                }
            }
            public var isACREnterprise: Bool?

            public var isACRRegistry: Bool?

            public var registryCredential: GetImageResponseBody.Image.ContainerImageSpec.RegistryCredential?

            public var registryCriId: String?

            public var registryUrl: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.registryCredential?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.isACREnterprise != nil {
                    map["IsACREnterprise"] = self.isACREnterprise!
                }
                if self.isACRRegistry != nil {
                    map["IsACRRegistry"] = self.isACRRegistry!
                }
                if self.registryCredential != nil {
                    map["RegistryCredential"] = self.registryCredential?.toMap()
                }
                if self.registryCriId != nil {
                    map["RegistryCriId"] = self.registryCriId!
                }
                if self.registryUrl != nil {
                    map["RegistryUrl"] = self.registryUrl!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("IsACREnterprise") && dict["IsACREnterprise"] != nil {
                    self.isACREnterprise = dict["IsACREnterprise"] as! Bool
                }
                if dict.keys.contains("IsACRRegistry") && dict["IsACRRegistry"] != nil {
                    self.isACRRegistry = dict["IsACRRegistry"] as! Bool
                }
                if dict.keys.contains("RegistryCredential") && dict["RegistryCredential"] != nil {
                    var model = GetImageResponseBody.Image.ContainerImageSpec.RegistryCredential()
                    model.fromMap(dict["RegistryCredential"] as! [String: Any])
                    self.registryCredential = model
                }
                if dict.keys.contains("RegistryCriId") && dict["RegistryCriId"] != nil {
                    self.registryCriId = dict["RegistryCriId"] as! String
                }
                if dict.keys.contains("RegistryUrl") && dict["RegistryUrl"] != nil {
                    self.registryUrl = dict["RegistryUrl"] as! String
                }
            }
        }
        public class VMImageSpec : Tea.TeaModel {
            public var architecture: String?

            public var imageId: String?

            public var osTag: String?

            public var platform: String?

            public override init() {
                super.init()
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
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.platform != nil {
                    map["Platform"] = self.platform!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Architecture") && dict["Architecture"] != nil {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("OsTag") && dict["OsTag"] != nil {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("Platform") && dict["Platform"] != nil {
                    self.platform = dict["Platform"] as! String
                }
            }
        }
        public var containerImageSpec: GetImageResponseBody.Image.ContainerImageSpec?

        public var createTime: String?

        public var description_: String?

        public var imageType: String?

        public var name: String?

        public var size: String?

        public var VMImageSpec: GetImageResponseBody.Image.VMImageSpec?

        public var version: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.containerImageSpec?.validate()
            try self.VMImageSpec?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerImageSpec != nil {
                map["ContainerImageSpec"] = self.containerImageSpec?.toMap()
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.size != nil {
                map["Size"] = self.size!
            }
            if self.VMImageSpec != nil {
                map["VMImageSpec"] = self.VMImageSpec?.toMap()
            }
            if self.version != nil {
                map["Version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerImageSpec") && dict["ContainerImageSpec"] != nil {
                var model = GetImageResponseBody.Image.ContainerImageSpec()
                model.fromMap(dict["ContainerImageSpec"] as! [String: Any])
                self.containerImageSpec = model
            }
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageType") && dict["ImageType"] != nil {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Size") && dict["Size"] != nil {
                self.size = dict["Size"] as! String
            }
            if dict.keys.contains("VMImageSpec") && dict["VMImageSpec"] != nil {
                var model = GetImageResponseBody.Image.VMImageSpec()
                model.fromMap(dict["VMImageSpec"] as! [String: Any])
                self.VMImageSpec = model
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var image: GetImageResponseBody.Image?

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
        try self.image?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.image != nil {
            map["Image"] = self.image?.toMap()
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
        if dict.keys.contains("Image") && dict["Image"] != nil {
            var model = GetImageResponseBody.Image()
            model.fromMap(dict["Image"] as! [String: Any])
            self.image = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = GetImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetJobRequest : Tea.TeaModel {
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
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobId") && dict["JobId"] != nil {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class GetJobResponseBody : Tea.TeaModel {
    public class JobInfo : Tea.TeaModel {
        public class DeploymentPolicy : Tea.TeaModel {
            public class Network : Tea.TeaModel {
                public var vswitch: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.vswitch != nil {
                        map["Vswitch"] = self.vswitch!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Vswitch") && dict["Vswitch"] != nil {
                        self.vswitch = dict["Vswitch"] as! [String]
                    }
                }
            }
            public var allocationSpec: String?

            public var network: GetJobResponseBody.JobInfo.DeploymentPolicy.Network?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.network?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.allocationSpec != nil {
                    map["AllocationSpec"] = self.allocationSpec!
                }
                if self.network != nil {
                    map["Network"] = self.network?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AllocationSpec") && dict["AllocationSpec"] != nil {
                    self.allocationSpec = dict["AllocationSpec"] as! String
                }
                if dict.keys.contains("Network") && dict["Network"] != nil {
                    var model = GetJobResponseBody.JobInfo.DeploymentPolicy.Network()
                    model.fromMap(dict["Network"] as! [String: Any])
                    self.network = model
                }
            }
        }
        public class Tasks : Tea.TeaModel {
            public class ExecutorPolicy : Tea.TeaModel {
                public class ArraySpec : Tea.TeaModel {
                    public var indexEnd: Int32?

                    public var indexStart: Int32?

                    public var indexStep: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.indexEnd != nil {
                            map["IndexEnd"] = self.indexEnd!
                        }
                        if self.indexStart != nil {
                            map["IndexStart"] = self.indexStart!
                        }
                        if self.indexStep != nil {
                            map["IndexStep"] = self.indexStep!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("IndexEnd") && dict["IndexEnd"] != nil {
                            self.indexEnd = dict["IndexEnd"] as! Int32
                        }
                        if dict.keys.contains("IndexStart") && dict["IndexStart"] != nil {
                            self.indexStart = dict["IndexStart"] as! Int32
                        }
                        if dict.keys.contains("IndexStep") && dict["IndexStep"] != nil {
                            self.indexStep = dict["IndexStep"] as! Int32
                        }
                    }
                }
                public var arraySpec: GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy.ArraySpec?

                public var maxCount: Int32?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.arraySpec?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arraySpec != nil {
                        map["ArraySpec"] = self.arraySpec?.toMap()
                    }
                    if self.maxCount != nil {
                        map["MaxCount"] = self.maxCount!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ArraySpec") && dict["ArraySpec"] != nil {
                        var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy.ArraySpec()
                        model.fromMap(dict["ArraySpec"] as! [String: Any])
                        self.arraySpec = model
                    }
                    if dict.keys.contains("MaxCount") && dict["MaxCount"] != nil {
                        self.maxCount = dict["MaxCount"] as! Int32
                    }
                }
            }
            public class ExecutorStatus : Tea.TeaModel {
                public var arrayId: Int32?

                public var createTime: String?

                public var endTime: String?

                public var startTime: String?

                public var status: String?

                public var statusReason: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.arrayId != nil {
                        map["ArrayId"] = self.arrayId!
                    }
                    if self.createTime != nil {
                        map["CreateTime"] = self.createTime!
                    }
                    if self.endTime != nil {
                        map["EndTime"] = self.endTime!
                    }
                    if self.startTime != nil {
                        map["StartTime"] = self.startTime!
                    }
                    if self.status != nil {
                        map["Status"] = self.status!
                    }
                    if self.statusReason != nil {
                        map["StatusReason"] = self.statusReason!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ArrayId") && dict["ArrayId"] != nil {
                        self.arrayId = dict["ArrayId"] as! Int32
                    }
                    if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                        self.createTime = dict["CreateTime"] as! String
                    }
                    if dict.keys.contains("EndTime") && dict["EndTime"] != nil {
                        self.endTime = dict["EndTime"] as! String
                    }
                    if dict.keys.contains("StartTime") && dict["StartTime"] != nil {
                        self.startTime = dict["StartTime"] as! String
                    }
                    if dict.keys.contains("Status") && dict["Status"] != nil {
                        self.status = dict["Status"] as! String
                    }
                    if dict.keys.contains("StatusReason") && dict["StatusReason"] != nil {
                        self.statusReason = dict["StatusReason"] as! String
                    }
                }
            }
            public class TaskSpec : Tea.TeaModel {
                public class Resource : Tea.TeaModel {
                    public class Disks : Tea.TeaModel {
                        public var size: Int32?

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
                            if self.size != nil {
                                map["Size"] = self.size!
                            }
                            if self.type != nil {
                                map["Type"] = self.type!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Size") && dict["Size"] != nil {
                                self.size = dict["Size"] as! Int32
                            }
                            if dict.keys.contains("Type") && dict["Type"] != nil {
                                self.type = dict["Type"] as! String
                            }
                        }
                    }
                    public var cores: Double?

                    public var disks: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks]?

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
                        if self.cores != nil {
                            map["Cores"] = self.cores!
                        }
                        if self.disks != nil {
                            var tmp : [Any] = []
                            for k in self.disks! {
                                tmp.append(k.toMap())
                            }
                            map["Disks"] = tmp
                        }
                        if self.memory != nil {
                            map["Memory"] = self.memory!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Cores") && dict["Cores"] != nil {
                            self.cores = dict["Cores"] as! Double
                        }
                        if dict.keys.contains("Disks") && dict["Disks"] != nil {
                            var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks] = []
                            for v in dict["Disks"] as! [Any] {
                                var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource.Disks()
                                if v != nil {
                                    model.fromMap(v as! [String: Any])
                                }
                                tmp.append(model)
                            }
                            self.disks = tmp
                        }
                        if dict.keys.contains("Memory") && dict["Memory"] != nil {
                            self.memory = dict["Memory"] as! Int32
                        }
                    }
                }
                public class TaskExecutor : Tea.TeaModel {
                    public class VM : Tea.TeaModel {
                        public var image: String?

                        public var prologScript: String?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.image != nil {
                                map["Image"] = self.image!
                            }
                            if self.prologScript != nil {
                                map["PrologScript"] = self.prologScript!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("Image") && dict["Image"] != nil {
                                self.image = dict["Image"] as! String
                            }
                            if dict.keys.contains("PrologScript") && dict["PrologScript"] != nil {
                                self.prologScript = dict["PrologScript"] as! String
                            }
                        }
                    }
                    public var VM: GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor.VM?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.VM?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.VM != nil {
                            map["VM"] = self.VM?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("VM") && dict["VM"] != nil {
                            var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor.VM()
                            model.fromMap(dict["VM"] as! [String: Any])
                            self.VM = model
                        }
                    }
                }
                public var resource: GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource?

                public var taskExecutor: [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.resource?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.resource != nil {
                        map["Resource"] = self.resource?.toMap()
                    }
                    if self.taskExecutor != nil {
                        var tmp : [Any] = []
                        for k in self.taskExecutor! {
                            tmp.append(k.toMap())
                        }
                        map["TaskExecutor"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Resource") && dict["Resource"] != nil {
                        var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.Resource()
                        model.fromMap(dict["Resource"] as! [String: Any])
                        self.resource = model
                    }
                    if dict.keys.contains("TaskExecutor") && dict["TaskExecutor"] != nil {
                        var tmp : [GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor] = []
                        for v in dict["TaskExecutor"] as! [Any] {
                            var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec.TaskExecutor()
                            if v != nil {
                                model.fromMap(v as! [String: Any])
                            }
                            tmp.append(model)
                        }
                        self.taskExecutor = tmp
                    }
                }
            }
            public var executorPolicy: GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy?

            public var executorStatus: [GetJobResponseBody.JobInfo.Tasks.ExecutorStatus]?

            public var taskName: String?

            public var taskSpec: GetJobResponseBody.JobInfo.Tasks.TaskSpec?

            public var taskSustainable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.executorPolicy?.validate()
                try self.taskSpec?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.executorPolicy != nil {
                    map["ExecutorPolicy"] = self.executorPolicy?.toMap()
                }
                if self.executorStatus != nil {
                    var tmp : [Any] = []
                    for k in self.executorStatus! {
                        tmp.append(k.toMap())
                    }
                    map["ExecutorStatus"] = tmp
                }
                if self.taskName != nil {
                    map["TaskName"] = self.taskName!
                }
                if self.taskSpec != nil {
                    map["TaskSpec"] = self.taskSpec?.toMap()
                }
                if self.taskSustainable != nil {
                    map["TaskSustainable"] = self.taskSustainable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ExecutorPolicy") && dict["ExecutorPolicy"] != nil {
                    var model = GetJobResponseBody.JobInfo.Tasks.ExecutorPolicy()
                    model.fromMap(dict["ExecutorPolicy"] as! [String: Any])
                    self.executorPolicy = model
                }
                if dict.keys.contains("ExecutorStatus") && dict["ExecutorStatus"] != nil {
                    var tmp : [GetJobResponseBody.JobInfo.Tasks.ExecutorStatus] = []
                    for v in dict["ExecutorStatus"] as! [Any] {
                        var model = GetJobResponseBody.JobInfo.Tasks.ExecutorStatus()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.executorStatus = tmp
                }
                if dict.keys.contains("TaskName") && dict["TaskName"] != nil {
                    self.taskName = dict["TaskName"] as! String
                }
                if dict.keys.contains("TaskSpec") && dict["TaskSpec"] != nil {
                    var model = GetJobResponseBody.JobInfo.Tasks.TaskSpec()
                    model.fromMap(dict["TaskSpec"] as! [String: Any])
                    self.taskSpec = model
                }
                if dict.keys.contains("TaskSustainable") && dict["TaskSustainable"] != nil {
                    self.taskSustainable = dict["TaskSustainable"] as! Bool
                }
            }
        }
        public var deploymentPolicy: GetJobResponseBody.JobInfo.DeploymentPolicy?

        public var jobDescription: String?

        public var jobId: String?

        public var jobName: String?

        public var tasks: [GetJobResponseBody.JobInfo.Tasks]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deploymentPolicy?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deploymentPolicy != nil {
                map["DeploymentPolicy"] = self.deploymentPolicy?.toMap()
            }
            if self.jobDescription != nil {
                map["JobDescription"] = self.jobDescription!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.tasks != nil {
                var tmp : [Any] = []
                for k in self.tasks! {
                    tmp.append(k.toMap())
                }
                map["Tasks"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DeploymentPolicy") && dict["DeploymentPolicy"] != nil {
                var model = GetJobResponseBody.JobInfo.DeploymentPolicy()
                model.fromMap(dict["DeploymentPolicy"] as! [String: Any])
                self.deploymentPolicy = model
            }
            if dict.keys.contains("JobDescription") && dict["JobDescription"] != nil {
                self.jobDescription = dict["JobDescription"] as! String
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") && dict["JobName"] != nil {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Tasks") && dict["Tasks"] != nil {
                var tmp : [GetJobResponseBody.JobInfo.Tasks] = []
                for v in dict["Tasks"] as! [Any] {
                    var model = GetJobResponseBody.JobInfo.Tasks()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tasks = tmp
            }
        }
    }
    public var jobInfo: GetJobResponseBody.JobInfo?

    public var requestId: String?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobInfo") && dict["JobInfo"] != nil {
            var model = GetJobResponseBody.JobInfo()
            model.fromMap(dict["JobInfo"] as! [String: Any])
            self.jobInfo = model
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = GetJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var imageIds: [String]?

    public var imageNames: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIds != nil {
            map["ImageIds"] = self.imageIds!
        }
        if self.imageNames != nil {
            map["ImageNames"] = self.imageNames!
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
        if dict.keys.contains("ImageIds") && dict["ImageIds"] != nil {
            self.imageIds = dict["ImageIds"] as! [String]
        }
        if dict.keys.contains("ImageNames") && dict["ImageNames"] != nil {
            self.imageNames = dict["ImageNames"] as! [String]
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListImagesShrinkRequest : Tea.TeaModel {
    public var imageIdsShrink: String?

    public var imageNamesShrink: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageIdsShrink != nil {
            map["ImageIds"] = self.imageIdsShrink!
        }
        if self.imageNamesShrink != nil {
            map["ImageNames"] = self.imageNamesShrink!
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
        if dict.keys.contains("ImageIds") && dict["ImageIds"] != nil {
            self.imageIdsShrink = dict["ImageIds"] as! String
        }
        if dict.keys.contains("ImageNames") && dict["ImageNames"] != nil {
            self.imageNamesShrink = dict["ImageNames"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var imageId: String?

        public var imageType: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.imageType != nil {
                map["ImageType"] = self.imageType!
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
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") && dict["Description"] != nil {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("ImageType") && dict["ImageType"] != nil {
                self.imageType = dict["ImageType"] as! String
            }
            if dict.keys.contains("Name") && dict["Name"] != nil {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Version") && dict["Version"] != nil {
                self.version = dict["Version"] as! String
            }
        }
    }
    public var images: [ListImagesResponseBody.Images]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if dict.keys.contains("Images") && dict["Images"] != nil {
            var tmp : [ListImagesResponseBody.Images] = []
            for v in dict["Images"] as! [Any] {
                var model = ListImagesResponseBody.Images()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.images = tmp
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") && dict["TotalCount"] != nil {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListImagesResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public class Filter : Tea.TeaModel {
        public var jobName: String?

        public var status: String?

        public var timeCreatedAfter: Int32?

        public var timeCreatedBefore: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.timeCreatedAfter != nil {
                map["TimeCreatedAfter"] = self.timeCreatedAfter!
            }
            if self.timeCreatedBefore != nil {
                map["TimeCreatedBefore"] = self.timeCreatedBefore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobName") && dict["JobName"] != nil {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TimeCreatedAfter") && dict["TimeCreatedAfter"] != nil {
                self.timeCreatedAfter = dict["TimeCreatedAfter"] as! Int32
            }
            if dict.keys.contains("TimeCreatedBefore") && dict["TimeCreatedBefore"] != nil {
                self.timeCreatedBefore = dict["TimeCreatedBefore"] as! Int32
            }
        }
    }
    public class SortBy : Tea.TeaModel {
        public var label: String?

        public var order: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.label != nil {
                map["Label"] = self.label!
            }
            if self.order != nil {
                map["Order"] = self.order!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Label") && dict["Label"] != nil {
                self.label = dict["Label"] as! String
            }
            if dict.keys.contains("Order") && dict["Order"] != nil {
                self.order = dict["Order"] as! String
            }
        }
    }
    public var filter: ListJobsRequest.Filter?

    public var pageNumber: String?

    public var pageSize: String?

    public var sortBy: ListJobsRequest.SortBy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.filter?.validate()
        try self.sortBy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter?.toMap()
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            var model = ListJobsRequest.Filter()
            model.fromMap(dict["Filter"] as! [String: Any])
            self.filter = model
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            var model = ListJobsRequest.SortBy()
            model.fromMap(dict["SortBy"] as! [String: Any])
            self.sortBy = model
        }
    }
}

public class ListJobsShrinkRequest : Tea.TeaModel {
    public var filterShrink: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sortByShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filterShrink != nil {
            map["Filter"] = self.filterShrink!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sortByShrink != nil {
            map["SortBy"] = self.sortByShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") && dict["Filter"] != nil {
            self.filterShrink = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") && dict["PageNumber"] != nil {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") && dict["PageSize"] != nil {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("SortBy") && dict["SortBy"] != nil {
            self.sortByShrink = dict["SortBy"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class JobList : Tea.TeaModel {
        public var createTime: String?

        public var executorCount: Int32?

        public var jobDescription: String?

        public var jobId: String?

        public var jobName: String?

        public var ownerUid: String?

        public var status: String?

        public var taskCount: Int32?

        public override init() {
            super.init()
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
            if self.executorCount != nil {
                map["ExecutorCount"] = self.executorCount!
            }
            if self.jobDescription != nil {
                map["JobDescription"] = self.jobDescription!
            }
            if self.jobId != nil {
                map["JobId"] = self.jobId!
            }
            if self.jobName != nil {
                map["JobName"] = self.jobName!
            }
            if self.ownerUid != nil {
                map["OwnerUid"] = self.ownerUid!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskCount != nil {
                map["TaskCount"] = self.taskCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") && dict["CreateTime"] != nil {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("ExecutorCount") && dict["ExecutorCount"] != nil {
                self.executorCount = dict["ExecutorCount"] as! Int32
            }
            if dict.keys.contains("JobDescription") && dict["JobDescription"] != nil {
                self.jobDescription = dict["JobDescription"] as! String
            }
            if dict.keys.contains("JobId") && dict["JobId"] != nil {
                self.jobId = dict["JobId"] as! String
            }
            if dict.keys.contains("JobName") && dict["JobName"] != nil {
                self.jobName = dict["JobName"] as! String
            }
            if dict.keys.contains("OwnerUid") && dict["OwnerUid"] != nil {
                self.ownerUid = dict["OwnerUid"] as! String
            }
            if dict.keys.contains("Status") && dict["Status"] != nil {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskCount") && dict["TaskCount"] != nil {
                self.taskCount = dict["TaskCount"] as! Int32
            }
        }
    }
    public var jobList: [ListJobsResponseBody.JobList]?

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
        if self.jobList != nil {
            var tmp : [Any] = []
            for k in self.jobList! {
                tmp.append(k.toMap())
            }
            map["JobList"] = tmp
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
        if dict.keys.contains("JobList") && dict["JobList"] != nil {
            var tmp : [ListJobsResponseBody.JobList] = []
            for v in dict["JobList"] as! [Any] {
                var model = ListJobsResponseBody.JobList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobList = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") && dict["headers"] != nil {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") && dict["statusCode"] != nil {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") && dict["body"] != nil {
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveImageRequest : Tea.TeaModel {
    public var imageId: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") && dict["ImageId"] != nil {
            self.imageId = dict["ImageId"] as! String
        }
    }
}

public class RemoveImageResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Success") && dict["Success"] != nil {
            self.success = dict["Success"] as! Bool
        }
    }
}

public class RemoveImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveImageResponseBody?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.body?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
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
            var model = RemoveImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
