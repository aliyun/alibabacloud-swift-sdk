import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class Addon : Tea.TeaModel {
    public var config: String?

    public var disabled: Bool?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.disabled != nil {
            map["disabled"] = self.disabled!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("disabled") && dict["disabled"] != nil {
            self.disabled = dict["disabled"] as! Bool
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class DataDisk : Tea.TeaModel {
    public var autoFormat: Bool?

    public var autoSnapshotPolicyId: String?

    public var burstingEnabled: Bool?

    public var category: String?

    public var device: String?

    public var diskName: String?

    public var encrypted: String?

    public var fileSystem: String?

    public var kmsKeyId: String?

    public var mountTarget: String?

    public var performanceLevel: String?

    public var provisionedIops: Int64?

    public var size: Int64?

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
        if self.autoFormat != nil {
            map["auto_format"] = self.autoFormat!
        }
        if self.autoSnapshotPolicyId != nil {
            map["auto_snapshot_policy_id"] = self.autoSnapshotPolicyId!
        }
        if self.burstingEnabled != nil {
            map["bursting_enabled"] = self.burstingEnabled!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.device != nil {
            map["device"] = self.device!
        }
        if self.diskName != nil {
            map["disk_name"] = self.diskName!
        }
        if self.encrypted != nil {
            map["encrypted"] = self.encrypted!
        }
        if self.fileSystem != nil {
            map["file_system"] = self.fileSystem!
        }
        if self.kmsKeyId != nil {
            map["kms_key_id"] = self.kmsKeyId!
        }
        if self.mountTarget != nil {
            map["mount_target"] = self.mountTarget!
        }
        if self.performanceLevel != nil {
            map["performance_level"] = self.performanceLevel!
        }
        if self.provisionedIops != nil {
            map["provisioned_iops"] = self.provisionedIops!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.snapshotId != nil {
            map["snapshot_id"] = self.snapshotId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_format") && dict["auto_format"] != nil {
            self.autoFormat = dict["auto_format"] as! Bool
        }
        if dict.keys.contains("auto_snapshot_policy_id") && dict["auto_snapshot_policy_id"] != nil {
            self.autoSnapshotPolicyId = dict["auto_snapshot_policy_id"] as! String
        }
        if dict.keys.contains("bursting_enabled") && dict["bursting_enabled"] != nil {
            self.burstingEnabled = dict["bursting_enabled"] as! Bool
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("device") && dict["device"] != nil {
            self.device = dict["device"] as! String
        }
        if dict.keys.contains("disk_name") && dict["disk_name"] != nil {
            self.diskName = dict["disk_name"] as! String
        }
        if dict.keys.contains("encrypted") && dict["encrypted"] != nil {
            self.encrypted = dict["encrypted"] as! String
        }
        if dict.keys.contains("file_system") && dict["file_system"] != nil {
            self.fileSystem = dict["file_system"] as! String
        }
        if dict.keys.contains("kms_key_id") && dict["kms_key_id"] != nil {
            self.kmsKeyId = dict["kms_key_id"] as! String
        }
        if dict.keys.contains("mount_target") && dict["mount_target"] != nil {
            self.mountTarget = dict["mount_target"] as! String
        }
        if dict.keys.contains("performance_level") && dict["performance_level"] != nil {
            self.performanceLevel = dict["performance_level"] as! String
        }
        if dict.keys.contains("provisioned_iops") && dict["provisioned_iops"] != nil {
            self.provisionedIops = dict["provisioned_iops"] as! Int64
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int64
        }
        if dict.keys.contains("snapshot_id") && dict["snapshot_id"] != nil {
            self.snapshotId = dict["snapshot_id"] as! String
        }
    }
}

public class KubeletConfig : Tea.TeaModel {
    public var allowedUnsafeSysctls: [String]?

    public var containerLogMaxFiles: Int64?

    public var containerLogMaxSize: String?

    public var cpuManagerPolicy: String?

    public var eventBurst: Int64?

    public var eventRecordQPS: Int64?

    public var evictionHard: [String: Any]?

    public var evictionSoft: [String: Any]?

    public var evictionSoftGracePeriod: [String: Any]?

    public var featureGates: [String: Any]?

    public var kubeAPIBurst: Int64?

    public var kubeAPIQPS: Int64?

    public var kubeReserved: [String: Any]?

    public var maxPods: Int64?

    public var readOnlyPort: Int64?

    public var registryBurst: Int64?

    public var registryPullQPS: Int64?

    public var serializeImagePulls: Bool?

    public var systemReserved: [String: Any]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allowedUnsafeSysctls != nil {
            map["allowedUnsafeSysctls"] = self.allowedUnsafeSysctls!
        }
        if self.containerLogMaxFiles != nil {
            map["containerLogMaxFiles"] = self.containerLogMaxFiles!
        }
        if self.containerLogMaxSize != nil {
            map["containerLogMaxSize"] = self.containerLogMaxSize!
        }
        if self.cpuManagerPolicy != nil {
            map["cpuManagerPolicy"] = self.cpuManagerPolicy!
        }
        if self.eventBurst != nil {
            map["eventBurst"] = self.eventBurst!
        }
        if self.eventRecordQPS != nil {
            map["eventRecordQPS"] = self.eventRecordQPS!
        }
        if self.evictionHard != nil {
            map["evictionHard"] = self.evictionHard!
        }
        if self.evictionSoft != nil {
            map["evictionSoft"] = self.evictionSoft!
        }
        if self.evictionSoftGracePeriod != nil {
            map["evictionSoftGracePeriod"] = self.evictionSoftGracePeriod!
        }
        if self.featureGates != nil {
            map["featureGates"] = self.featureGates!
        }
        if self.kubeAPIBurst != nil {
            map["kubeAPIBurst"] = self.kubeAPIBurst!
        }
        if self.kubeAPIQPS != nil {
            map["kubeAPIQPS"] = self.kubeAPIQPS!
        }
        if self.kubeReserved != nil {
            map["kubeReserved"] = self.kubeReserved!
        }
        if self.maxPods != nil {
            map["maxPods"] = self.maxPods!
        }
        if self.readOnlyPort != nil {
            map["readOnlyPort"] = self.readOnlyPort!
        }
        if self.registryBurst != nil {
            map["registryBurst"] = self.registryBurst!
        }
        if self.registryPullQPS != nil {
            map["registryPullQPS"] = self.registryPullQPS!
        }
        if self.serializeImagePulls != nil {
            map["serializeImagePulls"] = self.serializeImagePulls!
        }
        if self.systemReserved != nil {
            map["systemReserved"] = self.systemReserved!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("allowedUnsafeSysctls") && dict["allowedUnsafeSysctls"] != nil {
            self.allowedUnsafeSysctls = dict["allowedUnsafeSysctls"] as! [String]
        }
        if dict.keys.contains("containerLogMaxFiles") && dict["containerLogMaxFiles"] != nil {
            self.containerLogMaxFiles = dict["containerLogMaxFiles"] as! Int64
        }
        if dict.keys.contains("containerLogMaxSize") && dict["containerLogMaxSize"] != nil {
            self.containerLogMaxSize = dict["containerLogMaxSize"] as! String
        }
        if dict.keys.contains("cpuManagerPolicy") && dict["cpuManagerPolicy"] != nil {
            self.cpuManagerPolicy = dict["cpuManagerPolicy"] as! String
        }
        if dict.keys.contains("eventBurst") && dict["eventBurst"] != nil {
            self.eventBurst = dict["eventBurst"] as! Int64
        }
        if dict.keys.contains("eventRecordQPS") && dict["eventRecordQPS"] != nil {
            self.eventRecordQPS = dict["eventRecordQPS"] as! Int64
        }
        if dict.keys.contains("evictionHard") && dict["evictionHard"] != nil {
            self.evictionHard = dict["evictionHard"] as! [String: Any]
        }
        if dict.keys.contains("evictionSoft") && dict["evictionSoft"] != nil {
            self.evictionSoft = dict["evictionSoft"] as! [String: Any]
        }
        if dict.keys.contains("evictionSoftGracePeriod") && dict["evictionSoftGracePeriod"] != nil {
            self.evictionSoftGracePeriod = dict["evictionSoftGracePeriod"] as! [String: Any]
        }
        if dict.keys.contains("featureGates") && dict["featureGates"] != nil {
            self.featureGates = dict["featureGates"] as! [String: Any]
        }
        if dict.keys.contains("kubeAPIBurst") && dict["kubeAPIBurst"] != nil {
            self.kubeAPIBurst = dict["kubeAPIBurst"] as! Int64
        }
        if dict.keys.contains("kubeAPIQPS") && dict["kubeAPIQPS"] != nil {
            self.kubeAPIQPS = dict["kubeAPIQPS"] as! Int64
        }
        if dict.keys.contains("kubeReserved") && dict["kubeReserved"] != nil {
            self.kubeReserved = dict["kubeReserved"] as! [String: Any]
        }
        if dict.keys.contains("maxPods") && dict["maxPods"] != nil {
            self.maxPods = dict["maxPods"] as! Int64
        }
        if dict.keys.contains("readOnlyPort") && dict["readOnlyPort"] != nil {
            self.readOnlyPort = dict["readOnlyPort"] as! Int64
        }
        if dict.keys.contains("registryBurst") && dict["registryBurst"] != nil {
            self.registryBurst = dict["registryBurst"] as! Int64
        }
        if dict.keys.contains("registryPullQPS") && dict["registryPullQPS"] != nil {
            self.registryPullQPS = dict["registryPullQPS"] as! Int64
        }
        if dict.keys.contains("serializeImagePulls") && dict["serializeImagePulls"] != nil {
            self.serializeImagePulls = dict["serializeImagePulls"] as! Bool
        }
        if dict.keys.contains("systemReserved") && dict["systemReserved"] != nil {
            self.systemReserved = dict["systemReserved"] as! [String: Any]
        }
    }
}

public class MaintenanceWindow : Tea.TeaModel {
    public var duration: String?

    public var enable: Bool?

    public var maintenanceTime: String?

    public var weeklyPeriod: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.enable != nil {
            map["enable"] = self.enable!
        }
        if self.maintenanceTime != nil {
            map["maintenance_time"] = self.maintenanceTime!
        }
        if self.weeklyPeriod != nil {
            map["weekly_period"] = self.weeklyPeriod!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("duration") && dict["duration"] != nil {
            self.duration = dict["duration"] as! String
        }
        if dict.keys.contains("enable") && dict["enable"] != nil {
            self.enable = dict["enable"] as! Bool
        }
        if dict.keys.contains("maintenance_time") && dict["maintenance_time"] != nil {
            self.maintenanceTime = dict["maintenance_time"] as! String
        }
        if dict.keys.contains("weekly_period") && dict["weekly_period"] != nil {
            self.weeklyPeriod = dict["weekly_period"] as! String
        }
    }
}

public class Nodepool : Tea.TeaModel {
    public class AutoScaling : Tea.TeaModel {
        public var eipBandwidth: Int64?

        public var eipInternetChargeType: String?

        public var enable: Bool?

        public var isBondEip: Bool?

        public var maxInstances: Int64?

        public var minInstances: Int64?

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
            if self.eipBandwidth != nil {
                map["eip_bandwidth"] = self.eipBandwidth!
            }
            if self.eipInternetChargeType != nil {
                map["eip_internet_charge_type"] = self.eipInternetChargeType!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.isBondEip != nil {
                map["is_bond_eip"] = self.isBondEip!
            }
            if self.maxInstances != nil {
                map["max_instances"] = self.maxInstances!
            }
            if self.minInstances != nil {
                map["min_instances"] = self.minInstances!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eip_bandwidth") && dict["eip_bandwidth"] != nil {
                self.eipBandwidth = dict["eip_bandwidth"] as! Int64
            }
            if dict.keys.contains("eip_internet_charge_type") && dict["eip_internet_charge_type"] != nil {
                self.eipInternetChargeType = dict["eip_internet_charge_type"] as! String
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("is_bond_eip") && dict["is_bond_eip"] != nil {
                self.isBondEip = dict["is_bond_eip"] as! Bool
            }
            if dict.keys.contains("max_instances") && dict["max_instances"] != nil {
                self.maxInstances = dict["max_instances"] as! Int64
            }
            if dict.keys.contains("min_instances") && dict["min_instances"] != nil {
                self.minInstances = dict["min_instances"] as! Int64
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class InterconnectConfig : Tea.TeaModel {
        public var bandwidth: Int64?

        public var ccnId: String?

        public var ccnRegionId: String?

        public var cenId: String?

        public var improvedPeriod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["bandwidth"] = self.bandwidth!
            }
            if self.ccnId != nil {
                map["ccn_id"] = self.ccnId!
            }
            if self.ccnRegionId != nil {
                map["ccn_region_id"] = self.ccnRegionId!
            }
            if self.cenId != nil {
                map["cen_id"] = self.cenId!
            }
            if self.improvedPeriod != nil {
                map["improved_period"] = self.improvedPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                self.bandwidth = dict["bandwidth"] as! Int64
            }
            if dict.keys.contains("ccn_id") && dict["ccn_id"] != nil {
                self.ccnId = dict["ccn_id"] as! String
            }
            if dict.keys.contains("ccn_region_id") && dict["ccn_region_id"] != nil {
                self.ccnRegionId = dict["ccn_region_id"] as! String
            }
            if dict.keys.contains("cen_id") && dict["cen_id"] != nil {
                self.cenId = dict["cen_id"] as! String
            }
            if dict.keys.contains("improved_period") && dict["improved_period"] != nil {
                self.improvedPeriod = dict["improved_period"] as! String
            }
        }
    }
    public class KubernetesConfig : Tea.TeaModel {
        public var cmsEnabled: Bool?

        public var cpuPolicy: String?

        public var labels: [Tag]?

        public var nodeNameMode: String?

        public var runtime: String?

        public var runtimeVersion: String?

        public var taints: [Taint]?

        public var userData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmsEnabled != nil {
                map["cms_enabled"] = self.cmsEnabled!
            }
            if self.cpuPolicy != nil {
                map["cpu_policy"] = self.cpuPolicy!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["labels"] = tmp
            }
            if self.nodeNameMode != nil {
                map["node_name_mode"] = self.nodeNameMode!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.runtimeVersion != nil {
                map["runtime_version"] = self.runtimeVersion!
            }
            if self.taints != nil {
                var tmp : [Any] = []
                for k in self.taints! {
                    tmp.append(k.toMap())
                }
                map["taints"] = tmp
            }
            if self.userData != nil {
                map["user_data"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cms_enabled") && dict["cms_enabled"] != nil {
                self.cmsEnabled = dict["cms_enabled"] as! Bool
            }
            if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
                self.cpuPolicy = dict["cpu_policy"] as! String
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                var tmp : [Tag] = []
                for v in dict["labels"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("node_name_mode") && dict["node_name_mode"] != nil {
                self.nodeNameMode = dict["node_name_mode"] as! String
            }
            if dict.keys.contains("runtime") && dict["runtime"] != nil {
                self.runtime = dict["runtime"] as! String
            }
            if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
                self.runtimeVersion = dict["runtime_version"] as! String
            }
            if dict.keys.contains("taints") && dict["taints"] != nil {
                var tmp : [Taint] = []
                for v in dict["taints"] as! [Any] {
                    var model = Taint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taints = tmp
            }
            if dict.keys.contains("user_data") && dict["user_data"] != nil {
                self.userData = dict["user_data"] as! String
            }
        }
    }
    public class Management : Tea.TeaModel {
        public class AutoRepairPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
            }
        }
        public class AutoUpgradePolicy : Tea.TeaModel {
            public var autoUpgradeKubelet: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgradeKubelet != nil {
                    map["auto_upgrade_kubelet"] = self.autoUpgradeKubelet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade_kubelet") && dict["auto_upgrade_kubelet"] != nil {
                    self.autoUpgradeKubelet = dict["auto_upgrade_kubelet"] as! Bool
                }
            }
        }
        public class AutoVulFixPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public var vulLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                if self.vulLevel != nil {
                    map["vul_level"] = self.vulLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
                if dict.keys.contains("vul_level") && dict["vul_level"] != nil {
                    self.vulLevel = dict["vul_level"] as! String
                }
            }
        }
        public class UpgradeConfig : Tea.TeaModel {
            public var autoUpgrade: Bool?

            public var maxUnavailable: Int64?

            public var surge: Int64?

            public var surgePercentage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgrade != nil {
                    map["auto_upgrade"] = self.autoUpgrade!
                }
                if self.maxUnavailable != nil {
                    map["max_unavailable"] = self.maxUnavailable!
                }
                if self.surge != nil {
                    map["surge"] = self.surge!
                }
                if self.surgePercentage != nil {
                    map["surge_percentage"] = self.surgePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                    self.autoUpgrade = dict["auto_upgrade"] as! Bool
                }
                if dict.keys.contains("max_unavailable") && dict["max_unavailable"] != nil {
                    self.maxUnavailable = dict["max_unavailable"] as! Int64
                }
                if dict.keys.contains("surge") && dict["surge"] != nil {
                    self.surge = dict["surge"] as! Int64
                }
                if dict.keys.contains("surge_percentage") && dict["surge_percentage"] != nil {
                    self.surgePercentage = dict["surge_percentage"] as! Int64
                }
            }
        }
        public var autoRepair: Bool?

        public var autoRepairPolicy: Nodepool.Management.AutoRepairPolicy?

        public var autoUpgrade: Bool?

        public var autoUpgradePolicy: Nodepool.Management.AutoUpgradePolicy?

        public var autoVulFix: Bool?

        public var autoVulFixPolicy: Nodepool.Management.AutoVulFixPolicy?

        public var enable: Bool?

        public var upgradeConfig: Nodepool.Management.UpgradeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoRepairPolicy?.validate()
            try self.autoUpgradePolicy?.validate()
            try self.autoVulFixPolicy?.validate()
            try self.upgradeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRepair != nil {
                map["auto_repair"] = self.autoRepair!
            }
            if self.autoRepairPolicy != nil {
                map["auto_repair_policy"] = self.autoRepairPolicy?.toMap()
            }
            if self.autoUpgrade != nil {
                map["auto_upgrade"] = self.autoUpgrade!
            }
            if self.autoUpgradePolicy != nil {
                map["auto_upgrade_policy"] = self.autoUpgradePolicy?.toMap()
            }
            if self.autoVulFix != nil {
                map["auto_vul_fix"] = self.autoVulFix!
            }
            if self.autoVulFixPolicy != nil {
                map["auto_vul_fix_policy"] = self.autoVulFixPolicy?.toMap()
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.upgradeConfig != nil {
                map["upgrade_config"] = self.upgradeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_repair") && dict["auto_repair"] != nil {
                self.autoRepair = dict["auto_repair"] as! Bool
            }
            if dict.keys.contains("auto_repair_policy") && dict["auto_repair_policy"] != nil {
                var model = Nodepool.Management.AutoRepairPolicy()
                model.fromMap(dict["auto_repair_policy"] as! [String: Any])
                self.autoRepairPolicy = model
            }
            if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                self.autoUpgrade = dict["auto_upgrade"] as! Bool
            }
            if dict.keys.contains("auto_upgrade_policy") && dict["auto_upgrade_policy"] != nil {
                var model = Nodepool.Management.AutoUpgradePolicy()
                model.fromMap(dict["auto_upgrade_policy"] as! [String: Any])
                self.autoUpgradePolicy = model
            }
            if dict.keys.contains("auto_vul_fix") && dict["auto_vul_fix"] != nil {
                self.autoVulFix = dict["auto_vul_fix"] as! Bool
            }
            if dict.keys.contains("auto_vul_fix_policy") && dict["auto_vul_fix_policy"] != nil {
                var model = Nodepool.Management.AutoVulFixPolicy()
                model.fromMap(dict["auto_vul_fix_policy"] as! [String: Any])
                self.autoVulFixPolicy = model
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("upgrade_config") && dict["upgrade_config"] != nil {
                var model = Nodepool.Management.UpgradeConfig()
                model.fromMap(dict["upgrade_config"] as! [String: Any])
                self.upgradeConfig = model
            }
        }
    }
    public class NodeConfig : Tea.TeaModel {
        public var kubeletConfiguration: KubeletConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.kubeletConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kubeletConfiguration != nil {
                map["kubelet_configuration"] = self.kubeletConfiguration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kubelet_configuration") && dict["kubelet_configuration"] != nil {
                var model = KubeletConfig()
                model.fromMap(dict["kubelet_configuration"] as! [String: Any])
                self.kubeletConfiguration = model
            }
        }
    }
    public class NodepoolInfo : Tea.TeaModel {
        public var name: String?

        public var resourceGroupId: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class ScalingGroup : Tea.TeaModel {
        public class PrivatePoolOptions : Tea.TeaModel {
            public var id: String?

            public var matchCriteria: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.matchCriteria != nil {
                    map["match_criteria"] = self.matchCriteria!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("match_criteria") && dict["match_criteria"] != nil {
                    self.matchCriteria = dict["match_criteria"] as! String
                }
            }
        }
        public class SpotPriceLimit : Tea.TeaModel {
            public var instanceType: String?

            public var priceLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceType != nil {
                    map["instance_type"] = self.instanceType!
                }
                if self.priceLimit != nil {
                    map["price_limit"] = self.priceLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                    self.instanceType = dict["instance_type"] as! String
                }
                if dict.keys.contains("price_limit") && dict["price_limit"] != nil {
                    self.priceLimit = dict["price_limit"] as! String
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int64?

        public var compensateWithOnDemand: Bool?

        public var dataDisks: [DataDisk]?

        public var deploymentsetId: String?

        public var desiredSize: Int64?

        public var imageId: String?

        public var imageType: String?

        public var instanceChargeType: String?

        public var instanceTypes: [String]?

        public var internetChargeType: String?

        public var internetMaxBandwidthOut: Int64?

        public var keyPair: String?

        public var loginAsNonRoot: Bool?

        public var loginPassword: String?

        public var multiAzPolicy: String?

        public var onDemandBaseCapacity: Int64?

        public var onDemandPercentageAboveBaseCapacity: Int64?

        public var period: Int64?

        public var periodUnit: String?

        public var platform: String?

        public var privatePoolOptions: Nodepool.ScalingGroup.PrivatePoolOptions?

        public var rdsInstances: [String]?

        public var scalingPolicy: String?

        public var securityGroupId: String?

        public var securityGroupIds: [String]?

        public var spotInstancePools: Int64?

        public var spotInstanceRemedy: Bool?

        public var spotPriceLimit: [Nodepool.ScalingGroup.SpotPriceLimit]?

        public var spotStrategy: String?

        public var systemDiskBurstingEnabled: Bool?

        public var systemDiskCategories: [String]?

        public var systemDiskCategory: String?

        public var systemDiskEncryptAlgorithm: String?

        public var systemDiskEncrypted: Bool?

        public var systemDiskKmsKeyId: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskProvisionedIops: Int64?

        public var systemDiskSize: Int64?

        public var tags: [Nodepool.ScalingGroup.Tags]?

        public var vswitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privatePoolOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["auto_renew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["auto_renew_period"] = self.autoRenewPeriod!
            }
            if self.compensateWithOnDemand != nil {
                map["compensate_with_on_demand"] = self.compensateWithOnDemand!
            }
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["data_disks"] = tmp
            }
            if self.deploymentsetId != nil {
                map["deploymentset_id"] = self.deploymentsetId!
            }
            if self.desiredSize != nil {
                map["desired_size"] = self.desiredSize!
            }
            if self.imageId != nil {
                map["image_id"] = self.imageId!
            }
            if self.imageType != nil {
                map["image_type"] = self.imageType!
            }
            if self.instanceChargeType != nil {
                map["instance_charge_type"] = self.instanceChargeType!
            }
            if self.instanceTypes != nil {
                map["instance_types"] = self.instanceTypes!
            }
            if self.internetChargeType != nil {
                map["internet_charge_type"] = self.internetChargeType!
            }
            if self.internetMaxBandwidthOut != nil {
                map["internet_max_bandwidth_out"] = self.internetMaxBandwidthOut!
            }
            if self.keyPair != nil {
                map["key_pair"] = self.keyPair!
            }
            if self.loginAsNonRoot != nil {
                map["login_as_non_root"] = self.loginAsNonRoot!
            }
            if self.loginPassword != nil {
                map["login_password"] = self.loginPassword!
            }
            if self.multiAzPolicy != nil {
                map["multi_az_policy"] = self.multiAzPolicy!
            }
            if self.onDemandBaseCapacity != nil {
                map["on_demand_base_capacity"] = self.onDemandBaseCapacity!
            }
            if self.onDemandPercentageAboveBaseCapacity != nil {
                map["on_demand_percentage_above_base_capacity"] = self.onDemandPercentageAboveBaseCapacity!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            if self.periodUnit != nil {
                map["period_unit"] = self.periodUnit!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.privatePoolOptions != nil {
                map["private_pool_options"] = self.privatePoolOptions?.toMap()
            }
            if self.rdsInstances != nil {
                map["rds_instances"] = self.rdsInstances!
            }
            if self.scalingPolicy != nil {
                map["scaling_policy"] = self.scalingPolicy!
            }
            if self.securityGroupId != nil {
                map["security_group_id"] = self.securityGroupId!
            }
            if self.securityGroupIds != nil {
                map["security_group_ids"] = self.securityGroupIds!
            }
            if self.spotInstancePools != nil {
                map["spot_instance_pools"] = self.spotInstancePools!
            }
            if self.spotInstanceRemedy != nil {
                map["spot_instance_remedy"] = self.spotInstanceRemedy!
            }
            if self.spotPriceLimit != nil {
                var tmp : [Any] = []
                for k in self.spotPriceLimit! {
                    tmp.append(k.toMap())
                }
                map["spot_price_limit"] = tmp
            }
            if self.spotStrategy != nil {
                map["spot_strategy"] = self.spotStrategy!
            }
            if self.systemDiskBurstingEnabled != nil {
                map["system_disk_bursting_enabled"] = self.systemDiskBurstingEnabled!
            }
            if self.systemDiskCategories != nil {
                map["system_disk_categories"] = self.systemDiskCategories!
            }
            if self.systemDiskCategory != nil {
                map["system_disk_category"] = self.systemDiskCategory!
            }
            if self.systemDiskEncryptAlgorithm != nil {
                map["system_disk_encrypt_algorithm"] = self.systemDiskEncryptAlgorithm!
            }
            if self.systemDiskEncrypted != nil {
                map["system_disk_encrypted"] = self.systemDiskEncrypted!
            }
            if self.systemDiskKmsKeyId != nil {
                map["system_disk_kms_key_id"] = self.systemDiskKmsKeyId!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["system_disk_performance_level"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskProvisionedIops != nil {
                map["system_disk_provisioned_iops"] = self.systemDiskProvisionedIops!
            }
            if self.systemDiskSize != nil {
                map["system_disk_size"] = self.systemDiskSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.vswitchIds != nil {
                map["vswitch_ids"] = self.vswitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_renew") && dict["auto_renew"] != nil {
                self.autoRenew = dict["auto_renew"] as! Bool
            }
            if dict.keys.contains("auto_renew_period") && dict["auto_renew_period"] != nil {
                self.autoRenewPeriod = dict["auto_renew_period"] as! Int64
            }
            if dict.keys.contains("compensate_with_on_demand") && dict["compensate_with_on_demand"] != nil {
                self.compensateWithOnDemand = dict["compensate_with_on_demand"] as! Bool
            }
            if dict.keys.contains("data_disks") && dict["data_disks"] != nil {
                var tmp : [DataDisk] = []
                for v in dict["data_disks"] as! [Any] {
                    var model = DataDisk()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataDisks = tmp
            }
            if dict.keys.contains("deploymentset_id") && dict["deploymentset_id"] != nil {
                self.deploymentsetId = dict["deploymentset_id"] as! String
            }
            if dict.keys.contains("desired_size") && dict["desired_size"] != nil {
                self.desiredSize = dict["desired_size"] as! Int64
            }
            if dict.keys.contains("image_id") && dict["image_id"] != nil {
                self.imageId = dict["image_id"] as! String
            }
            if dict.keys.contains("image_type") && dict["image_type"] != nil {
                self.imageType = dict["image_type"] as! String
            }
            if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                self.instanceChargeType = dict["instance_charge_type"] as! String
            }
            if dict.keys.contains("instance_types") && dict["instance_types"] != nil {
                self.instanceTypes = dict["instance_types"] as! [String]
            }
            if dict.keys.contains("internet_charge_type") && dict["internet_charge_type"] != nil {
                self.internetChargeType = dict["internet_charge_type"] as! String
            }
            if dict.keys.contains("internet_max_bandwidth_out") && dict["internet_max_bandwidth_out"] != nil {
                self.internetMaxBandwidthOut = dict["internet_max_bandwidth_out"] as! Int64
            }
            if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
                self.keyPair = dict["key_pair"] as! String
            }
            if dict.keys.contains("login_as_non_root") && dict["login_as_non_root"] != nil {
                self.loginAsNonRoot = dict["login_as_non_root"] as! Bool
            }
            if dict.keys.contains("login_password") && dict["login_password"] != nil {
                self.loginPassword = dict["login_password"] as! String
            }
            if dict.keys.contains("multi_az_policy") && dict["multi_az_policy"] != nil {
                self.multiAzPolicy = dict["multi_az_policy"] as! String
            }
            if dict.keys.contains("on_demand_base_capacity") && dict["on_demand_base_capacity"] != nil {
                self.onDemandBaseCapacity = dict["on_demand_base_capacity"] as! Int64
            }
            if dict.keys.contains("on_demand_percentage_above_base_capacity") && dict["on_demand_percentage_above_base_capacity"] != nil {
                self.onDemandPercentageAboveBaseCapacity = dict["on_demand_percentage_above_base_capacity"] as! Int64
            }
            if dict.keys.contains("period") && dict["period"] != nil {
                self.period = dict["period"] as! Int64
            }
            if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
                self.periodUnit = dict["period_unit"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
            if dict.keys.contains("private_pool_options") && dict["private_pool_options"] != nil {
                var model = Nodepool.ScalingGroup.PrivatePoolOptions()
                model.fromMap(dict["private_pool_options"] as! [String: Any])
                self.privatePoolOptions = model
            }
            if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
                self.rdsInstances = dict["rds_instances"] as! [String]
            }
            if dict.keys.contains("scaling_policy") && dict["scaling_policy"] != nil {
                self.scalingPolicy = dict["scaling_policy"] as! String
            }
            if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                self.securityGroupId = dict["security_group_id"] as! String
            }
            if dict.keys.contains("security_group_ids") && dict["security_group_ids"] != nil {
                self.securityGroupIds = dict["security_group_ids"] as! [String]
            }
            if dict.keys.contains("spot_instance_pools") && dict["spot_instance_pools"] != nil {
                self.spotInstancePools = dict["spot_instance_pools"] as! Int64
            }
            if dict.keys.contains("spot_instance_remedy") && dict["spot_instance_remedy"] != nil {
                self.spotInstanceRemedy = dict["spot_instance_remedy"] as! Bool
            }
            if dict.keys.contains("spot_price_limit") && dict["spot_price_limit"] != nil {
                var tmp : [Nodepool.ScalingGroup.SpotPriceLimit] = []
                for v in dict["spot_price_limit"] as! [Any] {
                    var model = Nodepool.ScalingGroup.SpotPriceLimit()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.spotPriceLimit = tmp
            }
            if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                self.spotStrategy = dict["spot_strategy"] as! String
            }
            if dict.keys.contains("system_disk_bursting_enabled") && dict["system_disk_bursting_enabled"] != nil {
                self.systemDiskBurstingEnabled = dict["system_disk_bursting_enabled"] as! Bool
            }
            if dict.keys.contains("system_disk_categories") && dict["system_disk_categories"] != nil {
                self.systemDiskCategories = dict["system_disk_categories"] as! [String]
            }
            if dict.keys.contains("system_disk_category") && dict["system_disk_category"] != nil {
                self.systemDiskCategory = dict["system_disk_category"] as! String
            }
            if dict.keys.contains("system_disk_encrypt_algorithm") && dict["system_disk_encrypt_algorithm"] != nil {
                self.systemDiskEncryptAlgorithm = dict["system_disk_encrypt_algorithm"] as! String
            }
            if dict.keys.contains("system_disk_encrypted") && dict["system_disk_encrypted"] != nil {
                self.systemDiskEncrypted = dict["system_disk_encrypted"] as! Bool
            }
            if dict.keys.contains("system_disk_kms_key_id") && dict["system_disk_kms_key_id"] != nil {
                self.systemDiskKmsKeyId = dict["system_disk_kms_key_id"] as! String
            }
            if dict.keys.contains("system_disk_performance_level") && dict["system_disk_performance_level"] != nil {
                self.systemDiskPerformanceLevel = dict["system_disk_performance_level"] as! String
            }
            if dict.keys.contains("system_disk_provisioned_iops") && dict["system_disk_provisioned_iops"] != nil {
                self.systemDiskProvisionedIops = dict["system_disk_provisioned_iops"] as! Int64
            }
            if dict.keys.contains("system_disk_size") && dict["system_disk_size"] != nil {
                self.systemDiskSize = dict["system_disk_size"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Nodepool.ScalingGroup.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = Nodepool.ScalingGroup.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
                self.vswitchIds = dict["vswitch_ids"] as! [String]
            }
        }
    }
    public class TeeConfig : Tea.TeaModel {
        public var teeEnable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.teeEnable != nil {
                map["tee_enable"] = self.teeEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tee_enable") && dict["tee_enable"] != nil {
                self.teeEnable = dict["tee_enable"] as! Bool
            }
        }
    }
    public var autoScaling: Nodepool.AutoScaling?

    public var count: Int64?

    public var interconnectConfig: Nodepool.InterconnectConfig?

    public var interconnectMode: String?

    public var kubernetesConfig: Nodepool.KubernetesConfig?

    public var management: Nodepool.Management?

    public var maxNodes: Int64?

    public var nodeConfig: Nodepool.NodeConfig?

    public var nodepoolInfo: Nodepool.NodepoolInfo?

    public var scalingGroup: Nodepool.ScalingGroup?

    public var teeConfig: Nodepool.TeeConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoScaling?.validate()
        try self.interconnectConfig?.validate()
        try self.kubernetesConfig?.validate()
        try self.management?.validate()
        try self.nodeConfig?.validate()
        try self.nodepoolInfo?.validate()
        try self.scalingGroup?.validate()
        try self.teeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScaling != nil {
            map["auto_scaling"] = self.autoScaling?.toMap()
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.interconnectConfig != nil {
            map["interconnect_config"] = self.interconnectConfig?.toMap()
        }
        if self.interconnectMode != nil {
            map["interconnect_mode"] = self.interconnectMode!
        }
        if self.kubernetesConfig != nil {
            map["kubernetes_config"] = self.kubernetesConfig?.toMap()
        }
        if self.management != nil {
            map["management"] = self.management?.toMap()
        }
        if self.maxNodes != nil {
            map["max_nodes"] = self.maxNodes!
        }
        if self.nodeConfig != nil {
            map["node_config"] = self.nodeConfig?.toMap()
        }
        if self.nodepoolInfo != nil {
            map["nodepool_info"] = self.nodepoolInfo?.toMap()
        }
        if self.scalingGroup != nil {
            map["scaling_group"] = self.scalingGroup?.toMap()
        }
        if self.teeConfig != nil {
            map["tee_config"] = self.teeConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_scaling") && dict["auto_scaling"] != nil {
            var model = Nodepool.AutoScaling()
            model.fromMap(dict["auto_scaling"] as! [String: Any])
            self.autoScaling = model
        }
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("interconnect_config") && dict["interconnect_config"] != nil {
            var model = Nodepool.InterconnectConfig()
            model.fromMap(dict["interconnect_config"] as! [String: Any])
            self.interconnectConfig = model
        }
        if dict.keys.contains("interconnect_mode") && dict["interconnect_mode"] != nil {
            self.interconnectMode = dict["interconnect_mode"] as! String
        }
        if dict.keys.contains("kubernetes_config") && dict["kubernetes_config"] != nil {
            var model = Nodepool.KubernetesConfig()
            model.fromMap(dict["kubernetes_config"] as! [String: Any])
            self.kubernetesConfig = model
        }
        if dict.keys.contains("management") && dict["management"] != nil {
            var model = Nodepool.Management()
            model.fromMap(dict["management"] as! [String: Any])
            self.management = model
        }
        if dict.keys.contains("max_nodes") && dict["max_nodes"] != nil {
            self.maxNodes = dict["max_nodes"] as! Int64
        }
        if dict.keys.contains("node_config") && dict["node_config"] != nil {
            var model = Nodepool.NodeConfig()
            model.fromMap(dict["node_config"] as! [String: Any])
            self.nodeConfig = model
        }
        if dict.keys.contains("nodepool_info") && dict["nodepool_info"] != nil {
            var model = Nodepool.NodepoolInfo()
            model.fromMap(dict["nodepool_info"] as! [String: Any])
            self.nodepoolInfo = model
        }
        if dict.keys.contains("scaling_group") && dict["scaling_group"] != nil {
            var model = Nodepool.ScalingGroup()
            model.fromMap(dict["scaling_group"] as! [String: Any])
            self.scalingGroup = model
        }
        if dict.keys.contains("tee_config") && dict["tee_config"] != nil {
            var model = Nodepool.TeeConfig()
            model.fromMap(dict["tee_config"] as! [String: Any])
            self.teeConfig = model
        }
    }
}

public class Runtime : Tea.TeaModel {
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
            map["name"] = self.name!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
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
            map["key"] = self.key!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
    }
}

public class Taint : Tea.TeaModel {
    public var effect: String?

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
        if self.effect != nil {
            map["effect"] = self.effect!
        }
        if self.key != nil {
            map["key"] = self.key!
        }
        if self.value != nil {
            map["value"] = self.value!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("effect") && dict["effect"] != nil {
            self.effect = dict["effect"] as! String
        }
        if dict.keys.contains("key") && dict["key"] != nil {
            self.key = dict["key"] as! String
        }
        if dict.keys.contains("value") && dict["value"] != nil {
            self.value = dict["value"] as! String
        }
    }
}

public class StandardComponentsValue : Tea.TeaModel {
    public var name: String?

    public var version: String?

    public var description_: String?

    public var required_: String?

    public var disabled: Bool?

    public override init() {
        super.init()
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
            map["name"] = self.name!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.required_ != nil {
            map["required"] = self.required_!
        }
        if self.disabled != nil {
            map["disabled"] = self.disabled!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("required") && dict["required"] != nil {
            self.required_ = dict["required"] as! String
        }
        if dict.keys.contains("disabled") && dict["disabled"] != nil {
            self.disabled = dict["disabled"] as! Bool
        }
    }
}

public class QuotasValue : Tea.TeaModel {
    public var quota: String?

    public var operationCode: String?

    public var adjustable: Bool?

    public var unit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quota != nil {
            map["quota"] = self.quota!
        }
        if self.operationCode != nil {
            map["operation_code"] = self.operationCode!
        }
        if self.adjustable != nil {
            map["adjustable"] = self.adjustable!
        }
        if self.unit != nil {
            map["unit"] = self.unit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("quota") && dict["quota"] != nil {
            self.quota = dict["quota"] as! String
        }
        if dict.keys.contains("operation_code") && dict["operation_code"] != nil {
            self.operationCode = dict["operation_code"] as! String
        }
        if dict.keys.contains("adjustable") && dict["adjustable"] != nil {
            self.adjustable = dict["adjustable"] as! Bool
        }
        if dict.keys.contains("unit") && dict["unit"] != nil {
            self.unit = dict["unit"] as! String
        }
    }
}

public class AttachInstancesRequest : Tea.TeaModel {
    public var cpuPolicy: String?

    public var formatDisk: Bool?

    public var imageId: String?

    public var instances: [String]?

    public var isEdgeWorker: Bool?

    public var keepInstanceName: Bool?

    public var keyPair: String?

    public var nodepoolId: String?

    public var password: String?

    public var rdsInstances: [String]?

    public var runtime: Runtime?

    public var tags: [Tag]?

    public var userData: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cpuPolicy != nil {
            map["cpu_policy"] = self.cpuPolicy!
        }
        if self.formatDisk != nil {
            map["format_disk"] = self.formatDisk!
        }
        if self.imageId != nil {
            map["image_id"] = self.imageId!
        }
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        if self.isEdgeWorker != nil {
            map["is_edge_worker"] = self.isEdgeWorker!
        }
        if self.keepInstanceName != nil {
            map["keep_instance_name"] = self.keepInstanceName!
        }
        if self.keyPair != nil {
            map["key_pair"] = self.keyPair!
        }
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        if self.rdsInstances != nil {
            map["rds_instances"] = self.rdsInstances!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.userData != nil {
            map["user_data"] = self.userData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
            self.cpuPolicy = dict["cpu_policy"] as! String
        }
        if dict.keys.contains("format_disk") && dict["format_disk"] != nil {
            self.formatDisk = dict["format_disk"] as! Bool
        }
        if dict.keys.contains("image_id") && dict["image_id"] != nil {
            self.imageId = dict["image_id"] as! String
        }
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
        if dict.keys.contains("is_edge_worker") && dict["is_edge_worker"] != nil {
            self.isEdgeWorker = dict["is_edge_worker"] as! Bool
        }
        if dict.keys.contains("keep_instance_name") && dict["keep_instance_name"] != nil {
            self.keepInstanceName = dict["keep_instance_name"] as! Bool
        }
        if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
            self.keyPair = dict["key_pair"] as! String
        }
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
        if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
            self.rdsInstances = dict["rds_instances"] as! [String]
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            var model = Runtime()
            model.fromMap(dict["runtime"] as! [String: Any])
            self.runtime = model
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("user_data") && dict["user_data"] != nil {
            self.userData = dict["user_data"] as! String
        }
    }
}

public class AttachInstancesResponseBody : Tea.TeaModel {
    public class List : Tea.TeaModel {
        public var code: String?

        public var instanceId: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.instanceId != nil {
                map["instanceId"] = self.instanceId!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("instanceId") && dict["instanceId"] != nil {
                self.instanceId = dict["instanceId"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
        }
    }
    public var list: [AttachInstancesResponseBody.List]?

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
        if self.list != nil {
            var tmp : [Any] = []
            for k in self.list! {
                tmp.append(k.toMap())
            }
            map["list"] = tmp
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("list") && dict["list"] != nil {
            var tmp : [AttachInstancesResponseBody.List] = []
            for v in dict["list"] as! [Any] {
                var model = AttachInstancesResponseBody.List()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.list = tmp
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class AttachInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachInstancesResponseBody?

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
            var model = AttachInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AttachInstancesToNodePoolRequest : Tea.TeaModel {
    public var formatDisk: Bool?

    public var instances: [String]?

    public var keepInstanceName: Bool?

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
        if self.formatDisk != nil {
            map["format_disk"] = self.formatDisk!
        }
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        if self.keepInstanceName != nil {
            map["keep_instance_name"] = self.keepInstanceName!
        }
        if self.password != nil {
            map["password"] = self.password!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("format_disk") && dict["format_disk"] != nil {
            self.formatDisk = dict["format_disk"] as! Bool
        }
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
        if dict.keys.contains("keep_instance_name") && dict["keep_instance_name"] != nil {
            self.keepInstanceName = dict["keep_instance_name"] as! Bool
        }
        if dict.keys.contains("password") && dict["password"] != nil {
            self.password = dict["password"] as! String
        }
    }
}

public class AttachInstancesToNodePoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class AttachInstancesToNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachInstancesToNodePoolResponseBody?

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
            var model = AttachInstancesToNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelClusterUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class CancelComponentUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class CancelOperationPlanResponseBody : Tea.TeaModel {
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
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
    }
}

public class CancelOperationPlanResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CancelOperationPlanResponseBody?

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
            var model = CancelOperationPlanResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CancelTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class CancelWorkflowRequest : Tea.TeaModel {
    public var action: String?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
    }
}

public class CancelWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class CheckControlPlaneLogEnableResponseBody : Tea.TeaModel {
    public var aliuid: String?

    public var components: [String]?

    public var logProject: String?

    public var logTtl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliuid != nil {
            map["aliuid"] = self.aliuid!
        }
        if self.components != nil {
            map["components"] = self.components!
        }
        if self.logProject != nil {
            map["log_project"] = self.logProject!
        }
        if self.logTtl != nil {
            map["log_ttl"] = self.logTtl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliuid") && dict["aliuid"] != nil {
            self.aliuid = dict["aliuid"] as! String
        }
        if dict.keys.contains("components") && dict["components"] != nil {
            self.components = dict["components"] as! [String]
        }
        if dict.keys.contains("log_project") && dict["log_project"] != nil {
            self.logProject = dict["log_project"] as! String
        }
        if dict.keys.contains("log_ttl") && dict["log_ttl"] != nil {
            self.logTtl = dict["log_ttl"] as! String
        }
    }
}

public class CheckControlPlaneLogEnableResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CheckControlPlaneLogEnableResponseBody?

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
            var model = CheckControlPlaneLogEnableResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateAutoscalingConfigRequest : Tea.TeaModel {
    public var coolDownDuration: String?

    public var daemonsetEvictionForNodes: Bool?

    public var expander: String?

    public var gpuUtilizationThreshold: String?

    public var maxGracefulTerminationSec: Int32?

    public var minReplicaCount: Int32?

    public var recycleNodeDeletionEnabled: Bool?

    public var scaleDownEnabled: Bool?

    public var scaleUpFromZero: Bool?

    public var scanInterval: String?

    public var skipNodesWithLocalStorage: Bool?

    public var skipNodesWithSystemPods: Bool?

    public var unneededDuration: String?

    public var utilizationThreshold: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.coolDownDuration != nil {
            map["cool_down_duration"] = self.coolDownDuration!
        }
        if self.daemonsetEvictionForNodes != nil {
            map["daemonset_eviction_for_nodes"] = self.daemonsetEvictionForNodes!
        }
        if self.expander != nil {
            map["expander"] = self.expander!
        }
        if self.gpuUtilizationThreshold != nil {
            map["gpu_utilization_threshold"] = self.gpuUtilizationThreshold!
        }
        if self.maxGracefulTerminationSec != nil {
            map["max_graceful_termination_sec"] = self.maxGracefulTerminationSec!
        }
        if self.minReplicaCount != nil {
            map["min_replica_count"] = self.minReplicaCount!
        }
        if self.recycleNodeDeletionEnabled != nil {
            map["recycle_node_deletion_enabled"] = self.recycleNodeDeletionEnabled!
        }
        if self.scaleDownEnabled != nil {
            map["scale_down_enabled"] = self.scaleDownEnabled!
        }
        if self.scaleUpFromZero != nil {
            map["scale_up_from_zero"] = self.scaleUpFromZero!
        }
        if self.scanInterval != nil {
            map["scan_interval"] = self.scanInterval!
        }
        if self.skipNodesWithLocalStorage != nil {
            map["skip_nodes_with_local_storage"] = self.skipNodesWithLocalStorage!
        }
        if self.skipNodesWithSystemPods != nil {
            map["skip_nodes_with_system_pods"] = self.skipNodesWithSystemPods!
        }
        if self.unneededDuration != nil {
            map["unneeded_duration"] = self.unneededDuration!
        }
        if self.utilizationThreshold != nil {
            map["utilization_threshold"] = self.utilizationThreshold!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cool_down_duration") && dict["cool_down_duration"] != nil {
            self.coolDownDuration = dict["cool_down_duration"] as! String
        }
        if dict.keys.contains("daemonset_eviction_for_nodes") && dict["daemonset_eviction_for_nodes"] != nil {
            self.daemonsetEvictionForNodes = dict["daemonset_eviction_for_nodes"] as! Bool
        }
        if dict.keys.contains("expander") && dict["expander"] != nil {
            self.expander = dict["expander"] as! String
        }
        if dict.keys.contains("gpu_utilization_threshold") && dict["gpu_utilization_threshold"] != nil {
            self.gpuUtilizationThreshold = dict["gpu_utilization_threshold"] as! String
        }
        if dict.keys.contains("max_graceful_termination_sec") && dict["max_graceful_termination_sec"] != nil {
            self.maxGracefulTerminationSec = dict["max_graceful_termination_sec"] as! Int32
        }
        if dict.keys.contains("min_replica_count") && dict["min_replica_count"] != nil {
            self.minReplicaCount = dict["min_replica_count"] as! Int32
        }
        if dict.keys.contains("recycle_node_deletion_enabled") && dict["recycle_node_deletion_enabled"] != nil {
            self.recycleNodeDeletionEnabled = dict["recycle_node_deletion_enabled"] as! Bool
        }
        if dict.keys.contains("scale_down_enabled") && dict["scale_down_enabled"] != nil {
            self.scaleDownEnabled = dict["scale_down_enabled"] as! Bool
        }
        if dict.keys.contains("scale_up_from_zero") && dict["scale_up_from_zero"] != nil {
            self.scaleUpFromZero = dict["scale_up_from_zero"] as! Bool
        }
        if dict.keys.contains("scan_interval") && dict["scan_interval"] != nil {
            self.scanInterval = dict["scan_interval"] as! String
        }
        if dict.keys.contains("skip_nodes_with_local_storage") && dict["skip_nodes_with_local_storage"] != nil {
            self.skipNodesWithLocalStorage = dict["skip_nodes_with_local_storage"] as! Bool
        }
        if dict.keys.contains("skip_nodes_with_system_pods") && dict["skip_nodes_with_system_pods"] != nil {
            self.skipNodesWithSystemPods = dict["skip_nodes_with_system_pods"] as! Bool
        }
        if dict.keys.contains("unneeded_duration") && dict["unneeded_duration"] != nil {
            self.unneededDuration = dict["unneeded_duration"] as! String
        }
        if dict.keys.contains("utilization_threshold") && dict["utilization_threshold"] != nil {
            self.utilizationThreshold = dict["utilization_threshold"] as! String
        }
    }
}

public class CreateAutoscalingConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class WorkerDataDisks : Tea.TeaModel {
        public var category: String?

        public var encrypted: String?

        public var performanceLevel: String?

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
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.encrypted != nil {
                map["encrypted"] = self.encrypted!
            }
            if self.performanceLevel != nil {
                map["performance_level"] = self.performanceLevel!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("encrypted") && dict["encrypted"] != nil {
                self.encrypted = dict["encrypted"] as! String
            }
            if dict.keys.contains("performance_level") && dict["performance_level"] != nil {
                self.performanceLevel = dict["performance_level"] as! String
            }
            if dict.keys.contains("size") && dict["size"] != nil {
                self.size = dict["size"] as! String
            }
        }
    }
    public var accessControlList: [String]?

    public var addons: [Addon]?

    public var apiAudiences: String?

    public var chargeType: String?

    public var cisEnabled: Bool?

    public var cloudMonitorFlags: Bool?

    public var clusterDomain: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var containerCidr: String?

    public var controlplaneLogComponents: [String]?

    public var controlplaneLogProject: String?

    public var controlplaneLogTtl: String?

    public var cpuPolicy: String?

    public var customSan: String?

    public var deletionProtection: Bool?

    public var disableRollback: Bool?

    public var enableRrsa: Bool?

    public var encryptionProviderKey: String?

    public var endpointPublicAccess: Bool?

    public var formatDisk: Bool?

    public var imageId: String?

    public var imageType: String?

    public var instances: [String]?

    public var ipStack: String?

    public var isEnterpriseSecurityGroup: Bool?

    public var keepInstanceName: Bool?

    public var keyPair: String?

    public var kubernetesVersion: String?

    public var loadBalancerSpec: String?

    public var loggingType: String?

    public var loginPassword: String?

    public var masterAutoRenew: Bool?

    public var masterAutoRenewPeriod: Int64?

    public var masterCount: Int64?

    public var masterInstanceChargeType: String?

    public var masterInstanceTypes: [String]?

    public var masterPeriod: Int64?

    public var masterPeriodUnit: String?

    public var masterSystemDiskCategory: String?

    public var masterSystemDiskPerformanceLevel: String?

    public var masterSystemDiskSize: Int64?

    public var masterSystemDiskSnapshotPolicyId: String?

    public var masterVswitchIds: [String]?

    public var name: String?

    public var natGateway: Bool?

    public var nodeCidrMask: String?

    public var nodeNameMode: String?

    public var nodePortRange: String?

    public var nodepools: [Nodepool]?

    public var numOfNodes: Int64?

    public var osType: String?

    public var period: Int64?

    public var periodUnit: String?

    public var platform: String?

    public var podVswitchIds: [String]?

    public var profile: String?

    public var proxyMode: String?

    public var rdsInstances: [String]?

    public var regionId: String?

    public var resourceGroupId: String?

    public var runtime: Runtime?

    public var securityGroupId: String?

    public var serviceAccountIssuer: String?

    public var serviceCidr: String?

    public var serviceDiscoveryTypes: [String]?

    public var snatEntry: Bool?

    public var socEnabled: Bool?

    public var sshFlags: Bool?

    public var tags: [Tag]?

    public var taints: [Taint]?

    public var timeoutMins: Int64?

    public var timezone: String?

    public var userCa: String?

    public var userData: String?

    public var vpcid: String?

    public var vswitchIds: [String]?

    public var workerAutoRenew: Bool?

    public var workerAutoRenewPeriod: Int64?

    public var workerDataDisks: [CreateClusterRequest.WorkerDataDisks]?

    public var workerInstanceChargeType: String?

    public var workerInstanceTypes: [String]?

    public var workerPeriod: Int64?

    public var workerPeriodUnit: String?

    public var workerSystemDiskCategory: String?

    public var workerSystemDiskPerformanceLevel: String?

    public var workerSystemDiskSize: Int64?

    public var workerSystemDiskSnapshotPolicyId: String?

    public var workerVswitchIds: [String]?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlList != nil {
            map["access_control_list"] = self.accessControlList!
        }
        if self.addons != nil {
            var tmp : [Any] = []
            for k in self.addons! {
                tmp.append(k.toMap())
            }
            map["addons"] = tmp
        }
        if self.apiAudiences != nil {
            map["api_audiences"] = self.apiAudiences!
        }
        if self.chargeType != nil {
            map["charge_type"] = self.chargeType!
        }
        if self.cisEnabled != nil {
            map["cis_enabled"] = self.cisEnabled!
        }
        if self.cloudMonitorFlags != nil {
            map["cloud_monitor_flags"] = self.cloudMonitorFlags!
        }
        if self.clusterDomain != nil {
            map["cluster_domain"] = self.clusterDomain!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.containerCidr != nil {
            map["container_cidr"] = self.containerCidr!
        }
        if self.controlplaneLogComponents != nil {
            map["controlplane_log_components"] = self.controlplaneLogComponents!
        }
        if self.controlplaneLogProject != nil {
            map["controlplane_log_project"] = self.controlplaneLogProject!
        }
        if self.controlplaneLogTtl != nil {
            map["controlplane_log_ttl"] = self.controlplaneLogTtl!
        }
        if self.cpuPolicy != nil {
            map["cpu_policy"] = self.cpuPolicy!
        }
        if self.customSan != nil {
            map["custom_san"] = self.customSan!
        }
        if self.deletionProtection != nil {
            map["deletion_protection"] = self.deletionProtection!
        }
        if self.disableRollback != nil {
            map["disable_rollback"] = self.disableRollback!
        }
        if self.enableRrsa != nil {
            map["enable_rrsa"] = self.enableRrsa!
        }
        if self.encryptionProviderKey != nil {
            map["encryption_provider_key"] = self.encryptionProviderKey!
        }
        if self.endpointPublicAccess != nil {
            map["endpoint_public_access"] = self.endpointPublicAccess!
        }
        if self.formatDisk != nil {
            map["format_disk"] = self.formatDisk!
        }
        if self.imageId != nil {
            map["image_id"] = self.imageId!
        }
        if self.imageType != nil {
            map["image_type"] = self.imageType!
        }
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        if self.ipStack != nil {
            map["ip_stack"] = self.ipStack!
        }
        if self.isEnterpriseSecurityGroup != nil {
            map["is_enterprise_security_group"] = self.isEnterpriseSecurityGroup!
        }
        if self.keepInstanceName != nil {
            map["keep_instance_name"] = self.keepInstanceName!
        }
        if self.keyPair != nil {
            map["key_pair"] = self.keyPair!
        }
        if self.kubernetesVersion != nil {
            map["kubernetes_version"] = self.kubernetesVersion!
        }
        if self.loadBalancerSpec != nil {
            map["load_balancer_spec"] = self.loadBalancerSpec!
        }
        if self.loggingType != nil {
            map["logging_type"] = self.loggingType!
        }
        if self.loginPassword != nil {
            map["login_password"] = self.loginPassword!
        }
        if self.masterAutoRenew != nil {
            map["master_auto_renew"] = self.masterAutoRenew!
        }
        if self.masterAutoRenewPeriod != nil {
            map["master_auto_renew_period"] = self.masterAutoRenewPeriod!
        }
        if self.masterCount != nil {
            map["master_count"] = self.masterCount!
        }
        if self.masterInstanceChargeType != nil {
            map["master_instance_charge_type"] = self.masterInstanceChargeType!
        }
        if self.masterInstanceTypes != nil {
            map["master_instance_types"] = self.masterInstanceTypes!
        }
        if self.masterPeriod != nil {
            map["master_period"] = self.masterPeriod!
        }
        if self.masterPeriodUnit != nil {
            map["master_period_unit"] = self.masterPeriodUnit!
        }
        if self.masterSystemDiskCategory != nil {
            map["master_system_disk_category"] = self.masterSystemDiskCategory!
        }
        if self.masterSystemDiskPerformanceLevel != nil {
            map["master_system_disk_performance_level"] = self.masterSystemDiskPerformanceLevel!
        }
        if self.masterSystemDiskSize != nil {
            map["master_system_disk_size"] = self.masterSystemDiskSize!
        }
        if self.masterSystemDiskSnapshotPolicyId != nil {
            map["master_system_disk_snapshot_policy_id"] = self.masterSystemDiskSnapshotPolicyId!
        }
        if self.masterVswitchIds != nil {
            map["master_vswitch_ids"] = self.masterVswitchIds!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.natGateway != nil {
            map["nat_gateway"] = self.natGateway!
        }
        if self.nodeCidrMask != nil {
            map["node_cidr_mask"] = self.nodeCidrMask!
        }
        if self.nodeNameMode != nil {
            map["node_name_mode"] = self.nodeNameMode!
        }
        if self.nodePortRange != nil {
            map["node_port_range"] = self.nodePortRange!
        }
        if self.nodepools != nil {
            var tmp : [Any] = []
            for k in self.nodepools! {
                tmp.append(k.toMap())
            }
            map["nodepools"] = tmp
        }
        if self.numOfNodes != nil {
            map["num_of_nodes"] = self.numOfNodes!
        }
        if self.osType != nil {
            map["os_type"] = self.osType!
        }
        if self.period != nil {
            map["period"] = self.period!
        }
        if self.periodUnit != nil {
            map["period_unit"] = self.periodUnit!
        }
        if self.platform != nil {
            map["platform"] = self.platform!
        }
        if self.podVswitchIds != nil {
            map["pod_vswitch_ids"] = self.podVswitchIds!
        }
        if self.profile != nil {
            map["profile"] = self.profile!
        }
        if self.proxyMode != nil {
            map["proxy_mode"] = self.proxyMode!
        }
        if self.rdsInstances != nil {
            map["rds_instances"] = self.rdsInstances!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resource_group_id"] = self.resourceGroupId!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime?.toMap()
        }
        if self.securityGroupId != nil {
            map["security_group_id"] = self.securityGroupId!
        }
        if self.serviceAccountIssuer != nil {
            map["service_account_issuer"] = self.serviceAccountIssuer!
        }
        if self.serviceCidr != nil {
            map["service_cidr"] = self.serviceCidr!
        }
        if self.serviceDiscoveryTypes != nil {
            map["service_discovery_types"] = self.serviceDiscoveryTypes!
        }
        if self.snatEntry != nil {
            map["snat_entry"] = self.snatEntry!
        }
        if self.socEnabled != nil {
            map["soc_enabled"] = self.socEnabled!
        }
        if self.sshFlags != nil {
            map["ssh_flags"] = self.sshFlags!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.timeoutMins != nil {
            map["timeout_mins"] = self.timeoutMins!
        }
        if self.timezone != nil {
            map["timezone"] = self.timezone!
        }
        if self.userCa != nil {
            map["user_ca"] = self.userCa!
        }
        if self.userData != nil {
            map["user_data"] = self.userData!
        }
        if self.vpcid != nil {
            map["vpcid"] = self.vpcid!
        }
        if self.vswitchIds != nil {
            map["vswitch_ids"] = self.vswitchIds!
        }
        if self.workerAutoRenew != nil {
            map["worker_auto_renew"] = self.workerAutoRenew!
        }
        if self.workerAutoRenewPeriod != nil {
            map["worker_auto_renew_period"] = self.workerAutoRenewPeriod!
        }
        if self.workerDataDisks != nil {
            var tmp : [Any] = []
            for k in self.workerDataDisks! {
                tmp.append(k.toMap())
            }
            map["worker_data_disks"] = tmp
        }
        if self.workerInstanceChargeType != nil {
            map["worker_instance_charge_type"] = self.workerInstanceChargeType!
        }
        if self.workerInstanceTypes != nil {
            map["worker_instance_types"] = self.workerInstanceTypes!
        }
        if self.workerPeriod != nil {
            map["worker_period"] = self.workerPeriod!
        }
        if self.workerPeriodUnit != nil {
            map["worker_period_unit"] = self.workerPeriodUnit!
        }
        if self.workerSystemDiskCategory != nil {
            map["worker_system_disk_category"] = self.workerSystemDiskCategory!
        }
        if self.workerSystemDiskPerformanceLevel != nil {
            map["worker_system_disk_performance_level"] = self.workerSystemDiskPerformanceLevel!
        }
        if self.workerSystemDiskSize != nil {
            map["worker_system_disk_size"] = self.workerSystemDiskSize!
        }
        if self.workerSystemDiskSnapshotPolicyId != nil {
            map["worker_system_disk_snapshot_policy_id"] = self.workerSystemDiskSnapshotPolicyId!
        }
        if self.workerVswitchIds != nil {
            map["worker_vswitch_ids"] = self.workerVswitchIds!
        }
        if self.zoneId != nil {
            map["zone_id"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("access_control_list") && dict["access_control_list"] != nil {
            self.accessControlList = dict["access_control_list"] as! [String]
        }
        if dict.keys.contains("addons") && dict["addons"] != nil {
            var tmp : [Addon] = []
            for v in dict["addons"] as! [Any] {
                var model = Addon()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
        if dict.keys.contains("api_audiences") && dict["api_audiences"] != nil {
            self.apiAudiences = dict["api_audiences"] as! String
        }
        if dict.keys.contains("charge_type") && dict["charge_type"] != nil {
            self.chargeType = dict["charge_type"] as! String
        }
        if dict.keys.contains("cis_enabled") && dict["cis_enabled"] != nil {
            self.cisEnabled = dict["cis_enabled"] as! Bool
        }
        if dict.keys.contains("cloud_monitor_flags") && dict["cloud_monitor_flags"] != nil {
            self.cloudMonitorFlags = dict["cloud_monitor_flags"] as! Bool
        }
        if dict.keys.contains("cluster_domain") && dict["cluster_domain"] != nil {
            self.clusterDomain = dict["cluster_domain"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("container_cidr") && dict["container_cidr"] != nil {
            self.containerCidr = dict["container_cidr"] as! String
        }
        if dict.keys.contains("controlplane_log_components") && dict["controlplane_log_components"] != nil {
            self.controlplaneLogComponents = dict["controlplane_log_components"] as! [String]
        }
        if dict.keys.contains("controlplane_log_project") && dict["controlplane_log_project"] != nil {
            self.controlplaneLogProject = dict["controlplane_log_project"] as! String
        }
        if dict.keys.contains("controlplane_log_ttl") && dict["controlplane_log_ttl"] != nil {
            self.controlplaneLogTtl = dict["controlplane_log_ttl"] as! String
        }
        if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
            self.cpuPolicy = dict["cpu_policy"] as! String
        }
        if dict.keys.contains("custom_san") && dict["custom_san"] != nil {
            self.customSan = dict["custom_san"] as! String
        }
        if dict.keys.contains("deletion_protection") && dict["deletion_protection"] != nil {
            self.deletionProtection = dict["deletion_protection"] as! Bool
        }
        if dict.keys.contains("disable_rollback") && dict["disable_rollback"] != nil {
            self.disableRollback = dict["disable_rollback"] as! Bool
        }
        if dict.keys.contains("enable_rrsa") && dict["enable_rrsa"] != nil {
            self.enableRrsa = dict["enable_rrsa"] as! Bool
        }
        if dict.keys.contains("encryption_provider_key") && dict["encryption_provider_key"] != nil {
            self.encryptionProviderKey = dict["encryption_provider_key"] as! String
        }
        if dict.keys.contains("endpoint_public_access") && dict["endpoint_public_access"] != nil {
            self.endpointPublicAccess = dict["endpoint_public_access"] as! Bool
        }
        if dict.keys.contains("format_disk") && dict["format_disk"] != nil {
            self.formatDisk = dict["format_disk"] as! Bool
        }
        if dict.keys.contains("image_id") && dict["image_id"] != nil {
            self.imageId = dict["image_id"] as! String
        }
        if dict.keys.contains("image_type") && dict["image_type"] != nil {
            self.imageType = dict["image_type"] as! String
        }
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
        if dict.keys.contains("ip_stack") && dict["ip_stack"] != nil {
            self.ipStack = dict["ip_stack"] as! String
        }
        if dict.keys.contains("is_enterprise_security_group") && dict["is_enterprise_security_group"] != nil {
            self.isEnterpriseSecurityGroup = dict["is_enterprise_security_group"] as! Bool
        }
        if dict.keys.contains("keep_instance_name") && dict["keep_instance_name"] != nil {
            self.keepInstanceName = dict["keep_instance_name"] as! Bool
        }
        if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
            self.keyPair = dict["key_pair"] as! String
        }
        if dict.keys.contains("kubernetes_version") && dict["kubernetes_version"] != nil {
            self.kubernetesVersion = dict["kubernetes_version"] as! String
        }
        if dict.keys.contains("load_balancer_spec") && dict["load_balancer_spec"] != nil {
            self.loadBalancerSpec = dict["load_balancer_spec"] as! String
        }
        if dict.keys.contains("logging_type") && dict["logging_type"] != nil {
            self.loggingType = dict["logging_type"] as! String
        }
        if dict.keys.contains("login_password") && dict["login_password"] != nil {
            self.loginPassword = dict["login_password"] as! String
        }
        if dict.keys.contains("master_auto_renew") && dict["master_auto_renew"] != nil {
            self.masterAutoRenew = dict["master_auto_renew"] as! Bool
        }
        if dict.keys.contains("master_auto_renew_period") && dict["master_auto_renew_period"] != nil {
            self.masterAutoRenewPeriod = dict["master_auto_renew_period"] as! Int64
        }
        if dict.keys.contains("master_count") && dict["master_count"] != nil {
            self.masterCount = dict["master_count"] as! Int64
        }
        if dict.keys.contains("master_instance_charge_type") && dict["master_instance_charge_type"] != nil {
            self.masterInstanceChargeType = dict["master_instance_charge_type"] as! String
        }
        if dict.keys.contains("master_instance_types") && dict["master_instance_types"] != nil {
            self.masterInstanceTypes = dict["master_instance_types"] as! [String]
        }
        if dict.keys.contains("master_period") && dict["master_period"] != nil {
            self.masterPeriod = dict["master_period"] as! Int64
        }
        if dict.keys.contains("master_period_unit") && dict["master_period_unit"] != nil {
            self.masterPeriodUnit = dict["master_period_unit"] as! String
        }
        if dict.keys.contains("master_system_disk_category") && dict["master_system_disk_category"] != nil {
            self.masterSystemDiskCategory = dict["master_system_disk_category"] as! String
        }
        if dict.keys.contains("master_system_disk_performance_level") && dict["master_system_disk_performance_level"] != nil {
            self.masterSystemDiskPerformanceLevel = dict["master_system_disk_performance_level"] as! String
        }
        if dict.keys.contains("master_system_disk_size") && dict["master_system_disk_size"] != nil {
            self.masterSystemDiskSize = dict["master_system_disk_size"] as! Int64
        }
        if dict.keys.contains("master_system_disk_snapshot_policy_id") && dict["master_system_disk_snapshot_policy_id"] != nil {
            self.masterSystemDiskSnapshotPolicyId = dict["master_system_disk_snapshot_policy_id"] as! String
        }
        if dict.keys.contains("master_vswitch_ids") && dict["master_vswitch_ids"] != nil {
            self.masterVswitchIds = dict["master_vswitch_ids"] as! [String]
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("nat_gateway") && dict["nat_gateway"] != nil {
            self.natGateway = dict["nat_gateway"] as! Bool
        }
        if dict.keys.contains("node_cidr_mask") && dict["node_cidr_mask"] != nil {
            self.nodeCidrMask = dict["node_cidr_mask"] as! String
        }
        if dict.keys.contains("node_name_mode") && dict["node_name_mode"] != nil {
            self.nodeNameMode = dict["node_name_mode"] as! String
        }
        if dict.keys.contains("node_port_range") && dict["node_port_range"] != nil {
            self.nodePortRange = dict["node_port_range"] as! String
        }
        if dict.keys.contains("nodepools") && dict["nodepools"] != nil {
            var tmp : [Nodepool] = []
            for v in dict["nodepools"] as! [Any] {
                var model = Nodepool()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodepools = tmp
        }
        if dict.keys.contains("num_of_nodes") && dict["num_of_nodes"] != nil {
            self.numOfNodes = dict["num_of_nodes"] as! Int64
        }
        if dict.keys.contains("os_type") && dict["os_type"] != nil {
            self.osType = dict["os_type"] as! String
        }
        if dict.keys.contains("period") && dict["period"] != nil {
            self.period = dict["period"] as! Int64
        }
        if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
            self.periodUnit = dict["period_unit"] as! String
        }
        if dict.keys.contains("platform") && dict["platform"] != nil {
            self.platform = dict["platform"] as! String
        }
        if dict.keys.contains("pod_vswitch_ids") && dict["pod_vswitch_ids"] != nil {
            self.podVswitchIds = dict["pod_vswitch_ids"] as! [String]
        }
        if dict.keys.contains("profile") && dict["profile"] != nil {
            self.profile = dict["profile"] as! String
        }
        if dict.keys.contains("proxy_mode") && dict["proxy_mode"] != nil {
            self.proxyMode = dict["proxy_mode"] as! String
        }
        if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
            self.rdsInstances = dict["rds_instances"] as! [String]
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
            self.resourceGroupId = dict["resource_group_id"] as! String
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            var model = Runtime()
            model.fromMap(dict["runtime"] as! [String: Any])
            self.runtime = model
        }
        if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
            self.securityGroupId = dict["security_group_id"] as! String
        }
        if dict.keys.contains("service_account_issuer") && dict["service_account_issuer"] != nil {
            self.serviceAccountIssuer = dict["service_account_issuer"] as! String
        }
        if dict.keys.contains("service_cidr") && dict["service_cidr"] != nil {
            self.serviceCidr = dict["service_cidr"] as! String
        }
        if dict.keys.contains("service_discovery_types") && dict["service_discovery_types"] != nil {
            self.serviceDiscoveryTypes = dict["service_discovery_types"] as! [String]
        }
        if dict.keys.contains("snat_entry") && dict["snat_entry"] != nil {
            self.snatEntry = dict["snat_entry"] as! Bool
        }
        if dict.keys.contains("soc_enabled") && dict["soc_enabled"] != nil {
            self.socEnabled = dict["soc_enabled"] as! Bool
        }
        if dict.keys.contains("ssh_flags") && dict["ssh_flags"] != nil {
            self.sshFlags = dict["ssh_flags"] as! Bool
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [Taint] = []
            for v in dict["taints"] as! [Any] {
                var model = Taint()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("timeout_mins") && dict["timeout_mins"] != nil {
            self.timeoutMins = dict["timeout_mins"] as! Int64
        }
        if dict.keys.contains("timezone") && dict["timezone"] != nil {
            self.timezone = dict["timezone"] as! String
        }
        if dict.keys.contains("user_ca") && dict["user_ca"] != nil {
            self.userCa = dict["user_ca"] as! String
        }
        if dict.keys.contains("user_data") && dict["user_data"] != nil {
            self.userData = dict["user_data"] as! String
        }
        if dict.keys.contains("vpcid") && dict["vpcid"] != nil {
            self.vpcid = dict["vpcid"] as! String
        }
        if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
            self.vswitchIds = dict["vswitch_ids"] as! [String]
        }
        if dict.keys.contains("worker_auto_renew") && dict["worker_auto_renew"] != nil {
            self.workerAutoRenew = dict["worker_auto_renew"] as! Bool
        }
        if dict.keys.contains("worker_auto_renew_period") && dict["worker_auto_renew_period"] != nil {
            self.workerAutoRenewPeriod = dict["worker_auto_renew_period"] as! Int64
        }
        if dict.keys.contains("worker_data_disks") && dict["worker_data_disks"] != nil {
            var tmp : [CreateClusterRequest.WorkerDataDisks] = []
            for v in dict["worker_data_disks"] as! [Any] {
                var model = CreateClusterRequest.WorkerDataDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workerDataDisks = tmp
        }
        if dict.keys.contains("worker_instance_charge_type") && dict["worker_instance_charge_type"] != nil {
            self.workerInstanceChargeType = dict["worker_instance_charge_type"] as! String
        }
        if dict.keys.contains("worker_instance_types") && dict["worker_instance_types"] != nil {
            self.workerInstanceTypes = dict["worker_instance_types"] as! [String]
        }
        if dict.keys.contains("worker_period") && dict["worker_period"] != nil {
            self.workerPeriod = dict["worker_period"] as! Int64
        }
        if dict.keys.contains("worker_period_unit") && dict["worker_period_unit"] != nil {
            self.workerPeriodUnit = dict["worker_period_unit"] as! String
        }
        if dict.keys.contains("worker_system_disk_category") && dict["worker_system_disk_category"] != nil {
            self.workerSystemDiskCategory = dict["worker_system_disk_category"] as! String
        }
        if dict.keys.contains("worker_system_disk_performance_level") && dict["worker_system_disk_performance_level"] != nil {
            self.workerSystemDiskPerformanceLevel = dict["worker_system_disk_performance_level"] as! String
        }
        if dict.keys.contains("worker_system_disk_size") && dict["worker_system_disk_size"] != nil {
            self.workerSystemDiskSize = dict["worker_system_disk_size"] as! Int64
        }
        if dict.keys.contains("worker_system_disk_snapshot_policy_id") && dict["worker_system_disk_snapshot_policy_id"] != nil {
            self.workerSystemDiskSnapshotPolicyId = dict["worker_system_disk_snapshot_policy_id"] as! String
        }
        if dict.keys.contains("worker_vswitch_ids") && dict["worker_vswitch_ids"] != nil {
            self.workerVswitchIds = dict["worker_vswitch_ids"] as! [String]
        }
        if dict.keys.contains("zone_id") && dict["zone_id"] != nil {
            self.zoneId = dict["zone_id"] as! String
        }
    }
}

public class CreateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
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
            var model = CreateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterNodePoolRequest : Tea.TeaModel {
    public class AutoScaling : Tea.TeaModel {
        public var eipBandwidth: Int64?

        public var eipInternetChargeType: String?

        public var enable: Bool?

        public var isBondEip: Bool?

        public var maxInstances: Int64?

        public var minInstances: Int64?

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
            if self.eipBandwidth != nil {
                map["eip_bandwidth"] = self.eipBandwidth!
            }
            if self.eipInternetChargeType != nil {
                map["eip_internet_charge_type"] = self.eipInternetChargeType!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.isBondEip != nil {
                map["is_bond_eip"] = self.isBondEip!
            }
            if self.maxInstances != nil {
                map["max_instances"] = self.maxInstances!
            }
            if self.minInstances != nil {
                map["min_instances"] = self.minInstances!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eip_bandwidth") && dict["eip_bandwidth"] != nil {
                self.eipBandwidth = dict["eip_bandwidth"] as! Int64
            }
            if dict.keys.contains("eip_internet_charge_type") && dict["eip_internet_charge_type"] != nil {
                self.eipInternetChargeType = dict["eip_internet_charge_type"] as! String
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("is_bond_eip") && dict["is_bond_eip"] != nil {
                self.isBondEip = dict["is_bond_eip"] as! Bool
            }
            if dict.keys.contains("max_instances") && dict["max_instances"] != nil {
                self.maxInstances = dict["max_instances"] as! Int64
            }
            if dict.keys.contains("min_instances") && dict["min_instances"] != nil {
                self.minInstances = dict["min_instances"] as! Int64
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class InterconnectConfig : Tea.TeaModel {
        public var bandwidth: Int64?

        public var ccnId: String?

        public var ccnRegionId: String?

        public var cenId: String?

        public var improvedPeriod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["bandwidth"] = self.bandwidth!
            }
            if self.ccnId != nil {
                map["ccn_id"] = self.ccnId!
            }
            if self.ccnRegionId != nil {
                map["ccn_region_id"] = self.ccnRegionId!
            }
            if self.cenId != nil {
                map["cen_id"] = self.cenId!
            }
            if self.improvedPeriod != nil {
                map["improved_period"] = self.improvedPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                self.bandwidth = dict["bandwidth"] as! Int64
            }
            if dict.keys.contains("ccn_id") && dict["ccn_id"] != nil {
                self.ccnId = dict["ccn_id"] as! String
            }
            if dict.keys.contains("ccn_region_id") && dict["ccn_region_id"] != nil {
                self.ccnRegionId = dict["ccn_region_id"] as! String
            }
            if dict.keys.contains("cen_id") && dict["cen_id"] != nil {
                self.cenId = dict["cen_id"] as! String
            }
            if dict.keys.contains("improved_period") && dict["improved_period"] != nil {
                self.improvedPeriod = dict["improved_period"] as! String
            }
        }
    }
    public class KubernetesConfig : Tea.TeaModel {
        public var cmsEnabled: Bool?

        public var cpuPolicy: String?

        public var labels: [Tag]?

        public var nodeNameMode: String?

        public var runtime: String?

        public var runtimeVersion: String?

        public var taints: [Taint]?

        public var unschedulable: Bool?

        public var userData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmsEnabled != nil {
                map["cms_enabled"] = self.cmsEnabled!
            }
            if self.cpuPolicy != nil {
                map["cpu_policy"] = self.cpuPolicy!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["labels"] = tmp
            }
            if self.nodeNameMode != nil {
                map["node_name_mode"] = self.nodeNameMode!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.runtimeVersion != nil {
                map["runtime_version"] = self.runtimeVersion!
            }
            if self.taints != nil {
                var tmp : [Any] = []
                for k in self.taints! {
                    tmp.append(k.toMap())
                }
                map["taints"] = tmp
            }
            if self.unschedulable != nil {
                map["unschedulable"] = self.unschedulable!
            }
            if self.userData != nil {
                map["user_data"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cms_enabled") && dict["cms_enabled"] != nil {
                self.cmsEnabled = dict["cms_enabled"] as! Bool
            }
            if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
                self.cpuPolicy = dict["cpu_policy"] as! String
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                var tmp : [Tag] = []
                for v in dict["labels"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("node_name_mode") && dict["node_name_mode"] != nil {
                self.nodeNameMode = dict["node_name_mode"] as! String
            }
            if dict.keys.contains("runtime") && dict["runtime"] != nil {
                self.runtime = dict["runtime"] as! String
            }
            if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
                self.runtimeVersion = dict["runtime_version"] as! String
            }
            if dict.keys.contains("taints") && dict["taints"] != nil {
                var tmp : [Taint] = []
                for v in dict["taints"] as! [Any] {
                    var model = Taint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taints = tmp
            }
            if dict.keys.contains("unschedulable") && dict["unschedulable"] != nil {
                self.unschedulable = dict["unschedulable"] as! Bool
            }
            if dict.keys.contains("user_data") && dict["user_data"] != nil {
                self.userData = dict["user_data"] as! String
            }
        }
    }
    public class Management : Tea.TeaModel {
        public class AutoRepairPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
            }
        }
        public class AutoUpgradePolicy : Tea.TeaModel {
            public var autoUpgradeKubelet: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgradeKubelet != nil {
                    map["auto_upgrade_kubelet"] = self.autoUpgradeKubelet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade_kubelet") && dict["auto_upgrade_kubelet"] != nil {
                    self.autoUpgradeKubelet = dict["auto_upgrade_kubelet"] as! Bool
                }
            }
        }
        public class AutoVulFixPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public var vulLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                if self.vulLevel != nil {
                    map["vul_level"] = self.vulLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
                if dict.keys.contains("vul_level") && dict["vul_level"] != nil {
                    self.vulLevel = dict["vul_level"] as! String
                }
            }
        }
        public class UpgradeConfig : Tea.TeaModel {
            public var autoUpgrade: Bool?

            public var maxUnavailable: Int64?

            public var surge: Int64?

            public var surgePercentage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgrade != nil {
                    map["auto_upgrade"] = self.autoUpgrade!
                }
                if self.maxUnavailable != nil {
                    map["max_unavailable"] = self.maxUnavailable!
                }
                if self.surge != nil {
                    map["surge"] = self.surge!
                }
                if self.surgePercentage != nil {
                    map["surge_percentage"] = self.surgePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                    self.autoUpgrade = dict["auto_upgrade"] as! Bool
                }
                if dict.keys.contains("max_unavailable") && dict["max_unavailable"] != nil {
                    self.maxUnavailable = dict["max_unavailable"] as! Int64
                }
                if dict.keys.contains("surge") && dict["surge"] != nil {
                    self.surge = dict["surge"] as! Int64
                }
                if dict.keys.contains("surge_percentage") && dict["surge_percentage"] != nil {
                    self.surgePercentage = dict["surge_percentage"] as! Int64
                }
            }
        }
        public var autoRepair: Bool?

        public var autoRepairPolicy: CreateClusterNodePoolRequest.Management.AutoRepairPolicy?

        public var autoUpgrade: Bool?

        public var autoUpgradePolicy: CreateClusterNodePoolRequest.Management.AutoUpgradePolicy?

        public var autoVulFix: Bool?

        public var autoVulFixPolicy: CreateClusterNodePoolRequest.Management.AutoVulFixPolicy?

        public var enable: Bool?

        public var upgradeConfig: CreateClusterNodePoolRequest.Management.UpgradeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoRepairPolicy?.validate()
            try self.autoUpgradePolicy?.validate()
            try self.autoVulFixPolicy?.validate()
            try self.upgradeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRepair != nil {
                map["auto_repair"] = self.autoRepair!
            }
            if self.autoRepairPolicy != nil {
                map["auto_repair_policy"] = self.autoRepairPolicy?.toMap()
            }
            if self.autoUpgrade != nil {
                map["auto_upgrade"] = self.autoUpgrade!
            }
            if self.autoUpgradePolicy != nil {
                map["auto_upgrade_policy"] = self.autoUpgradePolicy?.toMap()
            }
            if self.autoVulFix != nil {
                map["auto_vul_fix"] = self.autoVulFix!
            }
            if self.autoVulFixPolicy != nil {
                map["auto_vul_fix_policy"] = self.autoVulFixPolicy?.toMap()
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.upgradeConfig != nil {
                map["upgrade_config"] = self.upgradeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_repair") && dict["auto_repair"] != nil {
                self.autoRepair = dict["auto_repair"] as! Bool
            }
            if dict.keys.contains("auto_repair_policy") && dict["auto_repair_policy"] != nil {
                var model = CreateClusterNodePoolRequest.Management.AutoRepairPolicy()
                model.fromMap(dict["auto_repair_policy"] as! [String: Any])
                self.autoRepairPolicy = model
            }
            if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                self.autoUpgrade = dict["auto_upgrade"] as! Bool
            }
            if dict.keys.contains("auto_upgrade_policy") && dict["auto_upgrade_policy"] != nil {
                var model = CreateClusterNodePoolRequest.Management.AutoUpgradePolicy()
                model.fromMap(dict["auto_upgrade_policy"] as! [String: Any])
                self.autoUpgradePolicy = model
            }
            if dict.keys.contains("auto_vul_fix") && dict["auto_vul_fix"] != nil {
                self.autoVulFix = dict["auto_vul_fix"] as! Bool
            }
            if dict.keys.contains("auto_vul_fix_policy") && dict["auto_vul_fix_policy"] != nil {
                var model = CreateClusterNodePoolRequest.Management.AutoVulFixPolicy()
                model.fromMap(dict["auto_vul_fix_policy"] as! [String: Any])
                self.autoVulFixPolicy = model
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("upgrade_config") && dict["upgrade_config"] != nil {
                var model = CreateClusterNodePoolRequest.Management.UpgradeConfig()
                model.fromMap(dict["upgrade_config"] as! [String: Any])
                self.upgradeConfig = model
            }
        }
    }
    public class NodeConfig : Tea.TeaModel {
        public var kubeletConfiguration: KubeletConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.kubeletConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kubeletConfiguration != nil {
                map["kubelet_configuration"] = self.kubeletConfiguration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kubelet_configuration") && dict["kubelet_configuration"] != nil {
                var model = KubeletConfig()
                model.fromMap(dict["kubelet_configuration"] as! [String: Any])
                self.kubeletConfiguration = model
            }
        }
    }
    public class NodepoolInfo : Tea.TeaModel {
        public var name: String?

        public var resourceGroupId: String?

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
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class ScalingGroup : Tea.TeaModel {
        public class PrivatePoolOptions : Tea.TeaModel {
            public var id: String?

            public var matchCriteria: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.matchCriteria != nil {
                    map["match_criteria"] = self.matchCriteria!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("match_criteria") && dict["match_criteria"] != nil {
                    self.matchCriteria = dict["match_criteria"] as! String
                }
            }
        }
        public class SpotPriceLimit : Tea.TeaModel {
            public var instanceType: String?

            public var priceLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceType != nil {
                    map["instance_type"] = self.instanceType!
                }
                if self.priceLimit != nil {
                    map["price_limit"] = self.priceLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                    self.instanceType = dict["instance_type"] as! String
                }
                if dict.keys.contains("price_limit") && dict["price_limit"] != nil {
                    self.priceLimit = dict["price_limit"] as! String
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int64?

        public var cisEnabled: Bool?

        public var compensateWithOnDemand: Bool?

        public var dataDisks: [DataDisk]?

        public var deploymentsetId: String?

        public var desiredSize: Int64?

        public var imageId: String?

        public var imageType: String?

        public var instanceChargeType: String?

        public var instanceTypes: [String]?

        public var internetChargeType: String?

        public var internetMaxBandwidthOut: Int64?

        public var keyPair: String?

        public var loginAsNonRoot: Bool?

        public var loginPassword: String?

        public var multiAzPolicy: String?

        public var onDemandBaseCapacity: Int64?

        public var onDemandPercentageAboveBaseCapacity: Int64?

        public var period: Int64?

        public var periodUnit: String?

        public var platform: String?

        public var privatePoolOptions: CreateClusterNodePoolRequest.ScalingGroup.PrivatePoolOptions?

        public var rdsInstances: [String]?

        public var scalingPolicy: String?

        public var securityGroupId: String?

        public var securityGroupIds: [String]?

        public var socEnabled: Bool?

        public var spotInstancePools: Int64?

        public var spotInstanceRemedy: Bool?

        public var spotPriceLimit: [CreateClusterNodePoolRequest.ScalingGroup.SpotPriceLimit]?

        public var spotStrategy: String?

        public var systemDiskBurstingEnabled: Bool?

        public var systemDiskCategories: [String]?

        public var systemDiskCategory: String?

        public var systemDiskEncryptAlgorithm: String?

        public var systemDiskEncrypted: Bool?

        public var systemDiskKmsKeyId: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskProvisionedIops: Int64?

        public var systemDiskSize: Int64?

        public var tags: [CreateClusterNodePoolRequest.ScalingGroup.Tags]?

        public var vswitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privatePoolOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["auto_renew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["auto_renew_period"] = self.autoRenewPeriod!
            }
            if self.cisEnabled != nil {
                map["cis_enabled"] = self.cisEnabled!
            }
            if self.compensateWithOnDemand != nil {
                map["compensate_with_on_demand"] = self.compensateWithOnDemand!
            }
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["data_disks"] = tmp
            }
            if self.deploymentsetId != nil {
                map["deploymentset_id"] = self.deploymentsetId!
            }
            if self.desiredSize != nil {
                map["desired_size"] = self.desiredSize!
            }
            if self.imageId != nil {
                map["image_id"] = self.imageId!
            }
            if self.imageType != nil {
                map["image_type"] = self.imageType!
            }
            if self.instanceChargeType != nil {
                map["instance_charge_type"] = self.instanceChargeType!
            }
            if self.instanceTypes != nil {
                map["instance_types"] = self.instanceTypes!
            }
            if self.internetChargeType != nil {
                map["internet_charge_type"] = self.internetChargeType!
            }
            if self.internetMaxBandwidthOut != nil {
                map["internet_max_bandwidth_out"] = self.internetMaxBandwidthOut!
            }
            if self.keyPair != nil {
                map["key_pair"] = self.keyPair!
            }
            if self.loginAsNonRoot != nil {
                map["login_as_non_root"] = self.loginAsNonRoot!
            }
            if self.loginPassword != nil {
                map["login_password"] = self.loginPassword!
            }
            if self.multiAzPolicy != nil {
                map["multi_az_policy"] = self.multiAzPolicy!
            }
            if self.onDemandBaseCapacity != nil {
                map["on_demand_base_capacity"] = self.onDemandBaseCapacity!
            }
            if self.onDemandPercentageAboveBaseCapacity != nil {
                map["on_demand_percentage_above_base_capacity"] = self.onDemandPercentageAboveBaseCapacity!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            if self.periodUnit != nil {
                map["period_unit"] = self.periodUnit!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.privatePoolOptions != nil {
                map["private_pool_options"] = self.privatePoolOptions?.toMap()
            }
            if self.rdsInstances != nil {
                map["rds_instances"] = self.rdsInstances!
            }
            if self.scalingPolicy != nil {
                map["scaling_policy"] = self.scalingPolicy!
            }
            if self.securityGroupId != nil {
                map["security_group_id"] = self.securityGroupId!
            }
            if self.securityGroupIds != nil {
                map["security_group_ids"] = self.securityGroupIds!
            }
            if self.socEnabled != nil {
                map["soc_enabled"] = self.socEnabled!
            }
            if self.spotInstancePools != nil {
                map["spot_instance_pools"] = self.spotInstancePools!
            }
            if self.spotInstanceRemedy != nil {
                map["spot_instance_remedy"] = self.spotInstanceRemedy!
            }
            if self.spotPriceLimit != nil {
                var tmp : [Any] = []
                for k in self.spotPriceLimit! {
                    tmp.append(k.toMap())
                }
                map["spot_price_limit"] = tmp
            }
            if self.spotStrategy != nil {
                map["spot_strategy"] = self.spotStrategy!
            }
            if self.systemDiskBurstingEnabled != nil {
                map["system_disk_bursting_enabled"] = self.systemDiskBurstingEnabled!
            }
            if self.systemDiskCategories != nil {
                map["system_disk_categories"] = self.systemDiskCategories!
            }
            if self.systemDiskCategory != nil {
                map["system_disk_category"] = self.systemDiskCategory!
            }
            if self.systemDiskEncryptAlgorithm != nil {
                map["system_disk_encrypt_algorithm"] = self.systemDiskEncryptAlgorithm!
            }
            if self.systemDiskEncrypted != nil {
                map["system_disk_encrypted"] = self.systemDiskEncrypted!
            }
            if self.systemDiskKmsKeyId != nil {
                map["system_disk_kms_key_id"] = self.systemDiskKmsKeyId!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["system_disk_performance_level"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskProvisionedIops != nil {
                map["system_disk_provisioned_iops"] = self.systemDiskProvisionedIops!
            }
            if self.systemDiskSize != nil {
                map["system_disk_size"] = self.systemDiskSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.vswitchIds != nil {
                map["vswitch_ids"] = self.vswitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_renew") && dict["auto_renew"] != nil {
                self.autoRenew = dict["auto_renew"] as! Bool
            }
            if dict.keys.contains("auto_renew_period") && dict["auto_renew_period"] != nil {
                self.autoRenewPeriod = dict["auto_renew_period"] as! Int64
            }
            if dict.keys.contains("cis_enabled") && dict["cis_enabled"] != nil {
                self.cisEnabled = dict["cis_enabled"] as! Bool
            }
            if dict.keys.contains("compensate_with_on_demand") && dict["compensate_with_on_demand"] != nil {
                self.compensateWithOnDemand = dict["compensate_with_on_demand"] as! Bool
            }
            if dict.keys.contains("data_disks") && dict["data_disks"] != nil {
                var tmp : [DataDisk] = []
                for v in dict["data_disks"] as! [Any] {
                    var model = DataDisk()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataDisks = tmp
            }
            if dict.keys.contains("deploymentset_id") && dict["deploymentset_id"] != nil {
                self.deploymentsetId = dict["deploymentset_id"] as! String
            }
            if dict.keys.contains("desired_size") && dict["desired_size"] != nil {
                self.desiredSize = dict["desired_size"] as! Int64
            }
            if dict.keys.contains("image_id") && dict["image_id"] != nil {
                self.imageId = dict["image_id"] as! String
            }
            if dict.keys.contains("image_type") && dict["image_type"] != nil {
                self.imageType = dict["image_type"] as! String
            }
            if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                self.instanceChargeType = dict["instance_charge_type"] as! String
            }
            if dict.keys.contains("instance_types") && dict["instance_types"] != nil {
                self.instanceTypes = dict["instance_types"] as! [String]
            }
            if dict.keys.contains("internet_charge_type") && dict["internet_charge_type"] != nil {
                self.internetChargeType = dict["internet_charge_type"] as! String
            }
            if dict.keys.contains("internet_max_bandwidth_out") && dict["internet_max_bandwidth_out"] != nil {
                self.internetMaxBandwidthOut = dict["internet_max_bandwidth_out"] as! Int64
            }
            if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
                self.keyPair = dict["key_pair"] as! String
            }
            if dict.keys.contains("login_as_non_root") && dict["login_as_non_root"] != nil {
                self.loginAsNonRoot = dict["login_as_non_root"] as! Bool
            }
            if dict.keys.contains("login_password") && dict["login_password"] != nil {
                self.loginPassword = dict["login_password"] as! String
            }
            if dict.keys.contains("multi_az_policy") && dict["multi_az_policy"] != nil {
                self.multiAzPolicy = dict["multi_az_policy"] as! String
            }
            if dict.keys.contains("on_demand_base_capacity") && dict["on_demand_base_capacity"] != nil {
                self.onDemandBaseCapacity = dict["on_demand_base_capacity"] as! Int64
            }
            if dict.keys.contains("on_demand_percentage_above_base_capacity") && dict["on_demand_percentage_above_base_capacity"] != nil {
                self.onDemandPercentageAboveBaseCapacity = dict["on_demand_percentage_above_base_capacity"] as! Int64
            }
            if dict.keys.contains("period") && dict["period"] != nil {
                self.period = dict["period"] as! Int64
            }
            if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
                self.periodUnit = dict["period_unit"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
            if dict.keys.contains("private_pool_options") && dict["private_pool_options"] != nil {
                var model = CreateClusterNodePoolRequest.ScalingGroup.PrivatePoolOptions()
                model.fromMap(dict["private_pool_options"] as! [String: Any])
                self.privatePoolOptions = model
            }
            if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
                self.rdsInstances = dict["rds_instances"] as! [String]
            }
            if dict.keys.contains("scaling_policy") && dict["scaling_policy"] != nil {
                self.scalingPolicy = dict["scaling_policy"] as! String
            }
            if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                self.securityGroupId = dict["security_group_id"] as! String
            }
            if dict.keys.contains("security_group_ids") && dict["security_group_ids"] != nil {
                self.securityGroupIds = dict["security_group_ids"] as! [String]
            }
            if dict.keys.contains("soc_enabled") && dict["soc_enabled"] != nil {
                self.socEnabled = dict["soc_enabled"] as! Bool
            }
            if dict.keys.contains("spot_instance_pools") && dict["spot_instance_pools"] != nil {
                self.spotInstancePools = dict["spot_instance_pools"] as! Int64
            }
            if dict.keys.contains("spot_instance_remedy") && dict["spot_instance_remedy"] != nil {
                self.spotInstanceRemedy = dict["spot_instance_remedy"] as! Bool
            }
            if dict.keys.contains("spot_price_limit") && dict["spot_price_limit"] != nil {
                var tmp : [CreateClusterNodePoolRequest.ScalingGroup.SpotPriceLimit] = []
                for v in dict["spot_price_limit"] as! [Any] {
                    var model = CreateClusterNodePoolRequest.ScalingGroup.SpotPriceLimit()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.spotPriceLimit = tmp
            }
            if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                self.spotStrategy = dict["spot_strategy"] as! String
            }
            if dict.keys.contains("system_disk_bursting_enabled") && dict["system_disk_bursting_enabled"] != nil {
                self.systemDiskBurstingEnabled = dict["system_disk_bursting_enabled"] as! Bool
            }
            if dict.keys.contains("system_disk_categories") && dict["system_disk_categories"] != nil {
                self.systemDiskCategories = dict["system_disk_categories"] as! [String]
            }
            if dict.keys.contains("system_disk_category") && dict["system_disk_category"] != nil {
                self.systemDiskCategory = dict["system_disk_category"] as! String
            }
            if dict.keys.contains("system_disk_encrypt_algorithm") && dict["system_disk_encrypt_algorithm"] != nil {
                self.systemDiskEncryptAlgorithm = dict["system_disk_encrypt_algorithm"] as! String
            }
            if dict.keys.contains("system_disk_encrypted") && dict["system_disk_encrypted"] != nil {
                self.systemDiskEncrypted = dict["system_disk_encrypted"] as! Bool
            }
            if dict.keys.contains("system_disk_kms_key_id") && dict["system_disk_kms_key_id"] != nil {
                self.systemDiskKmsKeyId = dict["system_disk_kms_key_id"] as! String
            }
            if dict.keys.contains("system_disk_performance_level") && dict["system_disk_performance_level"] != nil {
                self.systemDiskPerformanceLevel = dict["system_disk_performance_level"] as! String
            }
            if dict.keys.contains("system_disk_provisioned_iops") && dict["system_disk_provisioned_iops"] != nil {
                self.systemDiskProvisionedIops = dict["system_disk_provisioned_iops"] as! Int64
            }
            if dict.keys.contains("system_disk_size") && dict["system_disk_size"] != nil {
                self.systemDiskSize = dict["system_disk_size"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [CreateClusterNodePoolRequest.ScalingGroup.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = CreateClusterNodePoolRequest.ScalingGroup.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
                self.vswitchIds = dict["vswitch_ids"] as! [String]
            }
        }
    }
    public class TeeConfig : Tea.TeaModel {
        public var teeEnable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.teeEnable != nil {
                map["tee_enable"] = self.teeEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tee_enable") && dict["tee_enable"] != nil {
                self.teeEnable = dict["tee_enable"] as! Bool
            }
        }
    }
    public var autoScaling: CreateClusterNodePoolRequest.AutoScaling?

    public var count: Int64?

    public var interconnectConfig: CreateClusterNodePoolRequest.InterconnectConfig?

    public var interconnectMode: String?

    public var kubernetesConfig: CreateClusterNodePoolRequest.KubernetesConfig?

    public var management: CreateClusterNodePoolRequest.Management?

    public var maxNodes: Int64?

    public var nodeConfig: CreateClusterNodePoolRequest.NodeConfig?

    public var nodepoolInfo: CreateClusterNodePoolRequest.NodepoolInfo?

    public var scalingGroup: CreateClusterNodePoolRequest.ScalingGroup?

    public var teeConfig: CreateClusterNodePoolRequest.TeeConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoScaling?.validate()
        try self.interconnectConfig?.validate()
        try self.kubernetesConfig?.validate()
        try self.management?.validate()
        try self.nodeConfig?.validate()
        try self.nodepoolInfo?.validate()
        try self.scalingGroup?.validate()
        try self.teeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScaling != nil {
            map["auto_scaling"] = self.autoScaling?.toMap()
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.interconnectConfig != nil {
            map["interconnect_config"] = self.interconnectConfig?.toMap()
        }
        if self.interconnectMode != nil {
            map["interconnect_mode"] = self.interconnectMode!
        }
        if self.kubernetesConfig != nil {
            map["kubernetes_config"] = self.kubernetesConfig?.toMap()
        }
        if self.management != nil {
            map["management"] = self.management?.toMap()
        }
        if self.maxNodes != nil {
            map["max_nodes"] = self.maxNodes!
        }
        if self.nodeConfig != nil {
            map["node_config"] = self.nodeConfig?.toMap()
        }
        if self.nodepoolInfo != nil {
            map["nodepool_info"] = self.nodepoolInfo?.toMap()
        }
        if self.scalingGroup != nil {
            map["scaling_group"] = self.scalingGroup?.toMap()
        }
        if self.teeConfig != nil {
            map["tee_config"] = self.teeConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_scaling") && dict["auto_scaling"] != nil {
            var model = CreateClusterNodePoolRequest.AutoScaling()
            model.fromMap(dict["auto_scaling"] as! [String: Any])
            self.autoScaling = model
        }
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("interconnect_config") && dict["interconnect_config"] != nil {
            var model = CreateClusterNodePoolRequest.InterconnectConfig()
            model.fromMap(dict["interconnect_config"] as! [String: Any])
            self.interconnectConfig = model
        }
        if dict.keys.contains("interconnect_mode") && dict["interconnect_mode"] != nil {
            self.interconnectMode = dict["interconnect_mode"] as! String
        }
        if dict.keys.contains("kubernetes_config") && dict["kubernetes_config"] != nil {
            var model = CreateClusterNodePoolRequest.KubernetesConfig()
            model.fromMap(dict["kubernetes_config"] as! [String: Any])
            self.kubernetesConfig = model
        }
        if dict.keys.contains("management") && dict["management"] != nil {
            var model = CreateClusterNodePoolRequest.Management()
            model.fromMap(dict["management"] as! [String: Any])
            self.management = model
        }
        if dict.keys.contains("max_nodes") && dict["max_nodes"] != nil {
            self.maxNodes = dict["max_nodes"] as! Int64
        }
        if dict.keys.contains("node_config") && dict["node_config"] != nil {
            var model = CreateClusterNodePoolRequest.NodeConfig()
            model.fromMap(dict["node_config"] as! [String: Any])
            self.nodeConfig = model
        }
        if dict.keys.contains("nodepool_info") && dict["nodepool_info"] != nil {
            var model = CreateClusterNodePoolRequest.NodepoolInfo()
            model.fromMap(dict["nodepool_info"] as! [String: Any])
            self.nodepoolInfo = model
        }
        if dict.keys.contains("scaling_group") && dict["scaling_group"] != nil {
            var model = CreateClusterNodePoolRequest.ScalingGroup()
            model.fromMap(dict["scaling_group"] as! [String: Any])
            self.scalingGroup = model
        }
        if dict.keys.contains("tee_config") && dict["tee_config"] != nil {
            var model = CreateClusterNodePoolRequest.TeeConfig()
            model.fromMap(dict["tee_config"] as! [String: Any])
            self.teeConfig = model
        }
    }
}

public class CreateClusterNodePoolResponseBody : Tea.TeaModel {
    public var nodepoolId: String?

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
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class CreateClusterNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateClusterNodePoolResponseBody?

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
            var model = CreateClusterNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateEdgeMachineRequest : Tea.TeaModel {
    public var hostname: String?

    public var model: String?

    public var sn: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.hostname != nil {
            map["hostname"] = self.hostname!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.sn != nil {
            map["sn"] = self.sn!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("hostname") && dict["hostname"] != nil {
            self.hostname = dict["hostname"] as! String
        }
        if dict.keys.contains("model") && dict["model"] != nil {
            self.model = dict["model"] as! String
        }
        if dict.keys.contains("sn") && dict["sn"] != nil {
            self.sn = dict["sn"] as! String
        }
    }
}

public class CreateEdgeMachineResponseBody : Tea.TeaModel {
    public var edgeMachineId: String?

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
        if self.edgeMachineId != nil {
            map["edge_machine_id"] = self.edgeMachineId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("edge_machine_id") && dict["edge_machine_id"] != nil {
            self.edgeMachineId = dict["edge_machine_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class CreateEdgeMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateEdgeMachineResponseBody?

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
            var model = CreateEdgeMachineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateKubernetesTriggerRequest : Tea.TeaModel {
    public var action: String?

    public var clusterId: String?

    public var projectId: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("project_id") && dict["project_id"] != nil {
            self.projectId = dict["project_id"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateKubernetesTriggerResponseBody : Tea.TeaModel {
    public var action: String?

    public var clusterId: String?

    public var id: String?

    public var projectId: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("project_id") && dict["project_id"] != nil {
            self.projectId = dict["project_id"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateKubernetesTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateKubernetesTriggerResponseBody?

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
            var model = CreateKubernetesTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTemplateRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var tags: String?

    public var template: String?

    public var templateType: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.templateType != nil {
            map["template_type"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! String
        }
        if dict.keys.contains("template") && dict["template"] != nil {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("template_type") && dict["template_type"] != nil {
            self.templateType = dict["template_type"] as! String
        }
    }
}

public class CreateTemplateResponseBody : Tea.TeaModel {
    public var templateId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateId != nil {
            map["template_id"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("template_id") && dict["template_id"] != nil {
            self.templateId = dict["template_id"] as! String
        }
    }
}

public class CreateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTemplateResponseBody?

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
            var model = CreateTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateTriggerRequest : Tea.TeaModel {
    public var action: String?

    public var clusterId: String?

    public var projectId: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("project_id") && dict["project_id"] != nil {
            self.projectId = dict["project_id"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateTriggerResponseBody : Tea.TeaModel {
    public var action: String?

    public var clusterId: String?

    public var id: String?

    public var projectId: String?

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
        if self.action != nil {
            map["action"] = self.action!
        }
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.id != nil {
            map["id"] = self.id!
        }
        if self.projectId != nil {
            map["project_id"] = self.projectId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("id") && dict["id"] != nil {
            self.id = dict["id"] as! String
        }
        if dict.keys.contains("project_id") && dict["project_id"] != nil {
            self.projectId = dict["project_id"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class CreateTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateTriggerResponseBody?

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
            var model = CreateTriggerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteAlertContactResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeleteAlertContactGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var keepSlb: Bool?

    public var retainAllResources: Bool?

    public var retainResources: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keepSlb != nil {
            map["keep_slb"] = self.keepSlb!
        }
        if self.retainAllResources != nil {
            map["retain_all_resources"] = self.retainAllResources!
        }
        if self.retainResources != nil {
            map["retain_resources"] = self.retainResources!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keep_slb") && dict["keep_slb"] != nil {
            self.keepSlb = dict["keep_slb"] as! Bool
        }
        if dict.keys.contains("retain_all_resources") && dict["retain_all_resources"] != nil {
            self.retainAllResources = dict["retain_all_resources"] as! Bool
        }
        if dict.keys.contains("retain_resources") && dict["retain_resources"] != nil {
            self.retainResources = dict["retain_resources"] as! [String]
        }
    }
}

public class DeleteClusterShrinkRequest : Tea.TeaModel {
    public var keepSlb: Bool?

    public var retainAllResources: Bool?

    public var retainResourcesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keepSlb != nil {
            map["keep_slb"] = self.keepSlb!
        }
        if self.retainAllResources != nil {
            map["retain_all_resources"] = self.retainAllResources!
        }
        if self.retainResourcesShrink != nil {
            map["retain_resources"] = self.retainResourcesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("keep_slb") && dict["keep_slb"] != nil {
            self.keepSlb = dict["keep_slb"] as! Bool
        }
        if dict.keys.contains("retain_all_resources") && dict["retain_all_resources"] != nil {
            self.retainAllResources = dict["retain_all_resources"] as! Bool
        }
        if dict.keys.contains("retain_resources") && dict["retain_resources"] != nil {
            self.retainResourcesShrink = dict["retain_resources"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
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
            var model = DeleteClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterNodepoolRequest : Tea.TeaModel {
    public var force: Bool?

    public override init() {
        super.init()
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
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("force") && dict["force"] != nil {
            self.force = dict["force"] as! Bool
        }
    }
}

public class DeleteClusterNodepoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class DeleteClusterNodepoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterNodepoolResponseBody?

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
            var model = DeleteClusterNodepoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterNodesRequest : Tea.TeaModel {
    public var drainNode: Bool?

    public var nodes: [String]?

    public var releaseNode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drainNode != nil {
            map["drain_node"] = self.drainNode!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.releaseNode != nil {
            map["release_node"] = self.releaseNode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("drain_node") && dict["drain_node"] != nil {
            self.drainNode = dict["drain_node"] as! Bool
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodes = dict["nodes"] as! [String]
        }
        if dict.keys.contains("release_node") && dict["release_node"] != nil {
            self.releaseNode = dict["release_node"] as! Bool
        }
    }
}

public class DeleteClusterNodesResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class DeleteClusterNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteClusterNodesResponseBody?

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
            var model = DeleteClusterNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteEdgeMachineRequest : Tea.TeaModel {
    public var force: String?

    public override init() {
        super.init()
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
            map["force"] = self.force!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("force") && dict["force"] != nil {
            self.force = dict["force"] as! String
        }
    }
}

public class DeleteEdgeMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeleteKubernetesTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeletePolicyInstanceRequest : Tea.TeaModel {
    public var instanceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["instance_name"] = self.instanceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instance_name") && dict["instance_name"] != nil {
            self.instanceName = dict["instance_name"] as! String
        }
    }
}

public class DeletePolicyInstanceResponseBody : Tea.TeaModel {
    public var instances: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
    }
}

public class DeletePolicyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeletePolicyInstanceResponseBody?

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
            var model = DeletePolicyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeleteTriggerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class DeployPolicyInstanceRequest : Tea.TeaModel {
    public var action: String?

    public var namespaces: [String]?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        if self.namespaces != nil {
            map["namespaces"] = self.namespaces!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("namespaces") && dict["namespaces"] != nil {
            self.namespaces = dict["namespaces"] as! [String]
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: Any]
        }
    }
}

public class DeployPolicyInstanceResponseBody : Tea.TeaModel {
    public var instances: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
    }
}

public class DeployPolicyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeployPolicyInstanceResponseBody?

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
            var model = DeployPolicyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescirbeWorkflowResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var duration: String?

    public var finishTime: String?

    public var inputDataSize: String?

    public var jobName: String?

    public var jobNamespace: String?

    public var outputDataSize: String?

    public var status: String?

    public var totalBases: String?

    public var totalReads: String?

    public var userInputData: String?

    public override init() {
        super.init()
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
            map["create_time"] = self.createTime!
        }
        if self.duration != nil {
            map["duration"] = self.duration!
        }
        if self.finishTime != nil {
            map["finish_time"] = self.finishTime!
        }
        if self.inputDataSize != nil {
            map["input_data_size"] = self.inputDataSize!
        }
        if self.jobName != nil {
            map["job_name"] = self.jobName!
        }
        if self.jobNamespace != nil {
            map["job_namespace"] = self.jobNamespace!
        }
        if self.outputDataSize != nil {
            map["output_data_size"] = self.outputDataSize!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.totalBases != nil {
            map["total_bases"] = self.totalBases!
        }
        if self.totalReads != nil {
            map["total_reads"] = self.totalReads!
        }
        if self.userInputData != nil {
            map["user_input_data"] = self.userInputData!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("create_time") && dict["create_time"] != nil {
            self.createTime = dict["create_time"] as! String
        }
        if dict.keys.contains("duration") && dict["duration"] != nil {
            self.duration = dict["duration"] as! String
        }
        if dict.keys.contains("finish_time") && dict["finish_time"] != nil {
            self.finishTime = dict["finish_time"] as! String
        }
        if dict.keys.contains("input_data_size") && dict["input_data_size"] != nil {
            self.inputDataSize = dict["input_data_size"] as! String
        }
        if dict.keys.contains("job_name") && dict["job_name"] != nil {
            self.jobName = dict["job_name"] as! String
        }
        if dict.keys.contains("job_namespace") && dict["job_namespace"] != nil {
            self.jobNamespace = dict["job_namespace"] as! String
        }
        if dict.keys.contains("output_data_size") && dict["output_data_size"] != nil {
            self.outputDataSize = dict["output_data_size"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("total_bases") && dict["total_bases"] != nil {
            self.totalBases = dict["total_bases"] as! String
        }
        if dict.keys.contains("total_reads") && dict["total_reads"] != nil {
            self.totalReads = dict["total_reads"] as! String
        }
        if dict.keys.contains("user_input_data") && dict["user_input_data"] != nil {
            self.userInputData = dict["user_input_data"] as! String
        }
    }
}

public class DescirbeWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescirbeWorkflowResponseBody?

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
            var model = DescirbeWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAddonRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var clusterVersion: String?

    public var profile: String?

    public var regionId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.clusterVersion != nil {
            map["cluster_version"] = self.clusterVersion!
        }
        if self.profile != nil {
            map["profile"] = self.profile!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("cluster_version") && dict["cluster_version"] != nil {
            self.clusterVersion = dict["cluster_version"] as! String
        }
        if dict.keys.contains("profile") && dict["profile"] != nil {
            self.profile = dict["profile"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class DescribeAddonResponseBody : Tea.TeaModel {
    public class NewerVersions : Tea.TeaModel {
        public var minimumClusterVersion: String?

        public var upgradable: Bool?

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
            if self.minimumClusterVersion != nil {
                map["minimum_cluster_version"] = self.minimumClusterVersion!
            }
            if self.upgradable != nil {
                map["upgradable"] = self.upgradable!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("minimum_cluster_version") && dict["minimum_cluster_version"] != nil {
                self.minimumClusterVersion = dict["minimum_cluster_version"] as! String
            }
            if dict.keys.contains("upgradable") && dict["upgradable"] != nil {
                self.upgradable = dict["upgradable"] as! Bool
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var architecture: [String]?

    public var category: String?

    public var configSchema: String?

    public var installByDefault: Bool?

    public var managed: Bool?

    public var name: String?

    public var newerVersions: [DescribeAddonResponseBody.NewerVersions]?

    public var supportedActions: [String]?

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
        if self.architecture != nil {
            map["architecture"] = self.architecture!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.configSchema != nil {
            map["config_schema"] = self.configSchema!
        }
        if self.installByDefault != nil {
            map["install_by_default"] = self.installByDefault!
        }
        if self.managed != nil {
            map["managed"] = self.managed!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.newerVersions != nil {
            var tmp : [Any] = []
            for k in self.newerVersions! {
                tmp.append(k.toMap())
            }
            map["newer_versions"] = tmp
        }
        if self.supportedActions != nil {
            map["supported_actions"] = self.supportedActions!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("architecture") && dict["architecture"] != nil {
            self.architecture = dict["architecture"] as! [String]
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("config_schema") && dict["config_schema"] != nil {
            self.configSchema = dict["config_schema"] as! String
        }
        if dict.keys.contains("install_by_default") && dict["install_by_default"] != nil {
            self.installByDefault = dict["install_by_default"] as! Bool
        }
        if dict.keys.contains("managed") && dict["managed"] != nil {
            self.managed = dict["managed"] as! Bool
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("newer_versions") && dict["newer_versions"] != nil {
            var tmp : [DescribeAddonResponseBody.NewerVersions] = []
            for v in dict["newer_versions"] as! [Any] {
                var model = DescribeAddonResponseBody.NewerVersions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.newerVersions = tmp
        }
        if dict.keys.contains("supported_actions") && dict["supported_actions"] != nil {
            self.supportedActions = dict["supported_actions"] as! [String]
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class DescribeAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddonResponseBody?

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
            var model = DescribeAddonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeAddonsRequest : Tea.TeaModel {
    public var clusterProfile: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var clusterVersion: String?

    public var region: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterProfile != nil {
            map["cluster_profile"] = self.clusterProfile!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.clusterVersion != nil {
            map["cluster_version"] = self.clusterVersion!
        }
        if self.region != nil {
            map["region"] = self.region!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_profile") && dict["cluster_profile"] != nil {
            self.clusterProfile = dict["cluster_profile"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("cluster_version") && dict["cluster_version"] != nil {
            self.clusterVersion = dict["cluster_version"] as! String
        }
        if dict.keys.contains("region") && dict["region"] != nil {
            self.region = dict["region"] as! String
        }
    }
}

public class DescribeAddonsResponseBody : Tea.TeaModel {
    public class ComponentGroups : Tea.TeaModel {
        public class Items : Tea.TeaModel {
            public var name: String?

            public override init() {
                super.init()
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
                    map["name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
            }
        }
        public var groupName: String?

        public var items: [DescribeAddonsResponseBody.ComponentGroups.Items]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.groupName != nil {
                map["group_name"] = self.groupName!
            }
            if self.items != nil {
                var tmp : [Any] = []
                for k in self.items! {
                    tmp.append(k.toMap())
                }
                map["items"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("group_name") && dict["group_name"] != nil {
                self.groupName = dict["group_name"] as! String
            }
            if dict.keys.contains("items") && dict["items"] != nil {
                var tmp : [DescribeAddonsResponseBody.ComponentGroups.Items] = []
                for v in dict["items"] as! [Any] {
                    var model = DescribeAddonsResponseBody.ComponentGroups.Items()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.items = tmp
            }
        }
    }
    public var componentGroups: [DescribeAddonsResponseBody.ComponentGroups]?

    public var standardComponents: [String: StandardComponentsValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentGroups != nil {
            var tmp : [Any] = []
            for k in self.componentGroups! {
                tmp.append(k.toMap())
            }
            map["ComponentGroups"] = tmp
        }
        if self.standardComponents != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.standardComponents! {
                tmp[k] = v.toMap()
            }
            map["StandardComponents"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ComponentGroups") && dict["ComponentGroups"] != nil {
            var tmp : [DescribeAddonsResponseBody.ComponentGroups] = []
            for v in dict["ComponentGroups"] as! [Any] {
                var model = DescribeAddonsResponseBody.ComponentGroups()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.componentGroups = tmp
        }
        if dict.keys.contains("StandardComponents") && dict["StandardComponents"] != nil {
            var tmp : [String: StandardComponentsValue] = [:]
            for (k, v) in dict["StandardComponents"] as! [String: Any] {
                if v != nil {
                    var model = StandardComponentsValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.standardComponents = tmp
        }
    }
}

public class DescribeAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAddonsResponseBody?

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
            var model = DescribeAddonsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterAddonInstanceResponseBody : Tea.TeaModel {
    public var config: String?

    public var name: String?

    public var state: String?

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
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class DescribeClusterAddonInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterAddonInstanceResponseBody?

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
            var model = DescribeClusterAddonInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterAddonMetadataResponseBody : Tea.TeaModel {
    public var configSchema: String?

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
        if self.configSchema != nil {
            map["config_schema"] = self.configSchema!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config_schema") && dict["config_schema"] != nil {
            self.configSchema = dict["config_schema"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class DescribeClusterAddonMetadataResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterAddonMetadataResponseBody?

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
            var model = DescribeClusterAddonMetadataResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterAddonUpgradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class DescribeClusterAddonsUpgradeStatusRequest : Tea.TeaModel {
    public var componentIds: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentIds != nil {
            map["componentIds"] = self.componentIds!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentIds") && dict["componentIds"] != nil {
            self.componentIds = dict["componentIds"] as! [String]
        }
    }
}

public class DescribeClusterAddonsUpgradeStatusShrinkRequest : Tea.TeaModel {
    public var componentIdsShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.componentIdsShrink != nil {
            map["componentIds"] = self.componentIdsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("componentIds") && dict["componentIds"] != nil {
            self.componentIdsShrink = dict["componentIds"] as! String
        }
    }
}

public class DescribeClusterAddonsUpgradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class DescribeClusterAddonsVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class DescribeClusterAttachScriptsRequest : Tea.TeaModel {
    public var arch: String?

    public var formatDisk: Bool?

    public var keepInstanceName: Bool?

    public var nodepoolId: String?

    public var options: String?

    public var rdsInstances: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arch != nil {
            map["arch"] = self.arch!
        }
        if self.formatDisk != nil {
            map["format_disk"] = self.formatDisk!
        }
        if self.keepInstanceName != nil {
            map["keep_instance_name"] = self.keepInstanceName!
        }
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.rdsInstances != nil {
            map["rds_instances"] = self.rdsInstances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("arch") && dict["arch"] != nil {
            self.arch = dict["arch"] as! String
        }
        if dict.keys.contains("format_disk") && dict["format_disk"] != nil {
            self.formatDisk = dict["format_disk"] as! Bool
        }
        if dict.keys.contains("keep_instance_name") && dict["keep_instance_name"] != nil {
            self.keepInstanceName = dict["keep_instance_name"] as! Bool
        }
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            self.options = dict["options"] as! String
        }
        if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
            self.rdsInstances = dict["rds_instances"] as! [String]
        }
    }
}

public class DescribeClusterAttachScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: String?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! String
        }
    }
}

public class DescribeClusterDetailResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var created: String?

    public var currentVersion: String?

    public var deletionProtection: Bool?

    public var dockerVersion: String?

    public var externalLoadbalancerId: String?

    public var initVersion: String?

    public var maintenanceWindow: MaintenanceWindow?

    public var masterUrl: String?

    public var metaData: String?

    public var name: String?

    public var networkMode: String?

    public var nextVersion: String?

    public var parameters: [String: String]?

    public var privateZone: Bool?

    public var profile: String?

    public var regionId: String?

    public var resourceGroupId: String?

    public var securityGroupId: String?

    public var size: Int64?

    public var state: String?

    public var subnetCidr: String?

    public var tags: [Tag]?

    public var updated: String?

    public var vpcId: String?

    public var vswitchId: String?

    public var workerRamRoleName: String?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.maintenanceWindow?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.created != nil {
            map["created"] = self.created!
        }
        if self.currentVersion != nil {
            map["current_version"] = self.currentVersion!
        }
        if self.deletionProtection != nil {
            map["deletion_protection"] = self.deletionProtection!
        }
        if self.dockerVersion != nil {
            map["docker_version"] = self.dockerVersion!
        }
        if self.externalLoadbalancerId != nil {
            map["external_loadbalancer_id"] = self.externalLoadbalancerId!
        }
        if self.initVersion != nil {
            map["init_version"] = self.initVersion!
        }
        if self.maintenanceWindow != nil {
            map["maintenance_window"] = self.maintenanceWindow?.toMap()
        }
        if self.masterUrl != nil {
            map["master_url"] = self.masterUrl!
        }
        if self.metaData != nil {
            map["meta_data"] = self.metaData!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.networkMode != nil {
            map["network_mode"] = self.networkMode!
        }
        if self.nextVersion != nil {
            map["next_version"] = self.nextVersion!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.privateZone != nil {
            map["private_zone"] = self.privateZone!
        }
        if self.profile != nil {
            map["profile"] = self.profile!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceGroupId != nil {
            map["resource_group_id"] = self.resourceGroupId!
        }
        if self.securityGroupId != nil {
            map["security_group_id"] = self.securityGroupId!
        }
        if self.size != nil {
            map["size"] = self.size!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.subnetCidr != nil {
            map["subnet_cidr"] = self.subnetCidr!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        if self.vpcId != nil {
            map["vpc_id"] = self.vpcId!
        }
        if self.vswitchId != nil {
            map["vswitch_id"] = self.vswitchId!
        }
        if self.workerRamRoleName != nil {
            map["worker_ram_role_name"] = self.workerRamRoleName!
        }
        if self.zoneId != nil {
            map["zone_id"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("created") && dict["created"] != nil {
            self.created = dict["created"] as! String
        }
        if dict.keys.contains("current_version") && dict["current_version"] != nil {
            self.currentVersion = dict["current_version"] as! String
        }
        if dict.keys.contains("deletion_protection") && dict["deletion_protection"] != nil {
            self.deletionProtection = dict["deletion_protection"] as! Bool
        }
        if dict.keys.contains("docker_version") && dict["docker_version"] != nil {
            self.dockerVersion = dict["docker_version"] as! String
        }
        if dict.keys.contains("external_loadbalancer_id") && dict["external_loadbalancer_id"] != nil {
            self.externalLoadbalancerId = dict["external_loadbalancer_id"] as! String
        }
        if dict.keys.contains("init_version") && dict["init_version"] != nil {
            self.initVersion = dict["init_version"] as! String
        }
        if dict.keys.contains("maintenance_window") && dict["maintenance_window"] != nil {
            var model = MaintenanceWindow()
            model.fromMap(dict["maintenance_window"] as! [String: Any])
            self.maintenanceWindow = model
        }
        if dict.keys.contains("master_url") && dict["master_url"] != nil {
            self.masterUrl = dict["master_url"] as! String
        }
        if dict.keys.contains("meta_data") && dict["meta_data"] != nil {
            self.metaData = dict["meta_data"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("network_mode") && dict["network_mode"] != nil {
            self.networkMode = dict["network_mode"] as! String
        }
        if dict.keys.contains("next_version") && dict["next_version"] != nil {
            self.nextVersion = dict["next_version"] as! String
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: String]
        }
        if dict.keys.contains("private_zone") && dict["private_zone"] != nil {
            self.privateZone = dict["private_zone"] as! Bool
        }
        if dict.keys.contains("profile") && dict["profile"] != nil {
            self.profile = dict["profile"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
            self.resourceGroupId = dict["resource_group_id"] as! String
        }
        if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
            self.securityGroupId = dict["security_group_id"] as! String
        }
        if dict.keys.contains("size") && dict["size"] != nil {
            self.size = dict["size"] as! Int64
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("subnet_cidr") && dict["subnet_cidr"] != nil {
            self.subnetCidr = dict["subnet_cidr"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("updated") && dict["updated"] != nil {
            self.updated = dict["updated"] as! String
        }
        if dict.keys.contains("vpc_id") && dict["vpc_id"] != nil {
            self.vpcId = dict["vpc_id"] as! String
        }
        if dict.keys.contains("vswitch_id") && dict["vswitch_id"] != nil {
            self.vswitchId = dict["vswitch_id"] as! String
        }
        if dict.keys.contains("worker_ram_role_name") && dict["worker_ram_role_name"] != nil {
            self.workerRamRoleName = dict["worker_ram_role_name"] as! String
        }
        if dict.keys.contains("zone_id") && dict["zone_id"] != nil {
            self.zoneId = dict["zone_id"] as! String
        }
    }
}

public class DescribeClusterDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterDetailResponseBody?

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
            var model = DescribeClusterDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterEventsRequest : Tea.TeaModel {
    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.pageNumber != nil {
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_number") && dict["page_number"] != nil {
            self.pageNumber = dict["page_number"] as! Int64
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int64
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class DescribeClusterEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var level: String?

            public var message: String?

            public var reason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.reason != nil {
                    map["reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("level") && dict["level"] != nil {
                    self.level = dict["level"] as! String
                }
                if dict.keys.contains("message") && dict["message"] != nil {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("reason") && dict["reason"] != nil {
                    self.reason = dict["reason"] as! String
                }
            }
        }
        public var clusterId: String?

        public var data: DescribeClusterEventsResponseBody.Events.Data?

        public var eventId: String?

        public var source: String?

        public var subject: String?

        public var time: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.data != nil {
                map["data"] = self.data?.toMap()
            }
            if self.eventId != nil {
                map["event_id"] = self.eventId!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("data") && dict["data"] != nil {
                var model = DescribeClusterEventsResponseBody.Events.Data()
                model.fromMap(dict["data"] as! [String: Any])
                self.data = model
            }
            if dict.keys.contains("event_id") && dict["event_id"] != nil {
                self.eventId = dict["event_id"] as! String
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("subject") && dict["subject"] != nil {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int64
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int64
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int64
            }
        }
    }
    public var events: [DescribeClusterEventsResponseBody.Events]?

    public var pageInfo: DescribeClusterEventsResponseBody.PageInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("events") && dict["events"] != nil {
            var tmp : [DescribeClusterEventsResponseBody.Events] = []
            for v in dict["events"] as! [Any] {
                var model = DescribeClusterEventsResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeClusterEventsResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
    }
}

public class DescribeClusterEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterEventsResponseBody?

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
            var model = DescribeClusterEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterLogsResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var ID: Int64?

        public var clusterId: String?

        public var clusterLog: String?

        public var created: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.ID != nil {
                map["ID"] = self.ID!
            }
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.clusterLog != nil {
                map["cluster_log"] = self.clusterLog!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ID") && dict["ID"] != nil {
                self.ID = dict["ID"] as! Int64
            }
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("cluster_log") && dict["cluster_log"] != nil {
                self.clusterLog = dict["cluster_log"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeClusterLogsResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeClusterLogsResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeClusterLogsResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeClusterNodePoolDetailResponseBody : Tea.TeaModel {
    public class AutoScaling : Tea.TeaModel {
        public var eipBandwidth: Int64?

        public var eipInternetChargeType: String?

        public var enable: Bool?

        public var isBondEip: Bool?

        public var maxInstances: Int64?

        public var minInstances: Int64?

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
            if self.eipBandwidth != nil {
                map["eip_bandwidth"] = self.eipBandwidth!
            }
            if self.eipInternetChargeType != nil {
                map["eip_internet_charge_type"] = self.eipInternetChargeType!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.isBondEip != nil {
                map["is_bond_eip"] = self.isBondEip!
            }
            if self.maxInstances != nil {
                map["max_instances"] = self.maxInstances!
            }
            if self.minInstances != nil {
                map["min_instances"] = self.minInstances!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eip_bandwidth") && dict["eip_bandwidth"] != nil {
                self.eipBandwidth = dict["eip_bandwidth"] as! Int64
            }
            if dict.keys.contains("eip_internet_charge_type") && dict["eip_internet_charge_type"] != nil {
                self.eipInternetChargeType = dict["eip_internet_charge_type"] as! String
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("is_bond_eip") && dict["is_bond_eip"] != nil {
                self.isBondEip = dict["is_bond_eip"] as! Bool
            }
            if dict.keys.contains("max_instances") && dict["max_instances"] != nil {
                self.maxInstances = dict["max_instances"] as! Int64
            }
            if dict.keys.contains("min_instances") && dict["min_instances"] != nil {
                self.minInstances = dict["min_instances"] as! Int64
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class InterconnectConfig : Tea.TeaModel {
        public var bandwidth: Int64?

        public var ccnId: String?

        public var ccnRegionId: String?

        public var cenId: String?

        public var improvedPeriod: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["bandwidth"] = self.bandwidth!
            }
            if self.ccnId != nil {
                map["ccn_id"] = self.ccnId!
            }
            if self.ccnRegionId != nil {
                map["ccn_region_id"] = self.ccnRegionId!
            }
            if self.cenId != nil {
                map["cen_id"] = self.cenId!
            }
            if self.improvedPeriod != nil {
                map["improved_period"] = self.improvedPeriod!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                self.bandwidth = dict["bandwidth"] as! Int64
            }
            if dict.keys.contains("ccn_id") && dict["ccn_id"] != nil {
                self.ccnId = dict["ccn_id"] as! String
            }
            if dict.keys.contains("ccn_region_id") && dict["ccn_region_id"] != nil {
                self.ccnRegionId = dict["ccn_region_id"] as! String
            }
            if dict.keys.contains("cen_id") && dict["cen_id"] != nil {
                self.cenId = dict["cen_id"] as! String
            }
            if dict.keys.contains("improved_period") && dict["improved_period"] != nil {
                self.improvedPeriod = dict["improved_period"] as! String
            }
        }
    }
    public class KubernetesConfig : Tea.TeaModel {
        public var cmsEnabled: Bool?

        public var cpuPolicy: String?

        public var labels: [Tag]?

        public var nodeNameMode: String?

        public var runtime: String?

        public var runtimeVersion: String?

        public var taints: [Taint]?

        public var unschedulable: Bool?

        public var userData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmsEnabled != nil {
                map["cms_enabled"] = self.cmsEnabled!
            }
            if self.cpuPolicy != nil {
                map["cpu_policy"] = self.cpuPolicy!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["labels"] = tmp
            }
            if self.nodeNameMode != nil {
                map["node_name_mode"] = self.nodeNameMode!
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.runtimeVersion != nil {
                map["runtime_version"] = self.runtimeVersion!
            }
            if self.taints != nil {
                var tmp : [Any] = []
                for k in self.taints! {
                    tmp.append(k.toMap())
                }
                map["taints"] = tmp
            }
            if self.unschedulable != nil {
                map["unschedulable"] = self.unschedulable!
            }
            if self.userData != nil {
                map["user_data"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cms_enabled") && dict["cms_enabled"] != nil {
                self.cmsEnabled = dict["cms_enabled"] as! Bool
            }
            if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
                self.cpuPolicy = dict["cpu_policy"] as! String
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                var tmp : [Tag] = []
                for v in dict["labels"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("node_name_mode") && dict["node_name_mode"] != nil {
                self.nodeNameMode = dict["node_name_mode"] as! String
            }
            if dict.keys.contains("runtime") && dict["runtime"] != nil {
                self.runtime = dict["runtime"] as! String
            }
            if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
                self.runtimeVersion = dict["runtime_version"] as! String
            }
            if dict.keys.contains("taints") && dict["taints"] != nil {
                var tmp : [Taint] = []
                for v in dict["taints"] as! [Any] {
                    var model = Taint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taints = tmp
            }
            if dict.keys.contains("unschedulable") && dict["unschedulable"] != nil {
                self.unschedulable = dict["unschedulable"] as! Bool
            }
            if dict.keys.contains("user_data") && dict["user_data"] != nil {
                self.userData = dict["user_data"] as! String
            }
        }
    }
    public class Management : Tea.TeaModel {
        public class AutoRepairPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
            }
        }
        public class AutoUpgradePolicy : Tea.TeaModel {
            public var autoUpgradeKubelet: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgradeKubelet != nil {
                    map["auto_upgrade_kubelet"] = self.autoUpgradeKubelet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade_kubelet") && dict["auto_upgrade_kubelet"] != nil {
                    self.autoUpgradeKubelet = dict["auto_upgrade_kubelet"] as! Bool
                }
            }
        }
        public class AutoVulFixPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public var vulLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                if self.vulLevel != nil {
                    map["vul_level"] = self.vulLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
                if dict.keys.contains("vul_level") && dict["vul_level"] != nil {
                    self.vulLevel = dict["vul_level"] as! String
                }
            }
        }
        public class UpgradeConfig : Tea.TeaModel {
            public var autoUpgrade: Bool?

            public var maxUnavailable: Int64?

            public var surge: Int64?

            public var surgePercentage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgrade != nil {
                    map["auto_upgrade"] = self.autoUpgrade!
                }
                if self.maxUnavailable != nil {
                    map["max_unavailable"] = self.maxUnavailable!
                }
                if self.surge != nil {
                    map["surge"] = self.surge!
                }
                if self.surgePercentage != nil {
                    map["surge_percentage"] = self.surgePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                    self.autoUpgrade = dict["auto_upgrade"] as! Bool
                }
                if dict.keys.contains("max_unavailable") && dict["max_unavailable"] != nil {
                    self.maxUnavailable = dict["max_unavailable"] as! Int64
                }
                if dict.keys.contains("surge") && dict["surge"] != nil {
                    self.surge = dict["surge"] as! Int64
                }
                if dict.keys.contains("surge_percentage") && dict["surge_percentage"] != nil {
                    self.surgePercentage = dict["surge_percentage"] as! Int64
                }
            }
        }
        public var autoRepair: Bool?

        public var autoRepairPolicy: DescribeClusterNodePoolDetailResponseBody.Management.AutoRepairPolicy?

        public var autoUpgrade: Bool?

        public var autoUpgradePolicy: DescribeClusterNodePoolDetailResponseBody.Management.AutoUpgradePolicy?

        public var autoVulFix: Bool?

        public var autoVulFixPolicy: DescribeClusterNodePoolDetailResponseBody.Management.AutoVulFixPolicy?

        public var enable: Bool?

        public var upgradeConfig: DescribeClusterNodePoolDetailResponseBody.Management.UpgradeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoRepairPolicy?.validate()
            try self.autoUpgradePolicy?.validate()
            try self.autoVulFixPolicy?.validate()
            try self.upgradeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRepair != nil {
                map["auto_repair"] = self.autoRepair!
            }
            if self.autoRepairPolicy != nil {
                map["auto_repair_policy"] = self.autoRepairPolicy?.toMap()
            }
            if self.autoUpgrade != nil {
                map["auto_upgrade"] = self.autoUpgrade!
            }
            if self.autoUpgradePolicy != nil {
                map["auto_upgrade_policy"] = self.autoUpgradePolicy?.toMap()
            }
            if self.autoVulFix != nil {
                map["auto_vul_fix"] = self.autoVulFix!
            }
            if self.autoVulFixPolicy != nil {
                map["auto_vul_fix_policy"] = self.autoVulFixPolicy?.toMap()
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.upgradeConfig != nil {
                map["upgrade_config"] = self.upgradeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_repair") && dict["auto_repair"] != nil {
                self.autoRepair = dict["auto_repair"] as! Bool
            }
            if dict.keys.contains("auto_repair_policy") && dict["auto_repair_policy"] != nil {
                var model = DescribeClusterNodePoolDetailResponseBody.Management.AutoRepairPolicy()
                model.fromMap(dict["auto_repair_policy"] as! [String: Any])
                self.autoRepairPolicy = model
            }
            if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                self.autoUpgrade = dict["auto_upgrade"] as! Bool
            }
            if dict.keys.contains("auto_upgrade_policy") && dict["auto_upgrade_policy"] != nil {
                var model = DescribeClusterNodePoolDetailResponseBody.Management.AutoUpgradePolicy()
                model.fromMap(dict["auto_upgrade_policy"] as! [String: Any])
                self.autoUpgradePolicy = model
            }
            if dict.keys.contains("auto_vul_fix") && dict["auto_vul_fix"] != nil {
                self.autoVulFix = dict["auto_vul_fix"] as! Bool
            }
            if dict.keys.contains("auto_vul_fix_policy") && dict["auto_vul_fix_policy"] != nil {
                var model = DescribeClusterNodePoolDetailResponseBody.Management.AutoVulFixPolicy()
                model.fromMap(dict["auto_vul_fix_policy"] as! [String: Any])
                self.autoVulFixPolicy = model
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("upgrade_config") && dict["upgrade_config"] != nil {
                var model = DescribeClusterNodePoolDetailResponseBody.Management.UpgradeConfig()
                model.fromMap(dict["upgrade_config"] as! [String: Any])
                self.upgradeConfig = model
            }
        }
    }
    public class NodeConfig : Tea.TeaModel {
        public var kubeletConfiguration: KubeletConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.kubeletConfiguration?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.kubeletConfiguration != nil {
                map["kubelet_configuration"] = self.kubeletConfiguration?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("kubelet_configuration") && dict["kubelet_configuration"] != nil {
                var model = KubeletConfig()
                model.fromMap(dict["kubelet_configuration"] as! [String: Any])
                self.kubeletConfiguration = model
            }
        }
    }
    public class NodepoolInfo : Tea.TeaModel {
        public var created: String?

        public var isDefault: Bool?

        public var name: String?

        public var nodepoolId: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var type: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.isDefault != nil {
                map["is_default"] = self.isDefault!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.nodepoolId != nil {
                map["nodepool_id"] = self.nodepoolId!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("is_default") && dict["is_default"] != nil {
                self.isDefault = dict["is_default"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
                self.nodepoolId = dict["nodepool_id"] as! String
            }
            if dict.keys.contains("region_id") && dict["region_id"] != nil {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public class ScalingGroup : Tea.TeaModel {
        public class PrivatePoolOptions : Tea.TeaModel {
            public var id: String?

            public var matchCriteria: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.matchCriteria != nil {
                    map["match_criteria"] = self.matchCriteria!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("match_criteria") && dict["match_criteria"] != nil {
                    self.matchCriteria = dict["match_criteria"] as! String
                }
            }
        }
        public class SpotPriceLimit : Tea.TeaModel {
            public var instanceType: String?

            public var priceLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceType != nil {
                    map["instance_type"] = self.instanceType!
                }
                if self.priceLimit != nil {
                    map["price_limit"] = self.priceLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                    self.instanceType = dict["instance_type"] as! String
                }
                if dict.keys.contains("price_limit") && dict["price_limit"] != nil {
                    self.priceLimit = dict["price_limit"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int64?

        public var cisEnabled: Bool?

        public var compensateWithOnDemand: Bool?

        public var dataDisks: [DataDisk]?

        public var deploymentsetId: String?

        public var desiredSize: Int64?

        public var imageId: String?

        public var imageType: String?

        public var instanceChargeType: String?

        public var instanceTypes: [String]?

        public var internetChargeType: String?

        public var internetMaxBandwidthOut: Int64?

        public var keyPair: String?

        public var loginAsNonRoot: Bool?

        public var loginPassword: String?

        public var multiAzPolicy: String?

        public var onDemandBaseCapacity: Int64?

        public var onDemandPercentageAboveBaseCapacity: Int64?

        public var period: Int64?

        public var periodUnit: String?

        public var platform: String?

        public var privatePoolOptions: DescribeClusterNodePoolDetailResponseBody.ScalingGroup.PrivatePoolOptions?

        public var ramPolicy: String?

        public var rdsInstances: [String]?

        public var scalingGroupId: String?

        public var scalingPolicy: String?

        public var securityGroupId: String?

        public var securityGroupIds: [String]?

        public var socEnabled: Bool?

        public var spotInstancePools: Int64?

        public var spotInstanceRemedy: Bool?

        public var spotPriceLimit: [DescribeClusterNodePoolDetailResponseBody.ScalingGroup.SpotPriceLimit]?

        public var spotStrategy: String?

        public var systemDiskBurstingEnabled: Bool?

        public var systemDiskCategories: [String]?

        public var systemDiskCategory: String?

        public var systemDiskEncryptAlgorithm: String?

        public var systemDiskEncrypted: Bool?

        public var systemDiskKmsKeyId: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskProvisionedIops: Int64?

        public var systemDiskSize: Int64?

        public var tags: [Tag]?

        public var vswitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privatePoolOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["auto_renew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["auto_renew_period"] = self.autoRenewPeriod!
            }
            if self.cisEnabled != nil {
                map["cis_enabled"] = self.cisEnabled!
            }
            if self.compensateWithOnDemand != nil {
                map["compensate_with_on_demand"] = self.compensateWithOnDemand!
            }
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["data_disks"] = tmp
            }
            if self.deploymentsetId != nil {
                map["deploymentset_id"] = self.deploymentsetId!
            }
            if self.desiredSize != nil {
                map["desired_size"] = self.desiredSize!
            }
            if self.imageId != nil {
                map["image_id"] = self.imageId!
            }
            if self.imageType != nil {
                map["image_type"] = self.imageType!
            }
            if self.instanceChargeType != nil {
                map["instance_charge_type"] = self.instanceChargeType!
            }
            if self.instanceTypes != nil {
                map["instance_types"] = self.instanceTypes!
            }
            if self.internetChargeType != nil {
                map["internet_charge_type"] = self.internetChargeType!
            }
            if self.internetMaxBandwidthOut != nil {
                map["internet_max_bandwidth_out"] = self.internetMaxBandwidthOut!
            }
            if self.keyPair != nil {
                map["key_pair"] = self.keyPair!
            }
            if self.loginAsNonRoot != nil {
                map["login_as_non_root"] = self.loginAsNonRoot!
            }
            if self.loginPassword != nil {
                map["login_password"] = self.loginPassword!
            }
            if self.multiAzPolicy != nil {
                map["multi_az_policy"] = self.multiAzPolicy!
            }
            if self.onDemandBaseCapacity != nil {
                map["on_demand_base_capacity"] = self.onDemandBaseCapacity!
            }
            if self.onDemandPercentageAboveBaseCapacity != nil {
                map["on_demand_percentage_above_base_capacity"] = self.onDemandPercentageAboveBaseCapacity!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            if self.periodUnit != nil {
                map["period_unit"] = self.periodUnit!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.privatePoolOptions != nil {
                map["private_pool_options"] = self.privatePoolOptions?.toMap()
            }
            if self.ramPolicy != nil {
                map["ram_policy"] = self.ramPolicy!
            }
            if self.rdsInstances != nil {
                map["rds_instances"] = self.rdsInstances!
            }
            if self.scalingGroupId != nil {
                map["scaling_group_id"] = self.scalingGroupId!
            }
            if self.scalingPolicy != nil {
                map["scaling_policy"] = self.scalingPolicy!
            }
            if self.securityGroupId != nil {
                map["security_group_id"] = self.securityGroupId!
            }
            if self.securityGroupIds != nil {
                map["security_group_ids"] = self.securityGroupIds!
            }
            if self.socEnabled != nil {
                map["soc_enabled"] = self.socEnabled!
            }
            if self.spotInstancePools != nil {
                map["spot_instance_pools"] = self.spotInstancePools!
            }
            if self.spotInstanceRemedy != nil {
                map["spot_instance_remedy"] = self.spotInstanceRemedy!
            }
            if self.spotPriceLimit != nil {
                var tmp : [Any] = []
                for k in self.spotPriceLimit! {
                    tmp.append(k.toMap())
                }
                map["spot_price_limit"] = tmp
            }
            if self.spotStrategy != nil {
                map["spot_strategy"] = self.spotStrategy!
            }
            if self.systemDiskBurstingEnabled != nil {
                map["system_disk_bursting_enabled"] = self.systemDiskBurstingEnabled!
            }
            if self.systemDiskCategories != nil {
                map["system_disk_categories"] = self.systemDiskCategories!
            }
            if self.systemDiskCategory != nil {
                map["system_disk_category"] = self.systemDiskCategory!
            }
            if self.systemDiskEncryptAlgorithm != nil {
                map["system_disk_encrypt_algorithm"] = self.systemDiskEncryptAlgorithm!
            }
            if self.systemDiskEncrypted != nil {
                map["system_disk_encrypted"] = self.systemDiskEncrypted!
            }
            if self.systemDiskKmsKeyId != nil {
                map["system_disk_kms_key_id"] = self.systemDiskKmsKeyId!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["system_disk_performance_level"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskProvisionedIops != nil {
                map["system_disk_provisioned_iops"] = self.systemDiskProvisionedIops!
            }
            if self.systemDiskSize != nil {
                map["system_disk_size"] = self.systemDiskSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.vswitchIds != nil {
                map["vswitch_ids"] = self.vswitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_renew") && dict["auto_renew"] != nil {
                self.autoRenew = dict["auto_renew"] as! Bool
            }
            if dict.keys.contains("auto_renew_period") && dict["auto_renew_period"] != nil {
                self.autoRenewPeriod = dict["auto_renew_period"] as! Int64
            }
            if dict.keys.contains("cis_enabled") && dict["cis_enabled"] != nil {
                self.cisEnabled = dict["cis_enabled"] as! Bool
            }
            if dict.keys.contains("compensate_with_on_demand") && dict["compensate_with_on_demand"] != nil {
                self.compensateWithOnDemand = dict["compensate_with_on_demand"] as! Bool
            }
            if dict.keys.contains("data_disks") && dict["data_disks"] != nil {
                var tmp : [DataDisk] = []
                for v in dict["data_disks"] as! [Any] {
                    var model = DataDisk()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataDisks = tmp
            }
            if dict.keys.contains("deploymentset_id") && dict["deploymentset_id"] != nil {
                self.deploymentsetId = dict["deploymentset_id"] as! String
            }
            if dict.keys.contains("desired_size") && dict["desired_size"] != nil {
                self.desiredSize = dict["desired_size"] as! Int64
            }
            if dict.keys.contains("image_id") && dict["image_id"] != nil {
                self.imageId = dict["image_id"] as! String
            }
            if dict.keys.contains("image_type") && dict["image_type"] != nil {
                self.imageType = dict["image_type"] as! String
            }
            if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                self.instanceChargeType = dict["instance_charge_type"] as! String
            }
            if dict.keys.contains("instance_types") && dict["instance_types"] != nil {
                self.instanceTypes = dict["instance_types"] as! [String]
            }
            if dict.keys.contains("internet_charge_type") && dict["internet_charge_type"] != nil {
                self.internetChargeType = dict["internet_charge_type"] as! String
            }
            if dict.keys.contains("internet_max_bandwidth_out") && dict["internet_max_bandwidth_out"] != nil {
                self.internetMaxBandwidthOut = dict["internet_max_bandwidth_out"] as! Int64
            }
            if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
                self.keyPair = dict["key_pair"] as! String
            }
            if dict.keys.contains("login_as_non_root") && dict["login_as_non_root"] != nil {
                self.loginAsNonRoot = dict["login_as_non_root"] as! Bool
            }
            if dict.keys.contains("login_password") && dict["login_password"] != nil {
                self.loginPassword = dict["login_password"] as! String
            }
            if dict.keys.contains("multi_az_policy") && dict["multi_az_policy"] != nil {
                self.multiAzPolicy = dict["multi_az_policy"] as! String
            }
            if dict.keys.contains("on_demand_base_capacity") && dict["on_demand_base_capacity"] != nil {
                self.onDemandBaseCapacity = dict["on_demand_base_capacity"] as! Int64
            }
            if dict.keys.contains("on_demand_percentage_above_base_capacity") && dict["on_demand_percentage_above_base_capacity"] != nil {
                self.onDemandPercentageAboveBaseCapacity = dict["on_demand_percentage_above_base_capacity"] as! Int64
            }
            if dict.keys.contains("period") && dict["period"] != nil {
                self.period = dict["period"] as! Int64
            }
            if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
                self.periodUnit = dict["period_unit"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
            if dict.keys.contains("private_pool_options") && dict["private_pool_options"] != nil {
                var model = DescribeClusterNodePoolDetailResponseBody.ScalingGroup.PrivatePoolOptions()
                model.fromMap(dict["private_pool_options"] as! [String: Any])
                self.privatePoolOptions = model
            }
            if dict.keys.contains("ram_policy") && dict["ram_policy"] != nil {
                self.ramPolicy = dict["ram_policy"] as! String
            }
            if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
                self.rdsInstances = dict["rds_instances"] as! [String]
            }
            if dict.keys.contains("scaling_group_id") && dict["scaling_group_id"] != nil {
                self.scalingGroupId = dict["scaling_group_id"] as! String
            }
            if dict.keys.contains("scaling_policy") && dict["scaling_policy"] != nil {
                self.scalingPolicy = dict["scaling_policy"] as! String
            }
            if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                self.securityGroupId = dict["security_group_id"] as! String
            }
            if dict.keys.contains("security_group_ids") && dict["security_group_ids"] != nil {
                self.securityGroupIds = dict["security_group_ids"] as! [String]
            }
            if dict.keys.contains("soc_enabled") && dict["soc_enabled"] != nil {
                self.socEnabled = dict["soc_enabled"] as! Bool
            }
            if dict.keys.contains("spot_instance_pools") && dict["spot_instance_pools"] != nil {
                self.spotInstancePools = dict["spot_instance_pools"] as! Int64
            }
            if dict.keys.contains("spot_instance_remedy") && dict["spot_instance_remedy"] != nil {
                self.spotInstanceRemedy = dict["spot_instance_remedy"] as! Bool
            }
            if dict.keys.contains("spot_price_limit") && dict["spot_price_limit"] != nil {
                var tmp : [DescribeClusterNodePoolDetailResponseBody.ScalingGroup.SpotPriceLimit] = []
                for v in dict["spot_price_limit"] as! [Any] {
                    var model = DescribeClusterNodePoolDetailResponseBody.ScalingGroup.SpotPriceLimit()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.spotPriceLimit = tmp
            }
            if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                self.spotStrategy = dict["spot_strategy"] as! String
            }
            if dict.keys.contains("system_disk_bursting_enabled") && dict["system_disk_bursting_enabled"] != nil {
                self.systemDiskBurstingEnabled = dict["system_disk_bursting_enabled"] as! Bool
            }
            if dict.keys.contains("system_disk_categories") && dict["system_disk_categories"] != nil {
                self.systemDiskCategories = dict["system_disk_categories"] as! [String]
            }
            if dict.keys.contains("system_disk_category") && dict["system_disk_category"] != nil {
                self.systemDiskCategory = dict["system_disk_category"] as! String
            }
            if dict.keys.contains("system_disk_encrypt_algorithm") && dict["system_disk_encrypt_algorithm"] != nil {
                self.systemDiskEncryptAlgorithm = dict["system_disk_encrypt_algorithm"] as! String
            }
            if dict.keys.contains("system_disk_encrypted") && dict["system_disk_encrypted"] != nil {
                self.systemDiskEncrypted = dict["system_disk_encrypted"] as! Bool
            }
            if dict.keys.contains("system_disk_kms_key_id") && dict["system_disk_kms_key_id"] != nil {
                self.systemDiskKmsKeyId = dict["system_disk_kms_key_id"] as! String
            }
            if dict.keys.contains("system_disk_performance_level") && dict["system_disk_performance_level"] != nil {
                self.systemDiskPerformanceLevel = dict["system_disk_performance_level"] as! String
            }
            if dict.keys.contains("system_disk_provisioned_iops") && dict["system_disk_provisioned_iops"] != nil {
                self.systemDiskProvisionedIops = dict["system_disk_provisioned_iops"] as! Int64
            }
            if dict.keys.contains("system_disk_size") && dict["system_disk_size"] != nil {
                self.systemDiskSize = dict["system_disk_size"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Tag] = []
                for v in dict["tags"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
                self.vswitchIds = dict["vswitch_ids"] as! [String]
            }
        }
    }
    public class Status : Tea.TeaModel {
        public var failedNodes: Int64?

        public var healthyNodes: Int64?

        public var initialNodes: Int64?

        public var offlineNodes: Int64?

        public var removingNodes: Int64?

        public var servingNodes: Int64?

        public var state: String?

        public var totalNodes: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.failedNodes != nil {
                map["failed_nodes"] = self.failedNodes!
            }
            if self.healthyNodes != nil {
                map["healthy_nodes"] = self.healthyNodes!
            }
            if self.initialNodes != nil {
                map["initial_nodes"] = self.initialNodes!
            }
            if self.offlineNodes != nil {
                map["offline_nodes"] = self.offlineNodes!
            }
            if self.removingNodes != nil {
                map["removing_nodes"] = self.removingNodes!
            }
            if self.servingNodes != nil {
                map["serving_nodes"] = self.servingNodes!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.totalNodes != nil {
                map["total_nodes"] = self.totalNodes!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("failed_nodes") && dict["failed_nodes"] != nil {
                self.failedNodes = dict["failed_nodes"] as! Int64
            }
            if dict.keys.contains("healthy_nodes") && dict["healthy_nodes"] != nil {
                self.healthyNodes = dict["healthy_nodes"] as! Int64
            }
            if dict.keys.contains("initial_nodes") && dict["initial_nodes"] != nil {
                self.initialNodes = dict["initial_nodes"] as! Int64
            }
            if dict.keys.contains("offline_nodes") && dict["offline_nodes"] != nil {
                self.offlineNodes = dict["offline_nodes"] as! Int64
            }
            if dict.keys.contains("removing_nodes") && dict["removing_nodes"] != nil {
                self.removingNodes = dict["removing_nodes"] as! Int64
            }
            if dict.keys.contains("serving_nodes") && dict["serving_nodes"] != nil {
                self.servingNodes = dict["serving_nodes"] as! Int64
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("total_nodes") && dict["total_nodes"] != nil {
                self.totalNodes = dict["total_nodes"] as! Int64
            }
        }
    }
    public class TeeConfig : Tea.TeaModel {
        public var teeEnable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.teeEnable != nil {
                map["tee_enable"] = self.teeEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tee_enable") && dict["tee_enable"] != nil {
                self.teeEnable = dict["tee_enable"] as! Bool
            }
        }
    }
    public var autoScaling: DescribeClusterNodePoolDetailResponseBody.AutoScaling?

    public var interconnectConfig: DescribeClusterNodePoolDetailResponseBody.InterconnectConfig?

    public var interconnectMode: String?

    public var kubernetesConfig: DescribeClusterNodePoolDetailResponseBody.KubernetesConfig?

    public var management: DescribeClusterNodePoolDetailResponseBody.Management?

    public var maxNodes: Int64?

    public var nodeConfig: DescribeClusterNodePoolDetailResponseBody.NodeConfig?

    public var nodepoolInfo: DescribeClusterNodePoolDetailResponseBody.NodepoolInfo?

    public var scalingGroup: DescribeClusterNodePoolDetailResponseBody.ScalingGroup?

    public var status: DescribeClusterNodePoolDetailResponseBody.Status?

    public var teeConfig: DescribeClusterNodePoolDetailResponseBody.TeeConfig?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoScaling?.validate()
        try self.interconnectConfig?.validate()
        try self.kubernetesConfig?.validate()
        try self.management?.validate()
        try self.nodeConfig?.validate()
        try self.nodepoolInfo?.validate()
        try self.scalingGroup?.validate()
        try self.status?.validate()
        try self.teeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScaling != nil {
            map["auto_scaling"] = self.autoScaling?.toMap()
        }
        if self.interconnectConfig != nil {
            map["interconnect_config"] = self.interconnectConfig?.toMap()
        }
        if self.interconnectMode != nil {
            map["interconnect_mode"] = self.interconnectMode!
        }
        if self.kubernetesConfig != nil {
            map["kubernetes_config"] = self.kubernetesConfig?.toMap()
        }
        if self.management != nil {
            map["management"] = self.management?.toMap()
        }
        if self.maxNodes != nil {
            map["max_nodes"] = self.maxNodes!
        }
        if self.nodeConfig != nil {
            map["node_config"] = self.nodeConfig?.toMap()
        }
        if self.nodepoolInfo != nil {
            map["nodepool_info"] = self.nodepoolInfo?.toMap()
        }
        if self.scalingGroup != nil {
            map["scaling_group"] = self.scalingGroup?.toMap()
        }
        if self.status != nil {
            map["status"] = self.status?.toMap()
        }
        if self.teeConfig != nil {
            map["tee_config"] = self.teeConfig?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_scaling") && dict["auto_scaling"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.AutoScaling()
            model.fromMap(dict["auto_scaling"] as! [String: Any])
            self.autoScaling = model
        }
        if dict.keys.contains("interconnect_config") && dict["interconnect_config"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.InterconnectConfig()
            model.fromMap(dict["interconnect_config"] as! [String: Any])
            self.interconnectConfig = model
        }
        if dict.keys.contains("interconnect_mode") && dict["interconnect_mode"] != nil {
            self.interconnectMode = dict["interconnect_mode"] as! String
        }
        if dict.keys.contains("kubernetes_config") && dict["kubernetes_config"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.KubernetesConfig()
            model.fromMap(dict["kubernetes_config"] as! [String: Any])
            self.kubernetesConfig = model
        }
        if dict.keys.contains("management") && dict["management"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.Management()
            model.fromMap(dict["management"] as! [String: Any])
            self.management = model
        }
        if dict.keys.contains("max_nodes") && dict["max_nodes"] != nil {
            self.maxNodes = dict["max_nodes"] as! Int64
        }
        if dict.keys.contains("node_config") && dict["node_config"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.NodeConfig()
            model.fromMap(dict["node_config"] as! [String: Any])
            self.nodeConfig = model
        }
        if dict.keys.contains("nodepool_info") && dict["nodepool_info"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.NodepoolInfo()
            model.fromMap(dict["nodepool_info"] as! [String: Any])
            self.nodepoolInfo = model
        }
        if dict.keys.contains("scaling_group") && dict["scaling_group"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.ScalingGroup()
            model.fromMap(dict["scaling_group"] as! [String: Any])
            self.scalingGroup = model
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.Status()
            model.fromMap(dict["status"] as! [String: Any])
            self.status = model
        }
        if dict.keys.contains("tee_config") && dict["tee_config"] != nil {
            var model = DescribeClusterNodePoolDetailResponseBody.TeeConfig()
            model.fromMap(dict["tee_config"] as! [String: Any])
            self.teeConfig = model
        }
    }
}

public class DescribeClusterNodePoolDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterNodePoolDetailResponseBody?

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
            var model = DescribeClusterNodePoolDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterNodePoolsResponseBody : Tea.TeaModel {
    public class Nodepools : Tea.TeaModel {
        public class AutoScaling : Tea.TeaModel {
            public var eipBandwidth: Int64?

            public var eipInternetChargeType: String?

            public var enable: Bool?

            public var isBondEip: Bool?

            public var maxInstances: Int64?

            public var minInstances: Int64?

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
                if self.eipBandwidth != nil {
                    map["eip_bandwidth"] = self.eipBandwidth!
                }
                if self.eipInternetChargeType != nil {
                    map["eip_internet_charge_type"] = self.eipInternetChargeType!
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.isBondEip != nil {
                    map["is_bond_eip"] = self.isBondEip!
                }
                if self.maxInstances != nil {
                    map["max_instances"] = self.maxInstances!
                }
                if self.minInstances != nil {
                    map["min_instances"] = self.minInstances!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("eip_bandwidth") && dict["eip_bandwidth"] != nil {
                    self.eipBandwidth = dict["eip_bandwidth"] as! Int64
                }
                if dict.keys.contains("eip_internet_charge_type") && dict["eip_internet_charge_type"] != nil {
                    self.eipInternetChargeType = dict["eip_internet_charge_type"] as! String
                }
                if dict.keys.contains("enable") && dict["enable"] != nil {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("is_bond_eip") && dict["is_bond_eip"] != nil {
                    self.isBondEip = dict["is_bond_eip"] as! Bool
                }
                if dict.keys.contains("max_instances") && dict["max_instances"] != nil {
                    self.maxInstances = dict["max_instances"] as! Int64
                }
                if dict.keys.contains("min_instances") && dict["min_instances"] != nil {
                    self.minInstances = dict["min_instances"] as! Int64
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
            }
        }
        public class InterconnectConfig : Tea.TeaModel {
            public var bandwidth: Int64?

            public var ccnId: String?

            public var ccnRegionId: String?

            public var cenId: String?

            public var improvedPeriod: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandwidth != nil {
                    map["bandwidth"] = self.bandwidth!
                }
                if self.ccnId != nil {
                    map["ccn_id"] = self.ccnId!
                }
                if self.ccnRegionId != nil {
                    map["ccn_region_id"] = self.ccnRegionId!
                }
                if self.cenId != nil {
                    map["cen_id"] = self.cenId!
                }
                if self.improvedPeriod != nil {
                    map["improved_period"] = self.improvedPeriod!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                    self.bandwidth = dict["bandwidth"] as! Int64
                }
                if dict.keys.contains("ccn_id") && dict["ccn_id"] != nil {
                    self.ccnId = dict["ccn_id"] as! String
                }
                if dict.keys.contains("ccn_region_id") && dict["ccn_region_id"] != nil {
                    self.ccnRegionId = dict["ccn_region_id"] as! String
                }
                if dict.keys.contains("cen_id") && dict["cen_id"] != nil {
                    self.cenId = dict["cen_id"] as! String
                }
                if dict.keys.contains("improved_period") && dict["improved_period"] != nil {
                    self.improvedPeriod = dict["improved_period"] as! String
                }
            }
        }
        public class KubernetesConfig : Tea.TeaModel {
            public var cmsEnabled: Bool?

            public var cpuPolicy: String?

            public var labels: [Tag]?

            public var nodeNameMode: String?

            public var runtime: String?

            public var runtimeVersion: String?

            public var taints: [Taint]?

            public var unschedulable: Bool?

            public var userData: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.cmsEnabled != nil {
                    map["cms_enabled"] = self.cmsEnabled!
                }
                if self.cpuPolicy != nil {
                    map["cpu_policy"] = self.cpuPolicy!
                }
                if self.labels != nil {
                    var tmp : [Any] = []
                    for k in self.labels! {
                        tmp.append(k.toMap())
                    }
                    map["labels"] = tmp
                }
                if self.nodeNameMode != nil {
                    map["node_name_mode"] = self.nodeNameMode!
                }
                if self.runtime != nil {
                    map["runtime"] = self.runtime!
                }
                if self.runtimeVersion != nil {
                    map["runtime_version"] = self.runtimeVersion!
                }
                if self.taints != nil {
                    var tmp : [Any] = []
                    for k in self.taints! {
                        tmp.append(k.toMap())
                    }
                    map["taints"] = tmp
                }
                if self.unschedulable != nil {
                    map["unschedulable"] = self.unschedulable!
                }
                if self.userData != nil {
                    map["user_data"] = self.userData!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cms_enabled") && dict["cms_enabled"] != nil {
                    self.cmsEnabled = dict["cms_enabled"] as! Bool
                }
                if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
                    self.cpuPolicy = dict["cpu_policy"] as! String
                }
                if dict.keys.contains("labels") && dict["labels"] != nil {
                    var tmp : [Tag] = []
                    for v in dict["labels"] as! [Any] {
                        var model = Tag()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.labels = tmp
                }
                if dict.keys.contains("node_name_mode") && dict["node_name_mode"] != nil {
                    self.nodeNameMode = dict["node_name_mode"] as! String
                }
                if dict.keys.contains("runtime") && dict["runtime"] != nil {
                    self.runtime = dict["runtime"] as! String
                }
                if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
                    self.runtimeVersion = dict["runtime_version"] as! String
                }
                if dict.keys.contains("taints") && dict["taints"] != nil {
                    var tmp : [Taint] = []
                    for v in dict["taints"] as! [Any] {
                        var model = Taint()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.taints = tmp
                }
                if dict.keys.contains("unschedulable") && dict["unschedulable"] != nil {
                    self.unschedulable = dict["unschedulable"] as! Bool
                }
                if dict.keys.contains("user_data") && dict["user_data"] != nil {
                    self.userData = dict["user_data"] as! String
                }
            }
        }
        public class Management : Tea.TeaModel {
            public class AutoRepairPolicy : Tea.TeaModel {
                public var restartNode: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.restartNode != nil {
                        map["restart_node"] = self.restartNode!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                        self.restartNode = dict["restart_node"] as! Bool
                    }
                }
            }
            public class AutoUpgradePolicy : Tea.TeaModel {
                public var autoUpgradeKubelet: Bool?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoUpgradeKubelet != nil {
                        map["auto_upgrade_kubelet"] = self.autoUpgradeKubelet!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("auto_upgrade_kubelet") && dict["auto_upgrade_kubelet"] != nil {
                        self.autoUpgradeKubelet = dict["auto_upgrade_kubelet"] as! Bool
                    }
                }
            }
            public class AutoVulFixPolicy : Tea.TeaModel {
                public var restartNode: Bool?

                public var vulLevel: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.restartNode != nil {
                        map["restart_node"] = self.restartNode!
                    }
                    if self.vulLevel != nil {
                        map["vul_level"] = self.vulLevel!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                        self.restartNode = dict["restart_node"] as! Bool
                    }
                    if dict.keys.contains("vul_level") && dict["vul_level"] != nil {
                        self.vulLevel = dict["vul_level"] as! String
                    }
                }
            }
            public class UpgradeConfig : Tea.TeaModel {
                public var autoUpgrade: Bool?

                public var maxUnavailable: Int64?

                public var surge: Int64?

                public var surgePercentage: Int64?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.autoUpgrade != nil {
                        map["auto_upgrade"] = self.autoUpgrade!
                    }
                    if self.maxUnavailable != nil {
                        map["max_unavailable"] = self.maxUnavailable!
                    }
                    if self.surge != nil {
                        map["surge"] = self.surge!
                    }
                    if self.surgePercentage != nil {
                        map["surge_percentage"] = self.surgePercentage!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                        self.autoUpgrade = dict["auto_upgrade"] as! Bool
                    }
                    if dict.keys.contains("max_unavailable") && dict["max_unavailable"] != nil {
                        self.maxUnavailable = dict["max_unavailable"] as! Int64
                    }
                    if dict.keys.contains("surge") && dict["surge"] != nil {
                        self.surge = dict["surge"] as! Int64
                    }
                    if dict.keys.contains("surge_percentage") && dict["surge_percentage"] != nil {
                        self.surgePercentage = dict["surge_percentage"] as! Int64
                    }
                }
            }
            public var autoRepair: Bool?

            public var autoRepairPolicy: DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoRepairPolicy?

            public var autoUpgrade: Bool?

            public var autoUpgradePolicy: DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoUpgradePolicy?

            public var autoVulFix: Bool?

            public var autoVulFixPolicy: DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoVulFixPolicy?

            public var enable: Bool?

            public var upgradeConfig: DescribeClusterNodePoolsResponseBody.Nodepools.Management.UpgradeConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.autoRepairPolicy?.validate()
                try self.autoUpgradePolicy?.validate()
                try self.autoVulFixPolicy?.validate()
                try self.upgradeConfig?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRepair != nil {
                    map["auto_repair"] = self.autoRepair!
                }
                if self.autoRepairPolicy != nil {
                    map["auto_repair_policy"] = self.autoRepairPolicy?.toMap()
                }
                if self.autoUpgrade != nil {
                    map["auto_upgrade"] = self.autoUpgrade!
                }
                if self.autoUpgradePolicy != nil {
                    map["auto_upgrade_policy"] = self.autoUpgradePolicy?.toMap()
                }
                if self.autoVulFix != nil {
                    map["auto_vul_fix"] = self.autoVulFix!
                }
                if self.autoVulFixPolicy != nil {
                    map["auto_vul_fix_policy"] = self.autoVulFixPolicy?.toMap()
                }
                if self.enable != nil {
                    map["enable"] = self.enable!
                }
                if self.upgradeConfig != nil {
                    map["upgrade_config"] = self.upgradeConfig?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_repair") && dict["auto_repair"] != nil {
                    self.autoRepair = dict["auto_repair"] as! Bool
                }
                if dict.keys.contains("auto_repair_policy") && dict["auto_repair_policy"] != nil {
                    var model = DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoRepairPolicy()
                    model.fromMap(dict["auto_repair_policy"] as! [String: Any])
                    self.autoRepairPolicy = model
                }
                if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                    self.autoUpgrade = dict["auto_upgrade"] as! Bool
                }
                if dict.keys.contains("auto_upgrade_policy") && dict["auto_upgrade_policy"] != nil {
                    var model = DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoUpgradePolicy()
                    model.fromMap(dict["auto_upgrade_policy"] as! [String: Any])
                    self.autoUpgradePolicy = model
                }
                if dict.keys.contains("auto_vul_fix") && dict["auto_vul_fix"] != nil {
                    self.autoVulFix = dict["auto_vul_fix"] as! Bool
                }
                if dict.keys.contains("auto_vul_fix_policy") && dict["auto_vul_fix_policy"] != nil {
                    var model = DescribeClusterNodePoolsResponseBody.Nodepools.Management.AutoVulFixPolicy()
                    model.fromMap(dict["auto_vul_fix_policy"] as! [String: Any])
                    self.autoVulFixPolicy = model
                }
                if dict.keys.contains("enable") && dict["enable"] != nil {
                    self.enable = dict["enable"] as! Bool
                }
                if dict.keys.contains("upgrade_config") && dict["upgrade_config"] != nil {
                    var model = DescribeClusterNodePoolsResponseBody.Nodepools.Management.UpgradeConfig()
                    model.fromMap(dict["upgrade_config"] as! [String: Any])
                    self.upgradeConfig = model
                }
            }
        }
        public class NodeConfig : Tea.TeaModel {
            public var kubeletConfiguration: KubeletConfig?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.kubeletConfiguration?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.kubeletConfiguration != nil {
                    map["kubelet_configuration"] = self.kubeletConfiguration?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("kubelet_configuration") && dict["kubelet_configuration"] != nil {
                    var model = KubeletConfig()
                    model.fromMap(dict["kubelet_configuration"] as! [String: Any])
                    self.kubeletConfiguration = model
                }
            }
        }
        public class NodepoolInfo : Tea.TeaModel {
            public var created: String?

            public var isDefault: Bool?

            public var name: String?

            public var nodepoolId: String?

            public var regionId: String?

            public var resourceGroupId: String?

            public var type: String?

            public var updated: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.created != nil {
                    map["created"] = self.created!
                }
                if self.isDefault != nil {
                    map["is_default"] = self.isDefault!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.nodepoolId != nil {
                    map["nodepool_id"] = self.nodepoolId!
                }
                if self.regionId != nil {
                    map["region_id"] = self.regionId!
                }
                if self.resourceGroupId != nil {
                    map["resource_group_id"] = self.resourceGroupId!
                }
                if self.type != nil {
                    map["type"] = self.type!
                }
                if self.updated != nil {
                    map["updated"] = self.updated!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("created") && dict["created"] != nil {
                    self.created = dict["created"] as! String
                }
                if dict.keys.contains("is_default") && dict["is_default"] != nil {
                    self.isDefault = dict["is_default"] as! Bool
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
                    self.nodepoolId = dict["nodepool_id"] as! String
                }
                if dict.keys.contains("region_id") && dict["region_id"] != nil {
                    self.regionId = dict["region_id"] as! String
                }
                if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                    self.resourceGroupId = dict["resource_group_id"] as! String
                }
                if dict.keys.contains("type") && dict["type"] != nil {
                    self.type = dict["type"] as! String
                }
                if dict.keys.contains("updated") && dict["updated"] != nil {
                    self.updated = dict["updated"] as! String
                }
            }
        }
        public class ScalingGroup : Tea.TeaModel {
            public class PrivatePoolOptions : Tea.TeaModel {
                public var id: String?

                public var matchCriteria: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.id != nil {
                        map["id"] = self.id!
                    }
                    if self.matchCriteria != nil {
                        map["match_criteria"] = self.matchCriteria!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("id") && dict["id"] != nil {
                        self.id = dict["id"] as! String
                    }
                    if dict.keys.contains("match_criteria") && dict["match_criteria"] != nil {
                        self.matchCriteria = dict["match_criteria"] as! String
                    }
                }
            }
            public class SpotPriceLimit : Tea.TeaModel {
                public var instanceType: String?

                public var priceLimit: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceType != nil {
                        map["instance_type"] = self.instanceType!
                    }
                    if self.priceLimit != nil {
                        map["price_limit"] = self.priceLimit!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                        self.instanceType = dict["instance_type"] as! String
                    }
                    if dict.keys.contains("price_limit") && dict["price_limit"] != nil {
                        self.priceLimit = dict["price_limit"] as! String
                    }
                }
            }
            public var autoRenew: Bool?

            public var autoRenewPeriod: Int64?

            public var cisEnabled: Bool?

            public var compensateWithOnDemand: Bool?

            public var dataDisks: [DataDisk]?

            public var deploymentsetId: String?

            public var desiredSize: Int64?

            public var imageId: String?

            public var imageType: String?

            public var instanceChargeType: String?

            public var instanceTypes: [String]?

            public var internetChargeType: String?

            public var internetMaxBandwidthOut: Int64?

            public var keyPair: String?

            public var loginAsNonRoot: Bool?

            public var loginPassword: String?

            public var multiAzPolicy: String?

            public var onDemandBaseCapacity: Int64?

            public var onDemandPercentageAboveBaseCapacity: Int64?

            public var period: Int64?

            public var periodUnit: String?

            public var platform: String?

            public var privatePoolOptions: DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup.PrivatePoolOptions?

            public var ramPolicy: String?

            public var rdsInstances: [String]?

            public var scalingGroupId: String?

            public var scalingPolicy: String?

            public var securityGroupId: String?

            public var securityGroupIds: [String]?

            public var socEnabled: Bool?

            public var spotInstancePools: Int64?

            public var spotInstanceRemedy: Bool?

            public var spotPriceLimit: [DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup.SpotPriceLimit]?

            public var spotStrategy: String?

            public var systemDiskBurstingEnabled: Bool?

            public var systemDiskCategories: [String]?

            public var systemDiskCategory: String?

            public var systemDiskEncryptAlgorithm: String?

            public var systemDiskEncrypted: Bool?

            public var systemDiskKmsKeyId: String?

            public var systemDiskPerformanceLevel: String?

            public var systemDiskProvisionedIops: Int64?

            public var systemDiskSize: Int64?

            public var tags: [Tag]?

            public var vswitchIds: [String]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.privatePoolOptions?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoRenew != nil {
                    map["auto_renew"] = self.autoRenew!
                }
                if self.autoRenewPeriod != nil {
                    map["auto_renew_period"] = self.autoRenewPeriod!
                }
                if self.cisEnabled != nil {
                    map["cis_enabled"] = self.cisEnabled!
                }
                if self.compensateWithOnDemand != nil {
                    map["compensate_with_on_demand"] = self.compensateWithOnDemand!
                }
                if self.dataDisks != nil {
                    var tmp : [Any] = []
                    for k in self.dataDisks! {
                        tmp.append(k.toMap())
                    }
                    map["data_disks"] = tmp
                }
                if self.deploymentsetId != nil {
                    map["deploymentset_id"] = self.deploymentsetId!
                }
                if self.desiredSize != nil {
                    map["desired_size"] = self.desiredSize!
                }
                if self.imageId != nil {
                    map["image_id"] = self.imageId!
                }
                if self.imageType != nil {
                    map["image_type"] = self.imageType!
                }
                if self.instanceChargeType != nil {
                    map["instance_charge_type"] = self.instanceChargeType!
                }
                if self.instanceTypes != nil {
                    map["instance_types"] = self.instanceTypes!
                }
                if self.internetChargeType != nil {
                    map["internet_charge_type"] = self.internetChargeType!
                }
                if self.internetMaxBandwidthOut != nil {
                    map["internet_max_bandwidth_out"] = self.internetMaxBandwidthOut!
                }
                if self.keyPair != nil {
                    map["key_pair"] = self.keyPair!
                }
                if self.loginAsNonRoot != nil {
                    map["login_as_non_root"] = self.loginAsNonRoot!
                }
                if self.loginPassword != nil {
                    map["login_password"] = self.loginPassword!
                }
                if self.multiAzPolicy != nil {
                    map["multi_az_policy"] = self.multiAzPolicy!
                }
                if self.onDemandBaseCapacity != nil {
                    map["on_demand_base_capacity"] = self.onDemandBaseCapacity!
                }
                if self.onDemandPercentageAboveBaseCapacity != nil {
                    map["on_demand_percentage_above_base_capacity"] = self.onDemandPercentageAboveBaseCapacity!
                }
                if self.period != nil {
                    map["period"] = self.period!
                }
                if self.periodUnit != nil {
                    map["period_unit"] = self.periodUnit!
                }
                if self.platform != nil {
                    map["platform"] = self.platform!
                }
                if self.privatePoolOptions != nil {
                    map["private_pool_options"] = self.privatePoolOptions?.toMap()
                }
                if self.ramPolicy != nil {
                    map["ram_policy"] = self.ramPolicy!
                }
                if self.rdsInstances != nil {
                    map["rds_instances"] = self.rdsInstances!
                }
                if self.scalingGroupId != nil {
                    map["scaling_group_id"] = self.scalingGroupId!
                }
                if self.scalingPolicy != nil {
                    map["scaling_policy"] = self.scalingPolicy!
                }
                if self.securityGroupId != nil {
                    map["security_group_id"] = self.securityGroupId!
                }
                if self.securityGroupIds != nil {
                    map["security_group_ids"] = self.securityGroupIds!
                }
                if self.socEnabled != nil {
                    map["soc_enabled"] = self.socEnabled!
                }
                if self.spotInstancePools != nil {
                    map["spot_instance_pools"] = self.spotInstancePools!
                }
                if self.spotInstanceRemedy != nil {
                    map["spot_instance_remedy"] = self.spotInstanceRemedy!
                }
                if self.spotPriceLimit != nil {
                    var tmp : [Any] = []
                    for k in self.spotPriceLimit! {
                        tmp.append(k.toMap())
                    }
                    map["spot_price_limit"] = tmp
                }
                if self.spotStrategy != nil {
                    map["spot_strategy"] = self.spotStrategy!
                }
                if self.systemDiskBurstingEnabled != nil {
                    map["system_disk_bursting_enabled"] = self.systemDiskBurstingEnabled!
                }
                if self.systemDiskCategories != nil {
                    map["system_disk_categories"] = self.systemDiskCategories!
                }
                if self.systemDiskCategory != nil {
                    map["system_disk_category"] = self.systemDiskCategory!
                }
                if self.systemDiskEncryptAlgorithm != nil {
                    map["system_disk_encrypt_algorithm"] = self.systemDiskEncryptAlgorithm!
                }
                if self.systemDiskEncrypted != nil {
                    map["system_disk_encrypted"] = self.systemDiskEncrypted!
                }
                if self.systemDiskKmsKeyId != nil {
                    map["system_disk_kms_key_id"] = self.systemDiskKmsKeyId!
                }
                if self.systemDiskPerformanceLevel != nil {
                    map["system_disk_performance_level"] = self.systemDiskPerformanceLevel!
                }
                if self.systemDiskProvisionedIops != nil {
                    map["system_disk_provisioned_iops"] = self.systemDiskProvisionedIops!
                }
                if self.systemDiskSize != nil {
                    map["system_disk_size"] = self.systemDiskSize!
                }
                if self.tags != nil {
                    var tmp : [Any] = []
                    for k in self.tags! {
                        tmp.append(k.toMap())
                    }
                    map["tags"] = tmp
                }
                if self.vswitchIds != nil {
                    map["vswitch_ids"] = self.vswitchIds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_renew") && dict["auto_renew"] != nil {
                    self.autoRenew = dict["auto_renew"] as! Bool
                }
                if dict.keys.contains("auto_renew_period") && dict["auto_renew_period"] != nil {
                    self.autoRenewPeriod = dict["auto_renew_period"] as! Int64
                }
                if dict.keys.contains("cis_enabled") && dict["cis_enabled"] != nil {
                    self.cisEnabled = dict["cis_enabled"] as! Bool
                }
                if dict.keys.contains("compensate_with_on_demand") && dict["compensate_with_on_demand"] != nil {
                    self.compensateWithOnDemand = dict["compensate_with_on_demand"] as! Bool
                }
                if dict.keys.contains("data_disks") && dict["data_disks"] != nil {
                    var tmp : [DataDisk] = []
                    for v in dict["data_disks"] as! [Any] {
                        var model = DataDisk()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.dataDisks = tmp
                }
                if dict.keys.contains("deploymentset_id") && dict["deploymentset_id"] != nil {
                    self.deploymentsetId = dict["deploymentset_id"] as! String
                }
                if dict.keys.contains("desired_size") && dict["desired_size"] != nil {
                    self.desiredSize = dict["desired_size"] as! Int64
                }
                if dict.keys.contains("image_id") && dict["image_id"] != nil {
                    self.imageId = dict["image_id"] as! String
                }
                if dict.keys.contains("image_type") && dict["image_type"] != nil {
                    self.imageType = dict["image_type"] as! String
                }
                if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                    self.instanceChargeType = dict["instance_charge_type"] as! String
                }
                if dict.keys.contains("instance_types") && dict["instance_types"] != nil {
                    self.instanceTypes = dict["instance_types"] as! [String]
                }
                if dict.keys.contains("internet_charge_type") && dict["internet_charge_type"] != nil {
                    self.internetChargeType = dict["internet_charge_type"] as! String
                }
                if dict.keys.contains("internet_max_bandwidth_out") && dict["internet_max_bandwidth_out"] != nil {
                    self.internetMaxBandwidthOut = dict["internet_max_bandwidth_out"] as! Int64
                }
                if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
                    self.keyPair = dict["key_pair"] as! String
                }
                if dict.keys.contains("login_as_non_root") && dict["login_as_non_root"] != nil {
                    self.loginAsNonRoot = dict["login_as_non_root"] as! Bool
                }
                if dict.keys.contains("login_password") && dict["login_password"] != nil {
                    self.loginPassword = dict["login_password"] as! String
                }
                if dict.keys.contains("multi_az_policy") && dict["multi_az_policy"] != nil {
                    self.multiAzPolicy = dict["multi_az_policy"] as! String
                }
                if dict.keys.contains("on_demand_base_capacity") && dict["on_demand_base_capacity"] != nil {
                    self.onDemandBaseCapacity = dict["on_demand_base_capacity"] as! Int64
                }
                if dict.keys.contains("on_demand_percentage_above_base_capacity") && dict["on_demand_percentage_above_base_capacity"] != nil {
                    self.onDemandPercentageAboveBaseCapacity = dict["on_demand_percentage_above_base_capacity"] as! Int64
                }
                if dict.keys.contains("period") && dict["period"] != nil {
                    self.period = dict["period"] as! Int64
                }
                if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
                    self.periodUnit = dict["period_unit"] as! String
                }
                if dict.keys.contains("platform") && dict["platform"] != nil {
                    self.platform = dict["platform"] as! String
                }
                if dict.keys.contains("private_pool_options") && dict["private_pool_options"] != nil {
                    var model = DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup.PrivatePoolOptions()
                    model.fromMap(dict["private_pool_options"] as! [String: Any])
                    self.privatePoolOptions = model
                }
                if dict.keys.contains("ram_policy") && dict["ram_policy"] != nil {
                    self.ramPolicy = dict["ram_policy"] as! String
                }
                if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
                    self.rdsInstances = dict["rds_instances"] as! [String]
                }
                if dict.keys.contains("scaling_group_id") && dict["scaling_group_id"] != nil {
                    self.scalingGroupId = dict["scaling_group_id"] as! String
                }
                if dict.keys.contains("scaling_policy") && dict["scaling_policy"] != nil {
                    self.scalingPolicy = dict["scaling_policy"] as! String
                }
                if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                    self.securityGroupId = dict["security_group_id"] as! String
                }
                if dict.keys.contains("security_group_ids") && dict["security_group_ids"] != nil {
                    self.securityGroupIds = dict["security_group_ids"] as! [String]
                }
                if dict.keys.contains("soc_enabled") && dict["soc_enabled"] != nil {
                    self.socEnabled = dict["soc_enabled"] as! Bool
                }
                if dict.keys.contains("spot_instance_pools") && dict["spot_instance_pools"] != nil {
                    self.spotInstancePools = dict["spot_instance_pools"] as! Int64
                }
                if dict.keys.contains("spot_instance_remedy") && dict["spot_instance_remedy"] != nil {
                    self.spotInstanceRemedy = dict["spot_instance_remedy"] as! Bool
                }
                if dict.keys.contains("spot_price_limit") && dict["spot_price_limit"] != nil {
                    var tmp : [DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup.SpotPriceLimit] = []
                    for v in dict["spot_price_limit"] as! [Any] {
                        var model = DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup.SpotPriceLimit()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.spotPriceLimit = tmp
                }
                if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                    self.spotStrategy = dict["spot_strategy"] as! String
                }
                if dict.keys.contains("system_disk_bursting_enabled") && dict["system_disk_bursting_enabled"] != nil {
                    self.systemDiskBurstingEnabled = dict["system_disk_bursting_enabled"] as! Bool
                }
                if dict.keys.contains("system_disk_categories") && dict["system_disk_categories"] != nil {
                    self.systemDiskCategories = dict["system_disk_categories"] as! [String]
                }
                if dict.keys.contains("system_disk_category") && dict["system_disk_category"] != nil {
                    self.systemDiskCategory = dict["system_disk_category"] as! String
                }
                if dict.keys.contains("system_disk_encrypt_algorithm") && dict["system_disk_encrypt_algorithm"] != nil {
                    self.systemDiskEncryptAlgorithm = dict["system_disk_encrypt_algorithm"] as! String
                }
                if dict.keys.contains("system_disk_encrypted") && dict["system_disk_encrypted"] != nil {
                    self.systemDiskEncrypted = dict["system_disk_encrypted"] as! Bool
                }
                if dict.keys.contains("system_disk_kms_key_id") && dict["system_disk_kms_key_id"] != nil {
                    self.systemDiskKmsKeyId = dict["system_disk_kms_key_id"] as! String
                }
                if dict.keys.contains("system_disk_performance_level") && dict["system_disk_performance_level"] != nil {
                    self.systemDiskPerformanceLevel = dict["system_disk_performance_level"] as! String
                }
                if dict.keys.contains("system_disk_provisioned_iops") && dict["system_disk_provisioned_iops"] != nil {
                    self.systemDiskProvisionedIops = dict["system_disk_provisioned_iops"] as! Int64
                }
                if dict.keys.contains("system_disk_size") && dict["system_disk_size"] != nil {
                    self.systemDiskSize = dict["system_disk_size"] as! Int64
                }
                if dict.keys.contains("tags") && dict["tags"] != nil {
                    var tmp : [Tag] = []
                    for v in dict["tags"] as! [Any] {
                        var model = Tag()
                        if v != nil {
                            model.fromMap(v as! [String: Any])
                        }
                        tmp.append(model)
                    }
                    self.tags = tmp
                }
                if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
                    self.vswitchIds = dict["vswitch_ids"] as! [String]
                }
            }
        }
        public class Status : Tea.TeaModel {
            public var failedNodes: Int64?

            public var healthyNodes: Int64?

            public var initialNodes: Int64?

            public var offlineNodes: Int64?

            public var removingNodes: Int64?

            public var servingNodes: Int64?

            public var state: String?

            public var totalNodes: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.failedNodes != nil {
                    map["failed_nodes"] = self.failedNodes!
                }
                if self.healthyNodes != nil {
                    map["healthy_nodes"] = self.healthyNodes!
                }
                if self.initialNodes != nil {
                    map["initial_nodes"] = self.initialNodes!
                }
                if self.offlineNodes != nil {
                    map["offline_nodes"] = self.offlineNodes!
                }
                if self.removingNodes != nil {
                    map["removing_nodes"] = self.removingNodes!
                }
                if self.servingNodes != nil {
                    map["serving_nodes"] = self.servingNodes!
                }
                if self.state != nil {
                    map["state"] = self.state!
                }
                if self.totalNodes != nil {
                    map["total_nodes"] = self.totalNodes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("failed_nodes") && dict["failed_nodes"] != nil {
                    self.failedNodes = dict["failed_nodes"] as! Int64
                }
                if dict.keys.contains("healthy_nodes") && dict["healthy_nodes"] != nil {
                    self.healthyNodes = dict["healthy_nodes"] as! Int64
                }
                if dict.keys.contains("initial_nodes") && dict["initial_nodes"] != nil {
                    self.initialNodes = dict["initial_nodes"] as! Int64
                }
                if dict.keys.contains("offline_nodes") && dict["offline_nodes"] != nil {
                    self.offlineNodes = dict["offline_nodes"] as! Int64
                }
                if dict.keys.contains("removing_nodes") && dict["removing_nodes"] != nil {
                    self.removingNodes = dict["removing_nodes"] as! Int64
                }
                if dict.keys.contains("serving_nodes") && dict["serving_nodes"] != nil {
                    self.servingNodes = dict["serving_nodes"] as! Int64
                }
                if dict.keys.contains("state") && dict["state"] != nil {
                    self.state = dict["state"] as! String
                }
                if dict.keys.contains("total_nodes") && dict["total_nodes"] != nil {
                    self.totalNodes = dict["total_nodes"] as! Int64
                }
            }
        }
        public class TeeConfig : Tea.TeaModel {
            public var teeEnable: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.teeEnable != nil {
                    map["tee_enable"] = self.teeEnable!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("tee_enable") && dict["tee_enable"] != nil {
                    self.teeEnable = dict["tee_enable"] as! Bool
                }
            }
        }
        public var autoScaling: DescribeClusterNodePoolsResponseBody.Nodepools.AutoScaling?

        public var interconnectConfig: DescribeClusterNodePoolsResponseBody.Nodepools.InterconnectConfig?

        public var interconnectMode: String?

        public var kubernetesConfig: DescribeClusterNodePoolsResponseBody.Nodepools.KubernetesConfig?

        public var management: DescribeClusterNodePoolsResponseBody.Nodepools.Management?

        public var maxNodes: Int64?

        public var nodeConfig: DescribeClusterNodePoolsResponseBody.Nodepools.NodeConfig?

        public var nodepoolInfo: DescribeClusterNodePoolsResponseBody.Nodepools.NodepoolInfo?

        public var scalingGroup: DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup?

        public var status: DescribeClusterNodePoolsResponseBody.Nodepools.Status?

        public var teeConfig: DescribeClusterNodePoolsResponseBody.Nodepools.TeeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoScaling?.validate()
            try self.interconnectConfig?.validate()
            try self.kubernetesConfig?.validate()
            try self.management?.validate()
            try self.nodeConfig?.validate()
            try self.nodepoolInfo?.validate()
            try self.scalingGroup?.validate()
            try self.status?.validate()
            try self.teeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoScaling != nil {
                map["auto_scaling"] = self.autoScaling?.toMap()
            }
            if self.interconnectConfig != nil {
                map["interconnect_config"] = self.interconnectConfig?.toMap()
            }
            if self.interconnectMode != nil {
                map["interconnect_mode"] = self.interconnectMode!
            }
            if self.kubernetesConfig != nil {
                map["kubernetes_config"] = self.kubernetesConfig?.toMap()
            }
            if self.management != nil {
                map["management"] = self.management?.toMap()
            }
            if self.maxNodes != nil {
                map["max_nodes"] = self.maxNodes!
            }
            if self.nodeConfig != nil {
                map["node_config"] = self.nodeConfig?.toMap()
            }
            if self.nodepoolInfo != nil {
                map["nodepool_info"] = self.nodepoolInfo?.toMap()
            }
            if self.scalingGroup != nil {
                map["scaling_group"] = self.scalingGroup?.toMap()
            }
            if self.status != nil {
                map["status"] = self.status?.toMap()
            }
            if self.teeConfig != nil {
                map["tee_config"] = self.teeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_scaling") && dict["auto_scaling"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.AutoScaling()
                model.fromMap(dict["auto_scaling"] as! [String: Any])
                self.autoScaling = model
            }
            if dict.keys.contains("interconnect_config") && dict["interconnect_config"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.InterconnectConfig()
                model.fromMap(dict["interconnect_config"] as! [String: Any])
                self.interconnectConfig = model
            }
            if dict.keys.contains("interconnect_mode") && dict["interconnect_mode"] != nil {
                self.interconnectMode = dict["interconnect_mode"] as! String
            }
            if dict.keys.contains("kubernetes_config") && dict["kubernetes_config"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.KubernetesConfig()
                model.fromMap(dict["kubernetes_config"] as! [String: Any])
                self.kubernetesConfig = model
            }
            if dict.keys.contains("management") && dict["management"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.Management()
                model.fromMap(dict["management"] as! [String: Any])
                self.management = model
            }
            if dict.keys.contains("max_nodes") && dict["max_nodes"] != nil {
                self.maxNodes = dict["max_nodes"] as! Int64
            }
            if dict.keys.contains("node_config") && dict["node_config"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.NodeConfig()
                model.fromMap(dict["node_config"] as! [String: Any])
                self.nodeConfig = model
            }
            if dict.keys.contains("nodepool_info") && dict["nodepool_info"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.NodepoolInfo()
                model.fromMap(dict["nodepool_info"] as! [String: Any])
                self.nodepoolInfo = model
            }
            if dict.keys.contains("scaling_group") && dict["scaling_group"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.ScalingGroup()
                model.fromMap(dict["scaling_group"] as! [String: Any])
                self.scalingGroup = model
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.Status()
                model.fromMap(dict["status"] as! [String: Any])
                self.status = model
            }
            if dict.keys.contains("tee_config") && dict["tee_config"] != nil {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools.TeeConfig()
                model.fromMap(dict["tee_config"] as! [String: Any])
                self.teeConfig = model
            }
        }
    }
    public var nodepools: [DescribeClusterNodePoolsResponseBody.Nodepools]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodepools != nil {
            var tmp : [Any] = []
            for k in self.nodepools! {
                tmp.append(k.toMap())
            }
            map["nodepools"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nodepools") && dict["nodepools"] != nil {
            var tmp : [DescribeClusterNodePoolsResponseBody.Nodepools] = []
            for v in dict["nodepools"] as! [Any] {
                var model = DescribeClusterNodePoolsResponseBody.Nodepools()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodepools = tmp
        }
    }
}

public class DescribeClusterNodePoolsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterNodePoolsResponseBody?

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
            var model = DescribeClusterNodePoolsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterNodesRequest : Tea.TeaModel {
    public var instanceIds: String?

    public var nodepoolId: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var state: String?

    public override init() {
        super.init()
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
            map["instanceIds"] = self.instanceIds!
        }
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.pageNumber != nil {
            map["pageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["pageSize"] = self.pageSize!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instanceIds") && dict["instanceIds"] != nil {
            self.instanceIds = dict["instanceIds"] as! String
        }
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("pageNumber") && dict["pageNumber"] != nil {
            self.pageNumber = dict["pageNumber"] as! String
        }
        if dict.keys.contains("pageSize") && dict["pageSize"] != nil {
            self.pageSize = dict["pageSize"] as! String
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
    }
}

public class DescribeClusterNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public var creationTime: String?

        public var errorMessage: String?

        public var expiredTime: String?

        public var hostName: String?

        public var imageId: String?

        public var instanceChargeType: String?

        public var instanceId: String?

        public var instanceName: String?

        public var instanceRole: String?

        public var instanceStatus: String?

        public var instanceType: String?

        public var instanceTypeFamily: String?

        public var ipAddress: [String]?

        public var isAliyunNode: Bool?

        public var nodeName: String?

        public var nodeStatus: String?

        public var nodepoolId: String?

        public var source: String?

        public var spotStrategy: String?

        public var state: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.creationTime != nil {
                map["creation_time"] = self.creationTime!
            }
            if self.errorMessage != nil {
                map["error_message"] = self.errorMessage!
            }
            if self.expiredTime != nil {
                map["expired_time"] = self.expiredTime!
            }
            if self.hostName != nil {
                map["host_name"] = self.hostName!
            }
            if self.imageId != nil {
                map["image_id"] = self.imageId!
            }
            if self.instanceChargeType != nil {
                map["instance_charge_type"] = self.instanceChargeType!
            }
            if self.instanceId != nil {
                map["instance_id"] = self.instanceId!
            }
            if self.instanceName != nil {
                map["instance_name"] = self.instanceName!
            }
            if self.instanceRole != nil {
                map["instance_role"] = self.instanceRole!
            }
            if self.instanceStatus != nil {
                map["instance_status"] = self.instanceStatus!
            }
            if self.instanceType != nil {
                map["instance_type"] = self.instanceType!
            }
            if self.instanceTypeFamily != nil {
                map["instance_type_family"] = self.instanceTypeFamily!
            }
            if self.ipAddress != nil {
                map["ip_address"] = self.ipAddress!
            }
            if self.isAliyunNode != nil {
                map["is_aliyun_node"] = self.isAliyunNode!
            }
            if self.nodeName != nil {
                map["node_name"] = self.nodeName!
            }
            if self.nodeStatus != nil {
                map["node_status"] = self.nodeStatus!
            }
            if self.nodepoolId != nil {
                map["nodepool_id"] = self.nodepoolId!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.spotStrategy != nil {
                map["spot_strategy"] = self.spotStrategy!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("creation_time") && dict["creation_time"] != nil {
                self.creationTime = dict["creation_time"] as! String
            }
            if dict.keys.contains("error_message") && dict["error_message"] != nil {
                self.errorMessage = dict["error_message"] as! String
            }
            if dict.keys.contains("expired_time") && dict["expired_time"] != nil {
                self.expiredTime = dict["expired_time"] as! String
            }
            if dict.keys.contains("host_name") && dict["host_name"] != nil {
                self.hostName = dict["host_name"] as! String
            }
            if dict.keys.contains("image_id") && dict["image_id"] != nil {
                self.imageId = dict["image_id"] as! String
            }
            if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                self.instanceChargeType = dict["instance_charge_type"] as! String
            }
            if dict.keys.contains("instance_id") && dict["instance_id"] != nil {
                self.instanceId = dict["instance_id"] as! String
            }
            if dict.keys.contains("instance_name") && dict["instance_name"] != nil {
                self.instanceName = dict["instance_name"] as! String
            }
            if dict.keys.contains("instance_role") && dict["instance_role"] != nil {
                self.instanceRole = dict["instance_role"] as! String
            }
            if dict.keys.contains("instance_status") && dict["instance_status"] != nil {
                self.instanceStatus = dict["instance_status"] as! String
            }
            if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                self.instanceType = dict["instance_type"] as! String
            }
            if dict.keys.contains("instance_type_family") && dict["instance_type_family"] != nil {
                self.instanceTypeFamily = dict["instance_type_family"] as! String
            }
            if dict.keys.contains("ip_address") && dict["ip_address"] != nil {
                self.ipAddress = dict["ip_address"] as! [String]
            }
            if dict.keys.contains("is_aliyun_node") && dict["is_aliyun_node"] != nil {
                self.isAliyunNode = dict["is_aliyun_node"] as! Bool
            }
            if dict.keys.contains("node_name") && dict["node_name"] != nil {
                self.nodeName = dict["node_name"] as! String
            }
            if dict.keys.contains("node_status") && dict["node_status"] != nil {
                self.nodeStatus = dict["node_status"] as! String
            }
            if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
                self.nodepoolId = dict["nodepool_id"] as! String
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                self.spotStrategy = dict["spot_strategy"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
        }
    }
    public class Page : Tea.TeaModel {
        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.pageNumber != nil {
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int32
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int32
            }
        }
    }
    public var nodes: [DescribeClusterNodesResponseBody.Nodes]?

    public var page: DescribeClusterNodesResponseBody.Page?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.page?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["nodes"] = tmp
        }
        if self.page != nil {
            map["page"] = self.page?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            var tmp : [DescribeClusterNodesResponseBody.Nodes] = []
            for v in dict["nodes"] as! [Any] {
                var model = DescribeClusterNodesResponseBody.Nodes()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.nodes = tmp
        }
        if dict.keys.contains("page") && dict["page"] != nil {
            var model = DescribeClusterNodesResponseBody.Page()
            model.fromMap(dict["page"] as! [String: Any])
            self.page = model
        }
    }
}

public class DescribeClusterNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterNodesResponseBody?

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
            var model = DescribeClusterNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterResourcesResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Dependencies : Tea.TeaModel {
            public var clusterId: String?

            public var resourceType: String?

            public var instanceId: String?

            public override init() {
                super.init()
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
                    map["cluster_id"] = self.clusterId!
                }
                if self.resourceType != nil {
                    map["resource_type"] = self.resourceType!
                }
                if self.instanceId != nil {
                    map["instance_id"] = self.instanceId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                    self.clusterId = dict["cluster_id"] as! String
                }
                if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
                    self.resourceType = dict["resource_type"] as! String
                }
                if dict.keys.contains("instance_id") && dict["instance_id"] != nil {
                    self.instanceId = dict["instance_id"] as! String
                }
            }
        }
        public var clusterId: String?

        public var created: String?

        public var instanceId: String?

        public var resourceInfo: String?

        public var resourceType: String?

        public var state: String?

        public var autoCreate: Int64?

        public var dependencies: [DescribeClusterResourcesResponse.Body.Dependencies]?

        public override init() {
            super.init()
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
                map["cluster_id"] = self.clusterId!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.instanceId != nil {
                map["instance_id"] = self.instanceId!
            }
            if self.resourceInfo != nil {
                map["resource_info"] = self.resourceInfo!
            }
            if self.resourceType != nil {
                map["resource_type"] = self.resourceType!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.autoCreate != nil {
                map["auto_create"] = self.autoCreate!
            }
            if self.dependencies != nil {
                var tmp : [Any] = []
                for k in self.dependencies! {
                    tmp.append(k.toMap())
                }
                map["dependencies"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("instance_id") && dict["instance_id"] != nil {
                self.instanceId = dict["instance_id"] as! String
            }
            if dict.keys.contains("resource_info") && dict["resource_info"] != nil {
                self.resourceInfo = dict["resource_info"] as! String
            }
            if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
                self.resourceType = dict["resource_type"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("auto_create") && dict["auto_create"] != nil {
                self.autoCreate = dict["auto_create"] as! Int64
            }
            if dict.keys.contains("dependencies") && dict["dependencies"] != nil {
                var tmp : [DescribeClusterResourcesResponse.Body.Dependencies] = []
                for v in dict["dependencies"] as! [Any] {
                    var model = DescribeClusterResourcesResponse.Body.Dependencies()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dependencies = tmp
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeClusterResourcesResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeClusterResourcesResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeClusterResourcesResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeClusterTasksRequest : Tea.TeaModel {
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
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_number") && dict["page_number"] != nil {
            self.pageNumber = dict["page_number"] as! Int32
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int32
        }
    }
}

public class DescribeClusterTasksResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int64
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int64
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int64
            }
        }
    }
    public class Tasks : Tea.TeaModel {
        public class Error : Tea.TeaModel {
            public var code: String?

            public var message: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.code != nil {
                    map["code"] = self.code!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("code") && dict["code"] != nil {
                    self.code = dict["code"] as! String
                }
                if dict.keys.contains("message") && dict["message"] != nil {
                    self.message = dict["message"] as! String
                }
            }
        }
        public var created: String?

        public var error: DescribeClusterTasksResponseBody.Tasks.Error?

        public var state: String?

        public var taskId: String?

        public var taskType: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.error?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.error != nil {
                map["error"] = self.error?.toMap()
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.taskId != nil {
                map["task_id"] = self.taskId!
            }
            if self.taskType != nil {
                map["task_type"] = self.taskType!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("error") && dict["error"] != nil {
                var model = DescribeClusterTasksResponseBody.Tasks.Error()
                model.fromMap(dict["error"] as! [String: Any])
                self.error = model
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("task_id") && dict["task_id"] != nil {
                self.taskId = dict["task_id"] as! String
            }
            if dict.keys.contains("task_type") && dict["task_type"] != nil {
                self.taskType = dict["task_type"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public var pageInfo: DescribeClusterTasksResponseBody.PageInfo?

    public var requestId: String?

    public var tasks: [DescribeClusterTasksResponseBody.Tasks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["tasks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeClusterTasksResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("requestId") && dict["requestId"] != nil {
            self.requestId = dict["requestId"] as! String
        }
        if dict.keys.contains("tasks") && dict["tasks"] != nil {
            var tmp : [DescribeClusterTasksResponseBody.Tasks] = []
            for v in dict["tasks"] as! [Any] {
                var model = DescribeClusterTasksResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
    }
}

public class DescribeClusterTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterTasksResponseBody?

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
            var model = DescribeClusterTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterUserKubeconfigRequest : Tea.TeaModel {
    public var privateIpAddress: Bool?

    public var temporaryDurationMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.temporaryDurationMinutes != nil {
            map["TemporaryDurationMinutes"] = self.temporaryDurationMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("TemporaryDurationMinutes") && dict["TemporaryDurationMinutes"] != nil {
            self.temporaryDurationMinutes = dict["TemporaryDurationMinutes"] as! Int64
        }
    }
}

public class DescribeClusterUserKubeconfigResponseBody : Tea.TeaModel {
    public var config: String?

    public var expiration: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.expiration != nil {
            map["expiration"] = self.expiration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("expiration") && dict["expiration"] != nil {
            self.expiration = dict["expiration"] as! String
        }
    }
}

public class DescribeClusterUserKubeconfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterUserKubeconfigResponseBody?

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
            var model = DescribeClusterUserKubeconfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterV2UserKubeconfigRequest : Tea.TeaModel {
    public var privateIpAddress: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
    }
}

public class DescribeClusterV2UserKubeconfigResponseBody : Tea.TeaModel {
    public var config: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
    }
}

public class DescribeClusterV2UserKubeconfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterV2UserKubeconfigResponseBody?

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
            var model = DescribeClusterV2UserKubeconfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterVulsResponseBody : Tea.TeaModel {
    public class VulRecords : Tea.TeaModel {
        public var cveList: [String]?

        public var necessity: String?

        public var nodeCount: Int32?

        public var nodepoolId: String?

        public var nodepoolName: String?

        public var vulAliasName: String?

        public var vulName: String?

        public var vulType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cveList != nil {
                map["cve_list"] = self.cveList!
            }
            if self.necessity != nil {
                map["necessity"] = self.necessity!
            }
            if self.nodeCount != nil {
                map["node_count"] = self.nodeCount!
            }
            if self.nodepoolId != nil {
                map["nodepool_id"] = self.nodepoolId!
            }
            if self.nodepoolName != nil {
                map["nodepool_name"] = self.nodepoolName!
            }
            if self.vulAliasName != nil {
                map["vul_alias_name"] = self.vulAliasName!
            }
            if self.vulName != nil {
                map["vul_name"] = self.vulName!
            }
            if self.vulType != nil {
                map["vul_type"] = self.vulType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cve_list") && dict["cve_list"] != nil {
                self.cveList = dict["cve_list"] as! [String]
            }
            if dict.keys.contains("necessity") && dict["necessity"] != nil {
                self.necessity = dict["necessity"] as! String
            }
            if dict.keys.contains("node_count") && dict["node_count"] != nil {
                self.nodeCount = dict["node_count"] as! Int32
            }
            if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
                self.nodepoolId = dict["nodepool_id"] as! String
            }
            if dict.keys.contains("nodepool_name") && dict["nodepool_name"] != nil {
                self.nodepoolName = dict["nodepool_name"] as! String
            }
            if dict.keys.contains("vul_alias_name") && dict["vul_alias_name"] != nil {
                self.vulAliasName = dict["vul_alias_name"] as! String
            }
            if dict.keys.contains("vul_name") && dict["vul_name"] != nil {
                self.vulName = dict["vul_name"] as! String
            }
            if dict.keys.contains("vul_type") && dict["vul_type"] != nil {
                self.vulType = dict["vul_type"] as! String
            }
        }
    }
    public var vulRecords: [DescribeClusterVulsResponseBody.VulRecords]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vulRecords != nil {
            var tmp : [Any] = []
            for k in self.vulRecords! {
                tmp.append(k.toMap())
            }
            map["vul_records"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("vul_records") && dict["vul_records"] != nil {
            var tmp : [DescribeClusterVulsResponseBody.VulRecords] = []
            for v in dict["vul_records"] as! [Any] {
                var model = DescribeClusterVulsResponseBody.VulRecords()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vulRecords = tmp
        }
    }
}

public class DescribeClusterVulsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterVulsResponseBody?

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
            var model = DescribeClusterVulsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClustersRequest : Tea.TeaModel {
    public var clusterType: String?

    public var name: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterType != nil {
            map["clusterType"] = self.clusterType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusterType") && dict["clusterType"] != nil {
            self.clusterType = dict["clusterType"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
    }
}

public class DescribeClustersResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var clusterId: String?

        public var clusterType: String?

        public var created: String?

        public var currentVersion: String?

        public var dataDiskCategory: String?

        public var dataDiskSize: Int64?

        public var deletionProtection: Bool?

        public var dockerVersion: String?

        public var externalLoadbalancerId: String?

        public var initVersion: String?

        public var masterUrl: String?

        public var metaData: String?

        public var name: String?

        public var networkMode: String?

        public var privateZone: Bool?

        public var profile: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupId: String?

        public var size: Int64?

        public var state: String?

        public var subnetCidr: String?

        public var tags: [DescribeClustersResponse.Body.Tags]?

        public var updated: String?

        public var vpcId: String?

        public var vswitchCidr: String?

        public var vswitchId: String?

        public var workerRamRoleName: String?

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
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.clusterType != nil {
                map["cluster_type"] = self.clusterType!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["current_version"] = self.currentVersion!
            }
            if self.dataDiskCategory != nil {
                map["data_disk_category"] = self.dataDiskCategory!
            }
            if self.dataDiskSize != nil {
                map["data_disk_size"] = self.dataDiskSize!
            }
            if self.deletionProtection != nil {
                map["deletion_protection"] = self.deletionProtection!
            }
            if self.dockerVersion != nil {
                map["docker_version"] = self.dockerVersion!
            }
            if self.externalLoadbalancerId != nil {
                map["external_loadbalancer_id"] = self.externalLoadbalancerId!
            }
            if self.initVersion != nil {
                map["init_version"] = self.initVersion!
            }
            if self.masterUrl != nil {
                map["master_url"] = self.masterUrl!
            }
            if self.metaData != nil {
                map["meta_data"] = self.metaData!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkMode != nil {
                map["network_mode"] = self.networkMode!
            }
            if self.privateZone != nil {
                map["private_zone"] = self.privateZone!
            }
            if self.profile != nil {
                map["profile"] = self.profile!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.securityGroupId != nil {
                map["security_group_id"] = self.securityGroupId!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.subnetCidr != nil {
                map["subnet_cidr"] = self.subnetCidr!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.vpcId != nil {
                map["vpc_id"] = self.vpcId!
            }
            if self.vswitchCidr != nil {
                map["vswitch_cidr"] = self.vswitchCidr!
            }
            if self.vswitchId != nil {
                map["vswitch_id"] = self.vswitchId!
            }
            if self.workerRamRoleName != nil {
                map["worker_ram_role_name"] = self.workerRamRoleName!
            }
            if self.zoneId != nil {
                map["zone_id"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
                self.clusterType = dict["cluster_type"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("current_version") && dict["current_version"] != nil {
                self.currentVersion = dict["current_version"] as! String
            }
            if dict.keys.contains("data_disk_category") && dict["data_disk_category"] != nil {
                self.dataDiskCategory = dict["data_disk_category"] as! String
            }
            if dict.keys.contains("data_disk_size") && dict["data_disk_size"] != nil {
                self.dataDiskSize = dict["data_disk_size"] as! Int64
            }
            if dict.keys.contains("deletion_protection") && dict["deletion_protection"] != nil {
                self.deletionProtection = dict["deletion_protection"] as! Bool
            }
            if dict.keys.contains("docker_version") && dict["docker_version"] != nil {
                self.dockerVersion = dict["docker_version"] as! String
            }
            if dict.keys.contains("external_loadbalancer_id") && dict["external_loadbalancer_id"] != nil {
                self.externalLoadbalancerId = dict["external_loadbalancer_id"] as! String
            }
            if dict.keys.contains("init_version") && dict["init_version"] != nil {
                self.initVersion = dict["init_version"] as! String
            }
            if dict.keys.contains("master_url") && dict["master_url"] != nil {
                self.masterUrl = dict["master_url"] as! String
            }
            if dict.keys.contains("meta_data") && dict["meta_data"] != nil {
                self.metaData = dict["meta_data"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("network_mode") && dict["network_mode"] != nil {
                self.networkMode = dict["network_mode"] as! String
            }
            if dict.keys.contains("private_zone") && dict["private_zone"] != nil {
                self.privateZone = dict["private_zone"] as! Bool
            }
            if dict.keys.contains("profile") && dict["profile"] != nil {
                self.profile = dict["profile"] as! String
            }
            if dict.keys.contains("region_id") && dict["region_id"] != nil {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
            if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                self.securityGroupId = dict["security_group_id"] as! String
            }
            if dict.keys.contains("size") && dict["size"] != nil {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("subnet_cidr") && dict["subnet_cidr"] != nil {
                self.subnetCidr = dict["subnet_cidr"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [DescribeClustersResponse.Body.Tags] = []
                for v in dict["tags"] as! [Any] {
                    var model = DescribeClustersResponse.Body.Tags()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
            if dict.keys.contains("vpc_id") && dict["vpc_id"] != nil {
                self.vpcId = dict["vpc_id"] as! String
            }
            if dict.keys.contains("vswitch_cidr") && dict["vswitch_cidr"] != nil {
                self.vswitchCidr = dict["vswitch_cidr"] as! String
            }
            if dict.keys.contains("vswitch_id") && dict["vswitch_id"] != nil {
                self.vswitchId = dict["vswitch_id"] as! String
            }
            if dict.keys.contains("worker_ram_role_name") && dict["worker_ram_role_name"] != nil {
                self.workerRamRoleName = dict["worker_ram_role_name"] as! String
            }
            if dict.keys.contains("zone_id") && dict["zone_id"] != nil {
                self.zoneId = dict["zone_id"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeClustersResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeClustersResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeClustersResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeClustersV1Request : Tea.TeaModel {
    public var clusterId: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var name: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var profile: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.pageNumber != nil {
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.profile != nil {
            map["profile"] = self.profile!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("page_number") && dict["page_number"] != nil {
            self.pageNumber = dict["page_number"] as! Int64
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int64
        }
        if dict.keys.contains("profile") && dict["profile"] != nil {
            self.profile = dict["profile"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
    }
}

public class DescribeClustersV1ResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public var clusterId: String?

        public var clusterSpec: String?

        public var clusterType: String?

        public var created: String?

        public var currentVersion: String?

        public var deletionProtection: Bool?

        public var dockerVersion: String?

        public var externalLoadbalancerId: String?

        public var initVersion: String?

        public var maintenanceWindow: MaintenanceWindow?

        public var masterUrl: String?

        public var metaData: String?

        public var name: String?

        public var networkMode: String?

        public var nextVersion: String?

        public var privateZone: Bool?

        public var profile: String?

        public var regionId: String?

        public var resourceGroupId: String?

        public var securityGroupId: String?

        public var size: Int64?

        public var state: String?

        public var subnetCidr: String?

        public var tags: [Tag]?

        public var updated: String?

        public var vpcId: String?

        public var vswitchId: String?

        public var workerRamRoleName: String?

        public var zoneId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.maintenanceWindow?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.clusterSpec != nil {
                map["cluster_spec"] = self.clusterSpec!
            }
            if self.clusterType != nil {
                map["cluster_type"] = self.clusterType!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.currentVersion != nil {
                map["current_version"] = self.currentVersion!
            }
            if self.deletionProtection != nil {
                map["deletion_protection"] = self.deletionProtection!
            }
            if self.dockerVersion != nil {
                map["docker_version"] = self.dockerVersion!
            }
            if self.externalLoadbalancerId != nil {
                map["external_loadbalancer_id"] = self.externalLoadbalancerId!
            }
            if self.initVersion != nil {
                map["init_version"] = self.initVersion!
            }
            if self.maintenanceWindow != nil {
                map["maintenance_window"] = self.maintenanceWindow?.toMap()
            }
            if self.masterUrl != nil {
                map["master_url"] = self.masterUrl!
            }
            if self.metaData != nil {
                map["meta_data"] = self.metaData!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.networkMode != nil {
                map["network_mode"] = self.networkMode!
            }
            if self.nextVersion != nil {
                map["next_version"] = self.nextVersion!
            }
            if self.privateZone != nil {
                map["private_zone"] = self.privateZone!
            }
            if self.profile != nil {
                map["profile"] = self.profile!
            }
            if self.regionId != nil {
                map["region_id"] = self.regionId!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            if self.securityGroupId != nil {
                map["security_group_id"] = self.securityGroupId!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.subnetCidr != nil {
                map["subnet_cidr"] = self.subnetCidr!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            if self.vpcId != nil {
                map["vpc_id"] = self.vpcId!
            }
            if self.vswitchId != nil {
                map["vswitch_id"] = self.vswitchId!
            }
            if self.workerRamRoleName != nil {
                map["worker_ram_role_name"] = self.workerRamRoleName!
            }
            if self.zoneId != nil {
                map["zone_id"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
                self.clusterSpec = dict["cluster_spec"] as! String
            }
            if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
                self.clusterType = dict["cluster_type"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("current_version") && dict["current_version"] != nil {
                self.currentVersion = dict["current_version"] as! String
            }
            if dict.keys.contains("deletion_protection") && dict["deletion_protection"] != nil {
                self.deletionProtection = dict["deletion_protection"] as! Bool
            }
            if dict.keys.contains("docker_version") && dict["docker_version"] != nil {
                self.dockerVersion = dict["docker_version"] as! String
            }
            if dict.keys.contains("external_loadbalancer_id") && dict["external_loadbalancer_id"] != nil {
                self.externalLoadbalancerId = dict["external_loadbalancer_id"] as! String
            }
            if dict.keys.contains("init_version") && dict["init_version"] != nil {
                self.initVersion = dict["init_version"] as! String
            }
            if dict.keys.contains("maintenance_window") && dict["maintenance_window"] != nil {
                var model = MaintenanceWindow()
                model.fromMap(dict["maintenance_window"] as! [String: Any])
                self.maintenanceWindow = model
            }
            if dict.keys.contains("master_url") && dict["master_url"] != nil {
                self.masterUrl = dict["master_url"] as! String
            }
            if dict.keys.contains("meta_data") && dict["meta_data"] != nil {
                self.metaData = dict["meta_data"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("network_mode") && dict["network_mode"] != nil {
                self.networkMode = dict["network_mode"] as! String
            }
            if dict.keys.contains("next_version") && dict["next_version"] != nil {
                self.nextVersion = dict["next_version"] as! String
            }
            if dict.keys.contains("private_zone") && dict["private_zone"] != nil {
                self.privateZone = dict["private_zone"] as! Bool
            }
            if dict.keys.contains("profile") && dict["profile"] != nil {
                self.profile = dict["profile"] as! String
            }
            if dict.keys.contains("region_id") && dict["region_id"] != nil {
                self.regionId = dict["region_id"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
            if dict.keys.contains("security_group_id") && dict["security_group_id"] != nil {
                self.securityGroupId = dict["security_group_id"] as! String
            }
            if dict.keys.contains("size") && dict["size"] != nil {
                self.size = dict["size"] as! Int64
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("subnet_cidr") && dict["subnet_cidr"] != nil {
                self.subnetCidr = dict["subnet_cidr"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Tag] = []
                for v in dict["tags"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
            if dict.keys.contains("vpc_id") && dict["vpc_id"] != nil {
                self.vpcId = dict["vpc_id"] as! String
            }
            if dict.keys.contains("vswitch_id") && dict["vswitch_id"] != nil {
                self.vswitchId = dict["vswitch_id"] as! String
            }
            if dict.keys.contains("worker_ram_role_name") && dict["worker_ram_role_name"] != nil {
                self.workerRamRoleName = dict["worker_ram_role_name"] as! String
            }
            if dict.keys.contains("zone_id") && dict["zone_id"] != nil {
                self.zoneId = dict["zone_id"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.pageNumber != nil {
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int32
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int32
            }
        }
    }
    public var clusters: [DescribeClustersV1ResponseBody.Clusters]?

    public var pageInfo: DescribeClustersV1ResponseBody.PageInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            var tmp : [Any] = []
            for k in self.clusters! {
                tmp.append(k.toMap())
            }
            map["clusters"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("clusters") && dict["clusters"] != nil {
            var tmp : [DescribeClustersV1ResponseBody.Clusters] = []
            for v in dict["clusters"] as! [Any] {
                var model = DescribeClustersV1ResponseBody.Clusters()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.clusters = tmp
        }
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeClustersV1ResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
    }
}

public class DescribeClustersV1Response : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClustersV1ResponseBody?

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
            var model = DescribeClustersV1ResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEdgeMachineActiveProcessResponseBody : Tea.TeaModel {
    public var logs: String?

    public var progress: Int64?

    public var requestId: String?

    public var state: String?

    public var step: String?

    public override init() {
        super.init()
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
            map["logs"] = self.logs!
        }
        if self.progress != nil {
            map["progress"] = self.progress!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.step != nil {
            map["step"] = self.step!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("logs") && dict["logs"] != nil {
            self.logs = dict["logs"] as! String
        }
        if dict.keys.contains("progress") && dict["progress"] != nil {
            self.progress = dict["progress"] as! Int64
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("step") && dict["step"] != nil {
            self.step = dict["step"] as! String
        }
    }
}

public class DescribeEdgeMachineActiveProcessResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEdgeMachineActiveProcessResponseBody?

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
            var model = DescribeEdgeMachineActiveProcessResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEdgeMachineModelsResponseBody : Tea.TeaModel {
    public class Models : Tea.TeaModel {
        public var cpu: Int32?

        public var cpuArch: String?

        public var created: String?

        public var description_: String?

        public var manageRuntime: Int32?

        public var memory: Int32?

        public var model: String?

        public var modelId: String?

        public override init() {
            super.init()
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
                map["cpu"] = self.cpu!
            }
            if self.cpuArch != nil {
                map["cpu_arch"] = self.cpuArch!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.manageRuntime != nil {
                map["manage_runtime"] = self.manageRuntime!
            }
            if self.memory != nil {
                map["memory"] = self.memory!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.modelId != nil {
                map["model_id"] = self.modelId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cpu") && dict["cpu"] != nil {
                self.cpu = dict["cpu"] as! Int32
            }
            if dict.keys.contains("cpu_arch") && dict["cpu_arch"] != nil {
                self.cpuArch = dict["cpu_arch"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("manage_runtime") && dict["manage_runtime"] != nil {
                self.manageRuntime = dict["manage_runtime"] as! Int32
            }
            if dict.keys.contains("memory") && dict["memory"] != nil {
                self.memory = dict["memory"] as! Int32
            }
            if dict.keys.contains("model") && dict["model"] != nil {
                self.model = dict["model"] as! String
            }
            if dict.keys.contains("model_id") && dict["model_id"] != nil {
                self.modelId = dict["model_id"] as! String
            }
        }
    }
    public var models: [DescribeEdgeMachineModelsResponseBody.Models]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.models != nil {
            var tmp : [Any] = []
            for k in self.models! {
                tmp.append(k.toMap())
            }
            map["models"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("models") && dict["models"] != nil {
            var tmp : [DescribeEdgeMachineModelsResponseBody.Models] = []
            for v in dict["models"] as! [Any] {
                var model = DescribeEdgeMachineModelsResponseBody.Models()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.models = tmp
        }
    }
}

public class DescribeEdgeMachineModelsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEdgeMachineModelsResponseBody?

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
            var model = DescribeEdgeMachineModelsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEdgeMachineTunnelConfigDetailResponseBody : Tea.TeaModel {
    public var deviceName: String?

    public var model: String?

    public var productKey: String?

    public var requestId: String?

    public var sn: String?

    public var token: String?

    public var tunnelEndpoint: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.deviceName != nil {
            map["device_name"] = self.deviceName!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.productKey != nil {
            map["product_key"] = self.productKey!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.sn != nil {
            map["sn"] = self.sn!
        }
        if self.token != nil {
            map["token"] = self.token!
        }
        if self.tunnelEndpoint != nil {
            map["tunnel_endpoint"] = self.tunnelEndpoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("device_name") && dict["device_name"] != nil {
            self.deviceName = dict["device_name"] as! String
        }
        if dict.keys.contains("model") && dict["model"] != nil {
            self.model = dict["model"] as! String
        }
        if dict.keys.contains("product_key") && dict["product_key"] != nil {
            self.productKey = dict["product_key"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("sn") && dict["sn"] != nil {
            self.sn = dict["sn"] as! String
        }
        if dict.keys.contains("token") && dict["token"] != nil {
            self.token = dict["token"] as! String
        }
        if dict.keys.contains("tunnel_endpoint") && dict["tunnel_endpoint"] != nil {
            self.tunnelEndpoint = dict["tunnel_endpoint"] as! String
        }
    }
}

public class DescribeEdgeMachineTunnelConfigDetailResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEdgeMachineTunnelConfigDetailResponseBody?

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
            var model = DescribeEdgeMachineTunnelConfigDetailResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEdgeMachinesRequest : Tea.TeaModel {
    public var hostname: String?

    public var lifeState: String?

    public var model: String?

    public var onlineState: String?

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
        if self.hostname != nil {
            map["hostname"] = self.hostname!
        }
        if self.lifeState != nil {
            map["life_state"] = self.lifeState!
        }
        if self.model != nil {
            map["model"] = self.model!
        }
        if self.onlineState != nil {
            map["online_state"] = self.onlineState!
        }
        if self.pageNumber != nil {
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("hostname") && dict["hostname"] != nil {
            self.hostname = dict["hostname"] as! String
        }
        if dict.keys.contains("life_state") && dict["life_state"] != nil {
            self.lifeState = dict["life_state"] as! String
        }
        if dict.keys.contains("model") && dict["model"] != nil {
            self.model = dict["model"] as! String
        }
        if dict.keys.contains("online_state") && dict["online_state"] != nil {
            self.onlineState = dict["online_state"] as! String
        }
        if dict.keys.contains("page_number") && dict["page_number"] != nil {
            self.pageNumber = dict["page_number"] as! Int64
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int64
        }
    }
}

public class DescribeEdgeMachinesResponseBody : Tea.TeaModel {
    public class EdgeMachines : Tea.TeaModel {
        public var activeTime: String?

        public var created: String?

        public var edgeMachineId: String?

        public var hostname: String?

        public var lifeState: String?

        public var model: String?

        public var name: String?

        public var onlineState: String?

        public var sn: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.activeTime != nil {
                map["active_time"] = self.activeTime!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.edgeMachineId != nil {
                map["edge_machine_id"] = self.edgeMachineId!
            }
            if self.hostname != nil {
                map["hostname"] = self.hostname!
            }
            if self.lifeState != nil {
                map["life_state"] = self.lifeState!
            }
            if self.model != nil {
                map["model"] = self.model!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.onlineState != nil {
                map["online_state"] = self.onlineState!
            }
            if self.sn != nil {
                map["sn"] = self.sn!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("active_time") && dict["active_time"] != nil {
                self.activeTime = dict["active_time"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("edge_machine_id") && dict["edge_machine_id"] != nil {
                self.edgeMachineId = dict["edge_machine_id"] as! String
            }
            if dict.keys.contains("hostname") && dict["hostname"] != nil {
                self.hostname = dict["hostname"] as! String
            }
            if dict.keys.contains("life_state") && dict["life_state"] != nil {
                self.lifeState = dict["life_state"] as! String
            }
            if dict.keys.contains("model") && dict["model"] != nil {
                self.model = dict["model"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("online_state") && dict["online_state"] != nil {
                self.onlineState = dict["online_state"] as! String
            }
            if dict.keys.contains("sn") && dict["sn"] != nil {
                self.sn = dict["sn"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int32?

        public var pageSize: Int32?

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
            if self.pageNumber != nil {
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int32
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int32
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int32
            }
        }
    }
    public var edgeMachines: [DescribeEdgeMachinesResponseBody.EdgeMachines]?

    public var pageInfo: DescribeEdgeMachinesResponseBody.PageInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.edgeMachines != nil {
            var tmp : [Any] = []
            for k in self.edgeMachines! {
                tmp.append(k.toMap())
            }
            map["edge_machines"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("edge_machines") && dict["edge_machines"] != nil {
            var tmp : [DescribeEdgeMachinesResponseBody.EdgeMachines] = []
            for v in dict["edge_machines"] as! [Any] {
                var model = DescribeEdgeMachinesResponseBody.EdgeMachines()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.edgeMachines = tmp
        }
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeEdgeMachinesResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
    }
}

public class DescribeEdgeMachinesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEdgeMachinesResponseBody?

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
            var model = DescribeEdgeMachinesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEventsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int64?

    public var pageSize: Int64?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.pageNumber != nil {
            map["page_number"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("page_number") && dict["page_number"] != nil {
            self.pageNumber = dict["page_number"] as! Int64
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int64
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class DescribeEventsResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public class Data : Tea.TeaModel {
            public var level: String?

            public var message: String?

            public var reason: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.level != nil {
                    map["level"] = self.level!
                }
                if self.message != nil {
                    map["message"] = self.message!
                }
                if self.reason != nil {
                    map["reason"] = self.reason!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("level") && dict["level"] != nil {
                    self.level = dict["level"] as! String
                }
                if dict.keys.contains("message") && dict["message"] != nil {
                    self.message = dict["message"] as! String
                }
                if dict.keys.contains("reason") && dict["reason"] != nil {
                    self.reason = dict["reason"] as! String
                }
            }
        }
        public var clusterId: String?

        public var data: DescribeEventsResponseBody.Events.Data?

        public var eventId: String?

        public var source: String?

        public var subject: String?

        public var time: String?

        public var type: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.data?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.data != nil {
                map["data"] = self.data?.toMap()
            }
            if self.eventId != nil {
                map["event_id"] = self.eventId!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.subject != nil {
                map["subject"] = self.subject!
            }
            if self.time != nil {
                map["time"] = self.time!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("data") && dict["data"] != nil {
                var model = DescribeEventsResponseBody.Events.Data()
                model.fromMap(dict["data"] as! [String: Any])
                self.data = model
            }
            if dict.keys.contains("event_id") && dict["event_id"] != nil {
                self.eventId = dict["event_id"] as! String
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("subject") && dict["subject"] != nil {
                self.subject = dict["subject"] as! String
            }
            if dict.keys.contains("time") && dict["time"] != nil {
                self.time = dict["time"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int64
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int64
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int64
            }
        }
    }
    public var events: [DescribeEventsResponseBody.Events]?

    public var pageInfo: DescribeEventsResponseBody.PageInfo?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("events") && dict["events"] != nil {
            var tmp : [DescribeEventsResponseBody.Events] = []
            for v in dict["events"] as! [Any] {
                var model = DescribeEventsResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeEventsResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
    }
}

public class DescribeEventsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEventsResponseBody?

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
            var model = DescribeEventsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeExternalAgentRequest : Tea.TeaModel {
    public var agentMode: String?

    public var privateIpAddress: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.agentMode != nil {
            map["AgentMode"] = self.agentMode!
        }
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AgentMode") && dict["AgentMode"] != nil {
            self.agentMode = dict["AgentMode"] as! String
        }
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
    }
}

public class DescribeExternalAgentResponseBody : Tea.TeaModel {
    public var config: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
    }
}

public class DescribeExternalAgentResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeExternalAgentResponseBody?

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
            var model = DescribeExternalAgentResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeKubernetesVersionMetadataRequest : Tea.TeaModel {
    public var clusterType: String?

    public var kubernetesVersion: String?

    public var mode: String?

    public var profile: String?

    public var region: String?

    public var runtime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.kubernetesVersion != nil {
            map["KubernetesVersion"] = self.kubernetesVersion!
        }
        if self.mode != nil {
            map["Mode"] = self.mode!
        }
        if self.profile != nil {
            map["Profile"] = self.profile!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterType") && dict["ClusterType"] != nil {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("KubernetesVersion") && dict["KubernetesVersion"] != nil {
            self.kubernetesVersion = dict["KubernetesVersion"] as! String
        }
        if dict.keys.contains("Mode") && dict["Mode"] != nil {
            self.mode = dict["Mode"] as! String
        }
        if dict.keys.contains("Profile") && dict["Profile"] != nil {
            self.profile = dict["Profile"] as! String
        }
        if dict.keys.contains("Region") && dict["Region"] != nil {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            self.runtime = dict["runtime"] as! String
        }
    }
}

public class DescribeKubernetesVersionMetadataResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var imageId: String?

            public var imageName: String?

            public var platform: String?

            public var osVersion: String?

            public var imageType: String?

            public var osType: String?

            public var imageCategory: String?

            public var architecture: String?

            public override init() {
                super.init()
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
                    map["image_id"] = self.imageId!
                }
                if self.imageName != nil {
                    map["image_name"] = self.imageName!
                }
                if self.platform != nil {
                    map["platform"] = self.platform!
                }
                if self.osVersion != nil {
                    map["os_version"] = self.osVersion!
                }
                if self.imageType != nil {
                    map["image_type"] = self.imageType!
                }
                if self.osType != nil {
                    map["os_type"] = self.osType!
                }
                if self.imageCategory != nil {
                    map["image_category"] = self.imageCategory!
                }
                if self.architecture != nil {
                    map["architecture"] = self.architecture!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("image_id") && dict["image_id"] != nil {
                    self.imageId = dict["image_id"] as! String
                }
                if dict.keys.contains("image_name") && dict["image_name"] != nil {
                    self.imageName = dict["image_name"] as! String
                }
                if dict.keys.contains("platform") && dict["platform"] != nil {
                    self.platform = dict["platform"] as! String
                }
                if dict.keys.contains("os_version") && dict["os_version"] != nil {
                    self.osVersion = dict["os_version"] as! String
                }
                if dict.keys.contains("image_type") && dict["image_type"] != nil {
                    self.imageType = dict["image_type"] as! String
                }
                if dict.keys.contains("os_type") && dict["os_type"] != nil {
                    self.osType = dict["os_type"] as! String
                }
                if dict.keys.contains("image_category") && dict["image_category"] != nil {
                    self.imageCategory = dict["image_category"] as! String
                }
                if dict.keys.contains("architecture") && dict["architecture"] != nil {
                    self.architecture = dict["architecture"] as! String
                }
            }
        }
        public var capabilities: [String: Any]?

        public var images: [DescribeKubernetesVersionMetadataResponse.Body.Images]?

        public var metaData: [String: Any]?

        public var runtimes: [Runtime]?

        public var version: String?

        public var releaseDate: String?

        public var expirationDate: String?

        public var creatable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capabilities != nil {
                map["capabilities"] = self.capabilities!
            }
            if self.images != nil {
                var tmp : [Any] = []
                for k in self.images! {
                    tmp.append(k.toMap())
                }
                map["images"] = tmp
            }
            if self.metaData != nil {
                map["meta_data"] = self.metaData!
            }
            if self.runtimes != nil {
                var tmp : [Any] = []
                for k in self.runtimes! {
                    tmp.append(k.toMap())
                }
                map["runtimes"] = tmp
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            if self.releaseDate != nil {
                map["release_date"] = self.releaseDate!
            }
            if self.expirationDate != nil {
                map["expiration_date"] = self.expirationDate!
            }
            if self.creatable != nil {
                map["creatable"] = self.creatable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("capabilities") && dict["capabilities"] != nil {
                self.capabilities = dict["capabilities"] as! [String: Any]
            }
            if dict.keys.contains("images") && dict["images"] != nil {
                var tmp : [DescribeKubernetesVersionMetadataResponse.Body.Images] = []
                for v in dict["images"] as! [Any] {
                    var model = DescribeKubernetesVersionMetadataResponse.Body.Images()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.images = tmp
            }
            if dict.keys.contains("meta_data") && dict["meta_data"] != nil {
                self.metaData = dict["meta_data"] as! [String: Any]
            }
            if dict.keys.contains("runtimes") && dict["runtimes"] != nil {
                var tmp : [Runtime] = []
                for v in dict["runtimes"] as! [Any] {
                    var model = Runtime()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.runtimes = tmp
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
            if dict.keys.contains("release_date") && dict["release_date"] != nil {
                self.releaseDate = dict["release_date"] as! String
            }
            if dict.keys.contains("expiration_date") && dict["expiration_date"] != nil {
                self.expirationDate = dict["expiration_date"] as! String
            }
            if dict.keys.contains("creatable") && dict["creatable"] != nil {
                self.creatable = dict["creatable"] as! Bool
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeKubernetesVersionMetadataResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeKubernetesVersionMetadataResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeKubernetesVersionMetadataResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeNodePoolVulsRequest : Tea.TeaModel {
    public var necessity: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.necessity != nil {
            map["necessity"] = self.necessity!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("necessity") && dict["necessity"] != nil {
            self.necessity = dict["necessity"] as! String
        }
    }
}

public class DescribeNodePoolVulsResponseBody : Tea.TeaModel {
    public class VulRecords : Tea.TeaModel {
        public class VulList : Tea.TeaModel {
            public var aliasName: String?

            public var cveList: [String]?

            public var name: String?

            public var necessity: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aliasName != nil {
                    map["alias_name"] = self.aliasName!
                }
                if self.cveList != nil {
                    map["cve_list"] = self.cveList!
                }
                if self.name != nil {
                    map["name"] = self.name!
                }
                if self.necessity != nil {
                    map["necessity"] = self.necessity!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("alias_name") && dict["alias_name"] != nil {
                    self.aliasName = dict["alias_name"] as! String
                }
                if dict.keys.contains("cve_list") && dict["cve_list"] != nil {
                    self.cveList = dict["cve_list"] as! [String]
                }
                if dict.keys.contains("name") && dict["name"] != nil {
                    self.name = dict["name"] as! String
                }
                if dict.keys.contains("necessity") && dict["necessity"] != nil {
                    self.necessity = dict["necessity"] as! String
                }
            }
        }
        public var instanceId: String?

        public var nodeName: String?

        public var vulList: [DescribeNodePoolVulsResponseBody.VulRecords.VulList]?

        public override init() {
            super.init()
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
                map["instance_id"] = self.instanceId!
            }
            if self.nodeName != nil {
                map["node_name"] = self.nodeName!
            }
            if self.vulList != nil {
                var tmp : [Any] = []
                for k in self.vulList! {
                    tmp.append(k.toMap())
                }
                map["vul_list"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("instance_id") && dict["instance_id"] != nil {
                self.instanceId = dict["instance_id"] as! String
            }
            if dict.keys.contains("node_name") && dict["node_name"] != nil {
                self.nodeName = dict["node_name"] as! String
            }
            if dict.keys.contains("vul_list") && dict["vul_list"] != nil {
                var tmp : [DescribeNodePoolVulsResponseBody.VulRecords.VulList] = []
                for v in dict["vul_list"] as! [Any] {
                    var model = DescribeNodePoolVulsResponseBody.VulRecords.VulList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.vulList = tmp
            }
        }
    }
    public var vulRecords: [DescribeNodePoolVulsResponseBody.VulRecords]?

    public var vulsFixServicePurchased: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.vulRecords != nil {
            var tmp : [Any] = []
            for k in self.vulRecords! {
                tmp.append(k.toMap())
            }
            map["vul_records"] = tmp
        }
        if self.vulsFixServicePurchased != nil {
            map["vuls_fix_service_purchased"] = self.vulsFixServicePurchased!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("vul_records") && dict["vul_records"] != nil {
            var tmp : [DescribeNodePoolVulsResponseBody.VulRecords] = []
            for v in dict["vul_records"] as! [Any] {
                var model = DescribeNodePoolVulsResponseBody.VulRecords()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.vulRecords = tmp
        }
        if dict.keys.contains("vuls_fix_service_purchased") && dict["vuls_fix_service_purchased"] != nil {
            self.vulsFixServicePurchased = dict["vuls_fix_service_purchased"] as! Bool
        }
    }
}

public class DescribeNodePoolVulsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNodePoolVulsResponseBody?

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
            var model = DescribeNodePoolVulsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePoliciesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String: Any]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String: Any]
        }
    }
}

public class DescribePolicyDetailsResponseBody : Tea.TeaModel {
    public var action: String?

    public var category: String?

    public var description_: String?

    public var isDeleted: Int32?

    public var name: String?

    public var noConfig: Int32?

    public var severity: String?

    public var template: String?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        if self.category != nil {
            map["category"] = self.category!
        }
        if self.description_ != nil {
            map["description"] = self.description_!
        }
        if self.isDeleted != nil {
            map["is_deleted"] = self.isDeleted!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.noConfig != nil {
            map["no_config"] = self.noConfig!
        }
        if self.severity != nil {
            map["severity"] = self.severity!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("category") && dict["category"] != nil {
            self.category = dict["category"] as! String
        }
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("is_deleted") && dict["is_deleted"] != nil {
            self.isDeleted = dict["is_deleted"] as! Int32
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("no_config") && dict["no_config"] != nil {
            self.noConfig = dict["no_config"] as! Int32
        }
        if dict.keys.contains("severity") && dict["severity"] != nil {
            self.severity = dict["severity"] as! String
        }
        if dict.keys.contains("template") && dict["template"] != nil {
            self.template = dict["template"] as! String
        }
    }
}

public class DescribePolicyDetailsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyDetailsResponseBody?

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
            var model = DescribePolicyDetailsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyGovernanceInClusterResponseBody : Tea.TeaModel {
    public class AdmitLog : Tea.TeaModel {
        public class Log : Tea.TeaModel {
            public var clusterId: String?

            public var constraintKind: String?

            public var msg: String?

            public var resourceKind: String?

            public var resourceName: String?

            public var resourceNamespace: String?

            public override init() {
                super.init()
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
                    map["cluster_id"] = self.clusterId!
                }
                if self.constraintKind != nil {
                    map["constraint_kind"] = self.constraintKind!
                }
                if self.msg != nil {
                    map["msg"] = self.msg!
                }
                if self.resourceKind != nil {
                    map["resource_kind"] = self.resourceKind!
                }
                if self.resourceName != nil {
                    map["resource_name"] = self.resourceName!
                }
                if self.resourceNamespace != nil {
                    map["resource_namespace"] = self.resourceNamespace!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                    self.clusterId = dict["cluster_id"] as! String
                }
                if dict.keys.contains("constraint_kind") && dict["constraint_kind"] != nil {
                    self.constraintKind = dict["constraint_kind"] as! String
                }
                if dict.keys.contains("msg") && dict["msg"] != nil {
                    self.msg = dict["msg"] as! String
                }
                if dict.keys.contains("resource_kind") && dict["resource_kind"] != nil {
                    self.resourceKind = dict["resource_kind"] as! String
                }
                if dict.keys.contains("resource_name") && dict["resource_name"] != nil {
                    self.resourceName = dict["resource_name"] as! String
                }
                if dict.keys.contains("resource_namespace") && dict["resource_namespace"] != nil {
                    self.resourceNamespace = dict["resource_namespace"] as! String
                }
            }
        }
        public var count: Int64?

        public var log: DescribePolicyGovernanceInClusterResponseBody.AdmitLog.Log?

        public var progress: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.log?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.log != nil {
                map["log"] = self.log?.toMap()
            }
            if self.progress != nil {
                map["progress"] = self.progress!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("count") && dict["count"] != nil {
                self.count = dict["count"] as! Int64
            }
            if dict.keys.contains("log") && dict["log"] != nil {
                var model = DescribePolicyGovernanceInClusterResponseBody.AdmitLog.Log()
                model.fromMap(dict["log"] as! [String: Any])
                self.log = model
            }
            if dict.keys.contains("progress") && dict["progress"] != nil {
                self.progress = dict["progress"] as! String
            }
        }
    }
    public class OnState : Tea.TeaModel {
        public var enabledCount: Int32?

        public var severity: String?

        public var total: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabledCount != nil {
                map["enabled_count"] = self.enabledCount!
            }
            if self.severity != nil {
                map["severity"] = self.severity!
            }
            if self.total != nil {
                map["total"] = self.total!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enabled_count") && dict["enabled_count"] != nil {
                self.enabledCount = dict["enabled_count"] as! Int32
            }
            if dict.keys.contains("severity") && dict["severity"] != nil {
                self.severity = dict["severity"] as! String
            }
            if dict.keys.contains("total") && dict["total"] != nil {
                self.total = dict["total"] as! Int32
            }
        }
    }
    public class TotalViolations : Tea.TeaModel {
        public class Deny : Tea.TeaModel {
            public var severity: String?

            public var violations: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.severity != nil {
                    map["severity"] = self.severity!
                }
                if self.violations != nil {
                    map["violations"] = self.violations!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("severity") && dict["severity"] != nil {
                    self.severity = dict["severity"] as! String
                }
                if dict.keys.contains("violations") && dict["violations"] != nil {
                    self.violations = dict["violations"] as! Int64
                }
            }
        }
        public class Warn : Tea.TeaModel {
            public var severity: String?

            public var violations: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.severity != nil {
                    map["severity"] = self.severity!
                }
                if self.violations != nil {
                    map["violations"] = self.violations!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("severity") && dict["severity"] != nil {
                    self.severity = dict["severity"] as! String
                }
                if dict.keys.contains("violations") && dict["violations"] != nil {
                    self.violations = dict["violations"] as! Int64
                }
            }
        }
        public var deny: DescribePolicyGovernanceInClusterResponseBody.TotalViolations.Deny?

        public var warn: DescribePolicyGovernanceInClusterResponseBody.TotalViolations.Warn?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deny?.validate()
            try self.warn?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deny != nil {
                map["deny"] = self.deny?.toMap()
            }
            if self.warn != nil {
                map["warn"] = self.warn?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deny") && dict["deny"] != nil {
                var model = DescribePolicyGovernanceInClusterResponseBody.TotalViolations.Deny()
                model.fromMap(dict["deny"] as! [String: Any])
                self.deny = model
            }
            if dict.keys.contains("warn") && dict["warn"] != nil {
                var model = DescribePolicyGovernanceInClusterResponseBody.TotalViolations.Warn()
                model.fromMap(dict["warn"] as! [String: Any])
                self.warn = model
            }
        }
    }
    public class Violations : Tea.TeaModel {
        public class Deny : Tea.TeaModel {
            public var policyDescription: String?

            public var policyName: String?

            public var severity: String?

            public var violations: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyDescription != nil {
                    map["policyDescription"] = self.policyDescription!
                }
                if self.policyName != nil {
                    map["policyName"] = self.policyName!
                }
                if self.severity != nil {
                    map["severity"] = self.severity!
                }
                if self.violations != nil {
                    map["violations"] = self.violations!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("policyDescription") && dict["policyDescription"] != nil {
                    self.policyDescription = dict["policyDescription"] as! String
                }
                if dict.keys.contains("policyName") && dict["policyName"] != nil {
                    self.policyName = dict["policyName"] as! String
                }
                if dict.keys.contains("severity") && dict["severity"] != nil {
                    self.severity = dict["severity"] as! String
                }
                if dict.keys.contains("violations") && dict["violations"] != nil {
                    self.violations = dict["violations"] as! Int64
                }
            }
        }
        public class Warn : Tea.TeaModel {
            public var policyDescription: String?

            public var policyName: String?

            public var severity: String?

            public var violations: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.policyDescription != nil {
                    map["policyDescription"] = self.policyDescription!
                }
                if self.policyName != nil {
                    map["policyName"] = self.policyName!
                }
                if self.severity != nil {
                    map["severity"] = self.severity!
                }
                if self.violations != nil {
                    map["violations"] = self.violations!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("policyDescription") && dict["policyDescription"] != nil {
                    self.policyDescription = dict["policyDescription"] as! String
                }
                if dict.keys.contains("policyName") && dict["policyName"] != nil {
                    self.policyName = dict["policyName"] as! String
                }
                if dict.keys.contains("severity") && dict["severity"] != nil {
                    self.severity = dict["severity"] as! String
                }
                if dict.keys.contains("violations") && dict["violations"] != nil {
                    self.violations = dict["violations"] as! Int64
                }
            }
        }
        public var deny: DescribePolicyGovernanceInClusterResponseBody.Violations.Deny?

        public var warn: DescribePolicyGovernanceInClusterResponseBody.Violations.Warn?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.deny?.validate()
            try self.warn?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.deny != nil {
                map["deny"] = self.deny?.toMap()
            }
            if self.warn != nil {
                map["warn"] = self.warn?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("deny") && dict["deny"] != nil {
                var model = DescribePolicyGovernanceInClusterResponseBody.Violations.Deny()
                model.fromMap(dict["deny"] as! [String: Any])
                self.deny = model
            }
            if dict.keys.contains("warn") && dict["warn"] != nil {
                var model = DescribePolicyGovernanceInClusterResponseBody.Violations.Warn()
                model.fromMap(dict["warn"] as! [String: Any])
                self.warn = model
            }
        }
    }
    public var admitLog: DescribePolicyGovernanceInClusterResponseBody.AdmitLog?

    public var onState: [DescribePolicyGovernanceInClusterResponseBody.OnState]?

    public var totalViolations: DescribePolicyGovernanceInClusterResponseBody.TotalViolations?

    public var violations: DescribePolicyGovernanceInClusterResponseBody.Violations?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.admitLog?.validate()
        try self.totalViolations?.validate()
        try self.violations?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.admitLog != nil {
            map["admit_log"] = self.admitLog?.toMap()
        }
        if self.onState != nil {
            var tmp : [Any] = []
            for k in self.onState! {
                tmp.append(k.toMap())
            }
            map["on_state"] = tmp
        }
        if self.totalViolations != nil {
            map["totalViolations"] = self.totalViolations?.toMap()
        }
        if self.violations != nil {
            map["violations"] = self.violations?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("admit_log") && dict["admit_log"] != nil {
            var model = DescribePolicyGovernanceInClusterResponseBody.AdmitLog()
            model.fromMap(dict["admit_log"] as! [String: Any])
            self.admitLog = model
        }
        if dict.keys.contains("on_state") && dict["on_state"] != nil {
            var tmp : [DescribePolicyGovernanceInClusterResponseBody.OnState] = []
            for v in dict["on_state"] as! [Any] {
                var model = DescribePolicyGovernanceInClusterResponseBody.OnState()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.onState = tmp
        }
        if dict.keys.contains("totalViolations") && dict["totalViolations"] != nil {
            var model = DescribePolicyGovernanceInClusterResponseBody.TotalViolations()
            model.fromMap(dict["totalViolations"] as! [String: Any])
            self.totalViolations = model
        }
        if dict.keys.contains("violations") && dict["violations"] != nil {
            var model = DescribePolicyGovernanceInClusterResponseBody.Violations()
            model.fromMap(dict["violations"] as! [String: Any])
            self.violations = model
        }
    }
}

public class DescribePolicyGovernanceInClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyGovernanceInClusterResponseBody?

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
            var model = DescribePolicyGovernanceInClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePolicyInstancesRequest : Tea.TeaModel {
    public var instanceName: String?

    public var policyName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceName != nil {
            map["instance_name"] = self.instanceName!
        }
        if self.policyName != nil {
            map["policy_name"] = self.policyName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instance_name") && dict["instance_name"] != nil {
            self.instanceName = dict["instance_name"] as! String
        }
        if dict.keys.contains("policy_name") && dict["policy_name"] != nil {
            self.policyName = dict["policy_name"] as! String
        }
    }
}

public class DescribePolicyInstancesResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var aliUid: String?

        public var clusterId: String?

        public var instanceName: String?

        public var policyName: String?

        public var policyCategory: String?

        public var policyDescription: String?

        public var policyParameters: String?

        public var policySeverity: String?

        public var policyScope: String?

        public var policyAction: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aliUid != nil {
                map["ali_uid"] = self.aliUid!
            }
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.instanceName != nil {
                map["instance_name"] = self.instanceName!
            }
            if self.policyName != nil {
                map["policy_name"] = self.policyName!
            }
            if self.policyCategory != nil {
                map["policy_category"] = self.policyCategory!
            }
            if self.policyDescription != nil {
                map["policy_description"] = self.policyDescription!
            }
            if self.policyParameters != nil {
                map["policy_parameters"] = self.policyParameters!
            }
            if self.policySeverity != nil {
                map["policy_severity"] = self.policySeverity!
            }
            if self.policyScope != nil {
                map["policy_scope"] = self.policyScope!
            }
            if self.policyAction != nil {
                map["policy_action"] = self.policyAction!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ali_uid") && dict["ali_uid"] != nil {
                self.aliUid = dict["ali_uid"] as! String
            }
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("instance_name") && dict["instance_name"] != nil {
                self.instanceName = dict["instance_name"] as! String
            }
            if dict.keys.contains("policy_name") && dict["policy_name"] != nil {
                self.policyName = dict["policy_name"] as! String
            }
            if dict.keys.contains("policy_category") && dict["policy_category"] != nil {
                self.policyCategory = dict["policy_category"] as! String
            }
            if dict.keys.contains("policy_description") && dict["policy_description"] != nil {
                self.policyDescription = dict["policy_description"] as! String
            }
            if dict.keys.contains("policy_parameters") && dict["policy_parameters"] != nil {
                self.policyParameters = dict["policy_parameters"] as! String
            }
            if dict.keys.contains("policy_severity") && dict["policy_severity"] != nil {
                self.policySeverity = dict["policy_severity"] as! String
            }
            if dict.keys.contains("policy_scope") && dict["policy_scope"] != nil {
                self.policyScope = dict["policy_scope"] as! String
            }
            if dict.keys.contains("policy_action") && dict["policy_action"] != nil {
                self.policyAction = dict["policy_action"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribePolicyInstancesResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribePolicyInstancesResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribePolicyInstancesResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribePolicyInstancesStatusResponseBody : Tea.TeaModel {
    public class PolicyInstances : Tea.TeaModel {
        public var policyCategory: String?

        public var policyDescription: String?

        public var policyInstancesCount: Int64?

        public var policyName: String?

        public var policySeverity: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.policyCategory != nil {
                map["policy_category"] = self.policyCategory!
            }
            if self.policyDescription != nil {
                map["policy_description"] = self.policyDescription!
            }
            if self.policyInstancesCount != nil {
                map["policy_instances_count"] = self.policyInstancesCount!
            }
            if self.policyName != nil {
                map["policy_name"] = self.policyName!
            }
            if self.policySeverity != nil {
                map["policy_severity"] = self.policySeverity!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("policy_category") && dict["policy_category"] != nil {
                self.policyCategory = dict["policy_category"] as! String
            }
            if dict.keys.contains("policy_description") && dict["policy_description"] != nil {
                self.policyDescription = dict["policy_description"] as! String
            }
            if dict.keys.contains("policy_instances_count") && dict["policy_instances_count"] != nil {
                self.policyInstancesCount = dict["policy_instances_count"] as! Int64
            }
            if dict.keys.contains("policy_name") && dict["policy_name"] != nil {
                self.policyName = dict["policy_name"] as! String
            }
            if dict.keys.contains("policy_severity") && dict["policy_severity"] != nil {
                self.policySeverity = dict["policy_severity"] as! String
            }
        }
    }
    public var instancesSeverityCount: [String: Any]?

    public var policyInstances: [DescribePolicyInstancesStatusResponseBody.PolicyInstances]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instancesSeverityCount != nil {
            map["instances_severity_count"] = self.instancesSeverityCount!
        }
        if self.policyInstances != nil {
            var tmp : [Any] = []
            for k in self.policyInstances! {
                tmp.append(k.toMap())
            }
            map["policy_instances"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances_severity_count") && dict["instances_severity_count"] != nil {
            self.instancesSeverityCount = dict["instances_severity_count"] as! [String: Any]
        }
        if dict.keys.contains("policy_instances") && dict["policy_instances"] != nil {
            var tmp : [DescribePolicyInstancesStatusResponseBody.PolicyInstances] = []
            for v in dict["policy_instances"] as! [Any] {
                var model = DescribePolicyInstancesStatusResponseBody.PolicyInstances()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.policyInstances = tmp
        }
    }
}

public class DescribePolicyInstancesStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePolicyInstancesStatusResponseBody?

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
            var model = DescribePolicyInstancesStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeSubaccountK8sClusterUserConfigRequest : Tea.TeaModel {
    public var privateIpAddress: Bool?

    public var temporaryDurationMinutes: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.privateIpAddress != nil {
            map["PrivateIpAddress"] = self.privateIpAddress!
        }
        if self.temporaryDurationMinutes != nil {
            map["TemporaryDurationMinutes"] = self.temporaryDurationMinutes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PrivateIpAddress") && dict["PrivateIpAddress"] != nil {
            self.privateIpAddress = dict["PrivateIpAddress"] as! Bool
        }
        if dict.keys.contains("TemporaryDurationMinutes") && dict["TemporaryDurationMinutes"] != nil {
            self.temporaryDurationMinutes = dict["TemporaryDurationMinutes"] as! Int64
        }
    }
}

public class DescribeSubaccountK8sClusterUserConfigResponseBody : Tea.TeaModel {
    public var config: String?

    public var expiration: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.expiration != nil {
            map["expiration"] = self.expiration!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("expiration") && dict["expiration"] != nil {
            self.expiration = dict["expiration"] as! String
        }
    }
}

public class DescribeSubaccountK8sClusterUserConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSubaccountK8sClusterUserConfigResponseBody?

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
            var model = DescribeSubaccountK8sClusterUserConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTaskInfoResponseBody : Tea.TeaModel {
    public class Error : Tea.TeaModel {
        public var code: String?

        public var message: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.code != nil {
                map["code"] = self.code!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("code") && dict["code"] != nil {
                self.code = dict["code"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
        }
    }
    public class Events : Tea.TeaModel {
        public var action: String?

        public var level: String?

        public var message: String?

        public var reason: String?

        public var source: String?

        public var timestamp: String?

        public override init() {
            super.init()
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
                map["action"] = self.action!
            }
            if self.level != nil {
                map["level"] = self.level!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.reason != nil {
                map["reason"] = self.reason!
            }
            if self.source != nil {
                map["source"] = self.source!
            }
            if self.timestamp != nil {
                map["timestamp"] = self.timestamp!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("action") && dict["action"] != nil {
                self.action = dict["action"] as! String
            }
            if dict.keys.contains("level") && dict["level"] != nil {
                self.level = dict["level"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("reason") && dict["reason"] != nil {
                self.reason = dict["reason"] as! String
            }
            if dict.keys.contains("source") && dict["source"] != nil {
                self.source = dict["source"] as! String
            }
            if dict.keys.contains("timestamp") && dict["timestamp"] != nil {
                self.timestamp = dict["timestamp"] as! String
            }
        }
    }
    public class Stages : Tea.TeaModel {
        public var endTime: String?

        public var message: String?

        public var outputs: [String: Any]?

        public var startTime: String?

        public var state: String?

        public override init() {
            super.init()
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
                map["end_time"] = self.endTime!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.outputs != nil {
                map["outputs"] = self.outputs!
            }
            if self.startTime != nil {
                map["start_time"] = self.startTime!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("end_time") && dict["end_time"] != nil {
                self.endTime = dict["end_time"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("outputs") && dict["outputs"] != nil {
                self.outputs = dict["outputs"] as! [String: Any]
            }
            if dict.keys.contains("start_time") && dict["start_time"] != nil {
                self.startTime = dict["start_time"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
        }
    }
    public class Target : Tea.TeaModel {
        public var id: String?

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
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class TaskResult : Tea.TeaModel {
        public var data: String?

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
            if self.data != nil {
                map["data"] = self.data!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("data") && dict["data"] != nil {
                self.data = dict["data"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var clusterId: String?

    public var created: String?

    public var currentStage: String?

    public var error: DescribeTaskInfoResponseBody.Error?

    public var events: [DescribeTaskInfoResponseBody.Events]?

    public var parameters: [String: Any]?

    public var stages: [DescribeTaskInfoResponseBody.Stages]?

    public var state: String?

    public var target: DescribeTaskInfoResponseBody.Target?

    public var taskId: String?

    public var taskResult: [DescribeTaskInfoResponseBody.TaskResult]?

    public var taskType: String?

    public var updated: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.error?.validate()
        try self.target?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.created != nil {
            map["created"] = self.created!
        }
        if self.currentStage != nil {
            map["current_stage"] = self.currentStage!
        }
        if self.error != nil {
            map["error"] = self.error?.toMap()
        }
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["events"] = tmp
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        if self.stages != nil {
            var tmp : [Any] = []
            for k in self.stages! {
                tmp.append(k.toMap())
            }
            map["stages"] = tmp
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.target != nil {
            map["target"] = self.target?.toMap()
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        if self.taskResult != nil {
            var tmp : [Any] = []
            for k in self.taskResult! {
                tmp.append(k.toMap())
            }
            map["task_result"] = tmp
        }
        if self.taskType != nil {
            map["task_type"] = self.taskType!
        }
        if self.updated != nil {
            map["updated"] = self.updated!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("created") && dict["created"] != nil {
            self.created = dict["created"] as! String
        }
        if dict.keys.contains("current_stage") && dict["current_stage"] != nil {
            self.currentStage = dict["current_stage"] as! String
        }
        if dict.keys.contains("error") && dict["error"] != nil {
            var model = DescribeTaskInfoResponseBody.Error()
            model.fromMap(dict["error"] as! [String: Any])
            self.error = model
        }
        if dict.keys.contains("events") && dict["events"] != nil {
            var tmp : [DescribeTaskInfoResponseBody.Events] = []
            for v in dict["events"] as! [Any] {
                var model = DescribeTaskInfoResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: Any]
        }
        if dict.keys.contains("stages") && dict["stages"] != nil {
            var tmp : [DescribeTaskInfoResponseBody.Stages] = []
            for v in dict["stages"] as! [Any] {
                var model = DescribeTaskInfoResponseBody.Stages()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.stages = tmp
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("target") && dict["target"] != nil {
            var model = DescribeTaskInfoResponseBody.Target()
            model.fromMap(dict["target"] as! [String: Any])
            self.target = model
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
        if dict.keys.contains("task_result") && dict["task_result"] != nil {
            var tmp : [DescribeTaskInfoResponseBody.TaskResult] = []
            for v in dict["task_result"] as! [Any] {
                var model = DescribeTaskInfoResponseBody.TaskResult()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taskResult = tmp
        }
        if dict.keys.contains("task_type") && dict["task_type"] != nil {
            self.taskType = dict["task_type"] as! String
        }
        if dict.keys.contains("updated") && dict["updated"] != nil {
            self.updated = dict["updated"] as! String
        }
    }
}

public class DescribeTaskInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTaskInfoResponseBody?

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
            var model = DescribeTaskInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTemplateAttributeRequest : Tea.TeaModel {
    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templateType != nil {
            map["template_type"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("template_type") && dict["template_type"] != nil {
            self.templateType = dict["template_type"] as! String
        }
    }
}

public class DescribeTemplateAttributeResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var id: String?

        public var acl: String?

        public var name: String?

        public var template: String?

        public var templateType: String?

        public var description_: String?

        public var tags: String?

        public var templateWithHistId: String?

        public var created: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            if self.templateType != nil {
                map["template_type"] = self.templateType!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.templateWithHistId != nil {
                map["template_with_hist_id"] = self.templateWithHistId!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("acl") && dict["acl"] != nil {
                self.acl = dict["acl"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("template") && dict["template"] != nil {
                self.template = dict["template"] as! String
            }
            if dict.keys.contains("template_type") && dict["template_type"] != nil {
                self.templateType = dict["template_type"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                self.tags = dict["tags"] as! String
            }
            if dict.keys.contains("template_with_hist_id") && dict["template_with_hist_id"] != nil {
                self.templateWithHistId = dict["template_with_hist_id"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeTemplateAttributeResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeTemplateAttributeResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeTemplateAttributeResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeTemplatesRequest : Tea.TeaModel {
    public var pageNum: Int64?

    public var pageSize: Int64?

    public var templateType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNum != nil {
            map["page_num"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["page_size"] = self.pageSize!
        }
        if self.templateType != nil {
            map["template_type"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_num") && dict["page_num"] != nil {
            self.pageNum = dict["page_num"] as! Int64
        }
        if dict.keys.contains("page_size") && dict["page_size"] != nil {
            self.pageSize = dict["page_size"] as! Int64
        }
        if dict.keys.contains("template_type") && dict["template_type"] != nil {
            self.templateType = dict["template_type"] as! String
        }
    }
}

public class DescribeTemplatesResponseBody : Tea.TeaModel {
    public class PageInfo : Tea.TeaModel {
        public var pageNumber: Int64?

        public var pageSize: Int64?

        public var totalCount: Int64?

        public override init() {
            super.init()
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
                map["page_number"] = self.pageNumber!
            }
            if self.pageSize != nil {
                map["page_size"] = self.pageSize!
            }
            if self.totalCount != nil {
                map["total_count"] = self.totalCount!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("page_number") && dict["page_number"] != nil {
                self.pageNumber = dict["page_number"] as! Int64
            }
            if dict.keys.contains("page_size") && dict["page_size"] != nil {
                self.pageSize = dict["page_size"] as! Int64
            }
            if dict.keys.contains("total_count") && dict["total_count"] != nil {
                self.totalCount = dict["total_count"] as! Int64
            }
        }
    }
    public class Templates : Tea.TeaModel {
        public var acl: String?

        public var created: String?

        public var description_: String?

        public var id: String?

        public var name: String?

        public var tags: String?

        public var template: String?

        public var templateType: String?

        public var templateWithHistId: String?

        public var updated: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.acl != nil {
                map["acl"] = self.acl!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.description_ != nil {
                map["description"] = self.description_!
            }
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.tags != nil {
                map["tags"] = self.tags!
            }
            if self.template != nil {
                map["template"] = self.template!
            }
            if self.templateType != nil {
                map["template_type"] = self.templateType!
            }
            if self.templateWithHistId != nil {
                map["template_with_hist_id"] = self.templateWithHistId!
            }
            if self.updated != nil {
                map["updated"] = self.updated!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("acl") && dict["acl"] != nil {
                self.acl = dict["acl"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("description") && dict["description"] != nil {
                self.description_ = dict["description"] as! String
            }
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                self.tags = dict["tags"] as! String
            }
            if dict.keys.contains("template") && dict["template"] != nil {
                self.template = dict["template"] as! String
            }
            if dict.keys.contains("template_type") && dict["template_type"] != nil {
                self.templateType = dict["template_type"] as! String
            }
            if dict.keys.contains("template_with_hist_id") && dict["template_with_hist_id"] != nil {
                self.templateWithHistId = dict["template_with_hist_id"] as! String
            }
            if dict.keys.contains("updated") && dict["updated"] != nil {
                self.updated = dict["updated"] as! String
            }
        }
    }
    public var pageInfo: DescribeTemplatesResponseBody.PageInfo?

    public var templates: [DescribeTemplatesResponseBody.Templates]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.pageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageInfo != nil {
            map["page_info"] = self.pageInfo?.toMap()
        }
        if self.templates != nil {
            var tmp : [Any] = []
            for k in self.templates! {
                tmp.append(k.toMap())
            }
            map["templates"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("page_info") && dict["page_info"] != nil {
            var model = DescribeTemplatesResponseBody.PageInfo()
            model.fromMap(dict["page_info"] as! [String: Any])
            self.pageInfo = model
        }
        if dict.keys.contains("templates") && dict["templates"] != nil {
            var tmp : [DescribeTemplatesResponseBody.Templates] = []
            for v in dict["templates"] as! [Any] {
                var model = DescribeTemplatesResponseBody.Templates()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.templates = tmp
        }
    }
}

public class DescribeTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeTemplatesResponseBody?

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
            var model = DescribeTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeTriggerRequest : Tea.TeaModel {
    public var name: String?

    public var namespace: String?

    public var type: String?

    public var action: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.action != nil {
            map["action"] = self.action!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
    }
}

public class DescribeTriggerResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var id: String?

        public var name: String?

        public var clusterId: String?

        public var projectId: String?

        public var type: String?

        public var action: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.action != nil {
                map["action"] = self.action!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("project_id") && dict["project_id"] != nil {
                self.projectId = dict["project_id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("action") && dict["action"] != nil {
                self.action = dict["action"] as! String
            }
            if dict.keys.contains("token") && dict["token"] != nil {
                self.token = dict["token"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeTriggerResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeTriggerResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeTriggerResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeUserClusterNamespacesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [String]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            map["body"] = self.body!
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
            self.body = dict["body"] as! [String]
        }
    }
}

public class DescribeUserPermissionResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var resourceId: String?

        public var resourceType: String?

        public var roleName: String?

        public var roleType: String?

        public var isOwner: Int64?

        public var isRamRole: Int64?

        public override init() {
            super.init()
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
                map["resource_id"] = self.resourceId!
            }
            if self.resourceType != nil {
                map["resource_type"] = self.resourceType!
            }
            if self.roleName != nil {
                map["role_name"] = self.roleName!
            }
            if self.roleType != nil {
                map["role_type"] = self.roleType!
            }
            if self.isOwner != nil {
                map["is_owner"] = self.isOwner!
            }
            if self.isRamRole != nil {
                map["is_ram_role"] = self.isRamRole!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("resource_id") && dict["resource_id"] != nil {
                self.resourceId = dict["resource_id"] as! String
            }
            if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
                self.resourceType = dict["resource_type"] as! String
            }
            if dict.keys.contains("role_name") && dict["role_name"] != nil {
                self.roleName = dict["role_name"] as! String
            }
            if dict.keys.contains("role_type") && dict["role_type"] != nil {
                self.roleType = dict["role_type"] as! String
            }
            if dict.keys.contains("is_owner") && dict["is_owner"] != nil {
                self.isOwner = dict["is_owner"] as! Int64
            }
            if dict.keys.contains("is_ram_role") && dict["is_ram_role"] != nil {
                self.isRamRole = dict["is_ram_role"] as! Int64
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [DescribeUserPermissionResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [DescribeUserPermissionResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = DescribeUserPermissionResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class DescribeUserQuotaResponseBody : Tea.TeaModel {
    public class EdgeImprovedNodepoolQuota : Tea.TeaModel {
        public var bandwidth: Int32?

        public var count: Int32?

        public var period: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.bandwidth != nil {
                map["bandwidth"] = self.bandwidth!
            }
            if self.count != nil {
                map["count"] = self.count!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("bandwidth") && dict["bandwidth"] != nil {
                self.bandwidth = dict["bandwidth"] as! Int32
            }
            if dict.keys.contains("count") && dict["count"] != nil {
                self.count = dict["count"] as! Int32
            }
            if dict.keys.contains("period") && dict["period"] != nil {
                self.period = dict["period"] as! Int32
            }
        }
    }
    public var amkClusterQuota: Int64?

    public var askClusterQuota: Int64?

    public var clusterNodepoolQuota: Int64?

    public var clusterQuota: Int64?

    public var edgeImprovedNodepoolQuota: DescribeUserQuotaResponseBody.EdgeImprovedNodepoolQuota?

    public var nodeQuota: Int64?

    public var quotas: [String: QuotasValue]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.edgeImprovedNodepoolQuota?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amkClusterQuota != nil {
            map["amk_cluster_quota"] = self.amkClusterQuota!
        }
        if self.askClusterQuota != nil {
            map["ask_cluster_quota"] = self.askClusterQuota!
        }
        if self.clusterNodepoolQuota != nil {
            map["cluster_nodepool_quota"] = self.clusterNodepoolQuota!
        }
        if self.clusterQuota != nil {
            map["cluster_quota"] = self.clusterQuota!
        }
        if self.edgeImprovedNodepoolQuota != nil {
            map["edge_improved_nodepool_quota"] = self.edgeImprovedNodepoolQuota?.toMap()
        }
        if self.nodeQuota != nil {
            map["node_quota"] = self.nodeQuota!
        }
        if self.quotas != nil {
            var tmp : [String: Any] = [:]
            for (k, v) in self.quotas! {
                tmp[k] = v.toMap()
            }
            map["quotas"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("amk_cluster_quota") && dict["amk_cluster_quota"] != nil {
            self.amkClusterQuota = dict["amk_cluster_quota"] as! Int64
        }
        if dict.keys.contains("ask_cluster_quota") && dict["ask_cluster_quota"] != nil {
            self.askClusterQuota = dict["ask_cluster_quota"] as! Int64
        }
        if dict.keys.contains("cluster_nodepool_quota") && dict["cluster_nodepool_quota"] != nil {
            self.clusterNodepoolQuota = dict["cluster_nodepool_quota"] as! Int64
        }
        if dict.keys.contains("cluster_quota") && dict["cluster_quota"] != nil {
            self.clusterQuota = dict["cluster_quota"] as! Int64
        }
        if dict.keys.contains("edge_improved_nodepool_quota") && dict["edge_improved_nodepool_quota"] != nil {
            var model = DescribeUserQuotaResponseBody.EdgeImprovedNodepoolQuota()
            model.fromMap(dict["edge_improved_nodepool_quota"] as! [String: Any])
            self.edgeImprovedNodepoolQuota = model
        }
        if dict.keys.contains("node_quota") && dict["node_quota"] != nil {
            self.nodeQuota = dict["node_quota"] as! Int64
        }
        if dict.keys.contains("quotas") && dict["quotas"] != nil {
            var tmp : [String: QuotasValue] = [:]
            for (k, v) in dict["quotas"] as! [String: Any] {
                if v != nil {
                    var model = QuotasValue()
                    model.fromMap(v as! [String: Any])
                    tmp[k] = model
                }
            }
            self.quotas = tmp
        }
    }
}

public class DescribeUserQuotaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeUserQuotaResponseBody?

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
            var model = DescribeUserQuotaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeWorkflowsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public var clusterId: String?

        public var createTime: String?

        public var jobName: String?

        public override init() {
            super.init()
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
                map["cluster_id"] = self.clusterId!
            }
            if self.createTime != nil {
                map["create_time"] = self.createTime!
            }
            if self.jobName != nil {
                map["job_name"] = self.jobName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("create_time") && dict["create_time"] != nil {
                self.createTime = dict["create_time"] as! String
            }
            if dict.keys.contains("job_name") && dict["job_name"] != nil {
                self.jobName = dict["job_name"] as! String
            }
        }
    }
    public var jobs: [DescribeWorkflowsResponseBody.Jobs]?

    public override init() {
        super.init()
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
            map["jobs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("jobs") && dict["jobs"] != nil {
            var tmp : [DescribeWorkflowsResponseBody.Jobs] = []
            for v in dict["jobs"] as! [Any] {
                var model = DescribeWorkflowsResponseBody.Jobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.jobs = tmp
        }
    }
}

public class DescribeWorkflowsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeWorkflowsResponseBody?

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
            var model = DescribeWorkflowsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EdgeClusterAddEdgeMachineRequest : Tea.TeaModel {
    public var expired: Int64?

    public var nodepoolId: String?

    public var options: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expired != nil {
            map["expired"] = self.expired!
        }
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.options != nil {
            map["options"] = self.options!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expired") && dict["expired"] != nil {
            self.expired = dict["expired"] as! Int64
        }
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("options") && dict["options"] != nil {
            self.options = dict["options"] as! String
        }
    }
}

public class EdgeClusterAddEdgeMachineResponseBody : Tea.TeaModel {
    public var edgeMachineId: String?

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
        if self.edgeMachineId != nil {
            map["edge_machine_id"] = self.edgeMachineId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("edge_machine_id") && dict["edge_machine_id"] != nil {
            self.edgeMachineId = dict["edge_machine_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class EdgeClusterAddEdgeMachineResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EdgeClusterAddEdgeMachineResponseBody?

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
            var model = EdgeClusterAddEdgeMachineResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class FixNodePoolVulsRequest : Tea.TeaModel {
    public class RolloutPolicy : Tea.TeaModel {
        public var maxParallelism: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxParallelism != nil {
                map["max_parallelism"] = self.maxParallelism!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("max_parallelism") && dict["max_parallelism"] != nil {
                self.maxParallelism = dict["max_parallelism"] as! Int64
            }
        }
    }
    public var autoRestart: Bool?

    public var nodes: [String]?

    public var rolloutPolicy: FixNodePoolVulsRequest.RolloutPolicy?

    public var vuls: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.rolloutPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRestart != nil {
            map["auto_restart"] = self.autoRestart!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.rolloutPolicy != nil {
            map["rollout_policy"] = self.rolloutPolicy?.toMap()
        }
        if self.vuls != nil {
            map["vuls"] = self.vuls!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_restart") && dict["auto_restart"] != nil {
            self.autoRestart = dict["auto_restart"] as! Bool
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodes = dict["nodes"] as! [String]
        }
        if dict.keys.contains("rollout_policy") && dict["rollout_policy"] != nil {
            var model = FixNodePoolVulsRequest.RolloutPolicy()
            model.fromMap(dict["rollout_policy"] as! [String: Any])
            self.rolloutPolicy = model
        }
        if dict.keys.contains("vuls") && dict["vuls"] != nil {
            self.vuls = dict["vuls"] as! [String]
        }
    }
}

public class FixNodePoolVulsResponseBody : Tea.TeaModel {
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
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class FixNodePoolVulsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: FixNodePoolVulsResponseBody?

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
            var model = FixNodePoolVulsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterAddonInstanceResponseBody : Tea.TeaModel {
    public class Logging : Tea.TeaModel {
        public var capable: Bool?

        public var enabled: Bool?

        public var logProject: String?

        public var logstore: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.capable != nil {
                map["capable"] = self.capable!
            }
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.logProject != nil {
                map["log_project"] = self.logProject!
            }
            if self.logstore != nil {
                map["logstore"] = self.logstore!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("capable") && dict["capable"] != nil {
                self.capable = dict["capable"] as! Bool
            }
            if dict.keys.contains("enabled") && dict["enabled"] != nil {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("log_project") && dict["log_project"] != nil {
                self.logProject = dict["log_project"] as! String
            }
            if dict.keys.contains("logstore") && dict["logstore"] != nil {
                self.logstore = dict["logstore"] as! String
            }
        }
    }
    public var config: String?

    public var logging: GetClusterAddonInstanceResponseBody.Logging?

    public var name: String?

    public var state: String?

    public var version: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.logging?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        if self.logging != nil {
            map["logging"] = self.logging?.toMap()
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.state != nil {
            map["state"] = self.state!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
        if dict.keys.contains("logging") && dict["logging"] != nil {
            var model = GetClusterAddonInstanceResponseBody.Logging()
            model.fromMap(dict["logging"] as! [String: Any])
            self.logging = model
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("state") && dict["state"] != nil {
            self.state = dict["state"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class GetClusterAddonInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterAddonInstanceResponseBody?

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
            var model = GetClusterAddonInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterCheckResponseBody : Tea.TeaModel {
    public var checkId: String?

    public var checkItems: [String: [[String: Any]]]?

    public var createdAt: String?

    public var finishedAt: String?

    public var message: String?

    public var status: String?

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
        if self.checkId != nil {
            map["check_id"] = self.checkId!
        }
        if self.checkItems != nil {
            map["check_items"] = self.checkItems!
        }
        if self.createdAt != nil {
            map["created_at"] = self.createdAt!
        }
        if self.finishedAt != nil {
            map["finished_at"] = self.finishedAt!
        }
        if self.message != nil {
            map["message"] = self.message!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("check_id") && dict["check_id"] != nil {
            self.checkId = dict["check_id"] as! String
        }
        if dict.keys.contains("check_items") && dict["check_items"] != nil {
            self.checkItems = dict["check_items"] as! [String: [[String: Any]]]
        }
        if dict.keys.contains("created_at") && dict["created_at"] != nil {
            self.createdAt = dict["created_at"] as! String
        }
        if dict.keys.contains("finished_at") && dict["finished_at"] != nil {
            self.finishedAt = dict["finished_at"] as! String
        }
        if dict.keys.contains("message") && dict["message"] != nil {
            self.message = dict["message"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class GetClusterCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterCheckResponseBody?

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
            var model = GetClusterCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetKubernetesTriggerRequest : Tea.TeaModel {
    public var name: String?

    public var namespace: String?

    public var type: String?

    public var action: String?

    public override init() {
        super.init()
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
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        if self.action != nil {
            map["action"] = self.action!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Name") && dict["Name"] != nil {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Namespace") && dict["Namespace"] != nil {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("Type") && dict["Type"] != nil {
            self.type = dict["Type"] as! String
        }
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
    }
}

public class GetKubernetesTriggerResponse : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var id: String?

        public var name: String?

        public var clusterId: String?

        public var projectId: String?

        public var type: String?

        public var action: String?

        public var token: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.id != nil {
                map["id"] = self.id!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.projectId != nil {
                map["project_id"] = self.projectId!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            if self.action != nil {
                map["action"] = self.action!
            }
            if self.token != nil {
                map["token"] = self.token!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("id") && dict["id"] != nil {
                self.id = dict["id"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("project_id") && dict["project_id"] != nil {
                self.projectId = dict["project_id"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
            if dict.keys.contains("action") && dict["action"] != nil {
                self.action = dict["action"] as! String
            }
            if dict.keys.contains("token") && dict["token"] != nil {
                self.token = dict["token"] as! String
            }
        }
    }
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: [GetKubernetesTriggerResponse.Body]?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
        }
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
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
            var tmp : [GetKubernetesTriggerResponse.Body] = []
            for v in dict["body"] as! [Any] {
                var model = GetKubernetesTriggerResponse.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class GetUpgradeStatusResponseBody : Tea.TeaModel {
    public class UpgradeTask : Tea.TeaModel {
        public var message: String?

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
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
        }
    }
    public var errorMessage: String?

    public var precheckReportId: String?

    public var status: String?

    public var upgradeStep: String?

    public var upgradeTask: GetUpgradeStatusResponseBody.UpgradeTask?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.upgradeTask?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.errorMessage != nil {
            map["error_message"] = self.errorMessage!
        }
        if self.precheckReportId != nil {
            map["precheck_report_id"] = self.precheckReportId!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        if self.upgradeStep != nil {
            map["upgrade_step"] = self.upgradeStep!
        }
        if self.upgradeTask != nil {
            map["upgrade_task"] = self.upgradeTask?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("error_message") && dict["error_message"] != nil {
            self.errorMessage = dict["error_message"] as! String
        }
        if dict.keys.contains("precheck_report_id") && dict["precheck_report_id"] != nil {
            self.precheckReportId = dict["precheck_report_id"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! String
        }
        if dict.keys.contains("upgrade_step") && dict["upgrade_step"] != nil {
            self.upgradeStep = dict["upgrade_step"] as! String
        }
        if dict.keys.contains("upgrade_task") && dict["upgrade_task"] != nil {
            var model = GetUpgradeStatusResponseBody.UpgradeTask()
            model.fromMap(dict["upgrade_task"] as! [String: Any])
            self.upgradeTask = model
        }
    }
}

public class GetUpgradeStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUpgradeStatusResponseBody?

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
            var model = GetUpgradeStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GrantPermissionsRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var cluster: String?

        public var isCustom: Bool?

        public var isRamRole: Bool?

        public var namespace: String?

        public var roleName: String?

        public var roleType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cluster != nil {
                map["cluster"] = self.cluster!
            }
            if self.isCustom != nil {
                map["is_custom"] = self.isCustom!
            }
            if self.isRamRole != nil {
                map["is_ram_role"] = self.isRamRole!
            }
            if self.namespace != nil {
                map["namespace"] = self.namespace!
            }
            if self.roleName != nil {
                map["role_name"] = self.roleName!
            }
            if self.roleType != nil {
                map["role_type"] = self.roleType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster") && dict["cluster"] != nil {
                self.cluster = dict["cluster"] as! String
            }
            if dict.keys.contains("is_custom") && dict["is_custom"] != nil {
                self.isCustom = dict["is_custom"] as! Bool
            }
            if dict.keys.contains("is_ram_role") && dict["is_ram_role"] != nil {
                self.isRamRole = dict["is_ram_role"] as! Bool
            }
            if dict.keys.contains("namespace") && dict["namespace"] != nil {
                self.namespace = dict["namespace"] as! String
            }
            if dict.keys.contains("role_name") && dict["role_name"] != nil {
                self.roleName = dict["role_name"] as! String
            }
            if dict.keys.contains("role_type") && dict["role_type"] != nil {
                self.roleType = dict["role_type"] as! String
            }
        }
    }
    public var body: [GrantPermissionsRequest.Body]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [GrantPermissionsRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = GrantPermissionsRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class GrantPermissionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class InstallClusterAddonsRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var config: String?

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
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("config") && dict["config"] != nil {
                self.config = dict["config"] as! String
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var body: [InstallClusterAddonsRequest.Body]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [InstallClusterAddonsRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = InstallClusterAddonsRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class InstallClusterAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ListAddonsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var clusterSpec: String?

    public var clusterType: String?

    public var clusterVersion: String?

    public var profile: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.clusterSpec != nil {
            map["cluster_spec"] = self.clusterSpec!
        }
        if self.clusterType != nil {
            map["cluster_type"] = self.clusterType!
        }
        if self.clusterVersion != nil {
            map["cluster_version"] = self.clusterVersion!
        }
        if self.profile != nil {
            map["profile"] = self.profile!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("cluster_spec") && dict["cluster_spec"] != nil {
            self.clusterSpec = dict["cluster_spec"] as! String
        }
        if dict.keys.contains("cluster_type") && dict["cluster_type"] != nil {
            self.clusterType = dict["cluster_type"] as! String
        }
        if dict.keys.contains("cluster_version") && dict["cluster_version"] != nil {
            self.clusterVersion = dict["cluster_version"] as! String
        }
        if dict.keys.contains("profile") && dict["profile"] != nil {
            self.profile = dict["profile"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
    }
}

public class ListAddonsResponseBody : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var architecture: [String]?

        public var category: String?

        public var configSchema: String?

        public var installByDefault: Bool?

        public var managed: Bool?

        public var name: String?

        public var supportedActions: [String]?

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
            if self.architecture != nil {
                map["architecture"] = self.architecture!
            }
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.configSchema != nil {
                map["config_schema"] = self.configSchema!
            }
            if self.installByDefault != nil {
                map["install_by_default"] = self.installByDefault!
            }
            if self.managed != nil {
                map["managed"] = self.managed!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            if self.supportedActions != nil {
                map["supported_actions"] = self.supportedActions!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("architecture") && dict["architecture"] != nil {
                self.architecture = dict["architecture"] as! [String]
            }
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("config_schema") && dict["config_schema"] != nil {
                self.configSchema = dict["config_schema"] as! String
            }
            if dict.keys.contains("install_by_default") && dict["install_by_default"] != nil {
                self.installByDefault = dict["install_by_default"] as! Bool
            }
            if dict.keys.contains("managed") && dict["managed"] != nil {
                self.managed = dict["managed"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("supported_actions") && dict["supported_actions"] != nil {
                self.supportedActions = dict["supported_actions"] as! [String]
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var addons: [ListAddonsResponseBody.Addons]?

    public override init() {
        super.init()
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
            map["addons"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addons") && dict["addons"] != nil {
            var tmp : [ListAddonsResponseBody.Addons] = []
            for v in dict["addons"] as! [Any] {
                var model = ListAddonsResponseBody.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
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
            var model = ListAddonsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterAddonInstancesResponseBody : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var name: String?

        public var state: String?

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
                map["name"] = self.name!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var addons: [ListClusterAddonInstancesResponseBody.Addons]?

    public override init() {
        super.init()
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
            map["addons"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addons") && dict["addons"] != nil {
            var tmp : [ListClusterAddonInstancesResponseBody.Addons] = []
            for v in dict["addons"] as! [Any] {
                var model = ListClusterAddonInstancesResponseBody.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
    }
}

public class ListClusterAddonInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterAddonInstancesResponseBody?

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
            var model = ListClusterAddonInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterChecksRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListClusterChecksResponseBody : Tea.TeaModel {
    public class Checks : Tea.TeaModel {
        public var checkId: String?

        public var createdAt: String?

        public var finishedAt: String?

        public var message: String?

        public var status: String?

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
            if self.checkId != nil {
                map["check_id"] = self.checkId!
            }
            if self.createdAt != nil {
                map["created_at"] = self.createdAt!
            }
            if self.finishedAt != nil {
                map["finished_at"] = self.finishedAt!
            }
            if self.message != nil {
                map["message"] = self.message!
            }
            if self.status != nil {
                map["status"] = self.status!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("check_id") && dict["check_id"] != nil {
                self.checkId = dict["check_id"] as! String
            }
            if dict.keys.contains("created_at") && dict["created_at"] != nil {
                self.createdAt = dict["created_at"] as! String
            }
            if dict.keys.contains("finished_at") && dict["finished_at"] != nil {
                self.finishedAt = dict["finished_at"] as! String
            }
            if dict.keys.contains("message") && dict["message"] != nil {
                self.message = dict["message"] as! String
            }
            if dict.keys.contains("status") && dict["status"] != nil {
                self.status = dict["status"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var checks: [ListClusterChecksResponseBody.Checks]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.checks != nil {
            var tmp : [Any] = []
            for k in self.checks! {
                tmp.append(k.toMap())
            }
            map["checks"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("checks") && dict["checks"] != nil {
            var tmp : [ListClusterChecksResponseBody.Checks] = []
            for v in dict["checks"] as! [Any] {
                var model = ListClusterChecksResponseBody.Checks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.checks = tmp
        }
    }
}

public class ListClusterChecksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterChecksResponseBody?

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
            var model = ListClusterChecksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListOperationPlansRequest : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class ListOperationPlansResponseBody : Tea.TeaModel {
    public class Plans : Tea.TeaModel {
        public var clusterId: String?

        public var created: String?

        public var endTime: String?

        public var planId: String?

        public var startTime: String?

        public var state: String?

        public var targetId: String?

        public var targetType: String?

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
            if self.clusterId != nil {
                map["cluster_id"] = self.clusterId!
            }
            if self.created != nil {
                map["created"] = self.created!
            }
            if self.endTime != nil {
                map["end_time"] = self.endTime!
            }
            if self.planId != nil {
                map["plan_id"] = self.planId!
            }
            if self.startTime != nil {
                map["start_time"] = self.startTime!
            }
            if self.state != nil {
                map["state"] = self.state!
            }
            if self.targetId != nil {
                map["target_id"] = self.targetId!
            }
            if self.targetType != nil {
                map["target_type"] = self.targetType!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
                self.clusterId = dict["cluster_id"] as! String
            }
            if dict.keys.contains("created") && dict["created"] != nil {
                self.created = dict["created"] as! String
            }
            if dict.keys.contains("end_time") && dict["end_time"] != nil {
                self.endTime = dict["end_time"] as! String
            }
            if dict.keys.contains("plan_id") && dict["plan_id"] != nil {
                self.planId = dict["plan_id"] as! String
            }
            if dict.keys.contains("start_time") && dict["start_time"] != nil {
                self.startTime = dict["start_time"] as! String
            }
            if dict.keys.contains("state") && dict["state"] != nil {
                self.state = dict["state"] as! String
            }
            if dict.keys.contains("target_id") && dict["target_id"] != nil {
                self.targetId = dict["target_id"] as! String
            }
            if dict.keys.contains("target_type") && dict["target_type"] != nil {
                self.targetType = dict["target_type"] as! String
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public var plans: [ListOperationPlansResponseBody.Plans]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.plans != nil {
            var tmp : [Any] = []
            for k in self.plans! {
                tmp.append(k.toMap())
            }
            map["plans"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("plans") && dict["plans"] != nil {
            var tmp : [ListOperationPlansResponseBody.Plans] = []
            for v in dict["plans"] as! [Any] {
                var model = ListOperationPlansResponseBody.Plans()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.plans = tmp
        }
    }
}

public class ListOperationPlansResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListOperationPlansResponseBody?

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
            var model = ListOperationPlansResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTagResourcesRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
            map["next_token"] = self.nextToken!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["resource_ids"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resource_type"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("next_token") && dict["next_token"] != nil {
            self.nextToken = dict["next_token"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_ids") && dict["resource_ids"] != nil {
            self.resourceIds = dict["resource_ids"] as! [String]
        }
        if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
            self.resourceType = dict["resource_type"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
    }
}

public class ListTagResourcesShrinkRequest : Tea.TeaModel {
    public var nextToken: String?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

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
        if self.nextToken != nil {
            map["next_token"] = self.nextToken!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["resource_ids"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["resource_type"] = self.resourceType!
        }
        if self.tagsShrink != nil {
            map["tags"] = self.tagsShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("next_token") && dict["next_token"] != nil {
            self.nextToken = dict["next_token"] as! String
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_ids") && dict["resource_ids"] != nil {
            self.resourceIdsShrink = dict["resource_ids"] as! String
        }
        if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
            self.resourceType = dict["resource_type"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tagsShrink = dict["tags"] as! String
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
                    map["resource_id"] = self.resourceId!
                }
                if self.resourceType != nil {
                    map["resource_type"] = self.resourceType!
                }
                if self.tagKey != nil {
                    map["tag_key"] = self.tagKey!
                }
                if self.tagValue != nil {
                    map["tag_value"] = self.tagValue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("resource_id") && dict["resource_id"] != nil {
                    self.resourceId = dict["resource_id"] as! String
                }
                if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
                    self.resourceType = dict["resource_type"] as! String
                }
                if dict.keys.contains("tag_key") && dict["tag_key"] != nil {
                    self.tagKey = dict["tag_key"] as! String
                }
                if dict.keys.contains("tag_value") && dict["tag_value"] != nil {
                    self.tagValue = dict["tag_value"] as! String
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
                map["tag_resource"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tag_resource") && dict["tag_resource"] != nil {
                var tmp : [ListTagResourcesResponseBody.TagResources.TagResource] = []
                for v in dict["tag_resource"] as! [Any] {
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
            map["next_token"] = self.nextToken!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.tagResources != nil {
            map["tag_resources"] = self.tagResources?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("next_token") && dict["next_token"] != nil {
            self.nextToken = dict["next_token"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("tag_resources") && dict["tag_resources"] != nil {
            var model = ListTagResourcesResponseBody.TagResources()
            model.fromMap(dict["tag_resources"] as! [String: Any])
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

public class MigrateClusterRequest : Tea.TeaModel {
    public var ossBucketEndpoint: String?

    public var ossBucketName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ossBucketEndpoint != nil {
            map["oss_bucket_endpoint"] = self.ossBucketEndpoint!
        }
        if self.ossBucketName != nil {
            map["oss_bucket_name"] = self.ossBucketName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("oss_bucket_endpoint") && dict["oss_bucket_endpoint"] != nil {
            self.ossBucketEndpoint = dict["oss_bucket_endpoint"] as! String
        }
        if dict.keys.contains("oss_bucket_name") && dict["oss_bucket_name"] != nil {
            self.ossBucketName = dict["oss_bucket_name"] as! String
        }
    }
}

public class MigrateClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class MigrateClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MigrateClusterResponseBody?

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
            var model = MigrateClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterRequest : Tea.TeaModel {
    public class SystemEventsLogging : Tea.TeaModel {
        public var enabled: Bool?

        public var loggingProject: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.enabled != nil {
                map["enabled"] = self.enabled!
            }
            if self.loggingProject != nil {
                map["logging_project"] = self.loggingProject!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("enabled") && dict["enabled"] != nil {
                self.enabled = dict["enabled"] as! Bool
            }
            if dict.keys.contains("logging_project") && dict["logging_project"] != nil {
                self.loggingProject = dict["logging_project"] as! String
            }
        }
    }
    public var accessControlList: [String]?

    public var apiServerEip: Bool?

    public var apiServerEipId: String?

    public var clusterName: String?

    public var deletionProtection: Bool?

    public var enableRrsa: Bool?

    public var ingressDomainRebinding: Bool?

    public var ingressLoadbalancerId: String?

    public var instanceDeletionProtection: Bool?

    public var maintenanceWindow: MaintenanceWindow?

    public var resourceGroupId: String?

    public var systemEventsLogging: ModifyClusterRequest.SystemEventsLogging?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.maintenanceWindow?.validate()
        try self.systemEventsLogging?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessControlList != nil {
            map["access_control_list"] = self.accessControlList!
        }
        if self.apiServerEip != nil {
            map["api_server_eip"] = self.apiServerEip!
        }
        if self.apiServerEipId != nil {
            map["api_server_eip_id"] = self.apiServerEipId!
        }
        if self.clusterName != nil {
            map["cluster_name"] = self.clusterName!
        }
        if self.deletionProtection != nil {
            map["deletion_protection"] = self.deletionProtection!
        }
        if self.enableRrsa != nil {
            map["enable_rrsa"] = self.enableRrsa!
        }
        if self.ingressDomainRebinding != nil {
            map["ingress_domain_rebinding"] = self.ingressDomainRebinding!
        }
        if self.ingressLoadbalancerId != nil {
            map["ingress_loadbalancer_id"] = self.ingressLoadbalancerId!
        }
        if self.instanceDeletionProtection != nil {
            map["instance_deletion_protection"] = self.instanceDeletionProtection!
        }
        if self.maintenanceWindow != nil {
            map["maintenance_window"] = self.maintenanceWindow?.toMap()
        }
        if self.resourceGroupId != nil {
            map["resource_group_id"] = self.resourceGroupId!
        }
        if self.systemEventsLogging != nil {
            map["system_events_logging"] = self.systemEventsLogging?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("access_control_list") && dict["access_control_list"] != nil {
            self.accessControlList = dict["access_control_list"] as! [String]
        }
        if dict.keys.contains("api_server_eip") && dict["api_server_eip"] != nil {
            self.apiServerEip = dict["api_server_eip"] as! Bool
        }
        if dict.keys.contains("api_server_eip_id") && dict["api_server_eip_id"] != nil {
            self.apiServerEipId = dict["api_server_eip_id"] as! String
        }
        if dict.keys.contains("cluster_name") && dict["cluster_name"] != nil {
            self.clusterName = dict["cluster_name"] as! String
        }
        if dict.keys.contains("deletion_protection") && dict["deletion_protection"] != nil {
            self.deletionProtection = dict["deletion_protection"] as! Bool
        }
        if dict.keys.contains("enable_rrsa") && dict["enable_rrsa"] != nil {
            self.enableRrsa = dict["enable_rrsa"] as! Bool
        }
        if dict.keys.contains("ingress_domain_rebinding") && dict["ingress_domain_rebinding"] != nil {
            self.ingressDomainRebinding = dict["ingress_domain_rebinding"] as! Bool
        }
        if dict.keys.contains("ingress_loadbalancer_id") && dict["ingress_loadbalancer_id"] != nil {
            self.ingressLoadbalancerId = dict["ingress_loadbalancer_id"] as! String
        }
        if dict.keys.contains("instance_deletion_protection") && dict["instance_deletion_protection"] != nil {
            self.instanceDeletionProtection = dict["instance_deletion_protection"] as! Bool
        }
        if dict.keys.contains("maintenance_window") && dict["maintenance_window"] != nil {
            var model = MaintenanceWindow()
            model.fromMap(dict["maintenance_window"] as! [String: Any])
            self.maintenanceWindow = model
        }
        if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
            self.resourceGroupId = dict["resource_group_id"] as! String
        }
        if dict.keys.contains("system_events_logging") && dict["system_events_logging"] != nil {
            var model = ModifyClusterRequest.SystemEventsLogging()
            model.fromMap(dict["system_events_logging"] as! [String: Any])
            self.systemEventsLogging = model
        }
    }
}

public class ModifyClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ModifyClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterResponseBody?

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
            var model = ModifyClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterAddonRequest : Tea.TeaModel {
    public var config: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.config != nil {
            map["config"] = self.config!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("config") && dict["config"] != nil {
            self.config = dict["config"] as! String
        }
    }
}

public class ModifyClusterAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ModifyClusterConfigurationRequest : Tea.TeaModel {
    public class CustomizeConfig : Tea.TeaModel {
        public class Configs : Tea.TeaModel {
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
                    map["key"] = self.key!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("key") && dict["key"] != nil {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("value") && dict["value"] != nil {
                    self.value = dict["value"] as! String
                }
            }
        }
        public var configs: [ModifyClusterConfigurationRequest.CustomizeConfig.Configs]?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configs != nil {
                var tmp : [Any] = []
                for k in self.configs! {
                    tmp.append(k.toMap())
                }
                map["configs"] = tmp
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("configs") && dict["configs"] != nil {
                var tmp : [ModifyClusterConfigurationRequest.CustomizeConfig.Configs] = []
                for v in dict["configs"] as! [Any] {
                    var model = ModifyClusterConfigurationRequest.CustomizeConfig.Configs()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.configs = tmp
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public var customizeConfig: [ModifyClusterConfigurationRequest.CustomizeConfig]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customizeConfig != nil {
            var tmp : [Any] = []
            for k in self.customizeConfig! {
                tmp.append(k.toMap())
            }
            map["customize_config"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("customize_config") && dict["customize_config"] != nil {
            var tmp : [ModifyClusterConfigurationRequest.CustomizeConfig] = []
            for v in dict["customize_config"] as! [Any] {
                var model = ModifyClusterConfigurationRequest.CustomizeConfig()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.customizeConfig = tmp
        }
    }
}

public class ModifyClusterConfigurationResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ModifyClusterNodePoolRequest : Tea.TeaModel {
    public class AutoScaling : Tea.TeaModel {
        public var eipBandwidth: Int64?

        public var eipInternetChargeType: String?

        public var enable: Bool?

        public var isBondEip: Bool?

        public var maxInstances: Int64?

        public var minInstances: Int64?

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
            if self.eipBandwidth != nil {
                map["eip_bandwidth"] = self.eipBandwidth!
            }
            if self.eipInternetChargeType != nil {
                map["eip_internet_charge_type"] = self.eipInternetChargeType!
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.isBondEip != nil {
                map["is_bond_eip"] = self.isBondEip!
            }
            if self.maxInstances != nil {
                map["max_instances"] = self.maxInstances!
            }
            if self.minInstances != nil {
                map["min_instances"] = self.minInstances!
            }
            if self.type != nil {
                map["type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("eip_bandwidth") && dict["eip_bandwidth"] != nil {
                self.eipBandwidth = dict["eip_bandwidth"] as! Int64
            }
            if dict.keys.contains("eip_internet_charge_type") && dict["eip_internet_charge_type"] != nil {
                self.eipInternetChargeType = dict["eip_internet_charge_type"] as! String
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("is_bond_eip") && dict["is_bond_eip"] != nil {
                self.isBondEip = dict["is_bond_eip"] as! Bool
            }
            if dict.keys.contains("max_instances") && dict["max_instances"] != nil {
                self.maxInstances = dict["max_instances"] as! Int64
            }
            if dict.keys.contains("min_instances") && dict["min_instances"] != nil {
                self.minInstances = dict["min_instances"] as! Int64
            }
            if dict.keys.contains("type") && dict["type"] != nil {
                self.type = dict["type"] as! String
            }
        }
    }
    public class KubernetesConfig : Tea.TeaModel {
        public var cmsEnabled: Bool?

        public var cpuPolicy: String?

        public var labels: [Tag]?

        public var runtime: String?

        public var runtimeVersion: String?

        public var taints: [Taint]?

        public var userData: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cmsEnabled != nil {
                map["cms_enabled"] = self.cmsEnabled!
            }
            if self.cpuPolicy != nil {
                map["cpu_policy"] = self.cpuPolicy!
            }
            if self.labels != nil {
                var tmp : [Any] = []
                for k in self.labels! {
                    tmp.append(k.toMap())
                }
                map["labels"] = tmp
            }
            if self.runtime != nil {
                map["runtime"] = self.runtime!
            }
            if self.runtimeVersion != nil {
                map["runtime_version"] = self.runtimeVersion!
            }
            if self.taints != nil {
                var tmp : [Any] = []
                for k in self.taints! {
                    tmp.append(k.toMap())
                }
                map["taints"] = tmp
            }
            if self.userData != nil {
                map["user_data"] = self.userData!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cms_enabled") && dict["cms_enabled"] != nil {
                self.cmsEnabled = dict["cms_enabled"] as! Bool
            }
            if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
                self.cpuPolicy = dict["cpu_policy"] as! String
            }
            if dict.keys.contains("labels") && dict["labels"] != nil {
                var tmp : [Tag] = []
                for v in dict["labels"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.labels = tmp
            }
            if dict.keys.contains("runtime") && dict["runtime"] != nil {
                self.runtime = dict["runtime"] as! String
            }
            if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
                self.runtimeVersion = dict["runtime_version"] as! String
            }
            if dict.keys.contains("taints") && dict["taints"] != nil {
                var tmp : [Taint] = []
                for v in dict["taints"] as! [Any] {
                    var model = Taint()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.taints = tmp
            }
            if dict.keys.contains("user_data") && dict["user_data"] != nil {
                self.userData = dict["user_data"] as! String
            }
        }
    }
    public class Management : Tea.TeaModel {
        public class AutoRepairPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
            }
        }
        public class AutoUpgradePolicy : Tea.TeaModel {
            public var autoUpgradeKubelet: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgradeKubelet != nil {
                    map["auto_upgrade_kubelet"] = self.autoUpgradeKubelet!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade_kubelet") && dict["auto_upgrade_kubelet"] != nil {
                    self.autoUpgradeKubelet = dict["auto_upgrade_kubelet"] as! Bool
                }
            }
        }
        public class AutoVulFixPolicy : Tea.TeaModel {
            public var restartNode: Bool?

            public var vulLevel: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.restartNode != nil {
                    map["restart_node"] = self.restartNode!
                }
                if self.vulLevel != nil {
                    map["vul_level"] = self.vulLevel!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("restart_node") && dict["restart_node"] != nil {
                    self.restartNode = dict["restart_node"] as! Bool
                }
                if dict.keys.contains("vul_level") && dict["vul_level"] != nil {
                    self.vulLevel = dict["vul_level"] as! String
                }
            }
        }
        public class UpgradeConfig : Tea.TeaModel {
            public var autoUpgrade: Bool?

            public var maxUnavailable: Int64?

            public var surge: Int64?

            public var surgePercentage: Int64?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.autoUpgrade != nil {
                    map["auto_upgrade"] = self.autoUpgrade!
                }
                if self.maxUnavailable != nil {
                    map["max_unavailable"] = self.maxUnavailable!
                }
                if self.surge != nil {
                    map["surge"] = self.surge!
                }
                if self.surgePercentage != nil {
                    map["surge_percentage"] = self.surgePercentage!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                    self.autoUpgrade = dict["auto_upgrade"] as! Bool
                }
                if dict.keys.contains("max_unavailable") && dict["max_unavailable"] != nil {
                    self.maxUnavailable = dict["max_unavailable"] as! Int64
                }
                if dict.keys.contains("surge") && dict["surge"] != nil {
                    self.surge = dict["surge"] as! Int64
                }
                if dict.keys.contains("surge_percentage") && dict["surge_percentage"] != nil {
                    self.surgePercentage = dict["surge_percentage"] as! Int64
                }
            }
        }
        public var autoRepair: Bool?

        public var autoRepairPolicy: ModifyClusterNodePoolRequest.Management.AutoRepairPolicy?

        public var autoUpgrade: Bool?

        public var autoUpgradePolicy: ModifyClusterNodePoolRequest.Management.AutoUpgradePolicy?

        public var autoVulFix: Bool?

        public var autoVulFixPolicy: ModifyClusterNodePoolRequest.Management.AutoVulFixPolicy?

        public var enable: Bool?

        public var upgradeConfig: ModifyClusterNodePoolRequest.Management.UpgradeConfig?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.autoRepairPolicy?.validate()
            try self.autoUpgradePolicy?.validate()
            try self.autoVulFixPolicy?.validate()
            try self.upgradeConfig?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRepair != nil {
                map["auto_repair"] = self.autoRepair!
            }
            if self.autoRepairPolicy != nil {
                map["auto_repair_policy"] = self.autoRepairPolicy?.toMap()
            }
            if self.autoUpgrade != nil {
                map["auto_upgrade"] = self.autoUpgrade!
            }
            if self.autoUpgradePolicy != nil {
                map["auto_upgrade_policy"] = self.autoUpgradePolicy?.toMap()
            }
            if self.autoVulFix != nil {
                map["auto_vul_fix"] = self.autoVulFix!
            }
            if self.autoVulFixPolicy != nil {
                map["auto_vul_fix_policy"] = self.autoVulFixPolicy?.toMap()
            }
            if self.enable != nil {
                map["enable"] = self.enable!
            }
            if self.upgradeConfig != nil {
                map["upgrade_config"] = self.upgradeConfig?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_repair") && dict["auto_repair"] != nil {
                self.autoRepair = dict["auto_repair"] as! Bool
            }
            if dict.keys.contains("auto_repair_policy") && dict["auto_repair_policy"] != nil {
                var model = ModifyClusterNodePoolRequest.Management.AutoRepairPolicy()
                model.fromMap(dict["auto_repair_policy"] as! [String: Any])
                self.autoRepairPolicy = model
            }
            if dict.keys.contains("auto_upgrade") && dict["auto_upgrade"] != nil {
                self.autoUpgrade = dict["auto_upgrade"] as! Bool
            }
            if dict.keys.contains("auto_upgrade_policy") && dict["auto_upgrade_policy"] != nil {
                var model = ModifyClusterNodePoolRequest.Management.AutoUpgradePolicy()
                model.fromMap(dict["auto_upgrade_policy"] as! [String: Any])
                self.autoUpgradePolicy = model
            }
            if dict.keys.contains("auto_vul_fix") && dict["auto_vul_fix"] != nil {
                self.autoVulFix = dict["auto_vul_fix"] as! Bool
            }
            if dict.keys.contains("auto_vul_fix_policy") && dict["auto_vul_fix_policy"] != nil {
                var model = ModifyClusterNodePoolRequest.Management.AutoVulFixPolicy()
                model.fromMap(dict["auto_vul_fix_policy"] as! [String: Any])
                self.autoVulFixPolicy = model
            }
            if dict.keys.contains("enable") && dict["enable"] != nil {
                self.enable = dict["enable"] as! Bool
            }
            if dict.keys.contains("upgrade_config") && dict["upgrade_config"] != nil {
                var model = ModifyClusterNodePoolRequest.Management.UpgradeConfig()
                model.fromMap(dict["upgrade_config"] as! [String: Any])
                self.upgradeConfig = model
            }
        }
    }
    public class NodepoolInfo : Tea.TeaModel {
        public var name: String?

        public var resourceGroupId: String?

        public override init() {
            super.init()
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
                map["name"] = self.name!
            }
            if self.resourceGroupId != nil {
                map["resource_group_id"] = self.resourceGroupId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
            if dict.keys.contains("resource_group_id") && dict["resource_group_id"] != nil {
                self.resourceGroupId = dict["resource_group_id"] as! String
            }
        }
    }
    public class ScalingGroup : Tea.TeaModel {
        public class PrivatePoolOptions : Tea.TeaModel {
            public var id: String?

            public var matchCriteria: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.id != nil {
                    map["id"] = self.id!
                }
                if self.matchCriteria != nil {
                    map["match_criteria"] = self.matchCriteria!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("id") && dict["id"] != nil {
                    self.id = dict["id"] as! String
                }
                if dict.keys.contains("match_criteria") && dict["match_criteria"] != nil {
                    self.matchCriteria = dict["match_criteria"] as! String
                }
            }
        }
        public class SpotPriceLimit : Tea.TeaModel {
            public var instanceType: String?

            public var priceLimit: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.instanceType != nil {
                    map["instance_type"] = self.instanceType!
                }
                if self.priceLimit != nil {
                    map["price_limit"] = self.priceLimit!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("instance_type") && dict["instance_type"] != nil {
                    self.instanceType = dict["instance_type"] as! String
                }
                if dict.keys.contains("price_limit") && dict["price_limit"] != nil {
                    self.priceLimit = dict["price_limit"] as! String
                }
            }
        }
        public var autoRenew: Bool?

        public var autoRenewPeriod: Int64?

        public var compensateWithOnDemand: Bool?

        public var dataDisks: [DataDisk]?

        public var desiredSize: Int64?

        public var imageId: String?

        public var imageType: String?

        public var instanceChargeType: String?

        public var instanceTypes: [String]?

        public var internetChargeType: String?

        public var internetMaxBandwidthOut: Int64?

        public var keyPair: String?

        public var loginPassword: String?

        public var multiAzPolicy: String?

        public var onDemandBaseCapacity: Int64?

        public var onDemandPercentageAboveBaseCapacity: Int64?

        public var period: Int64?

        public var periodUnit: String?

        public var platform: String?

        public var privatePoolOptions: ModifyClusterNodePoolRequest.ScalingGroup.PrivatePoolOptions?

        public var rdsInstances: [String]?

        public var scalingPolicy: String?

        public var spotInstancePools: Int64?

        public var spotInstanceRemedy: Bool?

        public var spotPriceLimit: [ModifyClusterNodePoolRequest.ScalingGroup.SpotPriceLimit]?

        public var spotStrategy: String?

        public var systemDiskBurstingEnabled: Bool?

        public var systemDiskCategories: [String]?

        public var systemDiskCategory: String?

        public var systemDiskEncryptAlgorithm: String?

        public var systemDiskEncrypted: Bool?

        public var systemDiskKmsKeyId: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskProvisionedIops: Int64?

        public var systemDiskSize: Int64?

        public var tags: [Tag]?

        public var vswitchIds: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.privatePoolOptions?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.autoRenew != nil {
                map["auto_renew"] = self.autoRenew!
            }
            if self.autoRenewPeriod != nil {
                map["auto_renew_period"] = self.autoRenewPeriod!
            }
            if self.compensateWithOnDemand != nil {
                map["compensate_with_on_demand"] = self.compensateWithOnDemand!
            }
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["data_disks"] = tmp
            }
            if self.desiredSize != nil {
                map["desired_size"] = self.desiredSize!
            }
            if self.imageId != nil {
                map["image_id"] = self.imageId!
            }
            if self.imageType != nil {
                map["image_type"] = self.imageType!
            }
            if self.instanceChargeType != nil {
                map["instance_charge_type"] = self.instanceChargeType!
            }
            if self.instanceTypes != nil {
                map["instance_types"] = self.instanceTypes!
            }
            if self.internetChargeType != nil {
                map["internet_charge_type"] = self.internetChargeType!
            }
            if self.internetMaxBandwidthOut != nil {
                map["internet_max_bandwidth_out"] = self.internetMaxBandwidthOut!
            }
            if self.keyPair != nil {
                map["key_pair"] = self.keyPair!
            }
            if self.loginPassword != nil {
                map["login_password"] = self.loginPassword!
            }
            if self.multiAzPolicy != nil {
                map["multi_az_policy"] = self.multiAzPolicy!
            }
            if self.onDemandBaseCapacity != nil {
                map["on_demand_base_capacity"] = self.onDemandBaseCapacity!
            }
            if self.onDemandPercentageAboveBaseCapacity != nil {
                map["on_demand_percentage_above_base_capacity"] = self.onDemandPercentageAboveBaseCapacity!
            }
            if self.period != nil {
                map["period"] = self.period!
            }
            if self.periodUnit != nil {
                map["period_unit"] = self.periodUnit!
            }
            if self.platform != nil {
                map["platform"] = self.platform!
            }
            if self.privatePoolOptions != nil {
                map["private_pool_options"] = self.privatePoolOptions?.toMap()
            }
            if self.rdsInstances != nil {
                map["rds_instances"] = self.rdsInstances!
            }
            if self.scalingPolicy != nil {
                map["scaling_policy"] = self.scalingPolicy!
            }
            if self.spotInstancePools != nil {
                map["spot_instance_pools"] = self.spotInstancePools!
            }
            if self.spotInstanceRemedy != nil {
                map["spot_instance_remedy"] = self.spotInstanceRemedy!
            }
            if self.spotPriceLimit != nil {
                var tmp : [Any] = []
                for k in self.spotPriceLimit! {
                    tmp.append(k.toMap())
                }
                map["spot_price_limit"] = tmp
            }
            if self.spotStrategy != nil {
                map["spot_strategy"] = self.spotStrategy!
            }
            if self.systemDiskBurstingEnabled != nil {
                map["system_disk_bursting_enabled"] = self.systemDiskBurstingEnabled!
            }
            if self.systemDiskCategories != nil {
                map["system_disk_categories"] = self.systemDiskCategories!
            }
            if self.systemDiskCategory != nil {
                map["system_disk_category"] = self.systemDiskCategory!
            }
            if self.systemDiskEncryptAlgorithm != nil {
                map["system_disk_encrypt_algorithm"] = self.systemDiskEncryptAlgorithm!
            }
            if self.systemDiskEncrypted != nil {
                map["system_disk_encrypted"] = self.systemDiskEncrypted!
            }
            if self.systemDiskKmsKeyId != nil {
                map["system_disk_kms_key_id"] = self.systemDiskKmsKeyId!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["system_disk_performance_level"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskProvisionedIops != nil {
                map["system_disk_provisioned_iops"] = self.systemDiskProvisionedIops!
            }
            if self.systemDiskSize != nil {
                map["system_disk_size"] = self.systemDiskSize!
            }
            if self.tags != nil {
                var tmp : [Any] = []
                for k in self.tags! {
                    tmp.append(k.toMap())
                }
                map["tags"] = tmp
            }
            if self.vswitchIds != nil {
                map["vswitch_ids"] = self.vswitchIds!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_renew") && dict["auto_renew"] != nil {
                self.autoRenew = dict["auto_renew"] as! Bool
            }
            if dict.keys.contains("auto_renew_period") && dict["auto_renew_period"] != nil {
                self.autoRenewPeriod = dict["auto_renew_period"] as! Int64
            }
            if dict.keys.contains("compensate_with_on_demand") && dict["compensate_with_on_demand"] != nil {
                self.compensateWithOnDemand = dict["compensate_with_on_demand"] as! Bool
            }
            if dict.keys.contains("data_disks") && dict["data_disks"] != nil {
                var tmp : [DataDisk] = []
                for v in dict["data_disks"] as! [Any] {
                    var model = DataDisk()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.dataDisks = tmp
            }
            if dict.keys.contains("desired_size") && dict["desired_size"] != nil {
                self.desiredSize = dict["desired_size"] as! Int64
            }
            if dict.keys.contains("image_id") && dict["image_id"] != nil {
                self.imageId = dict["image_id"] as! String
            }
            if dict.keys.contains("image_type") && dict["image_type"] != nil {
                self.imageType = dict["image_type"] as! String
            }
            if dict.keys.contains("instance_charge_type") && dict["instance_charge_type"] != nil {
                self.instanceChargeType = dict["instance_charge_type"] as! String
            }
            if dict.keys.contains("instance_types") && dict["instance_types"] != nil {
                self.instanceTypes = dict["instance_types"] as! [String]
            }
            if dict.keys.contains("internet_charge_type") && dict["internet_charge_type"] != nil {
                self.internetChargeType = dict["internet_charge_type"] as! String
            }
            if dict.keys.contains("internet_max_bandwidth_out") && dict["internet_max_bandwidth_out"] != nil {
                self.internetMaxBandwidthOut = dict["internet_max_bandwidth_out"] as! Int64
            }
            if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
                self.keyPair = dict["key_pair"] as! String
            }
            if dict.keys.contains("login_password") && dict["login_password"] != nil {
                self.loginPassword = dict["login_password"] as! String
            }
            if dict.keys.contains("multi_az_policy") && dict["multi_az_policy"] != nil {
                self.multiAzPolicy = dict["multi_az_policy"] as! String
            }
            if dict.keys.contains("on_demand_base_capacity") && dict["on_demand_base_capacity"] != nil {
                self.onDemandBaseCapacity = dict["on_demand_base_capacity"] as! Int64
            }
            if dict.keys.contains("on_demand_percentage_above_base_capacity") && dict["on_demand_percentage_above_base_capacity"] != nil {
                self.onDemandPercentageAboveBaseCapacity = dict["on_demand_percentage_above_base_capacity"] as! Int64
            }
            if dict.keys.contains("period") && dict["period"] != nil {
                self.period = dict["period"] as! Int64
            }
            if dict.keys.contains("period_unit") && dict["period_unit"] != nil {
                self.periodUnit = dict["period_unit"] as! String
            }
            if dict.keys.contains("platform") && dict["platform"] != nil {
                self.platform = dict["platform"] as! String
            }
            if dict.keys.contains("private_pool_options") && dict["private_pool_options"] != nil {
                var model = ModifyClusterNodePoolRequest.ScalingGroup.PrivatePoolOptions()
                model.fromMap(dict["private_pool_options"] as! [String: Any])
                self.privatePoolOptions = model
            }
            if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
                self.rdsInstances = dict["rds_instances"] as! [String]
            }
            if dict.keys.contains("scaling_policy") && dict["scaling_policy"] != nil {
                self.scalingPolicy = dict["scaling_policy"] as! String
            }
            if dict.keys.contains("spot_instance_pools") && dict["spot_instance_pools"] != nil {
                self.spotInstancePools = dict["spot_instance_pools"] as! Int64
            }
            if dict.keys.contains("spot_instance_remedy") && dict["spot_instance_remedy"] != nil {
                self.spotInstanceRemedy = dict["spot_instance_remedy"] as! Bool
            }
            if dict.keys.contains("spot_price_limit") && dict["spot_price_limit"] != nil {
                var tmp : [ModifyClusterNodePoolRequest.ScalingGroup.SpotPriceLimit] = []
                for v in dict["spot_price_limit"] as! [Any] {
                    var model = ModifyClusterNodePoolRequest.ScalingGroup.SpotPriceLimit()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.spotPriceLimit = tmp
            }
            if dict.keys.contains("spot_strategy") && dict["spot_strategy"] != nil {
                self.spotStrategy = dict["spot_strategy"] as! String
            }
            if dict.keys.contains("system_disk_bursting_enabled") && dict["system_disk_bursting_enabled"] != nil {
                self.systemDiskBurstingEnabled = dict["system_disk_bursting_enabled"] as! Bool
            }
            if dict.keys.contains("system_disk_categories") && dict["system_disk_categories"] != nil {
                self.systemDiskCategories = dict["system_disk_categories"] as! [String]
            }
            if dict.keys.contains("system_disk_category") && dict["system_disk_category"] != nil {
                self.systemDiskCategory = dict["system_disk_category"] as! String
            }
            if dict.keys.contains("system_disk_encrypt_algorithm") && dict["system_disk_encrypt_algorithm"] != nil {
                self.systemDiskEncryptAlgorithm = dict["system_disk_encrypt_algorithm"] as! String
            }
            if dict.keys.contains("system_disk_encrypted") && dict["system_disk_encrypted"] != nil {
                self.systemDiskEncrypted = dict["system_disk_encrypted"] as! Bool
            }
            if dict.keys.contains("system_disk_kms_key_id") && dict["system_disk_kms_key_id"] != nil {
                self.systemDiskKmsKeyId = dict["system_disk_kms_key_id"] as! String
            }
            if dict.keys.contains("system_disk_performance_level") && dict["system_disk_performance_level"] != nil {
                self.systemDiskPerformanceLevel = dict["system_disk_performance_level"] as! String
            }
            if dict.keys.contains("system_disk_provisioned_iops") && dict["system_disk_provisioned_iops"] != nil {
                self.systemDiskProvisionedIops = dict["system_disk_provisioned_iops"] as! Int64
            }
            if dict.keys.contains("system_disk_size") && dict["system_disk_size"] != nil {
                self.systemDiskSize = dict["system_disk_size"] as! Int64
            }
            if dict.keys.contains("tags") && dict["tags"] != nil {
                var tmp : [Tag] = []
                for v in dict["tags"] as! [Any] {
                    var model = Tag()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.tags = tmp
            }
            if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
                self.vswitchIds = dict["vswitch_ids"] as! [String]
            }
        }
    }
    public class TeeConfig : Tea.TeaModel {
        public var teeEnable: Bool?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.teeEnable != nil {
                map["tee_enable"] = self.teeEnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("tee_enable") && dict["tee_enable"] != nil {
                self.teeEnable = dict["tee_enable"] as! Bool
            }
        }
    }
    public var autoScaling: ModifyClusterNodePoolRequest.AutoScaling?

    public var concurrency: Bool?

    public var kubernetesConfig: ModifyClusterNodePoolRequest.KubernetesConfig?

    public var management: ModifyClusterNodePoolRequest.Management?

    public var nodepoolInfo: ModifyClusterNodePoolRequest.NodepoolInfo?

    public var scalingGroup: ModifyClusterNodePoolRequest.ScalingGroup?

    public var teeConfig: ModifyClusterNodePoolRequest.TeeConfig?

    public var updateNodes: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.autoScaling?.validate()
        try self.kubernetesConfig?.validate()
        try self.management?.validate()
        try self.nodepoolInfo?.validate()
        try self.scalingGroup?.validate()
        try self.teeConfig?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoScaling != nil {
            map["auto_scaling"] = self.autoScaling?.toMap()
        }
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.kubernetesConfig != nil {
            map["kubernetes_config"] = self.kubernetesConfig?.toMap()
        }
        if self.management != nil {
            map["management"] = self.management?.toMap()
        }
        if self.nodepoolInfo != nil {
            map["nodepool_info"] = self.nodepoolInfo?.toMap()
        }
        if self.scalingGroup != nil {
            map["scaling_group"] = self.scalingGroup?.toMap()
        }
        if self.teeConfig != nil {
            map["tee_config"] = self.teeConfig?.toMap()
        }
        if self.updateNodes != nil {
            map["update_nodes"] = self.updateNodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_scaling") && dict["auto_scaling"] != nil {
            var model = ModifyClusterNodePoolRequest.AutoScaling()
            model.fromMap(dict["auto_scaling"] as! [String: Any])
            self.autoScaling = model
        }
        if dict.keys.contains("concurrency") && dict["concurrency"] != nil {
            self.concurrency = dict["concurrency"] as! Bool
        }
        if dict.keys.contains("kubernetes_config") && dict["kubernetes_config"] != nil {
            var model = ModifyClusterNodePoolRequest.KubernetesConfig()
            model.fromMap(dict["kubernetes_config"] as! [String: Any])
            self.kubernetesConfig = model
        }
        if dict.keys.contains("management") && dict["management"] != nil {
            var model = ModifyClusterNodePoolRequest.Management()
            model.fromMap(dict["management"] as! [String: Any])
            self.management = model
        }
        if dict.keys.contains("nodepool_info") && dict["nodepool_info"] != nil {
            var model = ModifyClusterNodePoolRequest.NodepoolInfo()
            model.fromMap(dict["nodepool_info"] as! [String: Any])
            self.nodepoolInfo = model
        }
        if dict.keys.contains("scaling_group") && dict["scaling_group"] != nil {
            var model = ModifyClusterNodePoolRequest.ScalingGroup()
            model.fromMap(dict["scaling_group"] as! [String: Any])
            self.scalingGroup = model
        }
        if dict.keys.contains("tee_config") && dict["tee_config"] != nil {
            var model = ModifyClusterNodePoolRequest.TeeConfig()
            model.fromMap(dict["tee_config"] as! [String: Any])
            self.teeConfig = model
        }
        if dict.keys.contains("update_nodes") && dict["update_nodes"] != nil {
            self.updateNodes = dict["update_nodes"] as! Bool
        }
    }
}

public class ModifyClusterNodePoolResponseBody : Tea.TeaModel {
    public var nodepoolId: String?

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
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ModifyClusterNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterNodePoolResponseBody?

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
            var model = ModifyClusterNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterTagsRequest : Tea.TeaModel {
    public var body: [Tag]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [Tag] = []
            for v in dict["body"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class ModifyClusterTagsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ModifyNodePoolNodeConfigRequest : Tea.TeaModel {
    public class RollingPolicy : Tea.TeaModel {
        public var maxParallelism: Int64?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.maxParallelism != nil {
                map["max_parallelism"] = self.maxParallelism!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("max_parallelism") && dict["max_parallelism"] != nil {
                self.maxParallelism = dict["max_parallelism"] as! Int64
            }
        }
    }
    public var kubeletConfig: KubeletConfig?

    public var rollingPolicy: ModifyNodePoolNodeConfigRequest.RollingPolicy?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.kubeletConfig?.validate()
        try self.rollingPolicy?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.kubeletConfig != nil {
            map["kubelet_config"] = self.kubeletConfig?.toMap()
        }
        if self.rollingPolicy != nil {
            map["rolling_policy"] = self.rollingPolicy?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("kubelet_config") && dict["kubelet_config"] != nil {
            var model = KubeletConfig()
            model.fromMap(dict["kubelet_config"] as! [String: Any])
            self.kubeletConfig = model
        }
        if dict.keys.contains("rolling_policy") && dict["rolling_policy"] != nil {
            var model = ModifyNodePoolNodeConfigRequest.RollingPolicy()
            model.fromMap(dict["rolling_policy"] as! [String: Any])
            self.rollingPolicy = model
        }
    }
}

public class ModifyNodePoolNodeConfigResponseBody : Tea.TeaModel {
    public var nodepoolId: String?

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
        if self.nodepoolId != nil {
            map["nodepool_id"] = self.nodepoolId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("nodepool_id") && dict["nodepool_id"] != nil {
            self.nodepoolId = dict["nodepool_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ModifyNodePoolNodeConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyNodePoolNodeConfigResponseBody?

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
            var model = ModifyNodePoolNodeConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyPolicyInstanceRequest : Tea.TeaModel {
    public var action: String?

    public var instanceName: String?

    public var namespaces: [String]?

    public var parameters: [String: Any]?

    public override init() {
        super.init()
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
            map["action"] = self.action!
        }
        if self.instanceName != nil {
            map["instance_name"] = self.instanceName!
        }
        if self.namespaces != nil {
            map["namespaces"] = self.namespaces!
        }
        if self.parameters != nil {
            map["parameters"] = self.parameters!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("action") && dict["action"] != nil {
            self.action = dict["action"] as! String
        }
        if dict.keys.contains("instance_name") && dict["instance_name"] != nil {
            self.instanceName = dict["instance_name"] as! String
        }
        if dict.keys.contains("namespaces") && dict["namespaces"] != nil {
            self.namespaces = dict["namespaces"] as! [String]
        }
        if dict.keys.contains("parameters") && dict["parameters"] != nil {
            self.parameters = dict["parameters"] as! [String: Any]
        }
    }
}

public class ModifyPolicyInstanceResponseBody : Tea.TeaModel {
    public var instances: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["instances"] = self.instances!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("instances") && dict["instances"] != nil {
            self.instances = dict["instances"] as! [String]
        }
    }
}

public class ModifyPolicyInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyPolicyInstanceResponseBody?

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
            var model = ModifyPolicyInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class OpenAckServiceRequest : Tea.TeaModel {
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
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class OpenAckServiceResponseBody : Tea.TeaModel {
    public var orderId: String?

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
        if self.orderId != nil {
            map["order_id"] = self.orderId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("order_id") && dict["order_id"] != nil {
            self.orderId = dict["order_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class OpenAckServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: OpenAckServiceResponseBody?

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
            var model = OpenAckServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PauseClusterUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class PauseComponentUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class PauseTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class RemoveClusterNodesRequest : Tea.TeaModel {
    public var drainNode: Bool?

    public var nodes: [String]?

    public var releaseNode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.drainNode != nil {
            map["drain_node"] = self.drainNode!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.releaseNode != nil {
            map["release_node"] = self.releaseNode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("drain_node") && dict["drain_node"] != nil {
            self.drainNode = dict["drain_node"] as! Bool
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodes = dict["nodes"] as! [String]
        }
        if dict.keys.contains("release_node") && dict["release_node"] != nil {
            self.releaseNode = dict["release_node"] as! Bool
        }
    }
}

public class RemoveClusterNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class RemoveNodePoolNodesRequest : Tea.TeaModel {
    public var concurrency: Bool?

    public var drainNode: Bool?

    public var instanceIds: [String]?

    public var nodes: [String]?

    public var releaseNode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.drainNode != nil {
            map["drain_node"] = self.drainNode!
        }
        if self.instanceIds != nil {
            map["instance_ids"] = self.instanceIds!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        if self.releaseNode != nil {
            map["release_node"] = self.releaseNode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("concurrency") && dict["concurrency"] != nil {
            self.concurrency = dict["concurrency"] as! Bool
        }
        if dict.keys.contains("drain_node") && dict["drain_node"] != nil {
            self.drainNode = dict["drain_node"] as! Bool
        }
        if dict.keys.contains("instance_ids") && dict["instance_ids"] != nil {
            self.instanceIds = dict["instance_ids"] as! [String]
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodes = dict["nodes"] as! [String]
        }
        if dict.keys.contains("release_node") && dict["release_node"] != nil {
            self.releaseNode = dict["release_node"] as! Bool
        }
    }
}

public class RemoveNodePoolNodesShrinkRequest : Tea.TeaModel {
    public var concurrency: Bool?

    public var drainNode: Bool?

    public var instanceIdsShrink: String?

    public var nodesShrink: String?

    public var releaseNode: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.concurrency != nil {
            map["concurrency"] = self.concurrency!
        }
        if self.drainNode != nil {
            map["drain_node"] = self.drainNode!
        }
        if self.instanceIdsShrink != nil {
            map["instance_ids"] = self.instanceIdsShrink!
        }
        if self.nodesShrink != nil {
            map["nodes"] = self.nodesShrink!
        }
        if self.releaseNode != nil {
            map["release_node"] = self.releaseNode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("concurrency") && dict["concurrency"] != nil {
            self.concurrency = dict["concurrency"] as! Bool
        }
        if dict.keys.contains("drain_node") && dict["drain_node"] != nil {
            self.drainNode = dict["drain_node"] as! Bool
        }
        if dict.keys.contains("instance_ids") && dict["instance_ids"] != nil {
            self.instanceIdsShrink = dict["instance_ids"] as! String
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodesShrink = dict["nodes"] as! String
        }
        if dict.keys.contains("release_node") && dict["release_node"] != nil {
            self.releaseNode = dict["release_node"] as! Bool
        }
    }
}

public class RemoveNodePoolNodesResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class RemoveNodePoolNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RemoveNodePoolNodesResponseBody?

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
            var model = RemoveNodePoolNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RemoveWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class RepairClusterNodePoolRequest : Tea.TeaModel {
    public var autoRestart: Bool?

    public var nodes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRestart != nil {
            map["auto_restart"] = self.autoRestart!
        }
        if self.nodes != nil {
            map["nodes"] = self.nodes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("auto_restart") && dict["auto_restart"] != nil {
            self.autoRestart = dict["auto_restart"] as! Bool
        }
        if dict.keys.contains("nodes") && dict["nodes"] != nil {
            self.nodes = dict["nodes"] as! [String]
        }
    }
}

public class RepairClusterNodePoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class RepairClusterNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RepairClusterNodePoolResponseBody?

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
            var model = RepairClusterNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResumeComponentUpgradeResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ResumeTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class ResumeUpgradeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class RunClusterCheckRequest : Tea.TeaModel {
    public var options: [String: String]?

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
        if self.options != nil {
            map["options"] = self.options!
        }
        if self.type != nil {
            map["type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("options") && dict["options"] != nil {
            self.options = dict["options"] as! [String: String]
        }
        if dict.keys.contains("type") && dict["type"] != nil {
            self.type = dict["type"] as! String
        }
    }
}

public class RunClusterCheckResponseBody : Tea.TeaModel {
    public var checkId: String?

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
        if self.checkId != nil {
            map["check_id"] = self.checkId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("check_id") && dict["check_id"] != nil {
            self.checkId = dict["check_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
    }
}

public class RunClusterCheckResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunClusterCheckResponseBody?

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
            var model = RunClusterCheckResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScaleClusterRequest : Tea.TeaModel {
    public class Tags : Tea.TeaModel {
        public var key: String?

        public override init() {
            super.init()
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
                map["key"] = self.key!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
        }
    }
    public class Taints : Tea.TeaModel {
        public var effect: String?

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
            if self.effect != nil {
                map["effect"] = self.effect!
            }
            if self.key != nil {
                map["key"] = self.key!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("effect") && dict["effect"] != nil {
                self.effect = dict["effect"] as! String
            }
            if dict.keys.contains("key") && dict["key"] != nil {
                self.key = dict["key"] as! String
            }
            if dict.keys.contains("value") && dict["value"] != nil {
                self.value = dict["value"] as! String
            }
        }
    }
    public class WorkerDataDisks : Tea.TeaModel {
        public var category: String?

        public var encrypted: String?

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
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.encrypted != nil {
                map["encrypted"] = self.encrypted!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("encrypted") && dict["encrypted"] != nil {
                self.encrypted = dict["encrypted"] as! String
            }
            if dict.keys.contains("size") && dict["size"] != nil {
                self.size = dict["size"] as! String
            }
        }
    }
    public var cloudMonitorFlags: Bool?

    public var count: Int64?

    public var cpuPolicy: String?

    public var disableRollback: Bool?

    public var keyPair: String?

    public var loginPassword: String?

    public var tags: [ScaleClusterRequest.Tags]?

    public var taints: [ScaleClusterRequest.Taints]?

    public var vswitchIds: [String]?

    public var workerAutoRenew: Bool?

    public var workerAutoRenewPeriod: Int64?

    public var workerDataDisk: Bool?

    public var workerDataDisks: [ScaleClusterRequest.WorkerDataDisks]?

    public var workerInstanceChargeType: String?

    public var workerInstanceTypes: [String]?

    public var workerPeriod: Int64?

    public var workerPeriodUnit: String?

    public var workerSystemDiskCategory: String?

    public var workerSystemDiskSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudMonitorFlags != nil {
            map["cloud_monitor_flags"] = self.cloudMonitorFlags!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.cpuPolicy != nil {
            map["cpu_policy"] = self.cpuPolicy!
        }
        if self.disableRollback != nil {
            map["disable_rollback"] = self.disableRollback!
        }
        if self.keyPair != nil {
            map["key_pair"] = self.keyPair!
        }
        if self.loginPassword != nil {
            map["login_password"] = self.loginPassword!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.vswitchIds != nil {
            map["vswitch_ids"] = self.vswitchIds!
        }
        if self.workerAutoRenew != nil {
            map["worker_auto_renew"] = self.workerAutoRenew!
        }
        if self.workerAutoRenewPeriod != nil {
            map["worker_auto_renew_period"] = self.workerAutoRenewPeriod!
        }
        if self.workerDataDisk != nil {
            map["worker_data_disk"] = self.workerDataDisk!
        }
        if self.workerDataDisks != nil {
            var tmp : [Any] = []
            for k in self.workerDataDisks! {
                tmp.append(k.toMap())
            }
            map["worker_data_disks"] = tmp
        }
        if self.workerInstanceChargeType != nil {
            map["worker_instance_charge_type"] = self.workerInstanceChargeType!
        }
        if self.workerInstanceTypes != nil {
            map["worker_instance_types"] = self.workerInstanceTypes!
        }
        if self.workerPeriod != nil {
            map["worker_period"] = self.workerPeriod!
        }
        if self.workerPeriodUnit != nil {
            map["worker_period_unit"] = self.workerPeriodUnit!
        }
        if self.workerSystemDiskCategory != nil {
            map["worker_system_disk_category"] = self.workerSystemDiskCategory!
        }
        if self.workerSystemDiskSize != nil {
            map["worker_system_disk_size"] = self.workerSystemDiskSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cloud_monitor_flags") && dict["cloud_monitor_flags"] != nil {
            self.cloudMonitorFlags = dict["cloud_monitor_flags"] as! Bool
        }
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
            self.cpuPolicy = dict["cpu_policy"] as! String
        }
        if dict.keys.contains("disable_rollback") && dict["disable_rollback"] != nil {
            self.disableRollback = dict["disable_rollback"] as! Bool
        }
        if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
            self.keyPair = dict["key_pair"] as! String
        }
        if dict.keys.contains("login_password") && dict["login_password"] != nil {
            self.loginPassword = dict["login_password"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [ScaleClusterRequest.Tags] = []
            for v in dict["tags"] as! [Any] {
                var model = ScaleClusterRequest.Tags()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [ScaleClusterRequest.Taints] = []
            for v in dict["taints"] as! [Any] {
                var model = ScaleClusterRequest.Taints()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
            self.vswitchIds = dict["vswitch_ids"] as! [String]
        }
        if dict.keys.contains("worker_auto_renew") && dict["worker_auto_renew"] != nil {
            self.workerAutoRenew = dict["worker_auto_renew"] as! Bool
        }
        if dict.keys.contains("worker_auto_renew_period") && dict["worker_auto_renew_period"] != nil {
            self.workerAutoRenewPeriod = dict["worker_auto_renew_period"] as! Int64
        }
        if dict.keys.contains("worker_data_disk") && dict["worker_data_disk"] != nil {
            self.workerDataDisk = dict["worker_data_disk"] as! Bool
        }
        if dict.keys.contains("worker_data_disks") && dict["worker_data_disks"] != nil {
            var tmp : [ScaleClusterRequest.WorkerDataDisks] = []
            for v in dict["worker_data_disks"] as! [Any] {
                var model = ScaleClusterRequest.WorkerDataDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workerDataDisks = tmp
        }
        if dict.keys.contains("worker_instance_charge_type") && dict["worker_instance_charge_type"] != nil {
            self.workerInstanceChargeType = dict["worker_instance_charge_type"] as! String
        }
        if dict.keys.contains("worker_instance_types") && dict["worker_instance_types"] != nil {
            self.workerInstanceTypes = dict["worker_instance_types"] as! [String]
        }
        if dict.keys.contains("worker_period") && dict["worker_period"] != nil {
            self.workerPeriod = dict["worker_period"] as! Int64
        }
        if dict.keys.contains("worker_period_unit") && dict["worker_period_unit"] != nil {
            self.workerPeriodUnit = dict["worker_period_unit"] as! String
        }
        if dict.keys.contains("worker_system_disk_category") && dict["worker_system_disk_category"] != nil {
            self.workerSystemDiskCategory = dict["worker_system_disk_category"] as! String
        }
        if dict.keys.contains("worker_system_disk_size") && dict["worker_system_disk_size"] != nil {
            self.workerSystemDiskSize = dict["worker_system_disk_size"] as! Int64
        }
    }
}

public class ScaleClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ScaleClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleClusterResponseBody?

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
            var model = ScaleClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScaleClusterNodePoolRequest : Tea.TeaModel {
    public var count: Int64?

    public override init() {
        super.init()
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
            map["count"] = self.count!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int64
        }
    }
}

public class ScaleClusterNodePoolResponseBody : Tea.TeaModel {
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
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ScaleClusterNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleClusterNodePoolResponseBody?

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
            var model = ScaleClusterNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScaleOutClusterRequest : Tea.TeaModel {
    public class WorkerDataDisks : Tea.TeaModel {
        public var autoSnapshotPolicyId: String?

        public var category: String?

        public var encrypted: String?

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
            if self.autoSnapshotPolicyId != nil {
                map["auto_snapshot_policy_id"] = self.autoSnapshotPolicyId!
            }
            if self.category != nil {
                map["category"] = self.category!
            }
            if self.encrypted != nil {
                map["encrypted"] = self.encrypted!
            }
            if self.size != nil {
                map["size"] = self.size!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("auto_snapshot_policy_id") && dict["auto_snapshot_policy_id"] != nil {
                self.autoSnapshotPolicyId = dict["auto_snapshot_policy_id"] as! String
            }
            if dict.keys.contains("category") && dict["category"] != nil {
                self.category = dict["category"] as! String
            }
            if dict.keys.contains("encrypted") && dict["encrypted"] != nil {
                self.encrypted = dict["encrypted"] as! String
            }
            if dict.keys.contains("size") && dict["size"] != nil {
                self.size = dict["size"] as! String
            }
        }
    }
    public var cloudMonitorFlags: Bool?

    public var count: Int64?

    public var cpuPolicy: String?

    public var imageId: String?

    public var keyPair: String?

    public var loginPassword: String?

    public var rdsInstances: [String]?

    public var runtime: Runtime?

    public var tags: [Tag]?

    public var taints: [Taint]?

    public var userData: String?

    public var vswitchIds: [String]?

    public var workerAutoRenew: Bool?

    public var workerAutoRenewPeriod: Int64?

    public var workerDataDisks: [ScaleOutClusterRequest.WorkerDataDisks]?

    public var workerInstanceChargeType: String?

    public var workerInstanceTypes: [String]?

    public var workerPeriod: Int64?

    public var workerPeriodUnit: String?

    public var workerSystemDiskCategory: String?

    public var workerSystemDiskSize: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.runtime?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.cloudMonitorFlags != nil {
            map["cloud_monitor_flags"] = self.cloudMonitorFlags!
        }
        if self.count != nil {
            map["count"] = self.count!
        }
        if self.cpuPolicy != nil {
            map["cpu_policy"] = self.cpuPolicy!
        }
        if self.imageId != nil {
            map["image_id"] = self.imageId!
        }
        if self.keyPair != nil {
            map["key_pair"] = self.keyPair!
        }
        if self.loginPassword != nil {
            map["login_password"] = self.loginPassword!
        }
        if self.rdsInstances != nil {
            map["rds_instances"] = self.rdsInstances!
        }
        if self.runtime != nil {
            map["runtime"] = self.runtime?.toMap()
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        if self.taints != nil {
            var tmp : [Any] = []
            for k in self.taints! {
                tmp.append(k.toMap())
            }
            map["taints"] = tmp
        }
        if self.userData != nil {
            map["user_data"] = self.userData!
        }
        if self.vswitchIds != nil {
            map["vswitch_ids"] = self.vswitchIds!
        }
        if self.workerAutoRenew != nil {
            map["worker_auto_renew"] = self.workerAutoRenew!
        }
        if self.workerAutoRenewPeriod != nil {
            map["worker_auto_renew_period"] = self.workerAutoRenewPeriod!
        }
        if self.workerDataDisks != nil {
            var tmp : [Any] = []
            for k in self.workerDataDisks! {
                tmp.append(k.toMap())
            }
            map["worker_data_disks"] = tmp
        }
        if self.workerInstanceChargeType != nil {
            map["worker_instance_charge_type"] = self.workerInstanceChargeType!
        }
        if self.workerInstanceTypes != nil {
            map["worker_instance_types"] = self.workerInstanceTypes!
        }
        if self.workerPeriod != nil {
            map["worker_period"] = self.workerPeriod!
        }
        if self.workerPeriodUnit != nil {
            map["worker_period_unit"] = self.workerPeriodUnit!
        }
        if self.workerSystemDiskCategory != nil {
            map["worker_system_disk_category"] = self.workerSystemDiskCategory!
        }
        if self.workerSystemDiskSize != nil {
            map["worker_system_disk_size"] = self.workerSystemDiskSize!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cloud_monitor_flags") && dict["cloud_monitor_flags"] != nil {
            self.cloudMonitorFlags = dict["cloud_monitor_flags"] as! Bool
        }
        if dict.keys.contains("count") && dict["count"] != nil {
            self.count = dict["count"] as! Int64
        }
        if dict.keys.contains("cpu_policy") && dict["cpu_policy"] != nil {
            self.cpuPolicy = dict["cpu_policy"] as! String
        }
        if dict.keys.contains("image_id") && dict["image_id"] != nil {
            self.imageId = dict["image_id"] as! String
        }
        if dict.keys.contains("key_pair") && dict["key_pair"] != nil {
            self.keyPair = dict["key_pair"] as! String
        }
        if dict.keys.contains("login_password") && dict["login_password"] != nil {
            self.loginPassword = dict["login_password"] as! String
        }
        if dict.keys.contains("rds_instances") && dict["rds_instances"] != nil {
            self.rdsInstances = dict["rds_instances"] as! [String]
        }
        if dict.keys.contains("runtime") && dict["runtime"] != nil {
            var model = Runtime()
            model.fromMap(dict["runtime"] as! [String: Any])
            self.runtime = model
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
        }
        if dict.keys.contains("taints") && dict["taints"] != nil {
            var tmp : [Taint] = []
            for v in dict["taints"] as! [Any] {
                var model = Taint()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.taints = tmp
        }
        if dict.keys.contains("user_data") && dict["user_data"] != nil {
            self.userData = dict["user_data"] as! String
        }
        if dict.keys.contains("vswitch_ids") && dict["vswitch_ids"] != nil {
            self.vswitchIds = dict["vswitch_ids"] as! [String]
        }
        if dict.keys.contains("worker_auto_renew") && dict["worker_auto_renew"] != nil {
            self.workerAutoRenew = dict["worker_auto_renew"] as! Bool
        }
        if dict.keys.contains("worker_auto_renew_period") && dict["worker_auto_renew_period"] != nil {
            self.workerAutoRenewPeriod = dict["worker_auto_renew_period"] as! Int64
        }
        if dict.keys.contains("worker_data_disks") && dict["worker_data_disks"] != nil {
            var tmp : [ScaleOutClusterRequest.WorkerDataDisks] = []
            for v in dict["worker_data_disks"] as! [Any] {
                var model = ScaleOutClusterRequest.WorkerDataDisks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.workerDataDisks = tmp
        }
        if dict.keys.contains("worker_instance_charge_type") && dict["worker_instance_charge_type"] != nil {
            self.workerInstanceChargeType = dict["worker_instance_charge_type"] as! String
        }
        if dict.keys.contains("worker_instance_types") && dict["worker_instance_types"] != nil {
            self.workerInstanceTypes = dict["worker_instance_types"] as! [String]
        }
        if dict.keys.contains("worker_period") && dict["worker_period"] != nil {
            self.workerPeriod = dict["worker_period"] as! Int64
        }
        if dict.keys.contains("worker_period_unit") && dict["worker_period_unit"] != nil {
            self.workerPeriodUnit = dict["worker_period_unit"] as! String
        }
        if dict.keys.contains("worker_system_disk_category") && dict["worker_system_disk_category"] != nil {
            self.workerSystemDiskCategory = dict["worker_system_disk_category"] as! String
        }
        if dict.keys.contains("worker_system_disk_size") && dict["worker_system_disk_size"] != nil {
            self.workerSystemDiskSize = dict["worker_system_disk_size"] as! Int64
        }
    }
}

public class ScaleOutClusterResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ScaleOutClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScaleOutClusterResponseBody?

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
            var model = ScaleOutClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ScanClusterVulsResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class ScanClusterVulsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ScanClusterVulsResponseBody?

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
            var model = ScanClusterVulsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartAlertResponseBody : Tea.TeaModel {
    public var msg: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Bool
        }
    }
}

public class StartAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartAlertResponseBody?

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
            var model = StartAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartWorkflowRequest : Tea.TeaModel {
    public var mappingBamOutFilename: String?

    public var mappingBamOutPath: String?

    public var mappingBucketName: String?

    public var mappingFastqFirstFilename: String?

    public var mappingFastqPath: String?

    public var mappingFastqSecondFilename: String?

    public var mappingIsMarkDup: String?

    public var mappingOssRegion: String?

    public var mappingReferencePath: String?

    public var service: String?

    public var wgsBucketName: String?

    public var wgsFastqFirstFilename: String?

    public var wgsFastqPath: String?

    public var wgsFastqSecondFilename: String?

    public var wgsOssRegion: String?

    public var wgsReferencePath: String?

    public var wgsVcfOutFilename: String?

    public var wgsVcfOutPath: String?

    public var workflowType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.mappingBamOutFilename != nil {
            map["mapping_bam_out_filename"] = self.mappingBamOutFilename!
        }
        if self.mappingBamOutPath != nil {
            map["mapping_bam_out_path"] = self.mappingBamOutPath!
        }
        if self.mappingBucketName != nil {
            map["mapping_bucket_name"] = self.mappingBucketName!
        }
        if self.mappingFastqFirstFilename != nil {
            map["mapping_fastq_first_filename"] = self.mappingFastqFirstFilename!
        }
        if self.mappingFastqPath != nil {
            map["mapping_fastq_path"] = self.mappingFastqPath!
        }
        if self.mappingFastqSecondFilename != nil {
            map["mapping_fastq_second_filename"] = self.mappingFastqSecondFilename!
        }
        if self.mappingIsMarkDup != nil {
            map["mapping_is_mark_dup"] = self.mappingIsMarkDup!
        }
        if self.mappingOssRegion != nil {
            map["mapping_oss_region"] = self.mappingOssRegion!
        }
        if self.mappingReferencePath != nil {
            map["mapping_reference_path"] = self.mappingReferencePath!
        }
        if self.service != nil {
            map["service"] = self.service!
        }
        if self.wgsBucketName != nil {
            map["wgs_bucket_name"] = self.wgsBucketName!
        }
        if self.wgsFastqFirstFilename != nil {
            map["wgs_fastq_first_filename"] = self.wgsFastqFirstFilename!
        }
        if self.wgsFastqPath != nil {
            map["wgs_fastq_path"] = self.wgsFastqPath!
        }
        if self.wgsFastqSecondFilename != nil {
            map["wgs_fastq_second_filename"] = self.wgsFastqSecondFilename!
        }
        if self.wgsOssRegion != nil {
            map["wgs_oss_region"] = self.wgsOssRegion!
        }
        if self.wgsReferencePath != nil {
            map["wgs_reference_path"] = self.wgsReferencePath!
        }
        if self.wgsVcfOutFilename != nil {
            map["wgs_vcf_out_filename"] = self.wgsVcfOutFilename!
        }
        if self.wgsVcfOutPath != nil {
            map["wgs_vcf_out_path"] = self.wgsVcfOutPath!
        }
        if self.workflowType != nil {
            map["workflow_type"] = self.workflowType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("mapping_bam_out_filename") && dict["mapping_bam_out_filename"] != nil {
            self.mappingBamOutFilename = dict["mapping_bam_out_filename"] as! String
        }
        if dict.keys.contains("mapping_bam_out_path") && dict["mapping_bam_out_path"] != nil {
            self.mappingBamOutPath = dict["mapping_bam_out_path"] as! String
        }
        if dict.keys.contains("mapping_bucket_name") && dict["mapping_bucket_name"] != nil {
            self.mappingBucketName = dict["mapping_bucket_name"] as! String
        }
        if dict.keys.contains("mapping_fastq_first_filename") && dict["mapping_fastq_first_filename"] != nil {
            self.mappingFastqFirstFilename = dict["mapping_fastq_first_filename"] as! String
        }
        if dict.keys.contains("mapping_fastq_path") && dict["mapping_fastq_path"] != nil {
            self.mappingFastqPath = dict["mapping_fastq_path"] as! String
        }
        if dict.keys.contains("mapping_fastq_second_filename") && dict["mapping_fastq_second_filename"] != nil {
            self.mappingFastqSecondFilename = dict["mapping_fastq_second_filename"] as! String
        }
        if dict.keys.contains("mapping_is_mark_dup") && dict["mapping_is_mark_dup"] != nil {
            self.mappingIsMarkDup = dict["mapping_is_mark_dup"] as! String
        }
        if dict.keys.contains("mapping_oss_region") && dict["mapping_oss_region"] != nil {
            self.mappingOssRegion = dict["mapping_oss_region"] as! String
        }
        if dict.keys.contains("mapping_reference_path") && dict["mapping_reference_path"] != nil {
            self.mappingReferencePath = dict["mapping_reference_path"] as! String
        }
        if dict.keys.contains("service") && dict["service"] != nil {
            self.service = dict["service"] as! String
        }
        if dict.keys.contains("wgs_bucket_name") && dict["wgs_bucket_name"] != nil {
            self.wgsBucketName = dict["wgs_bucket_name"] as! String
        }
        if dict.keys.contains("wgs_fastq_first_filename") && dict["wgs_fastq_first_filename"] != nil {
            self.wgsFastqFirstFilename = dict["wgs_fastq_first_filename"] as! String
        }
        if dict.keys.contains("wgs_fastq_path") && dict["wgs_fastq_path"] != nil {
            self.wgsFastqPath = dict["wgs_fastq_path"] as! String
        }
        if dict.keys.contains("wgs_fastq_second_filename") && dict["wgs_fastq_second_filename"] != nil {
            self.wgsFastqSecondFilename = dict["wgs_fastq_second_filename"] as! String
        }
        if dict.keys.contains("wgs_oss_region") && dict["wgs_oss_region"] != nil {
            self.wgsOssRegion = dict["wgs_oss_region"] as! String
        }
        if dict.keys.contains("wgs_reference_path") && dict["wgs_reference_path"] != nil {
            self.wgsReferencePath = dict["wgs_reference_path"] as! String
        }
        if dict.keys.contains("wgs_vcf_out_filename") && dict["wgs_vcf_out_filename"] != nil {
            self.wgsVcfOutFilename = dict["wgs_vcf_out_filename"] as! String
        }
        if dict.keys.contains("wgs_vcf_out_path") && dict["wgs_vcf_out_path"] != nil {
            self.wgsVcfOutPath = dict["wgs_vcf_out_path"] as! String
        }
        if dict.keys.contains("workflow_type") && dict["workflow_type"] != nil {
            self.workflowType = dict["workflow_type"] as! String
        }
    }
}

public class StartWorkflowResponseBody : Tea.TeaModel {
    public var jobName: String?

    public override init() {
        super.init()
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("JobName") && dict["JobName"] != nil {
            self.jobName = dict["JobName"] as! String
        }
    }
}

public class StartWorkflowResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartWorkflowResponseBody?

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
            var model = StartWorkflowResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopAlertResponseBody : Tea.TeaModel {
    public var msg: String?

    public var status: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.msg != nil {
            map["msg"] = self.msg!
        }
        if self.status != nil {
            map["status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("msg") && dict["msg"] != nil {
            self.msg = dict["msg"] as! String
        }
        if dict.keys.contains("status") && dict["status"] != nil {
            self.status = dict["status"] as! Bool
        }
    }
}

public class StopAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopAlertResponseBody?

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
            var model = StopAlertResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncClusterNodePoolResponseBody : Tea.TeaModel {
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

public class SyncClusterNodePoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncClusterNodePoolResponseBody?

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
            var model = SyncClusterNodePoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class TagResourcesRequest : Tea.TeaModel {
    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tags: [Tag]?

    public override init() {
        super.init()
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
            map["region_id"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["resource_ids"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resource_type"] = self.resourceType!
        }
        if self.tags != nil {
            var tmp : [Any] = []
            for k in self.tags! {
                tmp.append(k.toMap())
            }
            map["tags"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_ids") && dict["resource_ids"] != nil {
            self.resourceIds = dict["resource_ids"] as! [String]
        }
        if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
            self.resourceType = dict["resource_type"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            var tmp : [Tag] = []
            for v in dict["tags"] as! [Any] {
                var model = Tag()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tags = tmp
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

public class UnInstallClusterAddonsRequest : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var cleanupCloudResources: Bool?

        public var name: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.cleanupCloudResources != nil {
                map["cleanup_cloud_resources"] = self.cleanupCloudResources!
            }
            if self.name != nil {
                map["name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("cleanup_cloud_resources") && dict["cleanup_cloud_resources"] != nil {
                self.cleanupCloudResources = dict["cleanup_cloud_resources"] as! Bool
            }
            if dict.keys.contains("name") && dict["name"] != nil {
                self.name = dict["name"] as! String
            }
        }
    }
    public var addons: [UnInstallClusterAddonsRequest.Addons]?

    public override init() {
        super.init()
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
            map["addons"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("addons") && dict["addons"] != nil {
            var tmp : [UnInstallClusterAddonsRequest.Addons] = []
            for v in dict["addons"] as! [Any] {
                var model = UnInstallClusterAddonsRequest.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
    }
}

public class UnInstallClusterAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UntagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIds: [String]?

    public var resourceType: String?

    public var tagKeys: [String]?

    public override init() {
        super.init()
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
            map["all"] = self.all!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceIds != nil {
            map["resource_ids"] = self.resourceIds!
        }
        if self.resourceType != nil {
            map["resource_type"] = self.resourceType!
        }
        if self.tagKeys != nil {
            map["tag_keys"] = self.tagKeys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") && dict["all"] != nil {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_ids") && dict["resource_ids"] != nil {
            self.resourceIds = dict["resource_ids"] as! [String]
        }
        if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
            self.resourceType = dict["resource_type"] as! String
        }
        if dict.keys.contains("tag_keys") && dict["tag_keys"] != nil {
            self.tagKeys = dict["tag_keys"] as! [String]
        }
    }
}

public class UntagResourcesShrinkRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceIdsShrink: String?

    public var resourceType: String?

    public var tagKeysShrink: String?

    public override init() {
        super.init()
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
            map["all"] = self.all!
        }
        if self.regionId != nil {
            map["region_id"] = self.regionId!
        }
        if self.resourceIdsShrink != nil {
            map["resource_ids"] = self.resourceIdsShrink!
        }
        if self.resourceType != nil {
            map["resource_type"] = self.resourceType!
        }
        if self.tagKeysShrink != nil {
            map["tag_keys"] = self.tagKeysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("all") && dict["all"] != nil {
            self.all = dict["all"] as! Bool
        }
        if dict.keys.contains("region_id") && dict["region_id"] != nil {
            self.regionId = dict["region_id"] as! String
        }
        if dict.keys.contains("resource_ids") && dict["resource_ids"] != nil {
            self.resourceIdsShrink = dict["resource_ids"] as! String
        }
        if dict.keys.contains("resource_type") && dict["resource_type"] != nil {
            self.resourceType = dict["resource_type"] as! String
        }
        if dict.keys.contains("tag_keys") && dict["tag_keys"] != nil {
            self.tagKeysShrink = dict["tag_keys"] as! String
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

public class UpdateContactGroupForAlertResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UpdateControlPlaneLogRequest : Tea.TeaModel {
    public var aliuid: String?

    public var components: [String]?

    public var logProject: String?

    public var logTtl: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aliuid != nil {
            map["aliuid"] = self.aliuid!
        }
        if self.components != nil {
            map["components"] = self.components!
        }
        if self.logProject != nil {
            map["log_project"] = self.logProject!
        }
        if self.logTtl != nil {
            map["log_ttl"] = self.logTtl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("aliuid") && dict["aliuid"] != nil {
            self.aliuid = dict["aliuid"] as! String
        }
        if dict.keys.contains("components") && dict["components"] != nil {
            self.components = dict["components"] as! [String]
        }
        if dict.keys.contains("log_project") && dict["log_project"] != nil {
            self.logProject = dict["log_project"] as! String
        }
        if dict.keys.contains("log_ttl") && dict["log_ttl"] != nil {
            self.logTtl = dict["log_ttl"] as! String
        }
    }
}

public class UpdateControlPlaneLogResponseBody : Tea.TeaModel {
    public var clusterId: String?

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
        if self.clusterId != nil {
            map["cluster_id"] = self.clusterId!
        }
        if self.requestId != nil {
            map["request_id"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("cluster_id") && dict["cluster_id"] != nil {
            self.clusterId = dict["cluster_id"] as! String
        }
        if dict.keys.contains("request_id") && dict["request_id"] != nil {
            self.requestId = dict["request_id"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class UpdateControlPlaneLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateControlPlaneLogResponseBody?

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
            var model = UpdateControlPlaneLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateK8sClusterUserConfigExpireRequest : Tea.TeaModel {
    public var expireHour: Int64?

    public var user: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.expireHour != nil {
            map["expire_hour"] = self.expireHour!
        }
        if self.user != nil {
            map["user"] = self.user!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("expire_hour") && dict["expire_hour"] != nil {
            self.expireHour = dict["expire_hour"] as! Int64
        }
        if dict.keys.contains("user") && dict["user"] != nil {
            self.user = dict["user"] as! String
        }
    }
}

public class UpdateK8sClusterUserConfigExpireResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UpdateTemplateRequest : Tea.TeaModel {
    public var description_: String?

    public var name: String?

    public var tags: String?

    public var template: String?

    public var templateType: String?

    public override init() {
        super.init()
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
            map["description"] = self.description_!
        }
        if self.name != nil {
            map["name"] = self.name!
        }
        if self.tags != nil {
            map["tags"] = self.tags!
        }
        if self.template != nil {
            map["template"] = self.template!
        }
        if self.templateType != nil {
            map["template_type"] = self.templateType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("description") && dict["description"] != nil {
            self.description_ = dict["description"] as! String
        }
        if dict.keys.contains("name") && dict["name"] != nil {
            self.name = dict["name"] as! String
        }
        if dict.keys.contains("tags") && dict["tags"] != nil {
            self.tags = dict["tags"] as! String
        }
        if dict.keys.contains("template") && dict["template"] != nil {
            self.template = dict["template"] as! String
        }
        if dict.keys.contains("template_type") && dict["template_type"] != nil {
            self.templateType = dict["template_type"] as! String
        }
    }
}

public class UpdateTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UpgradeClusterRequest : Tea.TeaModel {
    public var componentName: String?

    public var masterOnly: Bool?

    public var nextVersion: String?

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
        if self.componentName != nil {
            map["component_name"] = self.componentName!
        }
        if self.masterOnly != nil {
            map["master_only"] = self.masterOnly!
        }
        if self.nextVersion != nil {
            map["next_version"] = self.nextVersion!
        }
        if self.version != nil {
            map["version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("component_name") && dict["component_name"] != nil {
            self.componentName = dict["component_name"] as! String
        }
        if dict.keys.contains("master_only") && dict["master_only"] != nil {
            self.masterOnly = dict["master_only"] as! Bool
        }
        if dict.keys.contains("next_version") && dict["next_version"] != nil {
            self.nextVersion = dict["next_version"] as! String
        }
        if dict.keys.contains("version") && dict["version"] != nil {
            self.version = dict["version"] as! String
        }
    }
}

public class UpgradeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UpgradeClusterAddonsRequest : Tea.TeaModel {
    public class Body : Tea.TeaModel {
        public var componentName: String?

        public var config: String?

        public var nextVersion: String?

        public var policy: String?

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
            if self.componentName != nil {
                map["component_name"] = self.componentName!
            }
            if self.config != nil {
                map["config"] = self.config!
            }
            if self.nextVersion != nil {
                map["next_version"] = self.nextVersion!
            }
            if self.policy != nil {
                map["policy"] = self.policy!
            }
            if self.version != nil {
                map["version"] = self.version!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("component_name") && dict["component_name"] != nil {
                self.componentName = dict["component_name"] as! String
            }
            if dict.keys.contains("config") && dict["config"] != nil {
                self.config = dict["config"] as! String
            }
            if dict.keys.contains("next_version") && dict["next_version"] != nil {
                self.nextVersion = dict["next_version"] as! String
            }
            if dict.keys.contains("policy") && dict["policy"] != nil {
                self.policy = dict["policy"] as! String
            }
            if dict.keys.contains("version") && dict["version"] != nil {
                self.version = dict["version"] as! String
            }
        }
    }
    public var body: [UpgradeClusterAddonsRequest.Body]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.body != nil {
            var tmp : [Any] = []
            for k in self.body! {
                tmp.append(k.toMap())
            }
            map["body"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") && dict["body"] != nil {
            var tmp : [UpgradeClusterAddonsRequest.Body] = []
            for v in dict["body"] as! [Any] {
                var model = UpgradeClusterAddonsRequest.Body()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.body = tmp
        }
    }
}

public class UpgradeClusterAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

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
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.headers != nil {
            map["headers"] = self.headers!
        }
        if self.statusCode != nil {
            map["statusCode"] = self.statusCode!
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
    }
}

public class UpgradeClusterNodepoolRequest : Tea.TeaModel {
    public var imageId: String?

    public var kubernetesVersion: String?

    public var runtimeType: String?

    public var runtimeVersion: String?

    public override init() {
        super.init()
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
            map["image_id"] = self.imageId!
        }
        if self.kubernetesVersion != nil {
            map["kubernetes_version"] = self.kubernetesVersion!
        }
        if self.runtimeType != nil {
            map["runtime_type"] = self.runtimeType!
        }
        if self.runtimeVersion != nil {
            map["runtime_version"] = self.runtimeVersion!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("image_id") && dict["image_id"] != nil {
            self.imageId = dict["image_id"] as! String
        }
        if dict.keys.contains("kubernetes_version") && dict["kubernetes_version"] != nil {
            self.kubernetesVersion = dict["kubernetes_version"] as! String
        }
        if dict.keys.contains("runtime_type") && dict["runtime_type"] != nil {
            self.runtimeType = dict["runtime_type"] as! String
        }
        if dict.keys.contains("runtime_version") && dict["runtime_version"] != nil {
            self.runtimeVersion = dict["runtime_version"] as! String
        }
    }
}

public class UpgradeClusterNodepoolResponseBody : Tea.TeaModel {
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["task_id"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") && dict["RequestId"] != nil {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("task_id") && dict["task_id"] != nil {
            self.taskId = dict["task_id"] as! String
        }
    }
}

public class UpgradeClusterNodepoolResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClusterNodepoolResponseBody?

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
            var model = UpgradeClusterNodepoolResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
