import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class ContainerInfo : Tea.TeaModel {
    public var currentReaon: String?

    public var currentStatus: String?

    public var currentTimestamp: String?

    public var image: String?

    public var lastReason: String?

    public var lastStatus: String?

    public var lastTimestamp: String?

    public var name: String?

    public var port: Int32?

    public var ready: Bool?

    public var restartCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentReaon != nil {
            map["CurrentReaon"] = self.currentReaon!
        }
        if self.currentStatus != nil {
            map["CurrentStatus"] = self.currentStatus!
        }
        if self.currentTimestamp != nil {
            map["CurrentTimestamp"] = self.currentTimestamp!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.lastReason != nil {
            map["LastReason"] = self.lastReason!
        }
        if self.lastStatus != nil {
            map["LastStatus"] = self.lastStatus!
        }
        if self.lastTimestamp != nil {
            map["LastTimestamp"] = self.lastTimestamp!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        if self.ready != nil {
            map["Ready"] = self.ready!
        }
        if self.restartCount != nil {
            map["RestartCount"] = self.restartCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentReaon"] as? String {
            self.currentReaon = value
        }
        if let value = dict["CurrentStatus"] as? String {
            self.currentStatus = value
        }
        if let value = dict["CurrentTimestamp"] as? String {
            self.currentTimestamp = value
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["LastReason"] as? String {
            self.lastReason = value
        }
        if let value = dict["LastStatus"] as? String {
            self.lastStatus = value
        }
        if let value = dict["LastTimestamp"] as? String {
            self.lastTimestamp = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Port"] as? Int32 {
            self.port = value
        }
        if let value = dict["Ready"] as? Bool {
            self.ready = value
        }
        if let value = dict["RestartCount"] as? Int32 {
            self.restartCount = value
        }
    }
}

public class Group : Tea.TeaModel {
    public var accessToken: String?

    public var clusterId: String?

    public var createTime: String?

    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var name: String?

    public var queueService: String?

    public var trafficMode: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
            map["AccessToken"] = self.accessToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.internetEndpoint != nil {
            map["InternetEndpoint"] = self.internetEndpoint!
        }
        if self.intranetEndpoint != nil {
            map["IntranetEndpoint"] = self.intranetEndpoint!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.queueService != nil {
            map["QueueService"] = self.queueService!
        }
        if self.trafficMode != nil {
            map["TrafficMode"] = self.trafficMode!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["InternetEndpoint"] as? String {
            self.internetEndpoint = value
        }
        if let value = dict["IntranetEndpoint"] as? String {
            self.intranetEndpoint = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["QueueService"] as? String {
            self.queueService = value
        }
        if let value = dict["TrafficMode"] as? String {
            self.trafficMode = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class Instance : Tea.TeaModel {
    public var currentAmount: Double?

    public var externalIP: String?

    public var externalInstancePort: Int32?

    public var hostIP: String?

    public var hostName: String?

    public var innerIP: String?

    public var instanceName: String?

    public var instancePort: Int32?

    public var instanceType: String?

    public var isLatest: Bool?

    public var isSpot: Bool?

    public var isolated: Bool?

    public var lastState: [[String: Any]]?

    public var namespace: String?

    public var originalAmount: Double?

    public var readyProcesses: Int32?

    public var reason: String?

    public var resourceType: String?

    public var restartCount: Int32?

    public var role: String?

    public var startAt: String?

    public var startTime: String?

    public var status: String?

    public var tenantHostIP: String?

    public var tenantInstanceIP: String?

    public var totalProcesses: Int32?

    public var zone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.currentAmount != nil {
            map["CurrentAmount"] = self.currentAmount!
        }
        if self.externalIP != nil {
            map["ExternalIP"] = self.externalIP!
        }
        if self.externalInstancePort != nil {
            map["ExternalInstancePort"] = self.externalInstancePort!
        }
        if self.hostIP != nil {
            map["HostIP"] = self.hostIP!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.innerIP != nil {
            map["InnerIP"] = self.innerIP!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instancePort != nil {
            map["InstancePort"] = self.instancePort!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isLatest != nil {
            map["IsLatest"] = self.isLatest!
        }
        if self.isSpot != nil {
            map["IsSpot"] = self.isSpot!
        }
        if self.isolated != nil {
            map["Isolated"] = self.isolated!
        }
        if self.lastState != nil {
            map["LastState"] = self.lastState!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.originalAmount != nil {
            map["OriginalAmount"] = self.originalAmount!
        }
        if self.readyProcesses != nil {
            map["ReadyProcesses"] = self.readyProcesses!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.restartCount != nil {
            map["RestartCount"] = self.restartCount!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.startAt != nil {
            map["StartAt"] = self.startAt!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.tenantHostIP != nil {
            map["TenantHostIP"] = self.tenantHostIP!
        }
        if self.tenantInstanceIP != nil {
            map["TenantInstanceIP"] = self.tenantInstanceIP!
        }
        if self.totalProcesses != nil {
            map["TotalProcesses"] = self.totalProcesses!
        }
        if self.zone != nil {
            map["Zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CurrentAmount"] as? Double {
            self.currentAmount = value
        }
        if let value = dict["ExternalIP"] as? String {
            self.externalIP = value
        }
        if let value = dict["ExternalInstancePort"] as? Int32 {
            self.externalInstancePort = value
        }
        if let value = dict["HostIP"] as? String {
            self.hostIP = value
        }
        if let value = dict["HostName"] as? String {
            self.hostName = value
        }
        if let value = dict["InnerIP"] as? String {
            self.innerIP = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstancePort"] as? Int32 {
            self.instancePort = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsLatest"] as? Bool {
            self.isLatest = value
        }
        if let value = dict["IsSpot"] as? Bool {
            self.isSpot = value
        }
        if let value = dict["Isolated"] as? Bool {
            self.isolated = value
        }
        if let value = dict["LastState"] as? [[String: Any]] {
            self.lastState = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["OriginalAmount"] as? Double {
            self.originalAmount = value
        }
        if let value = dict["ReadyProcesses"] as? Int32 {
            self.readyProcesses = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["RestartCount"] as? Int32 {
            self.restartCount = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["StartAt"] as? String {
            self.startAt = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TenantHostIP"] as? String {
            self.tenantHostIP = value
        }
        if let value = dict["TenantInstanceIP"] as? String {
            self.tenantInstanceIP = value
        }
        if let value = dict["TotalProcesses"] as? Int32 {
            self.totalProcesses = value
        }
        if let value = dict["Zone"] as? String {
            self.zone = value
        }
    }
}

public class Resource : Tea.TeaModel {
    public var clusterId: String?

    public var cpuCount: Int32?

    public var cpuUsed: Int32?

    public var createTime: String?

    public var extraData: [String: Any]?

    public var features: [String]?

    public var gpuCount: Int32?

    public var gpuUsed: Double?

    public var instanceCount: Int32?

    public var instanceMaxAllocatableCPU: Int32?

    public var instanceMaxAllocatableGPU: Double?

    public var instanceMaxAllocatableMemory: Int32?

    public var memory: Int32?

    public var memoryUsed: Int32?

    public var message: String?

    public var postPaidInstanceCount: Int32?

    public var prePaidInstanceCount: Int32?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var status: String?

    public var updateTime: String?

    public var vendor: String?

    public override init() {
        super.init()
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
        if self.cpuCount != nil {
            map["CpuCount"] = self.cpuCount!
        }
        if self.cpuUsed != nil {
            map["CpuUsed"] = self.cpuUsed!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.gpuUsed != nil {
            map["GpuUsed"] = self.gpuUsed!
        }
        if self.instanceCount != nil {
            map["InstanceCount"] = self.instanceCount!
        }
        if self.instanceMaxAllocatableCPU != nil {
            map["InstanceMaxAllocatableCPU"] = self.instanceMaxAllocatableCPU!
        }
        if self.instanceMaxAllocatableGPU != nil {
            map["InstanceMaxAllocatableGPU"] = self.instanceMaxAllocatableGPU!
        }
        if self.instanceMaxAllocatableMemory != nil {
            map["InstanceMaxAllocatableMemory"] = self.instanceMaxAllocatableMemory!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.memoryUsed != nil {
            map["MemoryUsed"] = self.memoryUsed!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.postPaidInstanceCount != nil {
            map["PostPaidInstanceCount"] = self.postPaidInstanceCount!
        }
        if self.prePaidInstanceCount != nil {
            map["PrePaidInstanceCount"] = self.prePaidInstanceCount!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.vendor != nil {
            map["Vendor"] = self.vendor!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["CpuUsed"] as? Int32 {
            self.cpuUsed = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExtraData"] as? [String: Any] {
            self.extraData = value
        }
        if let value = dict["Features"] as? [String] {
            self.features = value
        }
        if let value = dict["GpuCount"] as? Int32 {
            self.gpuCount = value
        }
        if let value = dict["GpuUsed"] as? Double {
            self.gpuUsed = value
        }
        if let value = dict["InstanceCount"] as? Int32 {
            self.instanceCount = value
        }
        if let value = dict["InstanceMaxAllocatableCPU"] as? Int32 {
            self.instanceMaxAllocatableCPU = value
        }
        if let value = dict["InstanceMaxAllocatableGPU"] as? Double {
            self.instanceMaxAllocatableGPU = value
        }
        if let value = dict["InstanceMaxAllocatableMemory"] as? Int32 {
            self.instanceMaxAllocatableMemory = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["MemoryUsed"] as? Int32 {
            self.memoryUsed = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["PostPaidInstanceCount"] as? Int32 {
            self.postPaidInstanceCount = value
        }
        if let value = dict["PrePaidInstanceCount"] as? Int32 {
            self.prePaidInstanceCount = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Vendor"] as? String {
            self.vendor = value
        }
    }
}

public class ResourceInstance : Tea.TeaModel {
    public class Labels : Tea.TeaModel {
        public var labelKey: String?

        public var labelValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labelKey != nil {
                map["LabelKey"] = self.labelKey!
            }
            if self.labelValue != nil {
                map["LabelValue"] = self.labelValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LabelKey"] as? String {
                self.labelKey = value
            }
            if let value = dict["LabelValue"] as? String {
                self.labelValue = value
            }
        }
    }
    public var arch: String?

    public var autoRenewal: Bool?

    public var chargeType: String?

    public var createTime: String?

    public var expiredTime: String?

    public var instanceCpuCount: Int32?

    public var instanceGpuCount: Int32?

    public var instanceGpuMemory: String?

    public var instanceId: String?

    public var instanceIp: String?

    public var instanceMemory: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var instanceSystemDiskSize: Int32?

    public var instanceTenantIp: String?

    public var instanceType: String?

    public var instanceUsedCpu: Double?

    public var instanceUsedGpu: Double?

    public var instanceUsedGpuMemory: String?

    public var instanceUsedMemory: String?

    public var labels: [ResourceInstance.Labels]?

    public var region: String?

    public var resourceId: String?

    public var zone: String?

    public override init() {
        super.init()
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
            map["Arch"] = self.arch!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.expiredTime != nil {
            map["ExpiredTime"] = self.expiredTime!
        }
        if self.instanceCpuCount != nil {
            map["InstanceCpuCount"] = self.instanceCpuCount!
        }
        if self.instanceGpuCount != nil {
            map["InstanceGpuCount"] = self.instanceGpuCount!
        }
        if self.instanceGpuMemory != nil {
            map["InstanceGpuMemory"] = self.instanceGpuMemory!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceIp != nil {
            map["InstanceIp"] = self.instanceIp!
        }
        if self.instanceMemory != nil {
            map["InstanceMemory"] = self.instanceMemory!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceSystemDiskSize != nil {
            map["InstanceSystemDiskSize"] = self.instanceSystemDiskSize!
        }
        if self.instanceTenantIp != nil {
            map["InstanceTenantIp"] = self.instanceTenantIp!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.instanceUsedCpu != nil {
            map["InstanceUsedCpu"] = self.instanceUsedCpu!
        }
        if self.instanceUsedGpu != nil {
            map["InstanceUsedGpu"] = self.instanceUsedGpu!
        }
        if self.instanceUsedGpuMemory != nil {
            map["InstanceUsedGpuMemory"] = self.instanceUsedGpuMemory!
        }
        if self.instanceUsedMemory != nil {
            map["InstanceUsedMemory"] = self.instanceUsedMemory!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.zone != nil {
            map["Zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Arch"] as? String {
            self.arch = value
        }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExpiredTime"] as? String {
            self.expiredTime = value
        }
        if let value = dict["InstanceCpuCount"] as? Int32 {
            self.instanceCpuCount = value
        }
        if let value = dict["InstanceGpuCount"] as? Int32 {
            self.instanceGpuCount = value
        }
        if let value = dict["InstanceGpuMemory"] as? String {
            self.instanceGpuMemory = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceIp"] as? String {
            self.instanceIp = value
        }
        if let value = dict["InstanceMemory"] as? String {
            self.instanceMemory = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceSystemDiskSize"] as? Int32 {
            self.instanceSystemDiskSize = value
        }
        if let value = dict["InstanceTenantIp"] as? String {
            self.instanceTenantIp = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InstanceUsedCpu"] as? Double {
            self.instanceUsedCpu = value
        }
        if let value = dict["InstanceUsedGpu"] as? Double {
            self.instanceUsedGpu = value
        }
        if let value = dict["InstanceUsedGpuMemory"] as? String {
            self.instanceUsedGpuMemory = value
        }
        if let value = dict["InstanceUsedMemory"] as? String {
            self.instanceUsedMemory = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [ResourceInstance.Labels] = []
            for v in value {
                if v != nil {
                    var model = ResourceInstance.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["Zone"] as? String {
            self.zone = value
        }
    }
}

public class ResourceInstanceWorker : Tea.TeaModel {
    public var cpuLimit: Int32?

    public var cpuRequest: Int32?

    public var gpuLimit: Int32?

    public var gpuRequest: Int32?

    public var memoryLimit: Int32?

    public var memoryRquest: Int32?

    public var name: String?

    public var ready: Bool?

    public var restartCount: Int32?

    public var serviceName: String?

    public var startTime: String?

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
        if self.cpuLimit != nil {
            map["CpuLimit"] = self.cpuLimit!
        }
        if self.cpuRequest != nil {
            map["CpuRequest"] = self.cpuRequest!
        }
        if self.gpuLimit != nil {
            map["GpuLimit"] = self.gpuLimit!
        }
        if self.gpuRequest != nil {
            map["GpuRequest"] = self.gpuRequest!
        }
        if self.memoryLimit != nil {
            map["MemoryLimit"] = self.memoryLimit!
        }
        if self.memoryRquest != nil {
            map["MemoryRquest"] = self.memoryRquest!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.ready != nil {
            map["Ready"] = self.ready!
        }
        if self.restartCount != nil {
            map["RestartCount"] = self.restartCount!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CpuLimit"] as? Int32 {
            self.cpuLimit = value
        }
        if let value = dict["CpuRequest"] as? Int32 {
            self.cpuRequest = value
        }
        if let value = dict["GpuLimit"] as? Int32 {
            self.gpuLimit = value
        }
        if let value = dict["GpuRequest"] as? Int32 {
            self.gpuRequest = value
        }
        if let value = dict["MemoryLimit"] as? Int32 {
            self.memoryLimit = value
        }
        if let value = dict["MemoryRquest"] as? Int32 {
            self.memoryRquest = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Ready"] as? Bool {
            self.ready = value
        }
        if let value = dict["RestartCount"] as? Int32 {
            self.restartCount = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class Service : Tea.TeaModel {
    public class InstanceCountInResource : Tea.TeaModel {
        public var dedicated: Int32?

        public var public_: Int32?

        public var quota: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dedicated != nil {
                map["Dedicated"] = self.dedicated!
            }
            if self.public_ != nil {
                map["Public"] = self.public_!
            }
            if self.quota != nil {
                map["Quota"] = self.quota!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Dedicated"] as? Int32 {
                self.dedicated = value
            }
            if let value = dict["Public"] as? Int32 {
                self.public_ = value
            }
            if let value = dict["Quota"] as? Int32 {
                self.quota = value
            }
        }
    }
    public class Labels : Tea.TeaModel {
        public var labelKey: String?

        public var labelValue: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.labelKey != nil {
                map["LabelKey"] = self.labelKey!
            }
            if self.labelValue != nil {
                map["LabelValue"] = self.labelValue!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["LabelKey"] as? String {
                self.labelKey = value
            }
            if let value = dict["LabelValue"] as? String {
                self.labelValue = value
            }
        }
    }
    public var accessToken: String?

    public var appConfig: String?

    public var appSpecName: String?

    public var appType: String?

    public var appVersion: String?

    public var autoscalerEnabled: Bool?

    public var callerUid: String?

    public var cpu: Int32?

    public var createTime: String?

    public var cronscalerEnabled: Bool?

    public var currentVersion: Int32?

    public var extraData: String?

    public var GPUCorePercentage: Int32?

    public var GPUMemory: Int32?

    public var gateway: String?

    public var gpu: Int32?

    public var image: String?

    public var instanceCountInResource: Service.InstanceCountInResource?

    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var labels: [Service.Labels]?

    public var latestVersion: Int32?

    public var memory: Int32?

    public var message: String?

    public var namespace: String?

    public var parentUid: String?

    public var pendingInstance: Int32?

    public var quotaId: String?

    public var reason: String?

    public var region: String?

    public var requestId: String?

    public var resource: String?

    public var resourceAlias: String?

    public var resourceBurstable: Bool?

    public var role: String?

    public var roleAttrs: String?

    public var runningInstance: Int32?

    public var safetyLock: String?

    public var secondaryInternetEndpoint: String?

    public var secondaryIntranetEndpoint: String?

    public var serviceConfig: String?

    public var serviceGroup: String?

    public var serviceId: String?

    public var serviceName: String?

    public var serviceUid: String?

    public var source: String?

    public var status: String?

    public var totalInstance: Int32?

    public var trafficState: String?

    public var updateTime: String?

    public var weight: Int32?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceCountInResource?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.appConfig != nil {
            map["AppConfig"] = self.appConfig!
        }
        if self.appSpecName != nil {
            map["AppSpecName"] = self.appSpecName!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.autoscalerEnabled != nil {
            map["AutoscalerEnabled"] = self.autoscalerEnabled!
        }
        if self.callerUid != nil {
            map["CallerUid"] = self.callerUid!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.cronscalerEnabled != nil {
            map["CronscalerEnabled"] = self.cronscalerEnabled!
        }
        if self.currentVersion != nil {
            map["CurrentVersion"] = self.currentVersion!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.GPUCorePercentage != nil {
            map["GPUCorePercentage"] = self.GPUCorePercentage!
        }
        if self.GPUMemory != nil {
            map["GPUMemory"] = self.GPUMemory!
        }
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.image != nil {
            map["Image"] = self.image!
        }
        if self.instanceCountInResource != nil {
            map["InstanceCountInResource"] = self.instanceCountInResource?.toMap()
        }
        if self.internetEndpoint != nil {
            map["InternetEndpoint"] = self.internetEndpoint!
        }
        if self.intranetEndpoint != nil {
            map["IntranetEndpoint"] = self.intranetEndpoint!
        }
        if self.labels != nil {
            var tmp : [Any] = []
            for k in self.labels! {
                tmp.append(k.toMap())
            }
            map["Labels"] = tmp
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.namespace != nil {
            map["Namespace"] = self.namespace!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.pendingInstance != nil {
            map["PendingInstance"] = self.pendingInstance!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resource != nil {
            map["Resource"] = self.resource!
        }
        if self.resourceAlias != nil {
            map["ResourceAlias"] = self.resourceAlias!
        }
        if self.resourceBurstable != nil {
            map["ResourceBurstable"] = self.resourceBurstable!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.roleAttrs != nil {
            map["RoleAttrs"] = self.roleAttrs!
        }
        if self.runningInstance != nil {
            map["RunningInstance"] = self.runningInstance!
        }
        if self.safetyLock != nil {
            map["SafetyLock"] = self.safetyLock!
        }
        if self.secondaryInternetEndpoint != nil {
            map["SecondaryInternetEndpoint"] = self.secondaryInternetEndpoint!
        }
        if self.secondaryIntranetEndpoint != nil {
            map["SecondaryIntranetEndpoint"] = self.secondaryIntranetEndpoint!
        }
        if self.serviceConfig != nil {
            map["ServiceConfig"] = self.serviceConfig!
        }
        if self.serviceGroup != nil {
            map["ServiceGroup"] = self.serviceGroup!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceUid != nil {
            map["ServiceUid"] = self.serviceUid!
        }
        if self.source != nil {
            map["Source"] = self.source!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.totalInstance != nil {
            map["TotalInstance"] = self.totalInstance!
        }
        if self.trafficState != nil {
            map["TrafficState"] = self.trafficState!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["AppConfig"] as? String {
            self.appConfig = value
        }
        if let value = dict["AppSpecName"] as? String {
            self.appSpecName = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["AutoscalerEnabled"] as? Bool {
            self.autoscalerEnabled = value
        }
        if let value = dict["CallerUid"] as? String {
            self.callerUid = value
        }
        if let value = dict["Cpu"] as? Int32 {
            self.cpu = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["CronscalerEnabled"] as? Bool {
            self.cronscalerEnabled = value
        }
        if let value = dict["CurrentVersion"] as? Int32 {
            self.currentVersion = value
        }
        if let value = dict["ExtraData"] as? String {
            self.extraData = value
        }
        if let value = dict["GPUCorePercentage"] as? Int32 {
            self.GPUCorePercentage = value
        }
        if let value = dict["GPUMemory"] as? Int32 {
            self.GPUMemory = value
        }
        if let value = dict["Gateway"] as? String {
            self.gateway = value
        }
        if let value = dict["Gpu"] as? Int32 {
            self.gpu = value
        }
        if let value = dict["Image"] as? String {
            self.image = value
        }
        if let value = dict["InstanceCountInResource"] as? [String: Any?] {
            var model = Service.InstanceCountInResource()
            model.fromMap(value)
            self.instanceCountInResource = model
        }
        if let value = dict["InternetEndpoint"] as? String {
            self.internetEndpoint = value
        }
        if let value = dict["IntranetEndpoint"] as? String {
            self.intranetEndpoint = value
        }
        if let value = dict["Labels"] as? [Any?] {
            var tmp : [Service.Labels] = []
            for v in value {
                if v != nil {
                    var model = Service.Labels()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.labels = tmp
        }
        if let value = dict["LatestVersion"] as? Int32 {
            self.latestVersion = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Namespace"] as? String {
            self.namespace = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["PendingInstance"] as? Int32 {
            self.pendingInstance = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resource"] as? String {
            self.resource = value
        }
        if let value = dict["ResourceAlias"] as? String {
            self.resourceAlias = value
        }
        if let value = dict["ResourceBurstable"] as? Bool {
            self.resourceBurstable = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["RoleAttrs"] as? String {
            self.roleAttrs = value
        }
        if let value = dict["RunningInstance"] as? Int32 {
            self.runningInstance = value
        }
        if let value = dict["SafetyLock"] as? String {
            self.safetyLock = value
        }
        if let value = dict["SecondaryInternetEndpoint"] as? String {
            self.secondaryInternetEndpoint = value
        }
        if let value = dict["SecondaryIntranetEndpoint"] as? String {
            self.secondaryIntranetEndpoint = value
        }
        if let value = dict["ServiceConfig"] as? String {
            self.serviceConfig = value
        }
        if let value = dict["ServiceGroup"] as? String {
            self.serviceGroup = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceUid"] as? String {
            self.serviceUid = value
        }
        if let value = dict["Source"] as? String {
            self.source = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TotalInstance"] as? Int32 {
            self.totalInstance = value
        }
        if let value = dict["TrafficState"] as? String {
            self.trafficState = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["Weight"] as? Int32 {
            self.weight = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class AttachGatewayDomainRequest : Tea.TeaModel {
    public class CustomDomain : Tea.TeaModel {
        public var certificateId: String?

        public var domain: String?

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
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var customDomain: AttachGatewayDomainRequest.CustomDomain?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customDomain?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomDomain"] as? [String: Any?] {
            var model = AttachGatewayDomainRequest.CustomDomain()
            model.fromMap(value)
            self.customDomain = model
        }
    }
}

public class AttachGatewayDomainShrinkRequest : Tea.TeaModel {
    public var customDomainShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomainShrink != nil {
            map["CustomDomain"] = self.customDomainShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomDomain"] as? String {
            self.customDomainShrink = value
        }
    }
}

public class AttachGatewayDomainResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class AttachGatewayDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AttachGatewayDomainResponseBody?

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
            var model = AttachGatewayDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CloneServiceRequest : Tea.TeaModel {
    public var labels: [String: String]?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class CloneServiceShrinkRequest : Tea.TeaModel {
    public var labelsShrink: String?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class CloneServiceResponseBody : Tea.TeaModel {
    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var requestId: String?

    public var serviceId: String?

    public var serviceName: String?

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
        if self.internetEndpoint != nil {
            map["InternetEndpoint"] = self.internetEndpoint!
        }
        if self.intranetEndpoint != nil {
            map["IntranetEndpoint"] = self.intranetEndpoint!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InternetEndpoint"] as? String {
            self.internetEndpoint = value
        }
        if let value = dict["IntranetEndpoint"] as? String {
            self.intranetEndpoint = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CloneServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CloneServiceResponseBody?

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
            var model = CloneServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CommitServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CommitServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CommitServiceResponseBody?

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
            var model = CommitServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAclPolicyRequest : Tea.TeaModel {
    public class AclPolicyList : Tea.TeaModel {
        public var comment: String?

        public var entry: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
        }
    }
    public var aclPolicyList: [CreateAclPolicyRequest.AclPolicyList]?

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
        if self.aclPolicyList != nil {
            var tmp : [Any] = []
            for k in self.aclPolicyList! {
                tmp.append(k.toMap())
            }
            map["AclPolicyList"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclPolicyList"] as? [Any?] {
            var tmp : [CreateAclPolicyRequest.AclPolicyList] = []
            for v in value {
                if v != nil {
                    var model = CreateAclPolicyRequest.AclPolicyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclPolicyList = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateAclPolicyShrinkRequest : Tea.TeaModel {
    public var aclPolicyListShrink: String?

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
        if self.aclPolicyListShrink != nil {
            map["AclPolicyList"] = self.aclPolicyListShrink!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclPolicyList"] as? String {
            self.aclPolicyListShrink = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateAclPolicyResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateAclPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAclPolicyResponseBody?

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
            var model = CreateAclPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateAppServiceRequest : Tea.TeaModel {
    public var quotaId: String?

    public var workspaceId: String?

    public var appType: String?

    public var appVersion: String?

    public var config: [String: Any]?

    public var replicas: Int32?

    public var serviceName: String?

    public var serviceSpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceSpec != nil {
            map["ServiceSpec"] = self.serviceSpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["Config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceSpec"] as? String {
            self.serviceSpec = value
        }
    }
}

public class CreateAppServiceResponseBody : Tea.TeaModel {
    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var region: String?

    public var requestId: String?

    public var serviceId: String?

    public var serviceName: String?

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
        if self.internetEndpoint != nil {
            map["InternetEndpoint"] = self.internetEndpoint!
        }
        if self.intranetEndpoint != nil {
            map["IntranetEndpoint"] = self.intranetEndpoint!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InternetEndpoint"] as? String {
            self.internetEndpoint = value
        }
        if let value = dict["IntranetEndpoint"] as? String {
            self.intranetEndpoint = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateAppServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateAppServiceResponseBody?

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
            var model = CreateAppServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateBenchmarkTaskRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class CreateBenchmarkTaskResponseBody : Tea.TeaModel {
    public var message: String?

    public var region: String?

    public var requestId: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
    }
}

public class CreateBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateBenchmarkTaskResponseBody?

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
            var model = CreateBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public var resourceName: String?

    public var autoRenewal: Bool?

    public var chargeType: String?

    public var enableInternet: Bool?

    public var enableIntranet: Bool?

    public var gatewayType: String?

    public var instanceType: String?

    public var name: String?

    public var replicas: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.enableInternet != nil {
            map["EnableInternet"] = self.enableInternet!
        }
        if self.enableIntranet != nil {
            map["EnableIntranet"] = self.enableIntranet!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["EnableInternet"] as? Bool {
            self.enableInternet = value
        }
        if let value = dict["EnableIntranet"] as? Bool {
            self.enableIntranet = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
    }
}

public class CreateGatewayResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var gatewayId: String?

    public var message: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayResponseBody?

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
            var model = CreateGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGatewayIntranetLinkedVpcRequest : Tea.TeaModel {
    public var accountId: String?

    public var enableAuthoritativeDns: Bool?

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
        if self.accountId != nil {
            map["AccountId"] = self.accountId!
        }
        if self.enableAuthoritativeDns != nil {
            map["EnableAuthoritativeDns"] = self.enableAuthoritativeDns!
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
        if let value = dict["AccountId"] as? String {
            self.accountId = value
        }
        if let value = dict["EnableAuthoritativeDns"] as? Bool {
            self.enableAuthoritativeDns = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateGatewayIntranetLinkedVpcResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGatewayIntranetLinkedVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayIntranetLinkedVpcResponseBody?

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
            var model = CreateGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateGatewayIntranetLinkedVpcPeerRequest : Tea.TeaModel {
    public class PeerVpcs : Tea.TeaModel {
        public var region: String?

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
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var peerVpcs: [CreateGatewayIntranetLinkedVpcPeerRequest.PeerVpcs]?

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
        if self.peerVpcs != nil {
            var tmp : [Any] = []
            for k in self.peerVpcs! {
                tmp.append(k.toMap())
            }
            map["PeerVpcs"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PeerVpcs"] as? [Any?] {
            var tmp : [CreateGatewayIntranetLinkedVpcPeerRequest.PeerVpcs] = []
            for v in value {
                if v != nil {
                    var model = CreateGatewayIntranetLinkedVpcPeerRequest.PeerVpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.peerVpcs = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateGatewayIntranetLinkedVpcPeerShrinkRequest : Tea.TeaModel {
    public var peerVpcsShrink: String?

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
        if self.peerVpcsShrink != nil {
            map["PeerVpcs"] = self.peerVpcsShrink!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PeerVpcs"] as? String {
            self.peerVpcsShrink = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class CreateGatewayIntranetLinkedVpcPeerResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateGatewayIntranetLinkedVpcPeerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGatewayIntranetLinkedVpcPeerResponseBody?

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
            var model = CreateGatewayIntranetLinkedVpcPeerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceRequest : Tea.TeaModel {
    public class SelfManagedResourceOptions : Tea.TeaModel {
        public class NodeTolerations : Tea.TeaModel {
            public var effect: String?

            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["effect"] as? String {
                    self.effect = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var externalClusterId: String?

        public var nodeMatchLabels: [String: String]?

        public var nodeTolerations: [CreateResourceRequest.SelfManagedResourceOptions.NodeTolerations]?

        public var roleName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.externalClusterId != nil {
                map["ExternalClusterId"] = self.externalClusterId!
            }
            if self.nodeMatchLabels != nil {
                map["NodeMatchLabels"] = self.nodeMatchLabels!
            }
            if self.nodeTolerations != nil {
                var tmp : [Any] = []
                for k in self.nodeTolerations! {
                    tmp.append(k.toMap())
                }
                map["NodeTolerations"] = tmp
            }
            if self.roleName != nil {
                map["RoleName"] = self.roleName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ExternalClusterId"] as? String {
                self.externalClusterId = value
            }
            if let value = dict["NodeMatchLabels"] as? [String: String] {
                self.nodeMatchLabels = value
            }
            if let value = dict["NodeTolerations"] as? [Any?] {
                var tmp : [CreateResourceRequest.SelfManagedResourceOptions.NodeTolerations] = []
                for v in value {
                    if v != nil {
                        var model = CreateResourceRequest.SelfManagedResourceOptions.NodeTolerations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeTolerations = tmp
            }
            if let value = dict["RoleName"] as? String {
                self.roleName = value
            }
        }
    }
    public var autoRenewal: Bool?

    public var chargeType: String?

    public var ecsInstanceCount: Int32?

    public var ecsInstanceType: String?

    public var labels: [String: String]?

    public var resourceName: String?

    public var resourceType: String?

    public var selfManagedResourceOptions: CreateResourceRequest.SelfManagedResourceOptions?

    public var systemDiskSize: Int32?

    public var zone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.selfManagedResourceOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.ecsInstanceCount != nil {
            map["EcsInstanceCount"] = self.ecsInstanceCount!
        }
        if self.ecsInstanceType != nil {
            map["EcsInstanceType"] = self.ecsInstanceType!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.selfManagedResourceOptions != nil {
            map["SelfManagedResourceOptions"] = self.selfManagedResourceOptions?.toMap()
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.zone != nil {
            map["Zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["EcsInstanceCount"] as? Int32 {
            self.ecsInstanceCount = value
        }
        if let value = dict["EcsInstanceType"] as? String {
            self.ecsInstanceType = value
        }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["SelfManagedResourceOptions"] as? [String: Any?] {
            var model = CreateResourceRequest.SelfManagedResourceOptions()
            model.fromMap(value)
            self.selfManagedResourceOptions = model
        }
        if let value = dict["SystemDiskSize"] as? Int32 {
            self.systemDiskSize = value
        }
        if let value = dict["Zone"] as? String {
            self.zone = value
        }
    }
}

public class CreateResourceResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var instanceIds: [String]?

    public var ownerUid: String?

    public var requestId: String?

    public var resourceId: String?

    public var resourceName: String?

    public override init() {
        super.init()
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
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
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
        if let value = dict["OwnerUid"] as? String {
            self.ownerUid = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
    }
}

public class CreateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceResponseBody?

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
            var model = CreateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceInstancesRequest : Tea.TeaModel {
    public var autoRenewal: Bool?

    public var chargeType: String?

    public var ecsInstanceCount: Int32?

    public var ecsInstanceType: String?

    public var labels: [String: String]?

    public var systemDiskSize: Int32?

    public var userData: String?

    public var zone: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoRenewal != nil {
            map["AutoRenewal"] = self.autoRenewal!
        }
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.ecsInstanceCount != nil {
            map["EcsInstanceCount"] = self.ecsInstanceCount!
        }
        if self.ecsInstanceType != nil {
            map["EcsInstanceType"] = self.ecsInstanceType!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.userData != nil {
            map["UserData"] = self.userData!
        }
        if self.zone != nil {
            map["Zone"] = self.zone!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoRenewal"] as? Bool {
            self.autoRenewal = value
        }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["EcsInstanceCount"] as? Int32 {
            self.ecsInstanceCount = value
        }
        if let value = dict["EcsInstanceType"] as? String {
            self.ecsInstanceType = value
        }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["SystemDiskSize"] as? Int32 {
            self.systemDiskSize = value
        }
        if let value = dict["UserData"] as? String {
            self.userData = value
        }
        if let value = dict["Zone"] as? String {
            self.zone = value
        }
    }
}

public class CreateResourceInstancesResponseBody : Tea.TeaModel {
    public var instanceIds: [String]?

    public var message: String?

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
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateResourceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceInstancesResponseBody?

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
            var model = CreateResourceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateResourceLogRequest : Tea.TeaModel {
    public var logStore: String?

    public var projectName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
    }
}

public class CreateResourceLogResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateResourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateResourceLogResponseBody?

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
            var model = CreateResourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceRequest : Tea.TeaModel {
    public var develop: String?

    public var labels: [String: String]?

    public var workspaceId: String?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.develop != nil {
            map["Develop"] = self.develop!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Develop"] as? String {
            self.develop = value
        }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class CreateServiceShrinkRequest : Tea.TeaModel {
    public var develop: String?

    public var labelsShrink: String?

    public var workspaceId: String?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.develop != nil {
            map["Develop"] = self.develop!
        }
        if self.labelsShrink != nil {
            map["Labels"] = self.labelsShrink!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Develop"] as? String {
            self.develop = value
        }
        if let value = dict["Labels"] as? String {
            self.labelsShrink = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class CreateServiceResponseBody : Tea.TeaModel {
    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var region: String?

    public var requestId: String?

    public var serviceId: String?

    public var serviceName: String?

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
        if self.internetEndpoint != nil {
            map["InternetEndpoint"] = self.internetEndpoint!
        }
        if self.intranetEndpoint != nil {
            map["IntranetEndpoint"] = self.intranetEndpoint!
        }
        if self.region != nil {
            map["Region"] = self.region!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceId != nil {
            map["ServiceId"] = self.serviceId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InternetEndpoint"] as? String {
            self.internetEndpoint = value
        }
        if let value = dict["IntranetEndpoint"] as? String {
            self.intranetEndpoint = value
        }
        if let value = dict["Region"] as? String {
            self.region = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceId"] as? String {
            self.serviceId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class CreateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceResponseBody?

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
            var model = CreateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceAutoScalerRequest : Tea.TeaModel {
    public class Behavior : Tea.TeaModel {
        public class OnZero : Tea.TeaModel {
            public var scaleDownGracePeriodSeconds: Int32?

            public var scaleUpActivationReplicas: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scaleDownGracePeriodSeconds != nil {
                    map["scaleDownGracePeriodSeconds"] = self.scaleDownGracePeriodSeconds!
                }
                if self.scaleUpActivationReplicas != nil {
                    map["scaleUpActivationReplicas"] = self.scaleUpActivationReplicas!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["scaleDownGracePeriodSeconds"] as? Int32 {
                    self.scaleDownGracePeriodSeconds = value
                }
                if let value = dict["scaleUpActivationReplicas"] as? Int32 {
                    self.scaleUpActivationReplicas = value
                }
            }
        }
        public class ScaleDown : Tea.TeaModel {
            public var stabilizationWindowSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stabilizationWindowSeconds != nil {
                    map["stabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["stabilizationWindowSeconds"] as? Int32 {
                    self.stabilizationWindowSeconds = value
                }
            }
        }
        public class ScaleUp : Tea.TeaModel {
            public var stabilizationWindowSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stabilizationWindowSeconds != nil {
                    map["stabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["stabilizationWindowSeconds"] as? Int32 {
                    self.stabilizationWindowSeconds = value
                }
            }
        }
        public var onZero: CreateServiceAutoScalerRequest.Behavior.OnZero?

        public var scaleDown: CreateServiceAutoScalerRequest.Behavior.ScaleDown?

        public var scaleUp: CreateServiceAutoScalerRequest.Behavior.ScaleUp?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.onZero?.validate()
            try self.scaleDown?.validate()
            try self.scaleUp?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.onZero != nil {
                map["onZero"] = self.onZero?.toMap()
            }
            if self.scaleDown != nil {
                map["scaleDown"] = self.scaleDown?.toMap()
            }
            if self.scaleUp != nil {
                map["scaleUp"] = self.scaleUp?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["onZero"] as? [String: Any?] {
                var model = CreateServiceAutoScalerRequest.Behavior.OnZero()
                model.fromMap(value)
                self.onZero = model
            }
            if let value = dict["scaleDown"] as? [String: Any?] {
                var model = CreateServiceAutoScalerRequest.Behavior.ScaleDown()
                model.fromMap(value)
                self.scaleDown = model
            }
            if let value = dict["scaleUp"] as? [String: Any?] {
                var model = CreateServiceAutoScalerRequest.Behavior.ScaleUp()
                model.fromMap(value)
                self.scaleUp = model
            }
        }
    }
    public class ScaleStrategies : Tea.TeaModel {
        public var metricName: String?

        public var service: String?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.service != nil {
                map["service"] = self.service!
            }
            if self.threshold != nil {
                map["threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["service"] as? String {
                self.service = value
            }
            if let value = dict["threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var behavior: CreateServiceAutoScalerRequest.Behavior?

    public var max: Int32?

    public var min: Int32?

    public var scaleStrategies: [CreateServiceAutoScalerRequest.ScaleStrategies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.behavior?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.behavior != nil {
            map["behavior"] = self.behavior?.toMap()
        }
        if self.max != nil {
            map["max"] = self.max!
        }
        if self.min != nil {
            map["min"] = self.min!
        }
        if self.scaleStrategies != nil {
            var tmp : [Any] = []
            for k in self.scaleStrategies! {
                tmp.append(k.toMap())
            }
            map["scaleStrategies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["behavior"] as? [String: Any?] {
            var model = CreateServiceAutoScalerRequest.Behavior()
            model.fromMap(value)
            self.behavior = model
        }
        if let value = dict["max"] as? Int32 {
            self.max = value
        }
        if let value = dict["min"] as? Int32 {
            self.min = value
        }
        if let value = dict["scaleStrategies"] as? [Any?] {
            var tmp : [CreateServiceAutoScalerRequest.ScaleStrategies] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceAutoScalerRequest.ScaleStrategies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleStrategies = tmp
        }
    }
}

public class CreateServiceAutoScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateServiceAutoScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceAutoScalerResponseBody?

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
            var model = CreateServiceAutoScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceCronScalerRequest : Tea.TeaModel {
    public class ScaleJobs : Tea.TeaModel {
        public var name: String?

        public var schedule: String?

        public var targetSize: Int32?

        public var timeZone: String?

        public override init() {
            super.init()
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
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
            if let value = dict["TargetSize"] as? Int32 {
                self.targetSize = value
            }
            if let value = dict["TimeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var excludeDates: [String]?

    public var scaleJobs: [CreateServiceCronScalerRequest.ScaleJobs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeDates != nil {
            map["ExcludeDates"] = self.excludeDates!
        }
        if self.scaleJobs != nil {
            var tmp : [Any] = []
            for k in self.scaleJobs! {
                tmp.append(k.toMap())
            }
            map["ScaleJobs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeDates"] as? [String] {
            self.excludeDates = value
        }
        if let value = dict["ScaleJobs"] as? [Any?] {
            var tmp : [CreateServiceCronScalerRequest.ScaleJobs] = []
            for v in value {
                if v != nil {
                    var model = CreateServiceCronScalerRequest.ScaleJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleJobs = tmp
        }
    }
}

public class CreateServiceCronScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateServiceCronScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceCronScalerResponseBody?

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
            var model = CreateServiceCronScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateServiceMirrorRequest : Tea.TeaModel {
    public var ratio: Int32?

    public var target: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ratio != nil {
            map["Ratio"] = self.ratio!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ratio"] as? Int32 {
            self.ratio = value
        }
        if let value = dict["Target"] as? [String] {
            self.target = value
        }
    }
}

public class CreateServiceMirrorResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class CreateServiceMirrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateServiceMirrorResponseBody?

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
            var model = CreateServiceMirrorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class CreateVirtualResourceRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var instanceType: String?

        public var priority: Int32?

        public var quotaId: String?

        public var region: String?

        public var resourceId: String?

        public var spotPriceLimit: Double?

        public override init() {
            super.init()
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
                map["InstanceType"] = self.instanceType!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["SpotPriceLimit"] as? Double {
                self.spotPriceLimit = value
            }
        }
    }
    public var disableSpotProtectionPeriod: Bool?

    public var resources: [CreateVirtualResourceRequest.Resources]?

    public var virtualResourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disableSpotProtectionPeriod != nil {
            map["DisableSpotProtectionPeriod"] = self.disableSpotProtectionPeriod!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.virtualResourceName != nil {
            map["VirtualResourceName"] = self.virtualResourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableSpotProtectionPeriod"] as? Bool {
            self.disableSpotProtectionPeriod = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [CreateVirtualResourceRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = CreateVirtualResourceRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["VirtualResourceName"] as? String {
            self.virtualResourceName = value
        }
    }
}

public class CreateVirtualResourceResponseBody : Tea.TeaModel {
    public var message: String?

    public var requestId: String?

    public var virtualResourceId: String?

    public override init() {
        super.init()
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
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.virtualResourceId != nil {
            map["VirtualResourceId"] = self.virtualResourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["VirtualResourceId"] as? String {
            self.virtualResourceId = value
        }
    }
}

public class CreateVirtualResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateVirtualResourceResponseBody?

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
            var model = CreateVirtualResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteAclPolicyRequest : Tea.TeaModel {
    public class AclPolicyList : Tea.TeaModel {
        public var comment: String?

        public var entry: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.entry != nil {
                map["Entry"] = self.entry!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Comment"] as? String {
                self.comment = value
            }
            if let value = dict["Entry"] as? String {
                self.entry = value
            }
        }
    }
    public var aclPolicyList: [DeleteAclPolicyRequest.AclPolicyList]?

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
        if self.aclPolicyList != nil {
            var tmp : [Any] = []
            for k in self.aclPolicyList! {
                tmp.append(k.toMap())
            }
            map["AclPolicyList"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclPolicyList"] as? [Any?] {
            var tmp : [DeleteAclPolicyRequest.AclPolicyList] = []
            for v in value {
                if v != nil {
                    var model = DeleteAclPolicyRequest.AclPolicyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.aclPolicyList = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DeleteAclPolicyShrinkRequest : Tea.TeaModel {
    public var aclPolicyListShrink: String?

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
        if self.aclPolicyListShrink != nil {
            map["AclPolicyList"] = self.aclPolicyListShrink!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AclPolicyList"] as? String {
            self.aclPolicyListShrink = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DeleteAclPolicyResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteAclPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteAclPolicyResponseBody?

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
            var model = DeleteAclPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteBenchmarkTaskResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteBenchmarkTaskResponseBody?

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
            var model = DeleteBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayResponseBody?

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
            var model = DeleteGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcRequest : Tea.TeaModel {
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
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayIntranetLinkedVpcResponseBody?

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
            var model = DeleteGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcPeerRequest : Tea.TeaModel {
    public class PeerVpcs : Tea.TeaModel {
        public var region: String?

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
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var peerVpcs: [DeleteGatewayIntranetLinkedVpcPeerRequest.PeerVpcs]?

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
        if self.peerVpcs != nil {
            var tmp : [Any] = []
            for k in self.peerVpcs! {
                tmp.append(k.toMap())
            }
            map["PeerVpcs"] = tmp
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PeerVpcs"] as? [Any?] {
            var tmp : [DeleteGatewayIntranetLinkedVpcPeerRequest.PeerVpcs] = []
            for v in value {
                if v != nil {
                    var model = DeleteGatewayIntranetLinkedVpcPeerRequest.PeerVpcs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.peerVpcs = tmp
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcPeerShrinkRequest : Tea.TeaModel {
    public var peerVpcsShrink: String?

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
        if self.peerVpcsShrink != nil {
            map["PeerVpcs"] = self.peerVpcsShrink!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["PeerVpcs"] as? String {
            self.peerVpcsShrink = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcPeerResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteGatewayIntranetLinkedVpcPeerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGatewayIntranetLinkedVpcPeerResponseBody?

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
            var model = DeleteGatewayIntranetLinkedVpcPeerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceResponseBody?

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
            var model = DeleteResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceDLinkResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceDLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceDLinkResponseBody?

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
            var model = DeleteResourceDLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceInstanceLabelRequest : Tea.TeaModel {
    public var allInstances: Bool?

    public var instanceIds: [String]?

    public var keys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allInstances != nil {
            map["AllInstances"] = self.allInstances!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllInstances"] as? Bool {
            self.allInstances = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Keys"] as? [String] {
            self.keys = value
        }
    }
}

public class DeleteResourceInstanceLabelShrinkRequest : Tea.TeaModel {
    public var allInstances: Bool?

    public var instanceIdsShrink: String?

    public var keysShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allInstances != nil {
            map["AllInstances"] = self.allInstances!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.keysShrink != nil {
            map["Keys"] = self.keysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllInstances"] as? Bool {
            self.allInstances = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["Keys"] as? String {
            self.keysShrink = value
        }
    }
}

public class DeleteResourceInstanceLabelResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceInstanceLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceInstanceLabelResponseBody?

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
            var model = DeleteResourceInstanceLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceInstancesRequest : Tea.TeaModel {
    public var allFailed: Bool?

    public var instanceList: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allFailed != nil {
            map["AllFailed"] = self.allFailed!
        }
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllFailed"] as? Bool {
            self.allFailed = value
        }
        if let value = dict["InstanceList"] as? String {
            self.instanceList = value
        }
    }
}

public class DeleteResourceInstancesResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceInstancesResponseBody?

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
            var model = DeleteResourceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteResourceLogResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteResourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteResourceLogResponseBody?

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
            var model = DeleteResourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceResponseBody?

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
            var model = DeleteServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceAutoScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceAutoScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceAutoScalerResponseBody?

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
            var model = DeleteServiceAutoScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceCronScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceCronScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceCronScalerResponseBody?

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
            var model = DeleteServiceCronScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceInstancesRequest : Tea.TeaModel {
    public var container: String?

    public var instanceList: String?

    public var softRestart: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.container != nil {
            map["Container"] = self.container!
        }
        if self.instanceList != nil {
            map["InstanceList"] = self.instanceList!
        }
        if self.softRestart != nil {
            map["SoftRestart"] = self.softRestart!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Container"] as? String {
            self.container = value
        }
        if let value = dict["InstanceList"] as? String {
            self.instanceList = value
        }
        if let value = dict["SoftRestart"] as? Bool {
            self.softRestart = value
        }
    }
}

public class DeleteServiceInstancesResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceInstancesResponseBody?

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
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceLabelRequest : Tea.TeaModel {
    public var keys: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keys != nil {
            map["Keys"] = self.keys!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? [String] {
            self.keys = value
        }
    }
}

public class DeleteServiceLabelShrinkRequest : Tea.TeaModel {
    public var keysShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.keysShrink != nil {
            map["Keys"] = self.keysShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Keys"] as? String {
            self.keysShrink = value
        }
    }
}

public class DeleteServiceLabelResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceLabelResponseBody?

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
            var model = DeleteServiceLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteServiceMirrorResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteServiceMirrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteServiceMirrorResponseBody?

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
            var model = DeleteServiceMirrorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DeleteVirtualResourceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DeleteVirtualResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteVirtualResourceResponseBody?

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
            var model = DeleteVirtualResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBenchmarkTaskResponseBody : Tea.TeaModel {
    public var availableAgent: Int64?

    public var callerUid: String?

    public var desiredAgent: Int64?

    public var endpoint: String?

    public var message: String?

    public var parentUid: String?

    public var reason: String?

    public var requestId: String?

    public var serviceName: String?

    public var status: String?

    public var taskId: String?

    public var taskName: String?

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
        if self.availableAgent != nil {
            map["AvailableAgent"] = self.availableAgent!
        }
        if self.callerUid != nil {
            map["CallerUid"] = self.callerUid!
        }
        if self.desiredAgent != nil {
            map["DesiredAgent"] = self.desiredAgent!
        }
        if self.endpoint != nil {
            map["Endpoint"] = self.endpoint!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.parentUid != nil {
            map["ParentUid"] = self.parentUid!
        }
        if self.reason != nil {
            map["Reason"] = self.reason!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        if self.taskName != nil {
            map["TaskName"] = self.taskName!
        }
        if self.token != nil {
            map["Token"] = self.token!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AvailableAgent"] as? Int64 {
            self.availableAgent = value
        }
        if let value = dict["CallerUid"] as? String {
            self.callerUid = value
        }
        if let value = dict["DesiredAgent"] as? Int64 {
            self.desiredAgent = value
        }
        if let value = dict["Endpoint"] as? String {
            self.endpoint = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ParentUid"] as? String {
            self.parentUid = value
        }
        if let value = dict["Reason"] as? String {
            self.reason = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["TaskId"] as? String {
            self.taskId = value
        }
        if let value = dict["TaskName"] as? String {
            self.taskName = value
        }
        if let value = dict["Token"] as? String {
            self.token = value
        }
    }
}

public class DescribeBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBenchmarkTaskResponseBody?

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
            var model = DescribeBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeBenchmarkTaskReportRequest : Tea.TeaModel {
    public var reportType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ReportType"] as? String {
            self.reportType = value
        }
    }
}

public class DescribeBenchmarkTaskReportResponseBody : Tea.TeaModel {
    public var data: Any?

    public var reportUrl: String?

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
        if self.data != nil {
            map["Data"] = self.data!
        }
        if self.reportUrl != nil {
            map["ReportUrl"] = self.reportUrl!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Data"] as? Any {
            self.data = value
        }
        if let value = dict["ReportUrl"] as? String {
            self.reportUrl = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeBenchmarkTaskReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeBenchmarkTaskReportResponseBody?

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
            var model = DescribeBenchmarkTaskReportResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGatewayResponseBody : Tea.TeaModel {
    public var chargeType: String?

    public var createTime: String?

    public var externalClusterId: String?

    public var gatewayId: String?

    public var gatewayName: String?

    public var instanceType: String?

    public var internetDomain: String?

    public var internetEnabled: Bool?

    public var internetStatus: String?

    public var intranetDomain: String?

    public var intranetEnabled: Bool?

    public var isDefault: Bool?

    public var replicas: Int32?

    public var requestId: String?

    public var SSLRedirectionEnabled: Bool?

    public var status: String?

    public var updateTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.externalClusterId != nil {
            map["ExternalClusterId"] = self.externalClusterId!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetDomain != nil {
            map["InternetDomain"] = self.internetDomain!
        }
        if self.internetEnabled != nil {
            map["InternetEnabled"] = self.internetEnabled!
        }
        if self.internetStatus != nil {
            map["InternetStatus"] = self.internetStatus!
        }
        if self.intranetDomain != nil {
            map["IntranetDomain"] = self.intranetDomain!
        }
        if self.intranetEnabled != nil {
            map["IntranetEnabled"] = self.intranetEnabled!
        }
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.SSLRedirectionEnabled != nil {
            map["SSLRedirectionEnabled"] = self.SSLRedirectionEnabled!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExternalClusterId"] as? String {
            self.externalClusterId = value
        }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["GatewayName"] as? String {
            self.gatewayName = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["InternetDomain"] as? String {
            self.internetDomain = value
        }
        if let value = dict["InternetEnabled"] as? Bool {
            self.internetEnabled = value
        }
        if let value = dict["InternetStatus"] as? String {
            self.internetStatus = value
        }
        if let value = dict["IntranetDomain"] as? String {
            self.intranetDomain = value
        }
        if let value = dict["IntranetEnabled"] as? Bool {
            self.intranetEnabled = value
        }
        if let value = dict["IsDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SSLRedirectionEnabled"] as? Bool {
            self.SSLRedirectionEnabled = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class DescribeGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGatewayResponseBody?

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
            var model = DescribeGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Group?

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
            var model = Group()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeGroupEndpointsResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public var backendId: String?

        public var endpointType: String?

        public var internetEndpoints: [String]?

        public var intranetEndpoints: [String]?

        public var pathType: String?

        public var port: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendId != nil {
                map["BackendId"] = self.backendId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.internetEndpoints != nil {
                map["InternetEndpoints"] = self.internetEndpoints!
            }
            if self.intranetEndpoints != nil {
                map["IntranetEndpoints"] = self.intranetEndpoints!
            }
            if self.pathType != nil {
                map["PathType"] = self.pathType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendId"] as? String {
                self.backendId = value
            }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["InternetEndpoints"] as? [String] {
                self.internetEndpoints = value
            }
            if let value = dict["IntranetEndpoints"] as? [String] {
                self.intranetEndpoints = value
            }
            if let value = dict["PathType"] as? String {
                self.pathType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
        }
    }
    public var accessToken: String?

    public var endpoints: [DescribeGroupEndpointsResponseBody.Endpoints]?

    public var message: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [DescribeGroupEndpointsResponseBody.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeGroupEndpointsResponseBody.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeGroupEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGroupEndpointsResponseBody?

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
            var model = DescribeGroupEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeMachineSpecRequest : Tea.TeaModel {
    public var instanceTypes: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypes != nil {
            map["InstanceTypes"] = self.instanceTypes!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceTypes"] as? [String] {
            self.instanceTypes = value
        }
    }
}

public class DescribeMachineSpecShrinkRequest : Tea.TeaModel {
    public var instanceTypesShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypesShrink != nil {
            map["InstanceTypes"] = self.instanceTypesShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceTypes"] as? String {
            self.instanceTypesShrink = value
        }
    }
}

public class DescribeMachineSpecResponseBody : Tea.TeaModel {
    public class InstanceMetas : Tea.TeaModel {
        public var CPU: Int32?

        public var GPU: String?

        public var GPUAmount: Int32?

        public var GPUMemory: Double?

        public var instanceType: String?

        public var isAvailable: Bool?

        public var memory: Double?

        public var nonProtectSpotDiscount: Double?

        public var spotDiscount: Double?

        public var stockStatus: String?

        public var vendor: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.GPU != nil {
                map["GPU"] = self.GPU!
            }
            if self.GPUAmount != nil {
                map["GPUAmount"] = self.GPUAmount!
            }
            if self.GPUMemory != nil {
                map["GPUMemory"] = self.GPUMemory!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.isAvailable != nil {
                map["IsAvailable"] = self.isAvailable!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            if self.nonProtectSpotDiscount != nil {
                map["NonProtectSpotDiscount"] = self.nonProtectSpotDiscount!
            }
            if self.spotDiscount != nil {
                map["SpotDiscount"] = self.spotDiscount!
            }
            if self.stockStatus != nil {
                map["StockStatus"] = self.stockStatus!
            }
            if self.vendor != nil {
                map["Vendor"] = self.vendor!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["GPU"] as? String {
                self.GPU = value
            }
            if let value = dict["GPUAmount"] as? Int32 {
                self.GPUAmount = value
            }
            if let value = dict["GPUMemory"] as? Double {
                self.GPUMemory = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["IsAvailable"] as? Bool {
                self.isAvailable = value
            }
            if let value = dict["Memory"] as? Double {
                self.memory = value
            }
            if let value = dict["NonProtectSpotDiscount"] as? Double {
                self.nonProtectSpotDiscount = value
            }
            if let value = dict["SpotDiscount"] as? Double {
                self.spotDiscount = value
            }
            if let value = dict["StockStatus"] as? String {
                self.stockStatus = value
            }
            if let value = dict["Vendor"] as? String {
                self.vendor = value
            }
        }
    }
    public class Types : Tea.TeaModel {
        public var CPU: Int32?

        public var memory: [Int32]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.CPU != nil {
                map["CPU"] = self.CPU!
            }
            if self.memory != nil {
                map["Memory"] = self.memory!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CPU"] as? Int32 {
                self.CPU = value
            }
            if let value = dict["Memory"] as? [Int32] {
                self.memory = value
            }
        }
    }
    public var instanceMetas: [DescribeMachineSpecResponseBody.InstanceMetas]?

    public var requestId: String?

    public var types: [DescribeMachineSpecResponseBody.Types]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceMetas != nil {
            var tmp : [Any] = []
            for k in self.instanceMetas! {
                tmp.append(k.toMap())
            }
            map["InstanceMetas"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.types != nil {
            var tmp : [Any] = []
            for k in self.types! {
                tmp.append(k.toMap())
            }
            map["Types"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceMetas"] as? [Any?] {
            var tmp : [DescribeMachineSpecResponseBody.InstanceMetas] = []
            for v in value {
                if v != nil {
                    var model = DescribeMachineSpecResponseBody.InstanceMetas()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instanceMetas = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Types"] as? [Any?] {
            var tmp : [DescribeMachineSpecResponseBody.Types] = []
            for v in value {
                if v != nil {
                    var model = DescribeMachineSpecResponseBody.Types()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.types = tmp
        }
    }
}

public class DescribeMachineSpecResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeMachineSpecResponseBody?

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
            var model = DescribeMachineSpecResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public var regionId: String?

        public var regionName: String?

        public override init() {
            super.init()
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
            if self.regionName != nil {
                map["RegionName"] = self.regionName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["RegionId"] as? String {
                self.regionId = value
            }
            if let value = dict["RegionName"] as? String {
                self.regionName = value
            }
        }
    }
    public var regions: [DescribeRegionsResponseBody.Regions]?

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
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Regions"] as? [Any?] {
            var tmp : [DescribeRegionsResponseBody.Regions] = []
            for v in value {
                if v != nil {
                    var model = DescribeRegionsResponseBody.Regions()
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

public class DescribeResourceResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var cpuCount: Int32?

    public var cpuUsed: Int32?

    public var createTime: String?

    public var extraData: String?

    public var features: [String]?

    public var gpuCount: Int32?

    public var gpuUsed: Double?

    public var instanceCount: Int32?

    public var instanceMaxAllocatableCPU: Int32?

    public var instanceMaxAllocatableGPU: Double?

    public var instanceMaxAllocatableMemory: Int32?

    public var memory: Int32?

    public var memoryUsed: Int32?

    public var message: String?

    public var ownerUid: String?

    public var postPaidInstanceCount: Int32?

    public var prePaidInstanceCount: Int32?

    public var requestId: String?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var status: String?

    public var updateTime: String?

    public override init() {
        super.init()
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
        if self.cpuCount != nil {
            map["CpuCount"] = self.cpuCount!
        }
        if self.cpuUsed != nil {
            map["CpuUsed"] = self.cpuUsed!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.gpuUsed != nil {
            map["GpuUsed"] = self.gpuUsed!
        }
        if self.instanceCount != nil {
            map["InstanceCount"] = self.instanceCount!
        }
        if self.instanceMaxAllocatableCPU != nil {
            map["InstanceMaxAllocatableCPU"] = self.instanceMaxAllocatableCPU!
        }
        if self.instanceMaxAllocatableGPU != nil {
            map["InstanceMaxAllocatableGPU"] = self.instanceMaxAllocatableGPU!
        }
        if self.instanceMaxAllocatableMemory != nil {
            map["InstanceMaxAllocatableMemory"] = self.instanceMaxAllocatableMemory!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.memoryUsed != nil {
            map["MemoryUsed"] = self.memoryUsed!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.ownerUid != nil {
            map["OwnerUid"] = self.ownerUid!
        }
        if self.postPaidInstanceCount != nil {
            map["PostPaidInstanceCount"] = self.postPaidInstanceCount!
        }
        if self.prePaidInstanceCount != nil {
            map["PrePaidInstanceCount"] = self.prePaidInstanceCount!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ClusterId"] as? String {
            self.clusterId = value
        }
        if let value = dict["CpuCount"] as? Int32 {
            self.cpuCount = value
        }
        if let value = dict["CpuUsed"] as? Int32 {
            self.cpuUsed = value
        }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["ExtraData"] as? String {
            self.extraData = value
        }
        if let value = dict["Features"] as? [String] {
            self.features = value
        }
        if let value = dict["GpuCount"] as? Int32 {
            self.gpuCount = value
        }
        if let value = dict["GpuUsed"] as? Double {
            self.gpuUsed = value
        }
        if let value = dict["InstanceCount"] as? Int32 {
            self.instanceCount = value
        }
        if let value = dict["InstanceMaxAllocatableCPU"] as? Int32 {
            self.instanceMaxAllocatableCPU = value
        }
        if let value = dict["InstanceMaxAllocatableGPU"] as? Double {
            self.instanceMaxAllocatableGPU = value
        }
        if let value = dict["InstanceMaxAllocatableMemory"] as? Int32 {
            self.instanceMaxAllocatableMemory = value
        }
        if let value = dict["Memory"] as? Int32 {
            self.memory = value
        }
        if let value = dict["MemoryUsed"] as? Int32 {
            self.memoryUsed = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["OwnerUid"] as? String {
            self.ownerUid = value
        }
        if let value = dict["PostPaidInstanceCount"] as? Int32 {
            self.postPaidInstanceCount = value
        }
        if let value = dict["PrePaidInstanceCount"] as? Int32 {
            self.prePaidInstanceCount = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
    }
}

public class DescribeResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceResponseBody?

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
            var model = DescribeResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResourceDLinkResponseBody : Tea.TeaModel {
    public var auxVSwitchList: [String]?

    public var destinationCIDRs: String?

    public var requestId: String?

    public var securityGroupId: String?

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
        if self.auxVSwitchList != nil {
            map["AuxVSwitchList"] = self.auxVSwitchList!
        }
        if self.destinationCIDRs != nil {
            map["DestinationCIDRs"] = self.destinationCIDRs!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
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
        if let value = dict["AuxVSwitchList"] as? [String] {
            self.auxVSwitchList = value
        }
        if let value = dict["DestinationCIDRs"] as? String {
            self.destinationCIDRs = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class DescribeResourceDLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceDLinkResponseBody?

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
            var model = DescribeResourceDLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeResourceLogResponseBody : Tea.TeaModel {
    public var logStore: String?

    public var message: String?

    public var projectName: String?

    public var requestId: String?

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
        if self.logStore != nil {
            map["LogStore"] = self.logStore!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.projectName != nil {
            map["ProjectName"] = self.projectName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["LogStore"] as? String {
            self.logStore = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["ProjectName"] as? String {
            self.projectName = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class DescribeResourceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeResourceLogResponseBody?

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
            var model = DescribeResourceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: Service?

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
            var model = Service()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceAutoScalerResponseBody : Tea.TeaModel {
    public class CurrentMetrics : Tea.TeaModel {
        public var metricName: String?

        public var service: String?

        public var value: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.service != nil {
                map["service"] = self.service!
            }
            if self.value != nil {
                map["value"] = self.value!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["service"] as? String {
                self.service = value
            }
            if let value = dict["value"] as? Double {
                self.value = value
            }
        }
    }
    public class ScaleStrategies : Tea.TeaModel {
        public var metricName: String?

        public var service: String?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.service != nil {
                map["service"] = self.service!
            }
            if self.threshold != nil {
                map["threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["service"] as? String {
                self.service = value
            }
            if let value = dict["threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var behavior: [String: Any]?

    public var currentMetrics: [DescribeServiceAutoScalerResponseBody.CurrentMetrics]?

    public var maxReplica: Int32?

    public var minReplica: Int32?

    public var requestId: String?

    public var scaleStrategies: [DescribeServiceAutoScalerResponseBody.ScaleStrategies]?

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
        if self.behavior != nil {
            map["Behavior"] = self.behavior!
        }
        if self.currentMetrics != nil {
            var tmp : [Any] = []
            for k in self.currentMetrics! {
                tmp.append(k.toMap())
            }
            map["CurrentMetrics"] = tmp
        }
        if self.maxReplica != nil {
            map["MaxReplica"] = self.maxReplica!
        }
        if self.minReplica != nil {
            map["MinReplica"] = self.minReplica!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scaleStrategies != nil {
            var tmp : [Any] = []
            for k in self.scaleStrategies! {
                tmp.append(k.toMap())
            }
            map["ScaleStrategies"] = tmp
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Behavior"] as? [String: Any] {
            self.behavior = value
        }
        if let value = dict["CurrentMetrics"] as? [Any?] {
            var tmp : [DescribeServiceAutoScalerResponseBody.CurrentMetrics] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceAutoScalerResponseBody.CurrentMetrics()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.currentMetrics = tmp
        }
        if let value = dict["MaxReplica"] as? Int32 {
            self.maxReplica = value
        }
        if let value = dict["MinReplica"] as? Int32 {
            self.minReplica = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScaleStrategies"] as? [Any?] {
            var tmp : [DescribeServiceAutoScalerResponseBody.ScaleStrategies] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceAutoScalerResponseBody.ScaleStrategies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleStrategies = tmp
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class DescribeServiceAutoScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceAutoScalerResponseBody?

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
            var model = DescribeServiceAutoScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceCronScalerResponseBody : Tea.TeaModel {
    public class ScaleJobs : Tea.TeaModel {
        public var createTime: String?

        public var lastProbeTime: String?

        public var message: String?

        public var name: String?

        public var schedule: String?

        public var state: String?

        public var targetSize: Int32?

        public override init() {
            super.init()
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
            if self.lastProbeTime != nil {
                map["LastProbeTime"] = self.lastProbeTime!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["LastProbeTime"] as? String {
                self.lastProbeTime = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
            if let value = dict["State"] as? String {
                self.state = value
            }
            if let value = dict["TargetSize"] as? Int32 {
                self.targetSize = value
            }
        }
    }
    public var excludeDates: [String]?

    public var requestId: String?

    public var scaleJobs: [DescribeServiceCronScalerResponseBody.ScaleJobs]?

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
        if self.excludeDates != nil {
            map["ExcludeDates"] = self.excludeDates!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.scaleJobs != nil {
            var tmp : [Any] = []
            for k in self.scaleJobs! {
                tmp.append(k.toMap())
            }
            map["ScaleJobs"] = tmp
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeDates"] as? [String] {
            self.excludeDates = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ScaleJobs"] as? [Any?] {
            var tmp : [DescribeServiceCronScalerResponseBody.ScaleJobs] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceCronScalerResponseBody.ScaleJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleJobs = tmp
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class DescribeServiceCronScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceCronScalerResponseBody?

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
            var model = DescribeServiceCronScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceDiagnosisResponseBody : Tea.TeaModel {
    public class DiagnosisList : Tea.TeaModel {
        public var advices: [String]?

        public var causes: [String]?

        public var error: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advices != nil {
                map["Advices"] = self.advices!
            }
            if self.causes != nil {
                map["Causes"] = self.causes!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Advices"] as? [String] {
                self.advices = value
            }
            if let value = dict["Causes"] as? [String] {
                self.causes = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
        }
    }
    public var diagnosisList: [DescribeServiceDiagnosisResponseBody.DiagnosisList]?

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
        if self.diagnosisList != nil {
            var tmp : [Any] = []
            for k in self.diagnosisList! {
                tmp.append(k.toMap())
            }
            map["DiagnosisList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DiagnosisList"] as? [Any?] {
            var tmp : [DescribeServiceDiagnosisResponseBody.DiagnosisList] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceDiagnosisResponseBody.DiagnosisList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.diagnosisList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceDiagnosisResponseBody?

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
            var model = DescribeServiceDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceEndpointsResponseBody : Tea.TeaModel {
    public class Endpoints : Tea.TeaModel {
        public var backendId: String?

        public var endpointType: String?

        public var internetEndpoints: [String]?

        public var intranetEndpoints: [String]?

        public var pathType: String?

        public var port: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backendId != nil {
                map["BackendId"] = self.backendId!
            }
            if self.endpointType != nil {
                map["EndpointType"] = self.endpointType!
            }
            if self.internetEndpoints != nil {
                map["InternetEndpoints"] = self.internetEndpoints!
            }
            if self.intranetEndpoints != nil {
                map["IntranetEndpoints"] = self.intranetEndpoints!
            }
            if self.pathType != nil {
                map["PathType"] = self.pathType!
            }
            if self.port != nil {
                map["Port"] = self.port!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BackendId"] as? String {
                self.backendId = value
            }
            if let value = dict["EndpointType"] as? String {
                self.endpointType = value
            }
            if let value = dict["InternetEndpoints"] as? [String] {
                self.internetEndpoints = value
            }
            if let value = dict["IntranetEndpoints"] as? [String] {
                self.intranetEndpoints = value
            }
            if let value = dict["PathType"] as? String {
                self.pathType = value
            }
            if let value = dict["Port"] as? Int32 {
                self.port = value
            }
        }
    }
    public var accessToken: String?

    public var endpoints: [DescribeServiceEndpointsResponseBody.Endpoints]?

    public var message: String?

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
        if self.accessToken != nil {
            map["AccessToken"] = self.accessToken!
        }
        if self.endpoints != nil {
            var tmp : [Any] = []
            for k in self.endpoints! {
                tmp.append(k.toMap())
            }
            map["Endpoints"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AccessToken"] as? String {
            self.accessToken = value
        }
        if let value = dict["Endpoints"] as? [Any?] {
            var tmp : [DescribeServiceEndpointsResponseBody.Endpoints] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceEndpointsResponseBody.Endpoints()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.endpoints = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceEndpointsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceEndpointsResponseBody?

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
            var model = DescribeServiceEndpointsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceEventRequest : Tea.TeaModel {
    public var endTime: String?

    public var eventType: String?

    public var instanceName: String?

    public var pageNum: String?

    public var pageSize: String?

    public var startTime: String?

    public override init() {
        super.init()
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
        if self.eventType != nil {
            map["EventType"] = self.eventType!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["EventType"] as? String {
            self.eventType = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["PageNum"] as? String {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeServiceEventResponseBody : Tea.TeaModel {
    public class Events : Tea.TeaModel {
        public var message: String?

        public var reason: String?

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
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.reason != nil {
                map["Reason"] = self.reason!
            }
            if self.time != nil {
                map["Time"] = self.time!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Reason"] as? String {
                self.reason = value
            }
            if let value = dict["Time"] as? String {
                self.time = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var events: [DescribeServiceEventResponseBody.Events]?

    public var pageNum: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public var totalPageNum: Int64?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.events != nil {
            var tmp : [Any] = []
            for k in self.events! {
                tmp.append(k.toMap())
            }
            map["Events"] = tmp
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Events"] as? [Any?] {
            var tmp : [DescribeServiceEventResponseBody.Events] = []
            for v in value {
                if v != nil {
                    var model = DescribeServiceEventResponseBody.Events()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.events = tmp
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalPageNum"] as? Int64 {
            self.totalPageNum = value
        }
    }
}

public class DescribeServiceEventResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceEventResponseBody?

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
            var model = DescribeServiceEventResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceInstanceDiagnosisResponseBody : Tea.TeaModel {
    public class Diagnosis : Tea.TeaModel {
        public var advices: [String]?

        public var causes: [String]?

        public var error: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.advices != nil {
                map["Advices"] = self.advices!
            }
            if self.causes != nil {
                map["Causes"] = self.causes!
            }
            if self.error != nil {
                map["Error"] = self.error!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Advices"] as? [String] {
                self.advices = value
            }
            if let value = dict["Causes"] as? [String] {
                self.causes = value
            }
            if let value = dict["Error"] as? String {
                self.error = value
            }
        }
    }
    public var diagnosis: DescribeServiceInstanceDiagnosisResponseBody.Diagnosis?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.diagnosis?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.diagnosis != nil {
            map["Diagnosis"] = self.diagnosis?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Diagnosis"] as? [String: Any?] {
            var model = DescribeServiceInstanceDiagnosisResponseBody.Diagnosis()
            model.fromMap(value)
            self.diagnosis = model
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DescribeServiceInstanceDiagnosisResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceInstanceDiagnosisResponseBody?

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
            var model = DescribeServiceInstanceDiagnosisResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceLogRequest : Tea.TeaModel {
    public var containerName: String?

    public var endTime: String?

    public var instanceName: String?

    public var ip: String?

    public var keyword: String?

    public var pageNum: Int64?

    public var pageSize: Int64?

    public var previous: Bool?

    public var startTime: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerName != nil {
            map["ContainerName"] = self.containerName!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.ip != nil {
            map["Ip"] = self.ip!
        }
        if self.keyword != nil {
            map["Keyword"] = self.keyword!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.previous != nil {
            map["Previous"] = self.previous!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ContainerName"] as? String {
            self.containerName = value
        }
        if let value = dict["EndTime"] as? String {
            self.endTime = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["Ip"] as? String {
            self.ip = value
        }
        if let value = dict["Keyword"] as? String {
            self.keyword = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["PageSize"] as? Int64 {
            self.pageSize = value
        }
        if let value = dict["Previous"] as? Bool {
            self.previous = value
        }
        if let value = dict["StartTime"] as? String {
            self.startTime = value
        }
    }
}

public class DescribeServiceLogResponseBody : Tea.TeaModel {
    public var logs: [String]?

    public var pageNum: Int64?

    public var requestId: String?

    public var totalCount: Int64?

    public var totalPageNum: Int64?

    public override init() {
        super.init()
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
            map["Logs"] = self.logs!
        }
        if self.pageNum != nil {
            map["PageNum"] = self.pageNum!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.totalPageNum != nil {
            map["TotalPageNum"] = self.totalPageNum!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Logs"] as? [String] {
            self.logs = value
        }
        if let value = dict["PageNum"] as? Int64 {
            self.pageNum = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["TotalPageNum"] as? Int64 {
            self.totalPageNum = value
        }
    }
}

public class DescribeServiceLogResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceLogResponseBody?

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
            var model = DescribeServiceLogResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceMirrorResponseBody : Tea.TeaModel {
    public var ratio: String?

    public var requestId: String?

    public var serviceName: String?

    public var target: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ratio != nil {
            map["Ratio"] = self.ratio!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ratio"] as? String {
            self.ratio = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Target"] as? String {
            self.target = value
        }
    }
}

public class DescribeServiceMirrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceMirrorResponseBody?

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
            var model = DescribeServiceMirrorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeServiceSignedUrlRequest : Tea.TeaModel {
    public var expire: Int64?

    public var internal_: Bool?

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
        if self.expire != nil {
            map["Expire"] = self.expire!
        }
        if self.internal_ != nil {
            map["Internal"] = self.internal_!
        }
        if self.type != nil {
            map["Type"] = self.type!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Expire"] as? Int64 {
            self.expire = value
        }
        if let value = dict["Internal"] as? Bool {
            self.internal_ = value
        }
        if let value = dict["Type"] as? String {
            self.type = value
        }
    }
}

public class DescribeServiceSignedUrlResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var signedUrl: String?

    public override init() {
        super.init()
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
        if self.signedUrl != nil {
            map["SignedUrl"] = self.signedUrl!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SignedUrl"] as? String {
            self.signedUrl = value
        }
    }
}

public class DescribeServiceSignedUrlResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeServiceSignedUrlResponseBody?

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
            var model = DescribeServiceSignedUrlResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeSpotDiscountHistoryRequest : Tea.TeaModel {
    public var instanceType: String?

    public var isProtect: Bool?

    public override init() {
        super.init()
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
            map["InstanceType"] = self.instanceType!
        }
        if self.isProtect != nil {
            map["IsProtect"] = self.isProtect!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsProtect"] as? Bool {
            self.isProtect = value
        }
    }
}

public class DescribeSpotDiscountHistoryResponseBody : Tea.TeaModel {
    public class SpotDiscounts : Tea.TeaModel {
        public var instanceType: String?

        public var spotDiscount: String?

        public var timestamp: String?

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
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.spotDiscount != nil {
                map["SpotDiscount"] = self.spotDiscount!
            }
            if self.timestamp != nil {
                map["Timestamp"] = self.timestamp!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["SpotDiscount"] as? String {
                self.spotDiscount = value
            }
            if let value = dict["Timestamp"] as? String {
                self.timestamp = value
            }
            if let value = dict["ZoneId"] as? String {
                self.zoneId = value
            }
        }
    }
    public var requestId: String?

    public var spotDiscounts: [DescribeSpotDiscountHistoryResponseBody.SpotDiscounts]?

    public override init() {
        super.init()
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
        if self.spotDiscounts != nil {
            var tmp : [Any] = []
            for k in self.spotDiscounts! {
                tmp.append(k.toMap())
            }
            map["SpotDiscounts"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["SpotDiscounts"] as? [Any?] {
            var tmp : [DescribeSpotDiscountHistoryResponseBody.SpotDiscounts] = []
            for v in value {
                if v != nil {
                    var model = DescribeSpotDiscountHistoryResponseBody.SpotDiscounts()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.spotDiscounts = tmp
        }
    }
}

public class DescribeSpotDiscountHistoryResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeSpotDiscountHistoryResponseBody?

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
            var model = DescribeSpotDiscountHistoryResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DescribeVirtualResourceResponseBody : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var instanceType: String?

        public var priority: Int32?

        public var quotaId: String?

        public var region: String?

        public var resourceId: String?

        public var spotPriceLimit: Double?

        public override init() {
            super.init()
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
                map["InstanceType"] = self.instanceType!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["SpotPriceLimit"] as? Double {
                self.spotPriceLimit = value
            }
        }
    }
    public var createTime: String?

    public var disableSpotProtectionPeriod: Bool?

    public var features: [String]?

    public var requestId: String?

    public var resources: [DescribeVirtualResourceResponseBody.Resources]?

    public var serviceCount: Int32?

    public var updateTime: String?

    public var virtualResourceId: String?

    public var virtualResourceName: String?

    public override init() {
        super.init()
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
        if self.disableSpotProtectionPeriod != nil {
            map["DisableSpotProtectionPeriod"] = self.disableSpotProtectionPeriod!
        }
        if self.features != nil {
            map["Features"] = self.features!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.serviceCount != nil {
            map["ServiceCount"] = self.serviceCount!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        if self.virtualResourceId != nil {
            map["VirtualResourceId"] = self.virtualResourceId!
        }
        if self.virtualResourceName != nil {
            map["VirtualResourceName"] = self.virtualResourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CreateTime"] as? String {
            self.createTime = value
        }
        if let value = dict["DisableSpotProtectionPeriod"] as? Bool {
            self.disableSpotProtectionPeriod = value
        }
        if let value = dict["Features"] as? [String] {
            self.features = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [DescribeVirtualResourceResponseBody.Resources] = []
            for v in value {
                if v != nil {
                    var model = DescribeVirtualResourceResponseBody.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["ServiceCount"] as? Int32 {
            self.serviceCount = value
        }
        if let value = dict["UpdateTime"] as? String {
            self.updateTime = value
        }
        if let value = dict["VirtualResourceId"] as? String {
            self.virtualResourceId = value
        }
        if let value = dict["VirtualResourceName"] as? String {
            self.virtualResourceName = value
        }
    }
}

public class DescribeVirtualResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeVirtualResourceResponseBody?

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
            var model = DescribeVirtualResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DetachGatewayDomainRequest : Tea.TeaModel {
    public class CustomDomain : Tea.TeaModel {
        public var domain: String?

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
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
        }
    }
    public var customDomain: DetachGatewayDomainRequest.CustomDomain?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.customDomain?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomain != nil {
            map["CustomDomain"] = self.customDomain?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomDomain"] as? [String: Any?] {
            var model = DetachGatewayDomainRequest.CustomDomain()
            model.fromMap(value)
            self.customDomain = model
        }
    }
}

public class DetachGatewayDomainShrinkRequest : Tea.TeaModel {
    public var customDomainShrink: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.customDomainShrink != nil {
            map["CustomDomain"] = self.customDomainShrink!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomDomain"] as? String {
            self.customDomainShrink = value
        }
    }
}

public class DetachGatewayDomainResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DetachGatewayDomainResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DetachGatewayDomainResponseBody?

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
            var model = DetachGatewayDomainResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class DevelopServiceRequest : Tea.TeaModel {
    public var exit: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.exit != nil {
            map["Exit"] = self.exit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Exit"] as? String {
            self.exit = value
        }
    }
}

public class DevelopServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class DevelopServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DevelopServiceResponseBody?

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
            var model = DevelopServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListAclPolicyRequest : Tea.TeaModel {
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ListAclPolicyResponseBody : Tea.TeaModel {
    public class InternetAclPolicyList : Tea.TeaModel {
        public class AclPolicyList : Tea.TeaModel {
            public var comment: String?

            public var entry: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.entry != nil {
                    map["Entry"] = self.entry!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["Entry"] as? String {
                    self.entry = value
                }
            }
        }
        public var aclPolicyList: [ListAclPolicyResponseBody.InternetAclPolicyList.AclPolicyList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclPolicyList != nil {
                var tmp : [Any] = []
                for k in self.aclPolicyList! {
                    tmp.append(k.toMap())
                }
                map["AclPolicyList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclPolicyList"] as? [Any?] {
                var tmp : [ListAclPolicyResponseBody.InternetAclPolicyList.AclPolicyList] = []
                for v in value {
                    if v != nil {
                        var model = ListAclPolicyResponseBody.InternetAclPolicyList.AclPolicyList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aclPolicyList = tmp
            }
        }
    }
    public class IntranetVpcAclPolicyList : Tea.TeaModel {
        public class AclPolicyList : Tea.TeaModel {
            public var comment: String?

            public var entry: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.entry != nil {
                    map["Entry"] = self.entry!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["Comment"] as? String {
                    self.comment = value
                }
                if let value = dict["Entry"] as? String {
                    self.entry = value
                }
            }
        }
        public var aclPolicyList: [ListAclPolicyResponseBody.IntranetVpcAclPolicyList.AclPolicyList]?

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
            if self.aclPolicyList != nil {
                var tmp : [Any] = []
                for k in self.aclPolicyList! {
                    tmp.append(k.toMap())
                }
                map["AclPolicyList"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AclPolicyList"] as? [Any?] {
                var tmp : [ListAclPolicyResponseBody.IntranetVpcAclPolicyList.AclPolicyList] = []
                for v in value {
                    if v != nil {
                        var model = ListAclPolicyResponseBody.IntranetVpcAclPolicyList.AclPolicyList()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.aclPolicyList = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var gatewayId: String?

    public var internetAclPolicyList: [ListAclPolicyResponseBody.InternetAclPolicyList]?

    public var intranetVpcAclPolicyList: [ListAclPolicyResponseBody.IntranetVpcAclPolicyList]?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.internetAclPolicyList != nil {
            var tmp : [Any] = []
            for k in self.internetAclPolicyList! {
                tmp.append(k.toMap())
            }
            map["InternetAclPolicyList"] = tmp
        }
        if self.intranetVpcAclPolicyList != nil {
            var tmp : [Any] = []
            for k in self.intranetVpcAclPolicyList! {
                tmp.append(k.toMap())
            }
            map["IntranetVpcAclPolicyList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["InternetAclPolicyList"] as? [Any?] {
            var tmp : [ListAclPolicyResponseBody.InternetAclPolicyList] = []
            for v in value {
                if v != nil {
                    var model = ListAclPolicyResponseBody.InternetAclPolicyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.internetAclPolicyList = tmp
        }
        if let value = dict["IntranetVpcAclPolicyList"] as? [Any?] {
            var tmp : [ListAclPolicyResponseBody.IntranetVpcAclPolicyList] = []
            for v in value {
                if v != nil {
                    var model = ListAclPolicyResponseBody.IntranetVpcAclPolicyList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.intranetVpcAclPolicyList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListAclPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAclPolicyResponseBody?

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
            var model = ListAclPolicyResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListBenchmarkTaskRequest : Tea.TeaModel {
    public var filter: String?

    public var modelId: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var requestMethod: String?

    public var serviceName: String?

    public var sort: String?

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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.modelId != nil {
            map["ModelId"] = self.modelId!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestMethod != nil {
            map["RequestMethod"] = self.requestMethod!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["ModelId"] as? String {
            self.modelId = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["RequestMethod"] as? String {
            self.requestMethod = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListBenchmarkTaskResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var availableAgent: Int64?

        public var createTime: String?

        public var message: String?

        public var region: String?

        public var serviceName: String?

        public var status: String?

        public var taskId: String?

        public var taskName: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.availableAgent != nil {
                map["AvailableAgent"] = self.availableAgent!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.serviceName != nil {
                map["ServiceName"] = self.serviceName!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskName != nil {
                map["TaskName"] = self.taskName!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["AvailableAgent"] as? Int64 {
                self.availableAgent = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ServiceName"] as? String {
                self.serviceName = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["TaskId"] as? String {
                self.taskId = value
            }
            if let value = dict["TaskName"] as? String {
                self.taskName = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListBenchmarkTaskResponseBody.Tasks]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tasks != nil {
            var tmp : [Any] = []
            for k in self.tasks! {
                tmp.append(k.toMap())
            }
            map["Tasks"] = tmp
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
        if let value = dict["Tasks"] as? [Any?] {
            var tmp : [ListBenchmarkTaskResponseBody.Tasks] = []
            for v in value {
                if v != nil {
                    var model = ListBenchmarkTaskResponseBody.Tasks()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.tasks = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListBenchmarkTaskResponseBody?

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
            var model = ListBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayRequest : Tea.TeaModel {
    public var chargeType: String?

    public var gatewayId: String?

    public var gatewayName: String?

    public var gatewayType: String?

    public var internetEnabled: Bool?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceName: String?

    public var sort: String?

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
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
        }
        if self.gatewayType != nil {
            map["GatewayType"] = self.gatewayType!
        }
        if self.internetEnabled != nil {
            map["InternetEnabled"] = self.internetEnabled!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["GatewayName"] as? String {
            self.gatewayName = value
        }
        if let value = dict["GatewayType"] as? String {
            self.gatewayType = value
        }
        if let value = dict["InternetEnabled"] as? Bool {
            self.internetEnabled = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
    }
}

public class ListGatewayResponseBody : Tea.TeaModel {
    public class Gateways : Tea.TeaModel {
        public var chargeType: String?

        public var createTime: String?

        public var gatewayId: String?

        public var gatewayName: String?

        public var instanceType: String?

        public var internetDomain: String?

        public var internetEnabled: Bool?

        public var intranetDomain: String?

        public var intranetEnabled: Bool?

        public var isDefault: Bool?

        public var replicas: Int32?

        public var SSLRedirectionEnabled: Bool?

        public var status: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.chargeType != nil {
                map["ChargeType"] = self.chargeType!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.gatewayId != nil {
                map["GatewayId"] = self.gatewayId!
            }
            if self.gatewayName != nil {
                map["GatewayName"] = self.gatewayName!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetDomain != nil {
                map["InternetDomain"] = self.internetDomain!
            }
            if self.internetEnabled != nil {
                map["InternetEnabled"] = self.internetEnabled!
            }
            if self.intranetDomain != nil {
                map["IntranetDomain"] = self.intranetDomain!
            }
            if self.intranetEnabled != nil {
                map["IntranetEnabled"] = self.intranetEnabled!
            }
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.replicas != nil {
                map["Replicas"] = self.replicas!
            }
            if self.SSLRedirectionEnabled != nil {
                map["SSLRedirectionEnabled"] = self.SSLRedirectionEnabled!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["ChargeType"] as? String {
                self.chargeType = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["GatewayId"] as? String {
                self.gatewayId = value
            }
            if let value = dict["GatewayName"] as? String {
                self.gatewayName = value
            }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["InternetDomain"] as? String {
                self.internetDomain = value
            }
            if let value = dict["InternetEnabled"] as? Bool {
                self.internetEnabled = value
            }
            if let value = dict["IntranetDomain"] as? String {
                self.intranetDomain = value
            }
            if let value = dict["IntranetEnabled"] as? Bool {
                self.intranetEnabled = value
            }
            if let value = dict["IsDefault"] as? Bool {
                self.isDefault = value
            }
            if let value = dict["Replicas"] as? Int32 {
                self.replicas = value
            }
            if let value = dict["SSLRedirectionEnabled"] as? Bool {
                self.SSLRedirectionEnabled = value
            }
            if let value = dict["Status"] as? String {
                self.status = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var gateways: [ListGatewayResponseBody.Gateways]?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

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
        if self.gateways != nil {
            var tmp : [Any] = []
            for k in self.gateways! {
                tmp.append(k.toMap())
            }
            map["Gateways"] = tmp
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
        if let value = dict["Gateways"] as? [Any?] {
            var tmp : [ListGatewayResponseBody.Gateways] = []
            for v in value {
                if v != nil {
                    var model = ListGatewayResponseBody.Gateways()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.gateways = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayResponseBody?

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
            var model = ListGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayDomainsResponseBody : Tea.TeaModel {
    public class CustomDomains : Tea.TeaModel {
        public var certificateEndDate: String?

        public var certificateId: String?

        public var certificateName: String?

        public var certificateStartDate: String?

        public var certificateStatus: String?

        public var createTime: String?

        public var domain: String?

        public var type: String?

        public var updateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.certificateEndDate != nil {
                map["CertificateEndDate"] = self.certificateEndDate!
            }
            if self.certificateId != nil {
                map["CertificateId"] = self.certificateId!
            }
            if self.certificateName != nil {
                map["CertificateName"] = self.certificateName!
            }
            if self.certificateStartDate != nil {
                map["CertificateStartDate"] = self.certificateStartDate!
            }
            if self.certificateStatus != nil {
                map["CertificateStatus"] = self.certificateStatus!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.domain != nil {
                map["Domain"] = self.domain!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CertificateEndDate"] as? String {
                self.certificateEndDate = value
            }
            if let value = dict["CertificateId"] as? String {
                self.certificateId = value
            }
            if let value = dict["CertificateName"] as? String {
                self.certificateName = value
            }
            if let value = dict["CertificateStartDate"] as? String {
                self.certificateStartDate = value
            }
            if let value = dict["CertificateStatus"] as? String {
                self.certificateStatus = value
            }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["Domain"] as? String {
                self.domain = value
            }
            if let value = dict["Type"] as? String {
                self.type = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
        }
    }
    public var customDomains: [ListGatewayDomainsResponseBody.CustomDomains]?

    public var message: String?

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
        if self.customDomains != nil {
            var tmp : [Any] = []
            for k in self.customDomains! {
                tmp.append(k.toMap())
            }
            map["CustomDomains"] = tmp
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["CustomDomains"] as? [Any?] {
            var tmp : [ListGatewayDomainsResponseBody.CustomDomains] = []
            for v in value {
                if v != nil {
                    var model = ListGatewayDomainsResponseBody.CustomDomains()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.customDomains = tmp
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGatewayDomainsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayDomainsResponseBody?

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
            var model = ListGatewayDomainsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayIntranetLinkedVpcResponseBody : Tea.TeaModel {
    public class IntranetLinkedVpcList : Tea.TeaModel {
        public var accountId: String?

        public var authoritativeDnsEnabled: Bool?

        public var ip: String?

        public var securityGroupId: String?

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
            if self.accountId != nil {
                map["AccountId"] = self.accountId!
            }
            if self.authoritativeDnsEnabled != nil {
                map["AuthoritativeDnsEnabled"] = self.authoritativeDnsEnabled!
            }
            if self.ip != nil {
                map["Ip"] = self.ip!
            }
            if self.securityGroupId != nil {
                map["SecurityGroupId"] = self.securityGroupId!
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
            if let value = dict["AccountId"] as? String {
                self.accountId = value
            }
            if let value = dict["AuthoritativeDnsEnabled"] as? Bool {
                self.authoritativeDnsEnabled = value
            }
            if let value = dict["Ip"] as? String {
                self.ip = value
            }
            if let value = dict["SecurityGroupId"] as? String {
                self.securityGroupId = value
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
    public var gatewayId: String?

    public var intranetLinkedVpcList: [ListGatewayIntranetLinkedVpcResponseBody.IntranetLinkedVpcList]?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.intranetLinkedVpcList != nil {
            var tmp : [Any] = []
            for k in self.intranetLinkedVpcList! {
                tmp.append(k.toMap())
            }
            map["IntranetLinkedVpcList"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["IntranetLinkedVpcList"] as? [Any?] {
            var tmp : [ListGatewayIntranetLinkedVpcResponseBody.IntranetLinkedVpcList] = []
            for v in value {
                if v != nil {
                    var model = ListGatewayIntranetLinkedVpcResponseBody.IntranetLinkedVpcList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.intranetLinkedVpcList = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGatewayIntranetLinkedVpcResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayIntranetLinkedVpcResponseBody?

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
            var model = ListGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayIntranetLinkedVpcPeerRequest : Tea.TeaModel {
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
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class ListGatewayIntranetLinkedVpcPeerResponseBody : Tea.TeaModel {
    public class PeerVpcList : Tea.TeaModel {
        public class PeerVpcs : Tea.TeaModel {
            public var region: String?

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
                if self.region != nil {
                    map["Region"] = self.region!
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
                if let value = dict["Region"] as? String {
                    self.region = value
                }
                if let value = dict["Status"] as? String {
                    self.status = value
                }
                if let value = dict["VpcId"] as? String {
                    self.vpcId = value
                }
            }
        }
        public var peerVpcs: [ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList.PeerVpcs]?

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
            if self.peerVpcs != nil {
                var tmp : [Any] = []
                for k in self.peerVpcs! {
                    tmp.append(k.toMap())
                }
                map["PeerVpcs"] = tmp
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["PeerVpcs"] as? [Any?] {
                var tmp : [ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList.PeerVpcs] = []
                for v in value {
                    if v != nil {
                        var model = ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList.PeerVpcs()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.peerVpcs = tmp
            }
            if let value = dict["VpcId"] as? String {
                self.vpcId = value
            }
        }
    }
    public var gatewayId: String?

    public var peerVpcList: [ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList]?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.peerVpcList != nil {
            var tmp : [Any] = []
            for k in self.peerVpcList! {
                tmp.append(k.toMap())
            }
            map["PeerVpcList"] = tmp
        }
        if self.requestId != nil {
            map["requestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["PeerVpcList"] as? [Any?] {
            var tmp : [ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList] = []
            for v in value {
                if v != nil {
                    var model = ListGatewayIntranetLinkedVpcPeerResponseBody.PeerVpcList()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.peerVpcList = tmp
        }
        if let value = dict["requestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListGatewayIntranetLinkedVpcPeerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayIntranetLinkedVpcPeerResponseBody?

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
            var model = ListGatewayIntranetLinkedVpcPeerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGatewayIntranetSupportedZoneResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var zones: [String]?

    public override init() {
        super.init()
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
        if self.zones != nil {
            map["Zones"] = self.zones!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["Zones"] as? [String] {
            self.zones = value
        }
    }
}

public class ListGatewayIntranetSupportedZoneResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGatewayIntranetSupportedZoneResponseBody?

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
            var model = ListGatewayIntranetSupportedZoneResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var filter: String?

    public var order: String?

    public var pageNumber: String?

    public var pageSize: String?

    public var sort: String?

    public var trafficMode: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.trafficMode != nil {
            map["TrafficMode"] = self.trafficMode!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? String {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? String {
            self.pageSize = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TrafficMode"] as? String {
            self.trafficMode = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListGroupsResponseBody : Tea.TeaModel {
    public var groups: [Group]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var requestId: String?

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
        if self.groups != nil {
            var tmp : [Any] = []
            for k in self.groups! {
                tmp.append(k.toMap())
            }
            map["Groups"] = tmp
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
        if let value = dict["Groups"] as? [Any?] {
            var tmp : [Group] = []
            for v in value {
                if v != nil {
                    var model = Group()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.groups = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
    }
}

public class ListGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListGroupsResponseBody?

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
            var model = ListGroupsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceInstanceWorkerRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var ready: Bool?

    public var serviceName: String?

    public var sort: String?

    public var status: String?

    public var workerName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.ready != nil {
            map["Ready"] = self.ready!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.workerName != nil {
            map["WorkerName"] = self.workerName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Ready"] as? Bool {
            self.ready = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["Status"] as? String {
            self.status = value
        }
        if let value = dict["WorkerName"] as? String {
            self.workerName = value
        }
    }
}

public class ListResourceInstanceWorkerResponseBody : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var pods: [ResourceInstanceWorker]?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pods != nil {
            var tmp : [Any] = []
            for k in self.pods! {
                tmp.append(k.toMap())
            }
            map["Pods"] = tmp
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
        if let value = dict["Pods"] as? [Any?] {
            var tmp : [ResourceInstanceWorker] = []
            for v in value {
                if v != nil {
                    var model = ResourceInstanceWorker()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.pods = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceInstanceWorkerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceInstanceWorkerResponseBody?

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
            var model = ListResourceInstanceWorkerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceInstancesRequest : Tea.TeaModel {
    public var chargeType: String?

    public var filter: String?

    public var instanceIP: String?

    public var instanceId: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var label: [String: String]?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceIP != nil {
            map["InstanceIP"] = self.instanceIP!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceIP"] as? String {
            self.instanceIP = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["Label"] as? [String: String] {
            self.label = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class ListResourceInstancesShrinkRequest : Tea.TeaModel {
    public var chargeType: String?

    public var filter: String?

    public var instanceIP: String?

    public var instanceId: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var labelShrink: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeType != nil {
            map["ChargeType"] = self.chargeType!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.instanceIP != nil {
            map["InstanceIP"] = self.instanceIP!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.labelShrink != nil {
            map["Label"] = self.labelShrink!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ChargeType"] as? String {
            self.chargeType = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["InstanceIP"] as? String {
            self.instanceIP = value
        }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["Label"] as? String {
            self.labelShrink = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class ListResourceInstancesResponseBody : Tea.TeaModel {
    public var instances: [ResourceInstance]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [ResourceInstance] = []
            for v in value {
                if v != nil {
                    var model = ResourceInstance()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
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

public class ListResourceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceInstancesResponseBody?

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
            var model = ListResourceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourceServicesRequest : Tea.TeaModel {
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

public class ListResourceServicesResponseBody : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var services: [Service]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
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
        if let value = dict["Services"] as? [Any?] {
            var tmp : [Service] = []
            for v in value {
                if v != nil {
                    var model = Service()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourceServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourceServicesResponseBody?

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
            var model = ListResourceServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceStatus: String?

    public var resourceType: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceStatus != nil {
            map["ResourceStatus"] = self.resourceStatus!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceStatus"] as? String {
            self.resourceStatus = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class ListResourcesResponseBody : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var resources: [Resource]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
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
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [Resource] = []
            for v in value {
                if v != nil {
                    var model = Resource()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListResourcesResponseBody?

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
            var model = ListResourcesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceContainersResponseBody : Tea.TeaModel {
    public var containers: [ContainerInfo]?

    public var requestId: String?

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
        if self.containers != nil {
            var tmp : [Any] = []
            for k in self.containers! {
                tmp.append(k.toMap())
            }
            map["Containers"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Containers"] as? [Any?] {
            var tmp : [ContainerInfo] = []
            for v in value {
                if v != nil {
                    var model = ContainerInfo()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.containers = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
    }
}

public class ListServiceContainersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceContainersResponseBody?

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
            var model = ListServiceContainersResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceInstancesRequest : Tea.TeaModel {
    public var filter: String?

    public var hostIP: String?

    public var instanceIP: String?

    public var instanceName: String?

    public var instanceStatus: String?

    public var instanceType: String?

    public var isSpot: Bool?

    public var memberType: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceType: String?

    public var role: String?

    public var sort: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.hostIP != nil {
            map["HostIP"] = self.hostIP!
        }
        if self.instanceIP != nil {
            map["InstanceIP"] = self.instanceIP!
        }
        if self.instanceName != nil {
            map["InstanceName"] = self.instanceName!
        }
        if self.instanceStatus != nil {
            map["InstanceStatus"] = self.instanceStatus!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isSpot != nil {
            map["IsSpot"] = self.isSpot!
        }
        if self.memberType != nil {
            map["MemberType"] = self.memberType!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["HostIP"] as? String {
            self.hostIP = value
        }
        if let value = dict["InstanceIP"] as? String {
            self.instanceIP = value
        }
        if let value = dict["InstanceName"] as? String {
            self.instanceName = value
        }
        if let value = dict["InstanceStatus"] as? String {
            self.instanceStatus = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsSpot"] as? Bool {
            self.isSpot = value
        }
        if let value = dict["MemberType"] as? String {
            self.memberType = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
    }
}

public class ListServiceInstancesResponseBody : Tea.TeaModel {
    public var instances: [Instance]?

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
        if self.instances != nil {
            var tmp : [Any] = []
            for k in self.instances! {
                tmp.append(k.toMap())
            }
            map["Instances"] = tmp
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
        if let value = dict["Instances"] as? [Any?] {
            var tmp : [Instance] = []
            for v in value {
                if v != nil {
                    var model = Instance()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.instances = tmp
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

public class ListServiceInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceInstancesResponseBody?

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
            var model = ListServiceInstancesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServiceVersionsRequest : Tea.TeaModel {
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

public class ListServiceVersionsResponseBody : Tea.TeaModel {
    public class Versions : Tea.TeaModel {
        public var buildTime: String?

        public var imageAvailable: String?

        public var imageId: Int32?

        public var message: String?

        public var serviceConfig: String?

        public var serviceRunnable: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.buildTime != nil {
                map["BuildTime"] = self.buildTime!
            }
            if self.imageAvailable != nil {
                map["ImageAvailable"] = self.imageAvailable!
            }
            if self.imageId != nil {
                map["ImageId"] = self.imageId!
            }
            if self.message != nil {
                map["Message"] = self.message!
            }
            if self.serviceConfig != nil {
                map["ServiceConfig"] = self.serviceConfig!
            }
            if self.serviceRunnable != nil {
                map["ServiceRunnable"] = self.serviceRunnable!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["BuildTime"] as? String {
                self.buildTime = value
            }
            if let value = dict["ImageAvailable"] as? String {
                self.imageAvailable = value
            }
            if let value = dict["ImageId"] as? Int32 {
                self.imageId = value
            }
            if let value = dict["Message"] as? String {
                self.message = value
            }
            if let value = dict["ServiceConfig"] as? String {
                self.serviceConfig = value
            }
            if let value = dict["ServiceRunnable"] as? String {
                self.serviceRunnable = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int64?

    public var versions: [ListServiceVersionsResponseBody.Versions]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.versions != nil {
            var tmp : [Any] = []
            for k in self.versions! {
                tmp.append(k.toMap())
            }
            map["Versions"] = tmp
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
        if let value = dict["TotalCount"] as? Int64 {
            self.totalCount = value
        }
        if let value = dict["Versions"] as? [Any?] {
            var tmp : [ListServiceVersionsResponseBody.Versions] = []
            for v in value {
                if v != nil {
                    var model = ListServiceVersionsResponseBody.Versions()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.versions = tmp
        }
    }
}

public class ListServiceVersionsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServiceVersionsResponseBody?

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
            var model = ListServiceVersionsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var autoscalerEnabled: Bool?

    public var cronscalerEnabled: Bool?

    public var filter: String?

    public var gateway: String?

    public var groupName: String?

    public var includeNoWorkspace: Bool?

    public var label: [String: String]?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentServiceUid: String?

    public var quotaId: String?

    public var resourceAliasName: String?

    public var resourceBurstable: Bool?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var role: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceType: String?

    public var serviceUid: String?

    public var sort: String?

    public var trafficState: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoscalerEnabled != nil {
            map["AutoscalerEnabled"] = self.autoscalerEnabled!
        }
        if self.cronscalerEnabled != nil {
            map["CronscalerEnabled"] = self.cronscalerEnabled!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.includeNoWorkspace != nil {
            map["IncludeNoWorkspace"] = self.includeNoWorkspace!
        }
        if self.label != nil {
            map["Label"] = self.label!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentServiceUid != nil {
            map["ParentServiceUid"] = self.parentServiceUid!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.resourceAliasName != nil {
            map["ResourceAliasName"] = self.resourceAliasName!
        }
        if self.resourceBurstable != nil {
            map["ResourceBurstable"] = self.resourceBurstable!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceUid != nil {
            map["ServiceUid"] = self.serviceUid!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.trafficState != nil {
            map["TrafficState"] = self.trafficState!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoscalerEnabled"] as? Bool {
            self.autoscalerEnabled = value
        }
        if let value = dict["CronscalerEnabled"] as? Bool {
            self.cronscalerEnabled = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Gateway"] as? String {
            self.gateway = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IncludeNoWorkspace"] as? Bool {
            self.includeNoWorkspace = value
        }
        if let value = dict["Label"] as? [String: String] {
            self.label = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentServiceUid"] as? String {
            self.parentServiceUid = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["ResourceAliasName"] as? String {
            self.resourceAliasName = value
        }
        if let value = dict["ResourceBurstable"] as? Bool {
            self.resourceBurstable = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceUid"] as? String {
            self.serviceUid = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TrafficState"] as? String {
            self.trafficState = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListServicesShrinkRequest : Tea.TeaModel {
    public var autoscalerEnabled: Bool?

    public var cronscalerEnabled: Bool?

    public var filter: String?

    public var gateway: String?

    public var groupName: String?

    public var includeNoWorkspace: Bool?

    public var labelShrink: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentServiceUid: String?

    public var quotaId: String?

    public var resourceAliasName: String?

    public var resourceBurstable: Bool?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public var role: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceType: String?

    public var serviceUid: String?

    public var sort: String?

    public var trafficState: String?

    public var workspaceId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.autoscalerEnabled != nil {
            map["AutoscalerEnabled"] = self.autoscalerEnabled!
        }
        if self.cronscalerEnabled != nil {
            map["CronscalerEnabled"] = self.cronscalerEnabled!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
        }
        if self.includeNoWorkspace != nil {
            map["IncludeNoWorkspace"] = self.includeNoWorkspace!
        }
        if self.labelShrink != nil {
            map["Label"] = self.labelShrink!
        }
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.parentServiceUid != nil {
            map["ParentServiceUid"] = self.parentServiceUid!
        }
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.resourceAliasName != nil {
            map["ResourceAliasName"] = self.resourceAliasName!
        }
        if self.resourceBurstable != nil {
            map["ResourceBurstable"] = self.resourceBurstable!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        if self.serviceStatus != nil {
            map["ServiceStatus"] = self.serviceStatus!
        }
        if self.serviceType != nil {
            map["ServiceType"] = self.serviceType!
        }
        if self.serviceUid != nil {
            map["ServiceUid"] = self.serviceUid!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.trafficState != nil {
            map["TrafficState"] = self.trafficState!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AutoscalerEnabled"] as? Bool {
            self.autoscalerEnabled = value
        }
        if let value = dict["CronscalerEnabled"] as? Bool {
            self.cronscalerEnabled = value
        }
        if let value = dict["Filter"] as? String {
            self.filter = value
        }
        if let value = dict["Gateway"] as? String {
            self.gateway = value
        }
        if let value = dict["GroupName"] as? String {
            self.groupName = value
        }
        if let value = dict["IncludeNoWorkspace"] as? Bool {
            self.includeNoWorkspace = value
        }
        if let value = dict["Label"] as? String {
            self.labelShrink = value
        }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["ParentServiceUid"] as? String {
            self.parentServiceUid = value
        }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["ResourceAliasName"] as? String {
            self.resourceAliasName = value
        }
        if let value = dict["ResourceBurstable"] as? Bool {
            self.resourceBurstable = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["ResourceType"] as? String {
            self.resourceType = value
        }
        if let value = dict["Role"] as? String {
            self.role = value
        }
        if let value = dict["ServiceName"] as? String {
            self.serviceName = value
        }
        if let value = dict["ServiceStatus"] as? String {
            self.serviceStatus = value
        }
        if let value = dict["ServiceType"] as? String {
            self.serviceType = value
        }
        if let value = dict["ServiceUid"] as? String {
            self.serviceUid = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["TrafficState"] as? String {
            self.trafficState = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
    }
}

public class ListServicesResponseBody : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var services: [Service]?

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
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.services != nil {
            var tmp : [Any] = []
            for k in self.services! {
                tmp.append(k.toMap())
            }
            map["Services"] = tmp
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
        if let value = dict["Services"] as? [Any?] {
            var tmp : [Service] = []
            for v in value {
                if v != nil {
                    var model = Service()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.services = tmp
        }
        if let value = dict["TotalCount"] as? Int32 {
            self.totalCount = value
        }
    }
}

public class ListServicesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListServicesResponseBody?

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
            var model = ListServicesResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListTenantAddonsResponseBody : Tea.TeaModel {
    public class Addons : Tea.TeaModel {
        public var attributes: [String: String]?

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
            if self.attributes != nil {
                map["Attributes"] = self.attributes!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Attributes"] as? [String: String] {
                self.attributes = value
            }
            if let value = dict["Name"] as? String {
                self.name = value
            }
        }
    }
    public var addons: [ListTenantAddonsResponseBody.Addons]?

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
        if self.addons != nil {
            var tmp : [Any] = []
            for k in self.addons! {
                tmp.append(k.toMap())
            }
            map["Addons"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Addons"] as? [Any?] {
            var tmp : [ListTenantAddonsResponseBody.Addons] = []
            for v in value {
                if v != nil {
                    var model = ListTenantAddonsResponseBody.Addons()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.addons = tmp
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ListTenantAddonsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTenantAddonsResponseBody?

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
            var model = ListTenantAddonsResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ListVirtualResourceRequest : Tea.TeaModel {
    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var sort: String?

    public var virtualResourceId: String?

    public var virtualResourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.order != nil {
            map["Order"] = self.order!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.sort != nil {
            map["Sort"] = self.sort!
        }
        if self.virtualResourceId != nil {
            map["VirtualResourceId"] = self.virtualResourceId!
        }
        if self.virtualResourceName != nil {
            map["VirtualResourceName"] = self.virtualResourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Order"] as? String {
            self.order = value
        }
        if let value = dict["PageNumber"] as? Int32 {
            self.pageNumber = value
        }
        if let value = dict["PageSize"] as? Int32 {
            self.pageSize = value
        }
        if let value = dict["Sort"] as? String {
            self.sort = value
        }
        if let value = dict["VirtualResourceId"] as? String {
            self.virtualResourceId = value
        }
        if let value = dict["VirtualResourceName"] as? String {
            self.virtualResourceName = value
        }
    }
}

public class ListVirtualResourceResponseBody : Tea.TeaModel {
    public class VirtualResources : Tea.TeaModel {
        public var createTime: String?

        public var serviceCount: Int32?

        public var updateTime: String?

        public var virtualResourceId: String?

        public var virtualResourceName: String?

        public override init() {
            super.init()
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
            if self.serviceCount != nil {
                map["ServiceCount"] = self.serviceCount!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            if self.virtualResourceId != nil {
                map["VirtualResourceId"] = self.virtualResourceId!
            }
            if self.virtualResourceName != nil {
                map["VirtualResourceName"] = self.virtualResourceName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["CreateTime"] as? String {
                self.createTime = value
            }
            if let value = dict["ServiceCount"] as? Int32 {
                self.serviceCount = value
            }
            if let value = dict["UpdateTime"] as? String {
                self.updateTime = value
            }
            if let value = dict["VirtualResourceId"] as? String {
                self.virtualResourceId = value
            }
            if let value = dict["VirtualResourceName"] as? String {
                self.virtualResourceName = value
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var virtualResources: [ListVirtualResourceResponseBody.VirtualResources]?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        if self.virtualResources != nil {
            var tmp : [Any] = []
            for k in self.virtualResources! {
                tmp.append(k.toMap())
            }
            map["VirtualResources"] = tmp
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
        if let value = dict["VirtualResources"] as? [Any?] {
            var tmp : [ListVirtualResourceResponseBody.VirtualResources] = []
            for v in value {
                if v != nil {
                    var model = ListVirtualResourceResponseBody.VirtualResources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.virtualResources = tmp
        }
    }
}

public class ListVirtualResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVirtualResourceResponseBody?

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
            var model = ListVirtualResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReinstallTenantAddonResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReinstallTenantAddonResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReinstallTenantAddonResponseBody?

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
            var model = ReinstallTenantAddonResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class ReleaseServiceRequest : Tea.TeaModel {
    public var trafficState: String?

    public var weight: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trafficState != nil {
            map["TrafficState"] = self.trafficState!
        }
        if self.weight != nil {
            map["Weight"] = self.weight!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TrafficState"] as? String {
            self.trafficState = value
        }
        if let value = dict["Weight"] as? Int32 {
            self.weight = value
        }
    }
}

public class ReleaseServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class ReleaseServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ReleaseServiceResponseBody?

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
            var model = ReleaseServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class RestartServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class RestartServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RestartServiceResponseBody?

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
            var model = RestartServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartBenchmarkTaskResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartBenchmarkTaskResponseBody?

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
            var model = StartBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StartServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StartServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartServiceResponseBody?

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
            var model = StartServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopBenchmarkTaskResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopBenchmarkTaskResponseBody?

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
            var model = StopBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class StopServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class StopServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopServiceResponseBody?

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
            var model = StopServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateAppServiceRequest : Tea.TeaModel {
    public var quotaId: String?

    public var workspaceId: String?

    public var appType: String?

    public var appVersion: String?

    public var config: [String: Any]?

    public var replicas: Int32?

    public var serviceSpec: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.quotaId != nil {
            map["QuotaId"] = self.quotaId!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        if self.appType != nil {
            map["AppType"] = self.appType!
        }
        if self.appVersion != nil {
            map["AppVersion"] = self.appVersion!
        }
        if self.config != nil {
            map["Config"] = self.config!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.serviceSpec != nil {
            map["ServiceSpec"] = self.serviceSpec!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["QuotaId"] as? String {
            self.quotaId = value
        }
        if let value = dict["WorkspaceId"] as? String {
            self.workspaceId = value
        }
        if let value = dict["AppType"] as? String {
            self.appType = value
        }
        if let value = dict["AppVersion"] as? String {
            self.appVersion = value
        }
        if let value = dict["Config"] as? [String: Any] {
            self.config = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["ServiceSpec"] as? String {
            self.serviceSpec = value
        }
    }
}

public class UpdateAppServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateAppServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateAppServiceResponseBody?

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
            var model = UpdateAppServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateBenchmarkTaskRequest : Tea.TeaModel {
    public var body: String?

    public override init() {
        super.init()
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
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class UpdateBenchmarkTaskResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateBenchmarkTaskResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateBenchmarkTaskResponseBody?

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
            var model = UpdateBenchmarkTaskResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGatewayRequest : Tea.TeaModel {
    public var enableInternet: Bool?

    public var enableIntranet: Bool?

    public var enableSSLRedirection: Bool?

    public var instanceType: String?

    public var isDefault: Bool?

    public var name: String?

    public var replicas: Int32?

    public var vSwitchIds: [String]?

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
        if self.enableInternet != nil {
            map["EnableInternet"] = self.enableInternet!
        }
        if self.enableIntranet != nil {
            map["EnableIntranet"] = self.enableIntranet!
        }
        if self.enableSSLRedirection != nil {
            map["EnableSSLRedirection"] = self.enableSSLRedirection!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.vSwitchIds != nil {
            map["VSwitchIds"] = self.vSwitchIds!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["EnableInternet"] as? Bool {
            self.enableInternet = value
        }
        if let value = dict["EnableIntranet"] as? Bool {
            self.enableIntranet = value
        }
        if let value = dict["EnableSSLRedirection"] as? Bool {
            self.enableSSLRedirection = value
        }
        if let value = dict["InstanceType"] as? String {
            self.instanceType = value
        }
        if let value = dict["IsDefault"] as? Bool {
            self.isDefault = value
        }
        if let value = dict["Name"] as? String {
            self.name = value
        }
        if let value = dict["Replicas"] as? Int32 {
            self.replicas = value
        }
        if let value = dict["VSwitchIds"] as? [String] {
            self.vSwitchIds = value
        }
        if let value = dict["VpcId"] as? String {
            self.vpcId = value
        }
    }
}

public class UpdateGatewayResponseBody : Tea.TeaModel {
    public var gatewayId: String?

    public var message: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["GatewayId"] as? String {
            self.gatewayId = value
        }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateGatewayResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGatewayResponseBody?

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
            var model = UpdateGatewayResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateGroupRequest : Tea.TeaModel {
    public var trafficMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.trafficMode != nil {
            map["TrafficMode"] = self.trafficMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["TrafficMode"] as? String {
            self.trafficMode = value
        }
    }
}

public class UpdateGroupResponseBody : Tea.TeaModel {
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

public class UpdateGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateGroupResponseBody?

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
            var model = UpdateGroupResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceRequest : Tea.TeaModel {
    public class SelfManagedResourceOptions : Tea.TeaModel {
        public class NodeTolerations : Tea.TeaModel {
            public var effect: String?

            public var key: String?

            public var operator_: String?

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
                if self.operator_ != nil {
                    map["operator"] = self.operator_!
                }
                if self.value != nil {
                    map["value"] = self.value!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["effect"] as? String {
                    self.effect = value
                }
                if let value = dict["key"] as? String {
                    self.key = value
                }
                if let value = dict["operator"] as? String {
                    self.operator_ = value
                }
                if let value = dict["value"] as? String {
                    self.value = value
                }
            }
        }
        public var nodeMatchLabels: [String: String]?

        public var nodeTolerations: [UpdateResourceRequest.SelfManagedResourceOptions.NodeTolerations]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeMatchLabels != nil {
                map["NodeMatchLabels"] = self.nodeMatchLabels!
            }
            if self.nodeTolerations != nil {
                var tmp : [Any] = []
                for k in self.nodeTolerations! {
                    tmp.append(k.toMap())
                }
                map["NodeTolerations"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["NodeMatchLabels"] as? [String: String] {
                self.nodeMatchLabels = value
            }
            if let value = dict["NodeTolerations"] as? [Any?] {
                var tmp : [UpdateResourceRequest.SelfManagedResourceOptions.NodeTolerations] = []
                for v in value {
                    if v != nil {
                        var model = UpdateResourceRequest.SelfManagedResourceOptions.NodeTolerations()
                        if v != nil {
                            model.fromMap(v as? [String: Any?])
                        }
                        tmp.append(model)
                    }
                }
                self.nodeTolerations = tmp
            }
        }
    }
    public var resourceName: String?

    public var selfManagedResourceOptions: UpdateResourceRequest.SelfManagedResourceOptions?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.selfManagedResourceOptions?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.selfManagedResourceOptions != nil {
            map["SelfManagedResourceOptions"] = self.selfManagedResourceOptions?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
        if let value = dict["SelfManagedResourceOptions"] as? [String: Any?] {
            var model = UpdateResourceRequest.SelfManagedResourceOptions()
            model.fromMap(value)
            self.selfManagedResourceOptions = model
        }
    }
}

public class UpdateResourceResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var resourceId: String?

    public var resourceName: String?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
        if let value = dict["ResourceName"] as? String {
            self.resourceName = value
        }
    }
}

public class UpdateResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceResponseBody?

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
            var model = UpdateResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceDLinkRequest : Tea.TeaModel {
    public var destinationCIDRs: String?

    public var securityGroupId: String?

    public var vSwitchId: String?

    public var vSwitchIdList: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.destinationCIDRs != nil {
            map["DestinationCIDRs"] = self.destinationCIDRs!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.vSwitchIdList != nil {
            map["VSwitchIdList"] = self.vSwitchIdList!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DestinationCIDRs"] as? String {
            self.destinationCIDRs = value
        }
        if let value = dict["SecurityGroupId"] as? String {
            self.securityGroupId = value
        }
        if let value = dict["VSwitchId"] as? String {
            self.vSwitchId = value
        }
        if let value = dict["VSwitchIdList"] as? [String] {
            self.vSwitchIdList = value
        }
    }
}

public class UpdateResourceDLinkResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateResourceDLinkResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceDLinkResponseBody?

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
            var model = UpdateResourceDLinkResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceInstanceRequest : Tea.TeaModel {
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
            map["Action"] = self.action!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Action"] as? String {
            self.action = value
        }
    }
}

public class UpdateResourceInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

    public var requestId: String?

    public var resourceId: String?

    public override init() {
        super.init()
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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["InstanceId"] as? String {
            self.instanceId = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
        if let value = dict["ResourceId"] as? String {
            self.resourceId = value
        }
    }
}

public class UpdateResourceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceInstanceResponseBody?

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
            var model = UpdateResourceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateResourceInstanceLabelRequest : Tea.TeaModel {
    public var allInstances: Bool?

    public var instanceIds: [String]?

    public var labels: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allInstances != nil {
            map["AllInstances"] = self.allInstances!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllInstances"] as? Bool {
            self.allInstances = value
        }
        if let value = dict["InstanceIds"] as? [String] {
            self.instanceIds = value
        }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
    }
}

public class UpdateResourceInstanceLabelShrinkRequest : Tea.TeaModel {
    public var allInstances: Bool?

    public var instanceIdsShrink: String?

    public var labels: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allInstances != nil {
            map["AllInstances"] = self.allInstances!
        }
        if self.instanceIdsShrink != nil {
            map["InstanceIds"] = self.instanceIdsShrink!
        }
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["AllInstances"] as? Bool {
            self.allInstances = value
        }
        if let value = dict["InstanceIds"] as? String {
            self.instanceIdsShrink = value
        }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
    }
}

public class UpdateResourceInstanceLabelResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateResourceInstanceLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateResourceInstanceLabelResponseBody?

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
            var model = UpdateResourceInstanceLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
    public var memberToUpdate: String?

    public var updateType: String?

    public var body: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.memberToUpdate != nil {
            map["MemberToUpdate"] = self.memberToUpdate!
        }
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["MemberToUpdate"] as? String {
            self.memberToUpdate = value
        }
        if let value = dict["UpdateType"] as? String {
            self.updateType = value
        }
        if let value = dict["body"] as? String {
            self.body = value
        }
    }
}

public class UpdateServiceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceResponseBody?

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
            var model = UpdateServiceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceAutoScalerRequest : Tea.TeaModel {
    public class Behavior : Tea.TeaModel {
        public class OnZero : Tea.TeaModel {
            public var scaleDownGracePeriodSeconds: Int32?

            public var scaleUpActivationReplicas: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.scaleDownGracePeriodSeconds != nil {
                    map["scaleDownGracePeriodSeconds"] = self.scaleDownGracePeriodSeconds!
                }
                if self.scaleUpActivationReplicas != nil {
                    map["scaleUpActivationReplicas"] = self.scaleUpActivationReplicas!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["scaleDownGracePeriodSeconds"] as? Int32 {
                    self.scaleDownGracePeriodSeconds = value
                }
                if let value = dict["scaleUpActivationReplicas"] as? Int32 {
                    self.scaleUpActivationReplicas = value
                }
            }
        }
        public class ScaleDown : Tea.TeaModel {
            public var stabilizationWindowSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stabilizationWindowSeconds != nil {
                    map["stabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["stabilizationWindowSeconds"] as? Int32 {
                    self.stabilizationWindowSeconds = value
                }
            }
        }
        public class ScaleUp : Tea.TeaModel {
            public var stabilizationWindowSeconds: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.stabilizationWindowSeconds != nil {
                    map["stabilizationWindowSeconds"] = self.stabilizationWindowSeconds!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any?]?) -> Void {
                guard let dict else { return }
                if let value = dict["stabilizationWindowSeconds"] as? Int32 {
                    self.stabilizationWindowSeconds = value
                }
            }
        }
        public var onZero: UpdateServiceAutoScalerRequest.Behavior.OnZero?

        public var scaleDown: UpdateServiceAutoScalerRequest.Behavior.ScaleDown?

        public var scaleUp: UpdateServiceAutoScalerRequest.Behavior.ScaleUp?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.onZero?.validate()
            try self.scaleDown?.validate()
            try self.scaleUp?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.onZero != nil {
                map["onZero"] = self.onZero?.toMap()
            }
            if self.scaleDown != nil {
                map["scaleDown"] = self.scaleDown?.toMap()
            }
            if self.scaleUp != nil {
                map["scaleUp"] = self.scaleUp?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["onZero"] as? [String: Any?] {
                var model = UpdateServiceAutoScalerRequest.Behavior.OnZero()
                model.fromMap(value)
                self.onZero = model
            }
            if let value = dict["scaleDown"] as? [String: Any?] {
                var model = UpdateServiceAutoScalerRequest.Behavior.ScaleDown()
                model.fromMap(value)
                self.scaleDown = model
            }
            if let value = dict["scaleUp"] as? [String: Any?] {
                var model = UpdateServiceAutoScalerRequest.Behavior.ScaleUp()
                model.fromMap(value)
                self.scaleUp = model
            }
        }
    }
    public class ScaleStrategies : Tea.TeaModel {
        public var metricName: String?

        public var service: String?

        public var threshold: Double?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metricName != nil {
                map["metricName"] = self.metricName!
            }
            if self.service != nil {
                map["service"] = self.service!
            }
            if self.threshold != nil {
                map["threshold"] = self.threshold!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["metricName"] as? String {
                self.metricName = value
            }
            if let value = dict["service"] as? String {
                self.service = value
            }
            if let value = dict["threshold"] as? Double {
                self.threshold = value
            }
        }
    }
    public var behavior: UpdateServiceAutoScalerRequest.Behavior?

    public var max: Int32?

    public var min: Int32?

    public var scaleStrategies: [UpdateServiceAutoScalerRequest.ScaleStrategies]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.behavior?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.behavior != nil {
            map["behavior"] = self.behavior?.toMap()
        }
        if self.max != nil {
            map["max"] = self.max!
        }
        if self.min != nil {
            map["min"] = self.min!
        }
        if self.scaleStrategies != nil {
            var tmp : [Any] = []
            for k in self.scaleStrategies! {
                tmp.append(k.toMap())
            }
            map["scaleStrategies"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["behavior"] as? [String: Any?] {
            var model = UpdateServiceAutoScalerRequest.Behavior()
            model.fromMap(value)
            self.behavior = model
        }
        if let value = dict["max"] as? Int32 {
            self.max = value
        }
        if let value = dict["min"] as? Int32 {
            self.min = value
        }
        if let value = dict["scaleStrategies"] as? [Any?] {
            var tmp : [UpdateServiceAutoScalerRequest.ScaleStrategies] = []
            for v in value {
                if v != nil {
                    var model = UpdateServiceAutoScalerRequest.ScaleStrategies()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleStrategies = tmp
        }
    }
}

public class UpdateServiceAutoScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceAutoScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceAutoScalerResponseBody?

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
            var model = UpdateServiceAutoScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceCronScalerRequest : Tea.TeaModel {
    public class ScaleJobs : Tea.TeaModel {
        public var name: String?

        public var schedule: String?

        public var targetSize: Int32?

        public var timeZone: String?

        public override init() {
            super.init()
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
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            if self.timeZone != nil {
                map["TimeZone"] = self.timeZone!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["Name"] as? String {
                self.name = value
            }
            if let value = dict["Schedule"] as? String {
                self.schedule = value
            }
            if let value = dict["TargetSize"] as? Int32 {
                self.targetSize = value
            }
            if let value = dict["TimeZone"] as? String {
                self.timeZone = value
            }
        }
    }
    public var excludeDates: [String]?

    public var scaleJobs: [UpdateServiceCronScalerRequest.ScaleJobs]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.excludeDates != nil {
            map["ExcludeDates"] = self.excludeDates!
        }
        if self.scaleJobs != nil {
            var tmp : [Any] = []
            for k in self.scaleJobs! {
                tmp.append(k.toMap())
            }
            map["ScaleJobs"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["ExcludeDates"] as? [String] {
            self.excludeDates = value
        }
        if let value = dict["ScaleJobs"] as? [Any?] {
            var tmp : [UpdateServiceCronScalerRequest.ScaleJobs] = []
            for v in value {
                if v != nil {
                    var model = UpdateServiceCronScalerRequest.ScaleJobs()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.scaleJobs = tmp
        }
    }
}

public class UpdateServiceCronScalerResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceCronScalerResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceCronScalerResponseBody?

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
            var model = UpdateServiceCronScalerResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceInstanceRequest : Tea.TeaModel {
    public var isolate: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.isolate != nil {
            map["Isolate"] = self.isolate!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Isolate"] as? Bool {
            self.isolate = value
        }
    }
}

public class UpdateServiceInstanceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceInstanceResponseBody?

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
            var model = UpdateServiceInstanceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceLabelRequest : Tea.TeaModel {
    public var labels: [String: String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.labels != nil {
            map["Labels"] = self.labels!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Labels"] as? [String: String] {
            self.labels = value
        }
    }
}

public class UpdateServiceLabelResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceLabelResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceLabelResponseBody?

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
            var model = UpdateServiceLabelResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceMirrorRequest : Tea.TeaModel {
    public var ratio: Int32?

    public var target: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ratio != nil {
            map["Ratio"] = self.ratio!
        }
        if self.target != nil {
            map["Target"] = self.target!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Ratio"] as? Int32 {
            self.ratio = value
        }
        if let value = dict["Target"] as? [String] {
            self.target = value
        }
    }
}

public class UpdateServiceMirrorResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceMirrorResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceMirrorResponseBody?

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
            var model = UpdateServiceMirrorResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceSafetyLockRequest : Tea.TeaModel {
    public var lock: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.lock != nil {
            map["Lock"] = self.lock!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Lock"] as? String {
            self.lock = value
        }
    }
}

public class UpdateServiceSafetyLockResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceSafetyLockResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceSafetyLockResponseBody?

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
            var model = UpdateServiceSafetyLockResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateServiceVersionRequest : Tea.TeaModel {
    public var version: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.version != nil {
            map["Version"] = self.version!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Version"] as? Int32 {
            self.version = value
        }
    }
}

public class UpdateServiceVersionResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateServiceVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateServiceVersionResponseBody?

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
            var model = UpdateServiceVersionResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}

public class UpdateVirtualResourceRequest : Tea.TeaModel {
    public class Resources : Tea.TeaModel {
        public var instanceType: String?

        public var priority: Int32?

        public var quotaId: String?

        public var region: String?

        public var resourceId: String?

        public var spotPriceLimit: Double?

        public override init() {
            super.init()
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
                map["InstanceType"] = self.instanceType!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.quotaId != nil {
                map["QuotaId"] = self.quotaId!
            }
            if self.region != nil {
                map["Region"] = self.region!
            }
            if self.resourceId != nil {
                map["ResourceId"] = self.resourceId!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any?]?) -> Void {
            guard let dict else { return }
            if let value = dict["InstanceType"] as? String {
                self.instanceType = value
            }
            if let value = dict["Priority"] as? Int32 {
                self.priority = value
            }
            if let value = dict["QuotaId"] as? String {
                self.quotaId = value
            }
            if let value = dict["Region"] as? String {
                self.region = value
            }
            if let value = dict["ResourceId"] as? String {
                self.resourceId = value
            }
            if let value = dict["SpotPriceLimit"] as? Double {
                self.spotPriceLimit = value
            }
        }
    }
    public var disableSpotProtectionPeriod: Bool?

    public var resources: [UpdateVirtualResourceRequest.Resources]?

    public var virtualResourceName: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.disableSpotProtectionPeriod != nil {
            map["DisableSpotProtectionPeriod"] = self.disableSpotProtectionPeriod!
        }
        if self.resources != nil {
            var tmp : [Any] = []
            for k in self.resources! {
                tmp.append(k.toMap())
            }
            map["Resources"] = tmp
        }
        if self.virtualResourceName != nil {
            map["VirtualResourceName"] = self.virtualResourceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["DisableSpotProtectionPeriod"] as? Bool {
            self.disableSpotProtectionPeriod = value
        }
        if let value = dict["Resources"] as? [Any?] {
            var tmp : [UpdateVirtualResourceRequest.Resources] = []
            for v in value {
                if v != nil {
                    var model = UpdateVirtualResourceRequest.Resources()
                    if v != nil {
                        model.fromMap(v as? [String: Any?])
                    }
                    tmp.append(model)
                }
            }
            self.resources = tmp
        }
        if let value = dict["VirtualResourceName"] as? String {
            self.virtualResourceName = value
        }
    }
}

public class UpdateVirtualResourceResponseBody : Tea.TeaModel {
    public var message: String?

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
        if self.message != nil {
            map["Message"] = self.message!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any?]?) -> Void {
        guard let dict else { return }
        if let value = dict["Message"] as? String {
            self.message = value
        }
        if let value = dict["RequestId"] as? String {
            self.requestId = value
        }
    }
}

public class UpdateVirtualResourceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateVirtualResourceResponseBody?

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
            var model = UpdateVirtualResourceResponseBody()
            model.fromMap(value)
            self.body = model
        }
    }
}
