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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentReaon") {
            self.currentReaon = dict["CurrentReaon"] as! String
        }
        if dict.keys.contains("CurrentStatus") {
            self.currentStatus = dict["CurrentStatus"] as! String
        }
        if dict.keys.contains("CurrentTimestamp") {
            self.currentTimestamp = dict["CurrentTimestamp"] as! String
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("LastReason") {
            self.lastReason = dict["LastReason"] as! String
        }
        if dict.keys.contains("LastStatus") {
            self.lastStatus = dict["LastStatus"] as! String
        }
        if dict.keys.contains("LastTimestamp") {
            self.lastTimestamp = dict["LastTimestamp"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
        if dict.keys.contains("Ready") {
            self.ready = dict["Ready"] as! Bool
        }
        if dict.keys.contains("RestartCount") {
            self.restartCount = dict["RestartCount"] as! Int32
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
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("InternetEndpoint") {
            self.internetEndpoint = dict["InternetEndpoint"] as! String
        }
        if dict.keys.contains("IntranetEndpoint") {
            self.intranetEndpoint = dict["IntranetEndpoint"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("QueueService") {
            self.queueService = dict["QueueService"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CurrentAmount") {
            self.currentAmount = dict["CurrentAmount"] as! Double
        }
        if dict.keys.contains("ExternalIP") {
            self.externalIP = dict["ExternalIP"] as! String
        }
        if dict.keys.contains("ExternalInstancePort") {
            self.externalInstancePort = dict["ExternalInstancePort"] as! Int32
        }
        if dict.keys.contains("HostIP") {
            self.hostIP = dict["HostIP"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("InnerIP") {
            self.innerIP = dict["InnerIP"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstancePort") {
            self.instancePort = dict["InstancePort"] as! Int32
        }
        if dict.keys.contains("IsSpot") {
            self.isSpot = dict["IsSpot"] as! Bool
        }
        if dict.keys.contains("Isolated") {
            self.isolated = dict["Isolated"] as! Bool
        }
        if dict.keys.contains("LastState") {
            self.lastState = dict["LastState"] as! [[String: Any]]
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("OriginalAmount") {
            self.originalAmount = dict["OriginalAmount"] as! Double
        }
        if dict.keys.contains("ReadyProcesses") {
            self.readyProcesses = dict["ReadyProcesses"] as! Int32
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("RestartCount") {
            self.restartCount = dict["RestartCount"] as! Int32
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("StartAt") {
            self.startAt = dict["StartAt"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TenantHostIP") {
            self.tenantHostIP = dict["TenantHostIP"] as! String
        }
        if dict.keys.contains("TenantInstanceIP") {
            self.tenantInstanceIP = dict["TenantInstanceIP"] as! String
        }
        if dict.keys.contains("TotalProcesses") {
            self.totalProcesses = dict["TotalProcesses"] as! Int32
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! String
        }
    }
}

public class Resource : Tea.TeaModel {
    public var clusterId: String?

    public var cpuCount: Int32?

    public var createTime: String?

    public var extraData: [String: Any]?

    public var gpuCount: Int32?

    public var instanceCount: Int32?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.instanceCount != nil {
            map["InstanceCount"] = self.instanceCount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CpuCount") {
            self.cpuCount = dict["CpuCount"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExtraData") {
            self.extraData = dict["ExtraData"] as! [String: Any]
        }
        if dict.keys.contains("GpuCount") {
            self.gpuCount = dict["GpuCount"] as! Int32
        }
        if dict.keys.contains("InstanceCount") {
            self.instanceCount = dict["InstanceCount"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("PostPaidInstanceCount") {
            self.postPaidInstanceCount = dict["PostPaidInstanceCount"] as! Int32
        }
        if dict.keys.contains("PrePaidInstanceCount") {
            self.prePaidInstanceCount = dict["PrePaidInstanceCount"] as! Int32
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("Vendor") {
            self.vendor = dict["Vendor"] as! String
        }
    }
}

public class ResourceInstance : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Arch") {
            self.arch = dict["Arch"] as! String
        }
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExpiredTime") {
            self.expiredTime = dict["ExpiredTime"] as! String
        }
        if dict.keys.contains("InstanceCpuCount") {
            self.instanceCpuCount = dict["InstanceCpuCount"] as! Int32
        }
        if dict.keys.contains("InstanceGpuCount") {
            self.instanceGpuCount = dict["InstanceGpuCount"] as! Int32
        }
        if dict.keys.contains("InstanceGpuMemory") {
            self.instanceGpuMemory = dict["InstanceGpuMemory"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceIp") {
            self.instanceIp = dict["InstanceIp"] as! String
        }
        if dict.keys.contains("InstanceMemory") {
            self.instanceMemory = dict["InstanceMemory"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceStatus") {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("InstanceSystemDiskSize") {
            self.instanceSystemDiskSize = dict["InstanceSystemDiskSize"] as! Int32
        }
        if dict.keys.contains("InstanceTenantIp") {
            self.instanceTenantIp = dict["InstanceTenantIp"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InstanceUsedCpu") {
            self.instanceUsedCpu = dict["InstanceUsedCpu"] as! Double
        }
        if dict.keys.contains("InstanceUsedGpu") {
            self.instanceUsedGpu = dict["InstanceUsedGpu"] as! Double
        }
        if dict.keys.contains("InstanceUsedGpuMemory") {
            self.instanceUsedGpuMemory = dict["InstanceUsedGpuMemory"] as! String
        }
        if dict.keys.contains("InstanceUsedMemory") {
            self.instanceUsedMemory = dict["InstanceUsedMemory"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CpuLimit") {
            self.cpuLimit = dict["CpuLimit"] as! Int32
        }
        if dict.keys.contains("CpuRequest") {
            self.cpuRequest = dict["CpuRequest"] as! Int32
        }
        if dict.keys.contains("GpuLimit") {
            self.gpuLimit = dict["GpuLimit"] as! Int32
        }
        if dict.keys.contains("GpuRequest") {
            self.gpuRequest = dict["GpuRequest"] as! Int32
        }
        if dict.keys.contains("MemoryLimit") {
            self.memoryLimit = dict["MemoryLimit"] as! Int32
        }
        if dict.keys.contains("MemoryRquest") {
            self.memoryRquest = dict["MemoryRquest"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Ready") {
            self.ready = dict["Ready"] as! Bool
        }
        if dict.keys.contains("RestartCount") {
            self.restartCount = dict["RestartCount"] as! Int32
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class Service : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LabelKey") {
                self.labelKey = dict["LabelKey"] as! String
            }
            if dict.keys.contains("LabelValue") {
                self.labelValue = dict["LabelValue"] as! String
            }
        }
    }
    public var accessToken: String?

    public var appConfig: String?

    public var appSpecName: String?

    public var appType: String?

    public var appVersion: String?

    public var callerUid: String?

    public var cpu: Int32?

    public var createTime: String?

    public var currentVersion: Int32?

    public var extraData: String?

    public var gpu: Int32?

    public var image: String?

    public var internetEndpoint: String?

    public var intranetEndpoint: String?

    public var labels: [Service.Labels]?

    public var latestVersion: Int32?

    public var memory: Int32?

    public var message: String?

    public var namespace: String?

    public var parentUid: String?

    public var pendingInstance: Int32?

    public var reason: String?

    public var region: String?

    public var requestId: String?

    public var resource: String?

    public var resourceAlias: String?

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
        if self.callerUid != nil {
            map["CallerUid"] = self.callerUid!
        }
        if self.cpu != nil {
            map["Cpu"] = self.cpu!
        }
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.currentVersion != nil {
            map["CurrentVersion"] = self.currentVersion!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.image != nil {
            map["Image"] = self.image!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccessToken") {
            self.accessToken = dict["AccessToken"] as! String
        }
        if dict.keys.contains("AppConfig") {
            self.appConfig = dict["AppConfig"] as! String
        }
        if dict.keys.contains("AppSpecName") {
            self.appSpecName = dict["AppSpecName"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("CallerUid") {
            self.callerUid = dict["CallerUid"] as! String
        }
        if dict.keys.contains("Cpu") {
            self.cpu = dict["Cpu"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("CurrentVersion") {
            self.currentVersion = dict["CurrentVersion"] as! Int32
        }
        if dict.keys.contains("ExtraData") {
            self.extraData = dict["ExtraData"] as! String
        }
        if dict.keys.contains("Gpu") {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("Image") {
            self.image = dict["Image"] as! String
        }
        if dict.keys.contains("InternetEndpoint") {
            self.internetEndpoint = dict["InternetEndpoint"] as! String
        }
        if dict.keys.contains("IntranetEndpoint") {
            self.intranetEndpoint = dict["IntranetEndpoint"] as! String
        }
        if dict.keys.contains("Labels") {
            var tmp : [Service.Labels] = []
            for v in dict["Labels"] as! [Any] {
                var model = Service.Labels()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.labels = tmp
        }
        if dict.keys.contains("LatestVersion") {
            self.latestVersion = dict["LatestVersion"] as! Int32
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Namespace") {
            self.namespace = dict["Namespace"] as! String
        }
        if dict.keys.contains("ParentUid") {
            self.parentUid = dict["ParentUid"] as! String
        }
        if dict.keys.contains("PendingInstance") {
            self.pendingInstance = dict["PendingInstance"] as! Int32
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Resource") {
            self.resource = dict["Resource"] as! String
        }
        if dict.keys.contains("ResourceAlias") {
            self.resourceAlias = dict["ResourceAlias"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("RoleAttrs") {
            self.roleAttrs = dict["RoleAttrs"] as! String
        }
        if dict.keys.contains("RunningInstance") {
            self.runningInstance = dict["RunningInstance"] as! Int32
        }
        if dict.keys.contains("SafetyLock") {
            self.safetyLock = dict["SafetyLock"] as! String
        }
        if dict.keys.contains("SecondaryInternetEndpoint") {
            self.secondaryInternetEndpoint = dict["SecondaryInternetEndpoint"] as! String
        }
        if dict.keys.contains("SecondaryIntranetEndpoint") {
            self.secondaryIntranetEndpoint = dict["SecondaryIntranetEndpoint"] as! String
        }
        if dict.keys.contains("ServiceConfig") {
            self.serviceConfig = dict["ServiceConfig"] as! String
        }
        if dict.keys.contains("ServiceGroup") {
            self.serviceGroup = dict["ServiceGroup"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceUid") {
            self.serviceUid = dict["ServiceUid"] as! String
        }
        if dict.keys.contains("Source") {
            self.source = dict["Source"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TotalInstance") {
            self.totalInstance = dict["TotalInstance"] as! Int32
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
        }
        if dict.keys.contains("Weight") {
            self.weight = dict["Weight"] as! Int32
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labelsShrink = dict["Labels"] as! String
        }
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetEndpoint") {
            self.internetEndpoint = dict["InternetEndpoint"] as! String
        }
        if dict.keys.contains("IntranetEndpoint") {
            self.intranetEndpoint = dict["IntranetEndpoint"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CloneServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CommitServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclPolicyList") {
            var tmp : [CreateAclPolicyRequest.AclPolicyList] = []
            for v in dict["AclPolicyList"] as! [Any] {
                var model = CreateAclPolicyRequest.AclPolicyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclPolicyList = tmp
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclPolicyList") {
            self.aclPolicyListShrink = dict["AclPolicyList"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAclPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! [String: Any]
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceSpec") {
            self.serviceSpec = dict["ServiceSpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetEndpoint") {
            self.internetEndpoint = dict["InternetEndpoint"] as! String
        }
        if dict.keys.contains("IntranetEndpoint") {
            self.intranetEndpoint = dict["IntranetEndpoint"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateAppServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayRequest : Tea.TeaModel {
    public var resourceName: String?

    public var enableInternet: Bool?

    public var enableIntranet: Bool?

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
        if self.enableInternet != nil {
            map["EnableInternet"] = self.enableInternet!
        }
        if self.enableIntranet != nil {
            map["EnableIntranet"] = self.enableIntranet!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("EnableInternet") {
            self.enableInternet = dict["EnableInternet"] as! Bool
        }
        if dict.keys.contains("EnableIntranet") {
            self.enableIntranet = dict["EnableIntranet"] as! Bool
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGatewayIntranetLinkedVpcRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("effect") {
                    self.effect = dict["effect"] as! String
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExternalClusterId") {
                self.externalClusterId = dict["ExternalClusterId"] as! String
            }
            if dict.keys.contains("NodeMatchLabels") {
                self.nodeMatchLabels = dict["NodeMatchLabels"] as! [String: String]
            }
            if dict.keys.contains("NodeTolerations") {
                var tmp : [CreateResourceRequest.SelfManagedResourceOptions.NodeTolerations] = []
                for v in dict["NodeTolerations"] as! [Any] {
                    var model = CreateResourceRequest.SelfManagedResourceOptions.NodeTolerations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.nodeTolerations = tmp
            }
            if dict.keys.contains("RoleName") {
                self.roleName = dict["RoleName"] as! String
            }
        }
    }
    public var autoRenewal: Bool?

    public var chargeType: String?

    public var ecsInstanceCount: Int32?

    public var ecsInstanceType: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("EcsInstanceCount") {
            self.ecsInstanceCount = dict["EcsInstanceCount"] as! Int32
        }
        if dict.keys.contains("EcsInstanceType") {
            self.ecsInstanceType = dict["EcsInstanceType"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("SelfManagedResourceOptions") {
            var model = CreateResourceRequest.SelfManagedResourceOptions()
            model.fromMap(dict["SelfManagedResourceOptions"] as! [String: Any])
            self.selfManagedResourceOptions = model
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateResourceInstancesRequest : Tea.TeaModel {
    public var autoRenewal: Bool?

    public var chargeType: String?

    public var ecsInstanceCount: Int32?

    public var ecsInstanceType: String?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AutoRenewal") {
            self.autoRenewal = dict["AutoRenewal"] as! Bool
        }
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("EcsInstanceCount") {
            self.ecsInstanceCount = dict["EcsInstanceCount"] as! Int32
        }
        if dict.keys.contains("EcsInstanceType") {
            self.ecsInstanceType = dict["EcsInstanceType"] as! String
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("UserData") {
            self.userData = dict["UserData"] as! String
        }
        if dict.keys.contains("Zone") {
            self.zone = dict["Zone"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            self.instanceIds = dict["InstanceIds"] as! [String]
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateResourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Develop") {
            self.develop = dict["Develop"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Develop") {
            self.develop = dict["Develop"] as! String
        }
        if dict.keys.contains("Labels") {
            self.labelsShrink = dict["Labels"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InternetEndpoint") {
            self.internetEndpoint = dict["InternetEndpoint"] as! String
        }
        if dict.keys.contains("IntranetEndpoint") {
            self.intranetEndpoint = dict["IntranetEndpoint"] as! String
        }
        if dict.keys.contains("Region") {
            self.region = dict["Region"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceId") {
            self.serviceId = dict["ServiceId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("scaleDownGracePeriodSeconds") {
                    self.scaleDownGracePeriodSeconds = dict["scaleDownGracePeriodSeconds"] as! Int32
                }
                if dict.keys.contains("scaleUpActivationReplicas") {
                    self.scaleUpActivationReplicas = dict["scaleUpActivationReplicas"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("stabilizationWindowSeconds") {
                    self.stabilizationWindowSeconds = dict["stabilizationWindowSeconds"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("stabilizationWindowSeconds") {
                    self.stabilizationWindowSeconds = dict["stabilizationWindowSeconds"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("onZero") {
                var model = CreateServiceAutoScalerRequest.Behavior.OnZero()
                model.fromMap(dict["onZero"] as! [String: Any])
                self.onZero = model
            }
            if dict.keys.contains("scaleDown") {
                var model = CreateServiceAutoScalerRequest.Behavior.ScaleDown()
                model.fromMap(dict["scaleDown"] as! [String: Any])
                self.scaleDown = model
            }
            if dict.keys.contains("scaleUp") {
                var model = CreateServiceAutoScalerRequest.Behavior.ScaleUp()
                model.fromMap(dict["scaleUp"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metricName") {
                self.metricName = dict["metricName"] as! String
            }
            if dict.keys.contains("service") {
                self.service = dict["service"] as! String
            }
            if dict.keys.contains("threshold") {
                self.threshold = dict["threshold"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("behavior") {
            var model = CreateServiceAutoScalerRequest.Behavior()
            model.fromMap(dict["behavior"] as! [String: Any])
            self.behavior = model
        }
        if dict.keys.contains("max") {
            self.max = dict["max"] as! Int32
        }
        if dict.keys.contains("min") {
            self.min = dict["min"] as! Int32
        }
        if dict.keys.contains("scaleStrategies") {
            var tmp : [CreateServiceAutoScalerRequest.ScaleStrategies] = []
            for v in dict["scaleStrategies"] as! [Any] {
                var model = CreateServiceAutoScalerRequest.ScaleStrategies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceAutoScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateServiceCronScalerRequest : Tea.TeaModel {
    public class ScaleJobs : Tea.TeaModel {
        public var name: String?

        public var schedule: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Schedule") {
                self.schedule = dict["Schedule"] as! String
            }
            if dict.keys.contains("TargetSize") {
                self.targetSize = dict["TargetSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeDates") {
            self.excludeDates = dict["ExcludeDates"] as! [String]
        }
        if dict.keys.contains("ScaleJobs") {
            var tmp : [CreateServiceCronScalerRequest.ScaleJobs] = []
            for v in dict["ScaleJobs"] as! [Any] {
                var model = CreateServiceCronScalerRequest.ScaleJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceCronScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ratio") {
            self.ratio = dict["Ratio"] as! Int32
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateServiceMirrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Entry") {
                self.entry = dict["Entry"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclPolicyList") {
            var tmp : [DeleteAclPolicyRequest.AclPolicyList] = []
            for v in dict["AclPolicyList"] as! [Any] {
                var model = DeleteAclPolicyRequest.AclPolicyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.aclPolicyList = tmp
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AclPolicyList") {
            self.aclPolicyListShrink = dict["AclPolicyList"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteAclPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceDLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllFailed") {
            self.allFailed = dict["AllFailed"] as! Bool
        }
        if dict.keys.contains("InstanceList") {
            self.instanceList = dict["InstanceList"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteResourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceAutoScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceCronScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Container") {
            self.container = dict["Container"] as! String
        }
        if dict.keys.contains("InstanceList") {
            self.instanceList = dict["InstanceList"] as! String
        }
        if dict.keys.contains("SoftRestart") {
            self.softRestart = dict["SoftRestart"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keys = dict["Keys"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Keys") {
            self.keysShrink = dict["Keys"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteServiceMirrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AvailableAgent") {
            self.availableAgent = dict["AvailableAgent"] as! Int64
        }
        if dict.keys.contains("CallerUid") {
            self.callerUid = dict["CallerUid"] as! String
        }
        if dict.keys.contains("DesiredAgent") {
            self.desiredAgent = dict["DesiredAgent"] as! Int64
        }
        if dict.keys.contains("Endpoint") {
            self.endpoint = dict["Endpoint"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ParentUid") {
            self.parentUid = dict["ParentUid"] as! String
        }
        if dict.keys.contains("Reason") {
            self.reason = dict["Reason"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
        if dict.keys.contains("TaskName") {
            self.taskName = dict["TaskName"] as! String
        }
        if dict.keys.contains("Token") {
            self.token = dict["Token"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ReportType") {
            self.reportType = dict["ReportType"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            self.data = dict["Data"] as! Any
        }
        if dict.keys.contains("ReportUrl") {
            self.reportUrl = dict["ReportUrl"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeBenchmarkTaskReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGatewayResponseBody : Tea.TeaModel {
    public var createTime: String?

    public var externalClusterId: String?

    public var gatewayId: String?

    public var gatewayName: String?

    public var instanceType: String?

    public var internetDomain: String?

    public var internetEnabled: Bool?

    public var internetStatus: String?

    public var intranetDomain: String?

    public var isDefault: Bool?

    public var replicas: Int32?

    public var requestId: String?

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
        if self.isDefault != nil {
            map["IsDefault"] = self.isDefault!
        }
        if self.replicas != nil {
            map["Replicas"] = self.replicas!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        if self.updateTime != nil {
            map["UpdateTime"] = self.updateTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExternalClusterId") {
            self.externalClusterId = dict["ExternalClusterId"] as! String
        }
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayName") {
            self.gatewayName = dict["GatewayName"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetDomain") {
            self.internetDomain = dict["InternetDomain"] as! String
        }
        if dict.keys.contains("InternetEnabled") {
            self.internetEnabled = dict["InternetEnabled"] as! Bool
        }
        if dict.keys.contains("InternetStatus") {
            self.internetStatus = dict["InternetStatus"] as! String
        }
        if dict.keys.contains("IntranetDomain") {
            self.intranetDomain = dict["IntranetDomain"] as! String
        }
        if dict.keys.contains("IsDefault") {
            self.isDefault = dict["IsDefault"] as! Bool
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Group()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeResourceResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var cpuCount: Int32?

    public var createTime: String?

    public var extraData: String?

    public var gpuCount: Int32?

    public var instanceCount: Int32?

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
        if self.createTime != nil {
            map["CreateTime"] = self.createTime!
        }
        if self.extraData != nil {
            map["ExtraData"] = self.extraData!
        }
        if self.gpuCount != nil {
            map["GpuCount"] = self.gpuCount!
        }
        if self.instanceCount != nil {
            map["InstanceCount"] = self.instanceCount!
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CpuCount") {
            self.cpuCount = dict["CpuCount"] as! Int32
        }
        if dict.keys.contains("CreateTime") {
            self.createTime = dict["CreateTime"] as! String
        }
        if dict.keys.contains("ExtraData") {
            self.extraData = dict["ExtraData"] as! String
        }
        if dict.keys.contains("GpuCount") {
            self.gpuCount = dict["GpuCount"] as! Int32
        }
        if dict.keys.contains("InstanceCount") {
            self.instanceCount = dict["InstanceCount"] as! Int32
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("OwnerUid") {
            self.ownerUid = dict["OwnerUid"] as! String
        }
        if dict.keys.contains("PostPaidInstanceCount") {
            self.postPaidInstanceCount = dict["PostPaidInstanceCount"] as! Int32
        }
        if dict.keys.contains("PrePaidInstanceCount") {
            self.prePaidInstanceCount = dict["PrePaidInstanceCount"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
        if dict.keys.contains("UpdateTime") {
            self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AuxVSwitchList") {
            self.auxVSwitchList = dict["AuxVSwitchList"] as! [String]
        }
        if dict.keys.contains("DestinationCIDRs") {
            self.destinationCIDRs = dict["DestinationCIDRs"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceDLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("LogStore") {
            self.logStore = dict["LogStore"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("ProjectName") {
            self.projectName = dict["ProjectName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeResourceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = Service()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metricName") {
                self.metricName = dict["metricName"] as! String
            }
            if dict.keys.contains("service") {
                self.service = dict["service"] as! String
            }
            if dict.keys.contains("value") {
                self.value = dict["value"] as! Double
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metricName") {
                self.metricName = dict["metricName"] as! String
            }
            if dict.keys.contains("service") {
                self.service = dict["service"] as! String
            }
            if dict.keys.contains("threshold") {
                self.threshold = dict["threshold"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Behavior") {
            self.behavior = dict["Behavior"] as! [String: Any]
        }
        if dict.keys.contains("CurrentMetrics") {
            var tmp : [DescribeServiceAutoScalerResponseBody.CurrentMetrics] = []
            for v in dict["CurrentMetrics"] as! [Any] {
                var model = DescribeServiceAutoScalerResponseBody.CurrentMetrics()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.currentMetrics = tmp
        }
        if dict.keys.contains("MaxReplica") {
            self.maxReplica = dict["MaxReplica"] as! Int32
        }
        if dict.keys.contains("MinReplica") {
            self.minReplica = dict["MinReplica"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScaleStrategies") {
            var tmp : [DescribeServiceAutoScalerResponseBody.ScaleStrategies] = []
            for v in dict["ScaleStrategies"] as! [Any] {
                var model = DescribeServiceAutoScalerResponseBody.ScaleStrategies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scaleStrategies = tmp
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceAutoScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("LastProbeTime") {
                self.lastProbeTime = dict["LastProbeTime"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Schedule") {
                self.schedule = dict["Schedule"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("TargetSize") {
                self.targetSize = dict["TargetSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeDates") {
            self.excludeDates = dict["ExcludeDates"] as! [String]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ScaleJobs") {
            var tmp : [DescribeServiceCronScalerResponseBody.ScaleJobs] = []
            for v in dict["ScaleJobs"] as! [Any] {
                var model = DescribeServiceCronScalerResponseBody.ScaleJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.scaleJobs = tmp
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceCronScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Advices") {
                self.advices = dict["Advices"] as! [String]
            }
            if dict.keys.contains("Causes") {
                self.causes = dict["Causes"] as! [String]
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DiagnosisList") {
            var tmp : [DescribeServiceDiagnosisResponseBody.DiagnosisList] = []
            for v in dict["DiagnosisList"] as! [Any] {
                var model = DescribeServiceDiagnosisResponseBody.DiagnosisList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.diagnosisList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceDiagnosisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("EventType") {
            self.eventType = dict["EventType"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Reason") {
                self.reason = dict["Reason"] as! String
            }
            if dict.keys.contains("Time") {
                self.time = dict["Time"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Events") {
            var tmp : [DescribeServiceEventResponseBody.Events] = []
            for v in dict["Events"] as! [Any] {
                var model = DescribeServiceEventResponseBody.Events()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.events = tmp
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("TotalPageNum") {
            self.totalPageNum = dict["TotalPageNum"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceEventResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Advices") {
                self.advices = dict["Advices"] as! [String]
            }
            if dict.keys.contains("Causes") {
                self.causes = dict["Causes"] as! [String]
            }
            if dict.keys.contains("Error") {
                self.error = dict["Error"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Diagnosis") {
            var model = DescribeServiceInstanceDiagnosisResponseBody.Diagnosis()
            model.fromMap(dict["Diagnosis"] as! [String: Any])
            self.diagnosis = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceInstanceDiagnosisResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerName") {
            self.containerName = dict["ContainerName"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("Ip") {
            self.ip = dict["Ip"] as! String
        }
        if dict.keys.contains("Keyword") {
            self.keyword = dict["Keyword"] as! String
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("Previous") {
            self.previous = dict["Previous"] as! Bool
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Logs") {
            self.logs = dict["Logs"] as! [String]
        }
        if dict.keys.contains("PageNum") {
            self.pageNum = dict["PageNum"] as! Int64
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("TotalPageNum") {
            self.totalPageNum = dict["TotalPageNum"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceLogResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ratio") {
            self.ratio = dict["Ratio"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeServiceMirrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsProtect") {
            self.isProtect = dict["IsProtect"] as! Bool
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("SpotDiscount") {
                self.spotDiscount = dict["SpotDiscount"] as! String
            }
            if dict.keys.contains("Timestamp") {
                self.timestamp = dict["Timestamp"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SpotDiscounts") {
            var tmp : [DescribeSpotDiscountHistoryResponseBody.SpotDiscounts] = []
            for v in dict["SpotDiscounts"] as! [Any] {
                var model = DescribeSpotDiscountHistoryResponseBody.SpotDiscounts()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeSpotDiscountHistoryResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Exit") {
            self.exit = dict["Exit"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DevelopServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Entry") {
                    self.entry = dict["Entry"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclPolicyList") {
                var tmp : [ListAclPolicyResponseBody.InternetAclPolicyList.AclPolicyList] = []
                for v in dict["AclPolicyList"] as! [Any] {
                    var model = ListAclPolicyResponseBody.InternetAclPolicyList.AclPolicyList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Entry") {
                    self.entry = dict["Entry"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclPolicyList") {
                var tmp : [ListAclPolicyResponseBody.IntranetVpcAclPolicyList.AclPolicyList] = []
                for v in dict["AclPolicyList"] as! [Any] {
                    var model = ListAclPolicyResponseBody.IntranetVpcAclPolicyList.AclPolicyList()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
                }
                self.aclPolicyList = tmp
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("InternetAclPolicyList") {
            var tmp : [ListAclPolicyResponseBody.InternetAclPolicyList] = []
            for v in dict["InternetAclPolicyList"] as! [Any] {
                var model = ListAclPolicyResponseBody.InternetAclPolicyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.internetAclPolicyList = tmp
        }
        if dict.keys.contains("IntranetVpcAclPolicyList") {
            var tmp : [ListAclPolicyResponseBody.IntranetVpcAclPolicyList] = []
            for v in dict["IntranetVpcAclPolicyList"] as! [Any] {
                var model = ListAclPolicyResponseBody.IntranetVpcAclPolicyList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.intranetVpcAclPolicyList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAclPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListBenchmarkTaskRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.serviceName != nil {
            map["ServiceName"] = self.serviceName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AvailableAgent") {
                self.availableAgent = dict["AvailableAgent"] as! Int64
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("Region") {
                self.region = dict["Region"] as! String
            }
            if dict.keys.contains("ServiceName") {
                self.serviceName = dict["ServiceName"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskName") {
                self.taskName = dict["TaskName"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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
        if dict.keys.contains("Tasks") {
            var tmp : [ListBenchmarkTaskResponseBody.Tasks] = []
            for v in dict["Tasks"] as! [Any] {
                var model = ListBenchmarkTaskResponseBody.Tasks()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.tasks = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayRequest : Tea.TeaModel {
    public var gatewayId: String?

    public var gatewayName: String?

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
        if self.gatewayId != nil {
            map["GatewayId"] = self.gatewayId!
        }
        if self.gatewayName != nil {
            map["GatewayName"] = self.gatewayName!
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
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("GatewayName") {
            self.gatewayName = dict["GatewayName"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListGatewayResponseBody : Tea.TeaModel {
    public class Gateways : Tea.TeaModel {
        public var createTime: String?

        public var gatewayId: String?

        public var gatewayName: String?

        public var instanceType: String?

        public var internetDomain: String?

        public var internetEnabled: Bool?

        public var intranetDomain: String?

        public var isDefault: Bool?

        public var replicas: Int32?

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
            if self.isDefault != nil {
                map["IsDefault"] = self.isDefault!
            }
            if self.replicas != nil {
                map["Replicas"] = self.replicas!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("GatewayId") {
                self.gatewayId = dict["GatewayId"] as! String
            }
            if dict.keys.contains("GatewayName") {
                self.gatewayName = dict["GatewayName"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InternetDomain") {
                self.internetDomain = dict["InternetDomain"] as! String
            }
            if dict.keys.contains("InternetEnabled") {
                self.internetEnabled = dict["InternetEnabled"] as! Bool
            }
            if dict.keys.contains("IntranetDomain") {
                self.intranetDomain = dict["IntranetDomain"] as! String
            }
            if dict.keys.contains("IsDefault") {
                self.isDefault = dict["IsDefault"] as! Bool
            }
            if dict.keys.contains("Replicas") {
                self.replicas = dict["Replicas"] as! Int32
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Gateways") {
            var tmp : [ListGatewayResponseBody.Gateways] = []
            for v in dict["Gateways"] as! [Any] {
                var model = ListGatewayResponseBody.Gateways()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.gateways = tmp
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
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGatewayIntranetLinkedVpcResponseBody : Tea.TeaModel {
    public class IntranetLinkedVpcList : Tea.TeaModel {
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Ip") {
                self.ip = dict["Ip"] as! String
            }
            if dict.keys.contains("SecurityGroupId") {
                self.securityGroupId = dict["SecurityGroupId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("IntranetLinkedVpcList") {
            var tmp : [ListGatewayIntranetLinkedVpcResponseBody.IntranetLinkedVpcList] = []
            for v in dict["IntranetLinkedVpcList"] as! [Any] {
                var model = ListGatewayIntranetLinkedVpcResponseBody.IntranetLinkedVpcList()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.intranetLinkedVpcList = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGatewayIntranetLinkedVpcResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListGroupsRequest : Tea.TeaModel {
    public var filter: String?

    public var pageNumber: String?

    public var pageSize: String?

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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! String
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Groups") {
            var tmp : [Group] = []
            for v in dict["Groups"] as! [Any] {
                var model = Group()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.groups = tmp
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
            self.totalCount = dict["TotalCount"] as! Int64
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourceInstanceWorkerRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Pods") {
            var tmp : [ResourceInstanceWorker] = []
            for v in dict["Pods"] as! [Any] {
                var model = ResourceInstanceWorker()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.pods = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceInstanceWorkerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("InstanceIP") {
            self.instanceIP = dict["InstanceIP"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceStatus") {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [ResourceInstance] = []
            for v in dict["Instances"] as! [Any] {
                var model = ResourceInstance()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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
        if dict.keys.contains("Services") {
            var tmp : [Service] = []
            for v in dict["Services"] as! [Any] {
                var model = Service()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourceServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListResourcesRequest : Tea.TeaModel {
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var resourceId: String?

    public var resourceName: String?

    public var resourceType: String?

    public override init() {
        super.init()
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
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
        }
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
        }
        if self.resourceType != nil {
            map["ResourceType"] = self.resourceType!
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
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
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
        if dict.keys.contains("Resources") {
            var tmp : [Resource] = []
            for v in dict["Resources"] as! [Any] {
                var model = Resource()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.resources = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Containers") {
            var tmp : [ContainerInfo] = []
            for v in dict["Containers"] as! [Any] {
                var model = ContainerInfo()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.containers = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceContainersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("HostIP") {
            self.hostIP = dict["HostIP"] as! String
        }
        if dict.keys.contains("InstanceIP") {
            self.instanceIP = dict["InstanceIP"] as! String
        }
        if dict.keys.contains("InstanceName") {
            self.instanceName = dict["InstanceName"] as! String
        }
        if dict.keys.contains("InstanceStatus") {
            self.instanceStatus = dict["InstanceStatus"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsSpot") {
            self.isSpot = dict["IsSpot"] as! Bool
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Instances") {
            var tmp : [Instance] = []
            for v in dict["Instances"] as! [Any] {
                var model = Instance()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.instances = tmp
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BuildTime") {
                self.buildTime = dict["BuildTime"] as! String
            }
            if dict.keys.contains("ImageAvailable") {
                self.imageAvailable = dict["ImageAvailable"] as! String
            }
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! Int32
            }
            if dict.keys.contains("Message") {
                self.message = dict["Message"] as! String
            }
            if dict.keys.contains("ServiceConfig") {
                self.serviceConfig = dict["ServiceConfig"] as! String
            }
            if dict.keys.contains("ServiceRunnable") {
                self.serviceRunnable = dict["ServiceRunnable"] as! String
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
            self.totalCount = dict["TotalCount"] as! Int64
        }
        if dict.keys.contains("Versions") {
            var tmp : [ListServiceVersionsResponseBody.Versions] = []
            for v in dict["Versions"] as! [Any] {
                var model = ListServiceVersionsResponseBody.Versions()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServiceVersionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListServicesRequest : Tea.TeaModel {
    public var filter: String?

    public var gateway: String?

    public var groupName: String?

    public var label: [String: String]?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentServiceUid: String?

    public var quotaId: String?

    public var resourceName: String?

    public var role: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceType: String?

    public var serviceUid: String?

    public var sort: String?

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
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("Gateway") {
            self.gateway = dict["Gateway"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Label") {
            self.label = dict["Label"] as! [String: String]
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentServiceUid") {
            self.parentServiceUid = dict["ParentServiceUid"] as! String
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceStatus") {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ServiceUid") {
            self.serviceUid = dict["ServiceUid"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
    }
}

public class ListServicesShrinkRequest : Tea.TeaModel {
    public var filter: String?

    public var gateway: String?

    public var groupName: String?

    public var labelShrink: String?

    public var order: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var parentServiceUid: String?

    public var quotaId: String?

    public var resourceName: String?

    public var role: String?

    public var serviceName: String?

    public var serviceStatus: String?

    public var serviceType: String?

    public var serviceUid: String?

    public var sort: String?

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
        if self.gateway != nil {
            map["Gateway"] = self.gateway!
        }
        if self.groupName != nil {
            map["GroupName"] = self.groupName!
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
        if self.resourceName != nil {
            map["ResourceName"] = self.resourceName!
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
        if self.workspaceId != nil {
            map["WorkspaceId"] = self.workspaceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("Gateway") {
            self.gateway = dict["Gateway"] as! String
        }
        if dict.keys.contains("GroupName") {
            self.groupName = dict["GroupName"] as! String
        }
        if dict.keys.contains("Label") {
            self.labelShrink = dict["Label"] as! String
        }
        if dict.keys.contains("Order") {
            self.order = dict["Order"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ParentServiceUid") {
            self.parentServiceUid = dict["ParentServiceUid"] as! String
        }
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("ServiceName") {
            self.serviceName = dict["ServiceName"] as! String
        }
        if dict.keys.contains("ServiceStatus") {
            self.serviceStatus = dict["ServiceStatus"] as! String
        }
        if dict.keys.contains("ServiceType") {
            self.serviceType = dict["ServiceType"] as! String
        }
        if dict.keys.contains("ServiceUid") {
            self.serviceUid = dict["ServiceUid"] as! String
        }
        if dict.keys.contains("Sort") {
            self.sort = dict["Sort"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
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
        if dict.keys.contains("Services") {
            var tmp : [Service] = []
            for v in dict["Services"] as! [Any] {
                var model = Service()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.services = tmp
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListServicesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Attributes") {
                self.attributes = dict["Attributes"] as! [String: String]
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Addons") {
            var tmp : [ListTenantAddonsResponseBody.Addons] = []
            for v in dict["Addons"] as! [Any] {
                var model = ListTenantAddonsResponseBody.Addons()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
            }
            self.addons = tmp
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTenantAddonsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReinstallTenantAddonResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("TrafficState") {
            self.trafficState = dict["TrafficState"] as! String
        }
        if dict.keys.contains("Weight") {
            self.weight = dict["Weight"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ReleaseServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RestartServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("QuotaId") {
            self.quotaId = dict["QuotaId"] as! String
        }
        if dict.keys.contains("WorkspaceId") {
            self.workspaceId = dict["WorkspaceId"] as! String
        }
        if dict.keys.contains("AppType") {
            self.appType = dict["AppType"] as! String
        }
        if dict.keys.contains("AppVersion") {
            self.appVersion = dict["AppVersion"] as! String
        }
        if dict.keys.contains("Config") {
            self.config = dict["Config"] as! [String: Any]
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
        }
        if dict.keys.contains("ServiceSpec") {
            self.serviceSpec = dict["ServiceSpec"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateAppServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateBenchmarkTaskResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateGatewayRequest : Tea.TeaModel {
    public var enableInternet: Bool?

    public var enableIntranet: Bool?

    public var instanceType: String?

    public var isDefault: Bool?

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
        if self.enableInternet != nil {
            map["EnableInternet"] = self.enableInternet!
        }
        if self.enableIntranet != nil {
            map["EnableIntranet"] = self.enableIntranet!
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
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EnableInternet") {
            self.enableInternet = dict["EnableInternet"] as! Bool
        }
        if dict.keys.contains("EnableIntranet") {
            self.enableIntranet = dict["EnableIntranet"] as! Bool
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("IsDefault") {
            self.isDefault = dict["IsDefault"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Replicas") {
            self.replicas = dict["Replicas"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("GatewayId") {
            self.gatewayId = dict["GatewayId"] as! String
        }
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateGatewayResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("effect") {
                    self.effect = dict["effect"] as! String
                }
                if dict.keys.contains("key") {
                    self.key = dict["key"] as! String
                }
                if dict.keys.contains("operator") {
                    self.operator_ = dict["operator"] as! String
                }
                if dict.keys.contains("value") {
                    self.value = dict["value"] as! String
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeMatchLabels") {
                self.nodeMatchLabels = dict["NodeMatchLabels"] as! [String: String]
            }
            if dict.keys.contains("NodeTolerations") {
                var tmp : [UpdateResourceRequest.SelfManagedResourceOptions.NodeTolerations] = []
                for v in dict["NodeTolerations"] as! [Any] {
                    var model = UpdateResourceRequest.SelfManagedResourceOptions.NodeTolerations()
                    if v != nil {
                        model.fromMap(v as! [String: Any])
                    }
                    tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
        }
        if dict.keys.contains("SelfManagedResourceOptions") {
            var model = UpdateResourceRequest.SelfManagedResourceOptions()
            model.fromMap(dict["SelfManagedResourceOptions"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
        }
        if dict.keys.contains("ResourceName") {
            self.resourceName = dict["ResourceName"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DestinationCIDRs") {
            self.destinationCIDRs = dict["DestinationCIDRs"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VSwitchIdList") {
            self.vSwitchIdList = dict["VSwitchIdList"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceDLinkResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Action") {
            self.action = dict["Action"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateResourceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceRequest : Tea.TeaModel {
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
        if self.updateType != nil {
            map["UpdateType"] = self.updateType!
        }
        if self.body != nil {
            map["body"] = self.body!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("UpdateType") {
            self.updateType = dict["UpdateType"] as! String
        }
        if dict.keys.contains("body") {
            self.body = dict["body"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("scaleDownGracePeriodSeconds") {
                    self.scaleDownGracePeriodSeconds = dict["scaleDownGracePeriodSeconds"] as! Int32
                }
                if dict.keys.contains("scaleUpActivationReplicas") {
                    self.scaleUpActivationReplicas = dict["scaleUpActivationReplicas"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("stabilizationWindowSeconds") {
                    self.stabilizationWindowSeconds = dict["stabilizationWindowSeconds"] as! Int32
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("stabilizationWindowSeconds") {
                    self.stabilizationWindowSeconds = dict["stabilizationWindowSeconds"] as! Int32
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("onZero") {
                var model = UpdateServiceAutoScalerRequest.Behavior.OnZero()
                model.fromMap(dict["onZero"] as! [String: Any])
                self.onZero = model
            }
            if dict.keys.contains("scaleDown") {
                var model = UpdateServiceAutoScalerRequest.Behavior.ScaleDown()
                model.fromMap(dict["scaleDown"] as! [String: Any])
                self.scaleDown = model
            }
            if dict.keys.contains("scaleUp") {
                var model = UpdateServiceAutoScalerRequest.Behavior.ScaleUp()
                model.fromMap(dict["scaleUp"] as! [String: Any])
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

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("metricName") {
                self.metricName = dict["metricName"] as! String
            }
            if dict.keys.contains("service") {
                self.service = dict["service"] as! String
            }
            if dict.keys.contains("threshold") {
                self.threshold = dict["threshold"] as! Double
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("behavior") {
            var model = UpdateServiceAutoScalerRequest.Behavior()
            model.fromMap(dict["behavior"] as! [String: Any])
            self.behavior = model
        }
        if dict.keys.contains("max") {
            self.max = dict["max"] as! Int32
        }
        if dict.keys.contains("min") {
            self.min = dict["min"] as! Int32
        }
        if dict.keys.contains("scaleStrategies") {
            var tmp : [UpdateServiceAutoScalerRequest.ScaleStrategies] = []
            for v in dict["scaleStrategies"] as! [Any] {
                var model = UpdateServiceAutoScalerRequest.ScaleStrategies()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceAutoScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateServiceCronScalerRequest : Tea.TeaModel {
    public class ScaleJobs : Tea.TeaModel {
        public var name: String?

        public var schedule: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.schedule != nil {
                map["Schedule"] = self.schedule!
            }
            if self.targetSize != nil {
                map["TargetSize"] = self.targetSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Schedule") {
                self.schedule = dict["Schedule"] as! String
            }
            if dict.keys.contains("TargetSize") {
                self.targetSize = dict["TargetSize"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ExcludeDates") {
            self.excludeDates = dict["ExcludeDates"] as! [String]
        }
        if dict.keys.contains("ScaleJobs") {
            var tmp : [UpdateServiceCronScalerRequest.ScaleJobs] = []
            for v in dict["ScaleJobs"] as! [Any] {
                var model = UpdateServiceCronScalerRequest.ScaleJobs()
                if v != nil {
                    model.fromMap(v as! [String: Any])
                }
                tmp.append(model)
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceCronScalerResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Isolate") {
            self.isolate = dict["Isolate"] as! Bool
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Labels") {
            self.labels = dict["Labels"] as! [String: String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceLabelResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Ratio") {
            self.ratio = dict["Ratio"] as! Int32
        }
        if dict.keys.contains("Target") {
            self.target = dict["Target"] as! [String]
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceMirrorResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Lock") {
            self.lock = dict["Lock"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceSafetyLockResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Version") {
            self.version = dict["Version"] as! Int32
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            self.message = dict["Message"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateServiceVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
