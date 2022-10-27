import Foundation
import Tea
import TeaUtils
import AlibabacloudOpenApi
import AlibabaCloudOpenApiUtil
import AlibabacloudEndpointUtil

public class AddContainerAppRequest : Tea.TeaModel {
    public var containerType: String?

    public var description_: String?

    public var imageTag: String?

    public var name: String?

    public var repository: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.repository != nil {
            map["Repository"] = self.repository!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageTag") {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Repository") {
            self.repository = dict["Repository"] as! String
        }
    }
}

public class AddContainerAppResponseBody : Tea.TeaModel {
    public class ContainerId : Tea.TeaModel {
        public var containerId: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerId != nil {
                map["ContainerId"] = self.containerId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerId") {
                self.containerId = dict["ContainerId"] as! [String]
            }
        }
    }
    public var containerId: AddContainerAppResponseBody.ContainerId?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerId?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerId != nil {
            map["ContainerId"] = self.containerId?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerId") {
            var model = AddContainerAppResponseBody.ContainerId()
            model.fromMap(dict["ContainerId"] as! [String: Any])
            self.containerId = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddContainerAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddContainerAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddContainerAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddExistedNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var instance: [AddExistedNodesRequest.Instance]?

    public var jobQueue: String?

    public override init() {
        super.init()
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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [AddExistedNodesRequest.Instance]
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
    }
}

public class AddExistedNodesResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AddExistedNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddExistedNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddExistedNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddLocalNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var nodes: String?

    public var queue: String?

    public override init() {
        super.init()
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
        if self.nodes != nil {
            map["Nodes"] = self.nodes!
        }
        if self.queue != nil {
            map["Queue"] = self.queue!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! String
        }
        if dict.keys.contains("Queue") {
            self.queue = dict["Queue"] as! String
        }
    }
}

public class AddLocalNodesResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
            }
        }
    }
    public var instanceIds: AddLocalNodesResponseBody.InstanceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            var model = AddLocalNodesResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class AddLocalNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddLocalNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddLocalNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddNodesRequest : Tea.TeaModel {
    public class DataDisks : Tea.TeaModel {
        public var dataDiskCategory: String?

        public var dataDiskDeleteWithInstance: Bool?

        public var dataDiskEncrypted: Bool?

        public var dataDiskKMSKeyId: String?

        public var dataDiskPerformanceLevel: String?

        public var dataDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataDiskCategory != nil {
                map["DataDiskCategory"] = self.dataDiskCategory!
            }
            if self.dataDiskDeleteWithInstance != nil {
                map["DataDiskDeleteWithInstance"] = self.dataDiskDeleteWithInstance!
            }
            if self.dataDiskEncrypted != nil {
                map["DataDiskEncrypted"] = self.dataDiskEncrypted!
            }
            if self.dataDiskKMSKeyId != nil {
                map["DataDiskKMSKeyId"] = self.dataDiskKMSKeyId!
            }
            if self.dataDiskPerformanceLevel != nil {
                map["DataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
            }
            if self.dataDiskSize != nil {
                map["DataDiskSize"] = self.dataDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataDiskCategory") {
                self.dataDiskCategory = dict["DataDiskCategory"] as! String
            }
            if dict.keys.contains("DataDiskDeleteWithInstance") {
                self.dataDiskDeleteWithInstance = dict["DataDiskDeleteWithInstance"] as! Bool
            }
            if dict.keys.contains("DataDiskEncrypted") {
                self.dataDiskEncrypted = dict["DataDiskEncrypted"] as! Bool
            }
            if dict.keys.contains("DataDiskKMSKeyId") {
                self.dataDiskKMSKeyId = dict["DataDiskKMSKeyId"] as! String
            }
            if dict.keys.contains("DataDiskPerformanceLevel") {
                self.dataDiskPerformanceLevel = dict["DataDiskPerformanceLevel"] as! String
            }
            if dict.keys.contains("DataDiskSize") {
                self.dataDiskSize = dict["DataDiskSize"] as! Int32
            }
        }
    }
    public var allocatePublicAddress: Bool?

    public var autoRenew: String?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clusterId: String?

    public var computeEnableHt: Bool?

    public var computeSpotPriceLimit: String?

    public var computeSpotStrategy: String?

    public var count: Int32?

    public var createMode: String?

    public var dataDisks: [AddNodesRequest.DataDisks]?

    public var ecsChargeType: String?

    public var hostNamePrefix: String?

    public var hostNameSuffix: String?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var instanceType: String?

    public var internetChargeType: String?

    public var internetMaxBandWidthIn: Int32?

    public var internetMaxBandWidthOut: Int32?

    public var jobQueue: String?

    public var minCount: Int32?

    public var period: Int32?

    public var periodUnit: String?

    public var sync: Bool?

    public var systemDiskLevel: String?

    public var systemDiskSize: Int32?

    public var systemDiskType: String?

    public var vSwitchId: String?

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
        if self.allocatePublicAddress != nil {
            map["AllocatePublicAddress"] = self.allocatePublicAddress!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.computeEnableHt != nil {
            map["ComputeEnableHt"] = self.computeEnableHt!
        }
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.count != nil {
            map["Count"] = self.count!
        }
        if self.createMode != nil {
            map["CreateMode"] = self.createMode!
        }
        if self.dataDisks != nil {
            var tmp : [Any] = []
            for k in self.dataDisks! {
                tmp.append(k.toMap())
            }
            map["DataDisks"] = tmp
        }
        if self.ecsChargeType != nil {
            map["EcsChargeType"] = self.ecsChargeType!
        }
        if self.hostNamePrefix != nil {
            map["HostNamePrefix"] = self.hostNamePrefix!
        }
        if self.hostNameSuffix != nil {
            map["HostNameSuffix"] = self.hostNameSuffix!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandWidthIn != nil {
            map["InternetMaxBandWidthIn"] = self.internetMaxBandWidthIn!
        }
        if self.internetMaxBandWidthOut != nil {
            map["InternetMaxBandWidthOut"] = self.internetMaxBandWidthOut!
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        if self.minCount != nil {
            map["MinCount"] = self.minCount!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.sync != nil {
            map["Sync"] = self.sync!
        }
        if self.systemDiskLevel != nil {
            map["SystemDiskLevel"] = self.systemDiskLevel!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.systemDiskType != nil {
            map["SystemDiskType"] = self.systemDiskType!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocatePublicAddress") {
            self.allocatePublicAddress = dict["AllocatePublicAddress"] as! Bool
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeEnableHt") {
            self.computeEnableHt = dict["ComputeEnableHt"] as! Bool
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! String
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("Count") {
            self.count = dict["Count"] as! Int32
        }
        if dict.keys.contains("CreateMode") {
            self.createMode = dict["CreateMode"] as! String
        }
        if dict.keys.contains("DataDisks") {
            self.dataDisks = dict["DataDisks"] as! [AddNodesRequest.DataDisks]
        }
        if dict.keys.contains("EcsChargeType") {
            self.ecsChargeType = dict["EcsChargeType"] as! String
        }
        if dict.keys.contains("HostNamePrefix") {
            self.hostNamePrefix = dict["HostNamePrefix"] as! String
        }
        if dict.keys.contains("HostNameSuffix") {
            self.hostNameSuffix = dict["HostNameSuffix"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("InternetMaxBandWidthIn") {
            self.internetMaxBandWidthIn = dict["InternetMaxBandWidthIn"] as! Int32
        }
        if dict.keys.contains("InternetMaxBandWidthOut") {
            self.internetMaxBandWidthOut = dict["InternetMaxBandWidthOut"] as! Int32
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
        if dict.keys.contains("MinCount") {
            self.minCount = dict["MinCount"] as! Int32
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("Sync") {
            self.sync = dict["Sync"] as! Bool
        }
        if dict.keys.contains("SystemDiskLevel") {
            self.systemDiskLevel = dict["SystemDiskLevel"] as! String
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("SystemDiskType") {
            self.systemDiskType = dict["SystemDiskType"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class AddNodesResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
            }
        }
    }
    public var instanceIds: AddNodesResponseBody.InstanceIds?

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
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceIds") {
            var model = AddNodesResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class AddNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddQueueRequest : Tea.TeaModel {
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

public class AddQueueResponseBody : Tea.TeaModel {
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

public class AddQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddQueueResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddSecurityGroupRequest : Tea.TeaModel {
    public var clientToken: String?

    public var clusterId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class AddSecurityGroupResponseBody : Tea.TeaModel {
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

public class AddSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddSecurityGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class AddUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var group: String?

        public var name: String?

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
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
        }
    }
    public var clusterId: String?

    public var user: [AddUsersRequest.User]?

    public override init() {
        super.init()
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
            self.user = dict["User"] as! [AddUsersRequest.User]
        }
    }
}

public class AddUsersResponseBody : Tea.TeaModel {
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

public class AddUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: AddUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = AddUsersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ApplyNodesRequest : Tea.TeaModel {
    public class InstanceTypeModel : Tea.TeaModel {
        public var instanceType: String?

        public var maxPrice: Double?

        public var targetImageId: String?

        public override init() {
            super.init()
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
            if self.maxPrice != nil {
                map["MaxPrice"] = self.maxPrice!
            }
            if self.targetImageId != nil {
                map["TargetImageId"] = self.targetImageId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("MaxPrice") {
                self.maxPrice = dict["MaxPrice"] as! Double
            }
            if dict.keys.contains("TargetImageId") {
                self.targetImageId = dict["TargetImageId"] as! String
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public class ZoneInfos : Tea.TeaModel {
        public var vSwitchId: String?

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
            if self.vSwitchId != nil {
                map["VSwitchId"] = self.vSwitchId!
            }
            if self.zoneId != nil {
                map["ZoneId"] = self.zoneId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VSwitchId") {
                self.vSwitchId = dict["VSwitchId"] as! String
            }
            if dict.keys.contains("ZoneId") {
                self.zoneId = dict["ZoneId"] as! String
            }
        }
    }
    public var allocatePublicAddress: Bool?

    public var clusterId: String?

    public var computeSpotPriceLimit: Double?

    public var computeSpotStrategy: String?

    public var cores: Int32?

    public var hostNamePrefix: String?

    public var hostNameSuffix: String?

    public var imageId: String?

    public var instanceFamilyLevel: String?

    public var instanceTypeModel: [ApplyNodesRequest.InstanceTypeModel]?

    public var internetChargeType: String?

    public var internetMaxBandWidthIn: Int32?

    public var internetMaxBandWidthOut: Int32?

    public var interval: Int32?

    public var jobQueue: String?

    public var memory: Int32?

    public var priorityStrategy: String?

    public var resourceAmountType: String?

    public var round: Int32?

    public var strictResourceProvision: Bool?

    public var strictSatisfiedTargetCapacity: Bool?

    public var systemDiskLevel: String?

    public var systemDiskSize: Int32?

    public var systemDiskType: String?

    public var tag: [ApplyNodesRequest.Tag]?

    public var targetCapacity: Int32?

    public var zoneInfos: [ApplyNodesRequest.ZoneInfos]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocatePublicAddress != nil {
            map["AllocatePublicAddress"] = self.allocatePublicAddress!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.cores != nil {
            map["Cores"] = self.cores!
        }
        if self.hostNamePrefix != nil {
            map["HostNamePrefix"] = self.hostNamePrefix!
        }
        if self.hostNameSuffix != nil {
            map["HostNameSuffix"] = self.hostNameSuffix!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.instanceFamilyLevel != nil {
            map["InstanceFamilyLevel"] = self.instanceFamilyLevel!
        }
        if self.instanceTypeModel != nil {
            var tmp : [Any] = []
            for k in self.instanceTypeModel! {
                tmp.append(k.toMap())
            }
            map["InstanceTypeModel"] = tmp
        }
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandWidthIn != nil {
            map["InternetMaxBandWidthIn"] = self.internetMaxBandWidthIn!
        }
        if self.internetMaxBandWidthOut != nil {
            map["InternetMaxBandWidthOut"] = self.internetMaxBandWidthOut!
        }
        if self.interval != nil {
            map["Interval"] = self.interval!
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        if self.memory != nil {
            map["Memory"] = self.memory!
        }
        if self.priorityStrategy != nil {
            map["PriorityStrategy"] = self.priorityStrategy!
        }
        if self.resourceAmountType != nil {
            map["ResourceAmountType"] = self.resourceAmountType!
        }
        if self.round != nil {
            map["Round"] = self.round!
        }
        if self.strictResourceProvision != nil {
            map["StrictResourceProvision"] = self.strictResourceProvision!
        }
        if self.strictSatisfiedTargetCapacity != nil {
            map["StrictSatisfiedTargetCapacity"] = self.strictSatisfiedTargetCapacity!
        }
        if self.systemDiskLevel != nil {
            map["SystemDiskLevel"] = self.systemDiskLevel!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.systemDiskType != nil {
            map["SystemDiskType"] = self.systemDiskType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.targetCapacity != nil {
            map["TargetCapacity"] = self.targetCapacity!
        }
        if self.zoneInfos != nil {
            var tmp : [Any] = []
            for k in self.zoneInfos! {
                tmp.append(k.toMap())
            }
            map["ZoneInfos"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocatePublicAddress") {
            self.allocatePublicAddress = dict["AllocatePublicAddress"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! Double
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("Cores") {
            self.cores = dict["Cores"] as! Int32
        }
        if dict.keys.contains("HostNamePrefix") {
            self.hostNamePrefix = dict["HostNamePrefix"] as! String
        }
        if dict.keys.contains("HostNameSuffix") {
            self.hostNameSuffix = dict["HostNameSuffix"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("InstanceFamilyLevel") {
            self.instanceFamilyLevel = dict["InstanceFamilyLevel"] as! String
        }
        if dict.keys.contains("InstanceTypeModel") {
            self.instanceTypeModel = dict["InstanceTypeModel"] as! [ApplyNodesRequest.InstanceTypeModel]
        }
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("InternetMaxBandWidthIn") {
            self.internetMaxBandWidthIn = dict["InternetMaxBandWidthIn"] as! Int32
        }
        if dict.keys.contains("InternetMaxBandWidthOut") {
            self.internetMaxBandWidthOut = dict["InternetMaxBandWidthOut"] as! Int32
        }
        if dict.keys.contains("Interval") {
            self.interval = dict["Interval"] as! Int32
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
        if dict.keys.contains("Memory") {
            self.memory = dict["Memory"] as! Int32
        }
        if dict.keys.contains("PriorityStrategy") {
            self.priorityStrategy = dict["PriorityStrategy"] as! String
        }
        if dict.keys.contains("ResourceAmountType") {
            self.resourceAmountType = dict["ResourceAmountType"] as! String
        }
        if dict.keys.contains("Round") {
            self.round = dict["Round"] as! Int32
        }
        if dict.keys.contains("StrictResourceProvision") {
            self.strictResourceProvision = dict["StrictResourceProvision"] as! Bool
        }
        if dict.keys.contains("StrictSatisfiedTargetCapacity") {
            self.strictSatisfiedTargetCapacity = dict["StrictSatisfiedTargetCapacity"] as! Bool
        }
        if dict.keys.contains("SystemDiskLevel") {
            self.systemDiskLevel = dict["SystemDiskLevel"] as! String
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("SystemDiskType") {
            self.systemDiskType = dict["SystemDiskType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ApplyNodesRequest.Tag]
        }
        if dict.keys.contains("TargetCapacity") {
            self.targetCapacity = dict["TargetCapacity"] as! Int32
        }
        if dict.keys.contains("ZoneInfos") {
            self.zoneInfos = dict["ZoneInfos"] as! [ApplyNodesRequest.ZoneInfos]
        }
    }
}

public class ApplyNodesResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
            }
        }
    }
    public var detail: String?

    public var instanceIds: ApplyNodesResponseBody.InstanceIds?

    public var requestId: String?

    public var satisfiedAmount: Int32?

    public var taskId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.detail != nil {
            map["Detail"] = self.detail!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.satisfiedAmount != nil {
            map["SatisfiedAmount"] = self.satisfiedAmount!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Detail") {
            self.detail = dict["Detail"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            var model = ApplyNodesResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SatisfiedAmount") {
            self.satisfiedAmount = dict["SatisfiedAmount"] as! Int32
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ApplyNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ApplyNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ApplyNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateClusterRequest : Tea.TeaModel {
    public class EcsOrder : Tea.TeaModel {
        public class Compute : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public class Login : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public class Manager : Tea.TeaModel {
            public var count: Int32?

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
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public var compute: CreateClusterRequest.EcsOrder.Compute?

        public var login: CreateClusterRequest.EcsOrder.Login?

        public var manager: CreateClusterRequest.EcsOrder.Manager?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.compute, "compute")
            try self.compute?.validate()
            try self.validateRequired(self.login, "login")
            try self.login?.validate()
            try self.validateRequired(self.manager, "manager")
            try self.manager?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compute != nil {
                map["Compute"] = self.compute?.toMap()
            }
            if self.login != nil {
                map["Login"] = self.login?.toMap()
            }
            if self.manager != nil {
                map["Manager"] = self.manager?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compute") {
                var model = CreateClusterRequest.EcsOrder.Compute()
                model.fromMap(dict["Compute"] as! [String: Any])
                self.compute = model
            }
            if dict.keys.contains("Login") {
                var model = CreateClusterRequest.EcsOrder.Login()
                model.fromMap(dict["Login"] as! [String: Any])
                self.login = model
            }
            if dict.keys.contains("Manager") {
                var model = CreateClusterRequest.EcsOrder.Manager()
                model.fromMap(dict["Manager"] as! [String: Any])
                self.manager = model
            }
        }
    }
    public class AdditionalVolumes : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
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
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var jobQueue: String?

        public var localDirectory: String?

        public var location: String?

        public var remoteDirectory: String?

        public var roles: [CreateClusterRequest.AdditionalVolumes.Roles]?

        public var volumeId: String?

        public var volumeMountOption: String?

        public var volumeMountpoint: String?

        public var volumeProtocol: String?

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
            if self.jobQueue != nil {
                map["JobQueue"] = self.jobQueue!
            }
            if self.localDirectory != nil {
                map["LocalDirectory"] = self.localDirectory!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.remoteDirectory != nil {
                map["RemoteDirectory"] = self.remoteDirectory!
            }
            if self.roles != nil {
                var tmp : [Any] = []
                for k in self.roles! {
                    tmp.append(k.toMap())
                }
                map["Roles"] = tmp
            }
            if self.volumeId != nil {
                map["VolumeId"] = self.volumeId!
            }
            if self.volumeMountOption != nil {
                map["VolumeMountOption"] = self.volumeMountOption!
            }
            if self.volumeMountpoint != nil {
                map["VolumeMountpoint"] = self.volumeMountpoint!
            }
            if self.volumeProtocol != nil {
                map["VolumeProtocol"] = self.volumeProtocol!
            }
            if self.volumeType != nil {
                map["VolumeType"] = self.volumeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobQueue") {
                self.jobQueue = dict["JobQueue"] as! String
            }
            if dict.keys.contains("LocalDirectory") {
                self.localDirectory = dict["LocalDirectory"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("RemoteDirectory") {
                self.remoteDirectory = dict["RemoteDirectory"] as! String
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [CreateClusterRequest.AdditionalVolumes.Roles]
            }
            if dict.keys.contains("VolumeId") {
                self.volumeId = dict["VolumeId"] as! String
            }
            if dict.keys.contains("VolumeMountOption") {
                self.volumeMountOption = dict["VolumeMountOption"] as! String
            }
            if dict.keys.contains("VolumeMountpoint") {
                self.volumeMountpoint = dict["VolumeMountpoint"] as! String
            }
            if dict.keys.contains("VolumeProtocol") {
                self.volumeProtocol = dict["VolumeProtocol"] as! String
            }
            if dict.keys.contains("VolumeType") {
                self.volumeType = dict["VolumeType"] as! String
            }
        }
    }
    public class Application : Tea.TeaModel {
        public var tag: String?

        public override init() {
            super.init()
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
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public class PostInstallScript : Tea.TeaModel {
        public var args: String?

        public var url: String?

        public override init() {
            super.init()
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var ecsOrder: CreateClusterRequest.EcsOrder?

    public var accountType: String?

    public var additionalVolumes: [CreateClusterRequest.AdditionalVolumes]?

    public var application: [CreateClusterRequest.Application]?

    public var autoRenew: String?

    public var autoRenewPeriod: Int32?

    public var clientToken: String?

    public var clientVersion: String?

    public var clusterVersion: String?

    public var computeEnableHt: Bool?

    public var computeSpotPriceLimit: String?

    public var computeSpotStrategy: String?

    public var deployMode: String?

    public var description_: String?

    public var domain: String?

    public var ecsChargeType: String?

    public var ehpcVersion: String?

    public var haEnable: Bool?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var inputFileUrl: String?

    public var isComputeEss: Bool?

    public var jobQueue: String?

    public var keyPairName: String?

    public var name: String?

    public var osTag: String?

    public var password: String?

    public var period: Int32?

    public var periodUnit: String?

    public var plugin: String?

    public var postInstallScript: [CreateClusterRequest.PostInstallScript]?

    public var ramNodeTypes: [String]?

    public var ramRoleName: String?

    public var remoteDirectory: String?

    public var remoteVisEnable: String?

    public var resourceGroupId: String?

    public var sccClusterId: String?

    public var schedulerType: String?

    public var securityGroupId: String?

    public var securityGroupName: String?

    public var systemDiskLevel: String?

    public var systemDiskSize: Int32?

    public var systemDiskType: String?

    public var tag: [CreateClusterRequest.Tag]?

    public var vSwitchId: String?

    public var volumeId: String?

    public var volumeMountOption: String?

    public var volumeMountpoint: String?

    public var volumeProtocol: String?

    public var volumeType: String?

    public var vpcId: String?

    public var withoutAgent: Bool?

    public var withoutElasticIp: Bool?

    public var zoneId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.ecsOrder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsOrder != nil {
            map["EcsOrder"] = self.ecsOrder?.toMap()
        }
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.additionalVolumes != nil {
            var tmp : [Any] = []
            for k in self.additionalVolumes! {
                tmp.append(k.toMap())
            }
            map["AdditionalVolumes"] = tmp
        }
        if self.application != nil {
            var tmp : [Any] = []
            for k in self.application! {
                tmp.append(k.toMap())
            }
            map["Application"] = tmp
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.autoRenewPeriod != nil {
            map["AutoRenewPeriod"] = self.autoRenewPeriod!
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterVersion != nil {
            map["ClusterVersion"] = self.clusterVersion!
        }
        if self.computeEnableHt != nil {
            map["ComputeEnableHt"] = self.computeEnableHt!
        }
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.deployMode != nil {
            map["DeployMode"] = self.deployMode!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.ecsChargeType != nil {
            map["EcsChargeType"] = self.ecsChargeType!
        }
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        if self.haEnable != nil {
            map["HaEnable"] = self.haEnable!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.inputFileUrl != nil {
            map["InputFileUrl"] = self.inputFileUrl!
        }
        if self.isComputeEss != nil {
            map["IsComputeEss"] = self.isComputeEss!
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.osTag != nil {
            map["OsTag"] = self.osTag!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.plugin != nil {
            map["Plugin"] = self.plugin!
        }
        if self.postInstallScript != nil {
            var tmp : [Any] = []
            for k in self.postInstallScript! {
                tmp.append(k.toMap())
            }
            map["PostInstallScript"] = tmp
        }
        if self.ramNodeTypes != nil {
            map["RamNodeTypes"] = self.ramNodeTypes!
        }
        if self.ramRoleName != nil {
            map["RamRoleName"] = self.ramRoleName!
        }
        if self.remoteDirectory != nil {
            map["RemoteDirectory"] = self.remoteDirectory!
        }
        if self.remoteVisEnable != nil {
            map["RemoteVisEnable"] = self.remoteVisEnable!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.sccClusterId != nil {
            map["SccClusterId"] = self.sccClusterId!
        }
        if self.schedulerType != nil {
            map["SchedulerType"] = self.schedulerType!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.securityGroupName != nil {
            map["SecurityGroupName"] = self.securityGroupName!
        }
        if self.systemDiskLevel != nil {
            map["SystemDiskLevel"] = self.systemDiskLevel!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.systemDiskType != nil {
            map["SystemDiskType"] = self.systemDiskType!
        }
        if self.tag != nil {
            var tmp : [Any] = []
            for k in self.tag! {
                tmp.append(k.toMap())
            }
            map["Tag"] = tmp
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.volumeId != nil {
            map["VolumeId"] = self.volumeId!
        }
        if self.volumeMountOption != nil {
            map["VolumeMountOption"] = self.volumeMountOption!
        }
        if self.volumeMountpoint != nil {
            map["VolumeMountpoint"] = self.volumeMountpoint!
        }
        if self.volumeProtocol != nil {
            map["VolumeProtocol"] = self.volumeProtocol!
        }
        if self.volumeType != nil {
            map["VolumeType"] = self.volumeType!
        }
        if self.vpcId != nil {
            map["VpcId"] = self.vpcId!
        }
        if self.withoutAgent != nil {
            map["WithoutAgent"] = self.withoutAgent!
        }
        if self.withoutElasticIp != nil {
            map["WithoutElasticIp"] = self.withoutElasticIp!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EcsOrder") {
            var model = CreateClusterRequest.EcsOrder()
            model.fromMap(dict["EcsOrder"] as! [String: Any])
            self.ecsOrder = model
        }
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("AdditionalVolumes") {
            self.additionalVolumes = dict["AdditionalVolumes"] as! [CreateClusterRequest.AdditionalVolumes]
        }
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! [CreateClusterRequest.Application]
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! String
        }
        if dict.keys.contains("AutoRenewPeriod") {
            self.autoRenewPeriod = dict["AutoRenewPeriod"] as! Int32
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterVersion") {
            self.clusterVersion = dict["ClusterVersion"] as! String
        }
        if dict.keys.contains("ComputeEnableHt") {
            self.computeEnableHt = dict["ComputeEnableHt"] as! Bool
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! String
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("DeployMode") {
            self.deployMode = dict["DeployMode"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EcsChargeType") {
            self.ecsChargeType = dict["EcsChargeType"] as! String
        }
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
        if dict.keys.contains("HaEnable") {
            self.haEnable = dict["HaEnable"] as! Bool
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("InputFileUrl") {
            self.inputFileUrl = dict["InputFileUrl"] as! String
        }
        if dict.keys.contains("IsComputeEss") {
            self.isComputeEss = dict["IsComputeEss"] as! Bool
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("OsTag") {
            self.osTag = dict["OsTag"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("Plugin") {
            self.plugin = dict["Plugin"] as! String
        }
        if dict.keys.contains("PostInstallScript") {
            self.postInstallScript = dict["PostInstallScript"] as! [CreateClusterRequest.PostInstallScript]
        }
        if dict.keys.contains("RamNodeTypes") {
            self.ramNodeTypes = dict["RamNodeTypes"] as! [String]
        }
        if dict.keys.contains("RamRoleName") {
            self.ramRoleName = dict["RamRoleName"] as! String
        }
        if dict.keys.contains("RemoteDirectory") {
            self.remoteDirectory = dict["RemoteDirectory"] as! String
        }
        if dict.keys.contains("RemoteVisEnable") {
            self.remoteVisEnable = dict["RemoteVisEnable"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SccClusterId") {
            self.sccClusterId = dict["SccClusterId"] as! String
        }
        if dict.keys.contains("SchedulerType") {
            self.schedulerType = dict["SchedulerType"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupName") {
            self.securityGroupName = dict["SecurityGroupName"] as! String
        }
        if dict.keys.contains("SystemDiskLevel") {
            self.systemDiskLevel = dict["SystemDiskLevel"] as! String
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("SystemDiskType") {
            self.systemDiskType = dict["SystemDiskType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [CreateClusterRequest.Tag]
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VolumeId") {
            self.volumeId = dict["VolumeId"] as! String
        }
        if dict.keys.contains("VolumeMountOption") {
            self.volumeMountOption = dict["VolumeMountOption"] as! String
        }
        if dict.keys.contains("VolumeMountpoint") {
            self.volumeMountpoint = dict["VolumeMountpoint"] as! String
        }
        if dict.keys.contains("VolumeProtocol") {
            self.volumeProtocol = dict["VolumeProtocol"] as! String
        }
        if dict.keys.contains("VolumeType") {
            self.volumeType = dict["VolumeType"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("WithoutAgent") {
            self.withoutAgent = dict["WithoutAgent"] as! Bool
        }
        if dict.keys.contains("WithoutElasticIp") {
            self.withoutElasticIp = dict["WithoutElasticIp"] as! Bool
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
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
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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

public class CreateGWSClusterRequest : Tea.TeaModel {
    public var clusterType: String?

    public var name: String?

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
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
    }
}

public class CreateGWSClusterResponseBody : Tea.TeaModel {
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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGWSClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGWSClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGWSClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGWSImageRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class CreateGWSImageResponseBody : Tea.TeaModel {
    public var imageId: String?

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
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class CreateGWSImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGWSImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGWSImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateGWSInstanceRequest : Tea.TeaModel {
    public var allocatePublicAddress: Bool?

    public var appList: String?

    public var autoRenew: Bool?

    public var clusterId: String?

    public var imageId: String?

    public var instanceChargeType: String?

    public var instanceType: String?

    public var internetChargeType: String?

    public var internetMaxBandwidthIn: Int32?

    public var internetMaxBandwidthOut: Int32?

    public var name: String?

    public var period: String?

    public var periodUnit: String?

    public var systemDiskCategory: String?

    public var systemDiskSize: Int32?

    public var vSwitchId: String?

    public var workMode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.allocatePublicAddress != nil {
            map["AllocatePublicAddress"] = self.allocatePublicAddress!
        }
        if self.appList != nil {
            map["AppList"] = self.appList!
        }
        if self.autoRenew != nil {
            map["AutoRenew"] = self.autoRenew!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
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
        if self.internetChargeType != nil {
            map["InternetChargeType"] = self.internetChargeType!
        }
        if self.internetMaxBandwidthIn != nil {
            map["InternetMaxBandwidthIn"] = self.internetMaxBandwidthIn!
        }
        if self.internetMaxBandwidthOut != nil {
            map["InternetMaxBandwidthOut"] = self.internetMaxBandwidthOut!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.periodUnit != nil {
            map["PeriodUnit"] = self.periodUnit!
        }
        if self.systemDiskCategory != nil {
            map["SystemDiskCategory"] = self.systemDiskCategory!
        }
        if self.systemDiskSize != nil {
            map["SystemDiskSize"] = self.systemDiskSize!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.workMode != nil {
            map["WorkMode"] = self.workMode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AllocatePublicAddress") {
            self.allocatePublicAddress = dict["AllocatePublicAddress"] as! Bool
        }
        if dict.keys.contains("AppList") {
            self.appList = dict["AppList"] as! String
        }
        if dict.keys.contains("AutoRenew") {
            self.autoRenew = dict["AutoRenew"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
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
        if dict.keys.contains("InternetChargeType") {
            self.internetChargeType = dict["InternetChargeType"] as! String
        }
        if dict.keys.contains("InternetMaxBandwidthIn") {
            self.internetMaxBandwidthIn = dict["InternetMaxBandwidthIn"] as! Int32
        }
        if dict.keys.contains("InternetMaxBandwidthOut") {
            self.internetMaxBandwidthOut = dict["InternetMaxBandwidthOut"] as! Int32
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! String
        }
        if dict.keys.contains("PeriodUnit") {
            self.periodUnit = dict["PeriodUnit"] as! String
        }
        if dict.keys.contains("SystemDiskCategory") {
            self.systemDiskCategory = dict["SystemDiskCategory"] as! String
        }
        if dict.keys.contains("SystemDiskSize") {
            self.systemDiskSize = dict["SystemDiskSize"] as! Int32
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("WorkMode") {
            self.workMode = dict["WorkMode"] as! String
        }
    }
}

public class CreateGWSInstanceResponseBody : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
    }
}

public class CreateGWSInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateGWSInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateGWSInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateHybridClusterRequest : Tea.TeaModel {
    public class EcsOrder : Tea.TeaModel {
        public class Compute : Tea.TeaModel {
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
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public class Manager : Tea.TeaModel {
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
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
            }
        }
        public var compute: CreateHybridClusterRequest.EcsOrder.Compute?

        public var manager: CreateHybridClusterRequest.EcsOrder.Manager?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.validateRequired(self.compute, "compute")
            try self.compute?.validate()
            try self.validateRequired(self.manager, "manager")
            try self.manager?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.compute != nil {
                map["Compute"] = self.compute?.toMap()
            }
            if self.manager != nil {
                map["Manager"] = self.manager?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Compute") {
                var model = CreateHybridClusterRequest.EcsOrder.Compute()
                model.fromMap(dict["Compute"] as! [String: Any])
                self.compute = model
            }
            if dict.keys.contains("Manager") {
                var model = CreateHybridClusterRequest.EcsOrder.Manager()
                model.fromMap(dict["Manager"] as! [String: Any])
                self.manager = model
            }
        }
    }
    public class Application : Tea.TeaModel {
        public var tag: String?

        public override init() {
            super.init()
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
                map["Tag"] = self.tag!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
        }
    }
    public class Nodes : Tea.TeaModel {
        public var accountType: String?

        public var dir: String?

        public var hostName: String?

        public var ipAddress: String?

        public var role: String?

        public var schedulerType: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.dir != nil {
                map["Dir"] = self.dir!
            }
            if self.hostName != nil {
                map["HostName"] = self.hostName!
            }
            if self.ipAddress != nil {
                map["IpAddress"] = self.ipAddress!
            }
            if self.role != nil {
                map["Role"] = self.role!
            }
            if self.schedulerType != nil {
                map["SchedulerType"] = self.schedulerType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("Dir") {
                self.dir = dict["Dir"] as! String
            }
            if dict.keys.contains("HostName") {
                self.hostName = dict["HostName"] as! String
            }
            if dict.keys.contains("IpAddress") {
                self.ipAddress = dict["IpAddress"] as! String
            }
            if dict.keys.contains("Role") {
                self.role = dict["Role"] as! String
            }
            if dict.keys.contains("SchedulerType") {
                self.schedulerType = dict["SchedulerType"] as! String
            }
        }
    }
    public class PostInstallScript : Tea.TeaModel {
        public var args: String?

        public var url: String?

        public override init() {
            super.init()
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var ecsOrder: CreateHybridClusterRequest.EcsOrder?

    public var application: [CreateHybridClusterRequest.Application]?

    public var clientToken: String?

    public var clientVersion: String?

    public var computeSpotPriceLimit: Double?

    public var computeSpotStrategy: String?

    public var description_: String?

    public var domain: String?

    public var ehpcVersion: String?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var jobQueue: String?

    public var keyPairName: String?

    public var location: String?

    public var multiOs: Bool?

    public var name: String?

    public var nodes: [CreateHybridClusterRequest.Nodes]?

    public var onPremiseVolumeLocalPath: String?

    public var onPremiseVolumeMountPoint: String?

    public var onPremiseVolumeProtocol: String?

    public var onPremiseVolumeRemotePath: String?

    public var osTag: String?

    public var password: String?

    public var postInstallScript: [CreateHybridClusterRequest.PostInstallScript]?

    public var remoteDirectory: String?

    public var resourceGroupId: String?

    public var schedulerPreInstall: Bool?

    public var securityGroupId: String?

    public var securityGroupName: String?

    public var vSwitchId: String?

    public var volumeId: String?

    public var volumeMountpoint: String?

    public var volumeProtocol: String?

    public var volumeType: String?

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
        try self.ecsOrder?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.ecsOrder != nil {
            map["EcsOrder"] = self.ecsOrder?.toMap()
        }
        if self.application != nil {
            var tmp : [Any] = []
            for k in self.application! {
                tmp.append(k.toMap())
            }
            map["Application"] = tmp
        }
        if self.clientToken != nil {
            map["ClientToken"] = self.clientToken!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.computeSpotPriceLimit != nil {
            map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
        }
        if self.computeSpotStrategy != nil {
            map["ComputeSpotStrategy"] = self.computeSpotStrategy!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.domain != nil {
            map["Domain"] = self.domain!
        }
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        if self.keyPairName != nil {
            map["KeyPairName"] = self.keyPairName!
        }
        if self.location != nil {
            map["Location"] = self.location!
        }
        if self.multiOs != nil {
            map["MultiOs"] = self.multiOs!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.nodes != nil {
            var tmp : [Any] = []
            for k in self.nodes! {
                tmp.append(k.toMap())
            }
            map["Nodes"] = tmp
        }
        if self.onPremiseVolumeLocalPath != nil {
            map["OnPremiseVolumeLocalPath"] = self.onPremiseVolumeLocalPath!
        }
        if self.onPremiseVolumeMountPoint != nil {
            map["OnPremiseVolumeMountPoint"] = self.onPremiseVolumeMountPoint!
        }
        if self.onPremiseVolumeProtocol != nil {
            map["OnPremiseVolumeProtocol"] = self.onPremiseVolumeProtocol!
        }
        if self.onPremiseVolumeRemotePath != nil {
            map["OnPremiseVolumeRemotePath"] = self.onPremiseVolumeRemotePath!
        }
        if self.osTag != nil {
            map["OsTag"] = self.osTag!
        }
        if self.password != nil {
            map["Password"] = self.password!
        }
        if self.postInstallScript != nil {
            var tmp : [Any] = []
            for k in self.postInstallScript! {
                tmp.append(k.toMap())
            }
            map["PostInstallScript"] = tmp
        }
        if self.remoteDirectory != nil {
            map["RemoteDirectory"] = self.remoteDirectory!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        if self.schedulerPreInstall != nil {
            map["SchedulerPreInstall"] = self.schedulerPreInstall!
        }
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        if self.securityGroupName != nil {
            map["SecurityGroupName"] = self.securityGroupName!
        }
        if self.vSwitchId != nil {
            map["VSwitchId"] = self.vSwitchId!
        }
        if self.volumeId != nil {
            map["VolumeId"] = self.volumeId!
        }
        if self.volumeMountpoint != nil {
            map["VolumeMountpoint"] = self.volumeMountpoint!
        }
        if self.volumeProtocol != nil {
            map["VolumeProtocol"] = self.volumeProtocol!
        }
        if self.volumeType != nil {
            map["VolumeType"] = self.volumeType!
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
        if dict.keys.contains("EcsOrder") {
            var model = CreateHybridClusterRequest.EcsOrder()
            model.fromMap(dict["EcsOrder"] as! [String: Any])
            self.ecsOrder = model
        }
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! [CreateHybridClusterRequest.Application]
        }
        if dict.keys.contains("ClientToken") {
            self.clientToken = dict["ClientToken"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ComputeSpotPriceLimit") {
            self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! Double
        }
        if dict.keys.contains("ComputeSpotStrategy") {
            self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("Domain") {
            self.domain = dict["Domain"] as! String
        }
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
        if dict.keys.contains("KeyPairName") {
            self.keyPairName = dict["KeyPairName"] as! String
        }
        if dict.keys.contains("Location") {
            self.location = dict["Location"] as! String
        }
        if dict.keys.contains("MultiOs") {
            self.multiOs = dict["MultiOs"] as! Bool
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! [CreateHybridClusterRequest.Nodes]
        }
        if dict.keys.contains("OnPremiseVolumeLocalPath") {
            self.onPremiseVolumeLocalPath = dict["OnPremiseVolumeLocalPath"] as! String
        }
        if dict.keys.contains("OnPremiseVolumeMountPoint") {
            self.onPremiseVolumeMountPoint = dict["OnPremiseVolumeMountPoint"] as! String
        }
        if dict.keys.contains("OnPremiseVolumeProtocol") {
            self.onPremiseVolumeProtocol = dict["OnPremiseVolumeProtocol"] as! String
        }
        if dict.keys.contains("OnPremiseVolumeRemotePath") {
            self.onPremiseVolumeRemotePath = dict["OnPremiseVolumeRemotePath"] as! String
        }
        if dict.keys.contains("OsTag") {
            self.osTag = dict["OsTag"] as! String
        }
        if dict.keys.contains("Password") {
            self.password = dict["Password"] as! String
        }
        if dict.keys.contains("PostInstallScript") {
            self.postInstallScript = dict["PostInstallScript"] as! [CreateHybridClusterRequest.PostInstallScript]
        }
        if dict.keys.contains("RemoteDirectory") {
            self.remoteDirectory = dict["RemoteDirectory"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
        if dict.keys.contains("SchedulerPreInstall") {
            self.schedulerPreInstall = dict["SchedulerPreInstall"] as! Bool
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
        if dict.keys.contains("SecurityGroupName") {
            self.securityGroupName = dict["SecurityGroupName"] as! String
        }
        if dict.keys.contains("VSwitchId") {
            self.vSwitchId = dict["VSwitchId"] as! String
        }
        if dict.keys.contains("VolumeId") {
            self.volumeId = dict["VolumeId"] as! String
        }
        if dict.keys.contains("VolumeMountpoint") {
            self.volumeMountpoint = dict["VolumeMountpoint"] as! String
        }
        if dict.keys.contains("VolumeProtocol") {
            self.volumeProtocol = dict["VolumeProtocol"] as! String
        }
        if dict.keys.contains("VolumeType") {
            self.volumeType = dict["VolumeType"] as! String
        }
        if dict.keys.contains("VpcId") {
            self.vpcId = dict["VpcId"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class CreateHybridClusterResponseBody : Tea.TeaModel {
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
            map["ClusterId"] = self.clusterId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class CreateHybridClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateHybridClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateHybridClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobFileRequest : Tea.TeaModel {
    public var clusterId: String?

    public var content: String?

    public var runasUser: String?

    public var runasUserPassword: String?

    public var targetFile: String?

    public override init() {
        super.init()
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
        if self.content != nil {
            map["Content"] = self.content!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.runasUserPassword != nil {
            map["RunasUserPassword"] = self.runasUserPassword!
        }
        if self.targetFile != nil {
            map["TargetFile"] = self.targetFile!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Content") {
            self.content = dict["Content"] as! String
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("RunasUserPassword") {
            self.runasUserPassword = dict["RunasUserPassword"] as! String
        }
        if dict.keys.contains("TargetFile") {
            self.targetFile = dict["TargetFile"] as! String
        }
    }
}

public class CreateJobFileResponseBody : Tea.TeaModel {
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

public class CreateJobFileResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobFileResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateJobFileResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class CreateJobTemplateRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var clockTime: String?

    public var commandLine: String?

    public var gpu: Int32?

    public var inputFileUrl: String?

    public var mem: String?

    public var name: String?

    public var node: Int32?

    public var packagePath: String?

    public var priority: Int32?

    public var queue: String?

    public var reRunable: Bool?

    public var runasUser: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var task: Int32?

    public var thread: Int32?

    public var unzipCmd: String?

    public var variables: String?

    public var withUnzipCmd: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.clockTime != nil {
            map["ClockTime"] = self.clockTime!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.inputFileUrl != nil {
            map["InputFileUrl"] = self.inputFileUrl!
        }
        if self.mem != nil {
            map["Mem"] = self.mem!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.node != nil {
            map["Node"] = self.node!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.queue != nil {
            map["Queue"] = self.queue!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.thread != nil {
            map["Thread"] = self.thread!
        }
        if self.unzipCmd != nil {
            map["UnzipCmd"] = self.unzipCmd!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        if self.withUnzipCmd != nil {
            map["WithUnzipCmd"] = self.withUnzipCmd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("ClockTime") {
            self.clockTime = dict["ClockTime"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("Gpu") {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("InputFileUrl") {
            self.inputFileUrl = dict["InputFileUrl"] as! String
        }
        if dict.keys.contains("Mem") {
            self.mem = dict["Mem"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Node") {
            self.node = dict["Node"] as! Int32
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Queue") {
            self.queue = dict["Queue"] as! String
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("Task") {
            self.task = dict["Task"] as! Int32
        }
        if dict.keys.contains("Thread") {
            self.thread = dict["Thread"] as! Int32
        }
        if dict.keys.contains("UnzipCmd") {
            self.unzipCmd = dict["UnzipCmd"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
        if dict.keys.contains("WithUnzipCmd") {
            self.withUnzipCmd = dict["WithUnzipCmd"] as! Bool
        }
    }
}

public class CreateJobTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class CreateJobTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: CreateJobTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = CreateJobTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteClusterRequest : Tea.TeaModel {
    public var clusterId: String?

    public var releaseInstance: String?

    public override init() {
        super.init()
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
        if self.releaseInstance != nil {
            map["ReleaseInstance"] = self.releaseInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ReleaseInstance") {
            self.releaseInstance = dict["ReleaseInstance"] as! String
        }
    }
}

public class DeleteClusterResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DeleteContainerAppsRequest : Tea.TeaModel {
    public class ContainerApp : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var containerApp: [DeleteContainerAppsRequest.ContainerApp]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerApp != nil {
            var tmp : [Any] = []
            for k in self.containerApp! {
                tmp.append(k.toMap())
            }
            map["ContainerApp"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerApp") {
            self.containerApp = dict["ContainerApp"] as! [DeleteContainerAppsRequest.ContainerApp]
        }
    }
}

public class DeleteContainerAppsResponseBody : Tea.TeaModel {
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

public class DeleteContainerAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteContainerAppsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteContainerAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGWSClusterRequest : Tea.TeaModel {
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

public class DeleteGWSClusterResponseBody : Tea.TeaModel {
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

public class DeleteGWSClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGWSClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGWSClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteGWSInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DeleteGWSInstanceResponseBody : Tea.TeaModel {
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

public class DeleteGWSInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteGWSInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteGWSInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageTag: String?

    public var repository: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.repository != nil {
            map["Repository"] = self.repository!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageTag") {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("Repository") {
            self.repository = dict["Repository"] as! String
        }
    }
}

public class DeleteImageResponseBody : Tea.TeaModel {
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

public class DeleteImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteJobTemplatesRequest : Tea.TeaModel {
    public var templates: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.templates != nil {
            map["Templates"] = self.templates!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Templates") {
            self.templates = dict["Templates"] as! String
        }
    }
}

public class DeleteJobTemplatesResponseBody : Tea.TeaModel {
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

public class DeleteJobTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteJobTemplatesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteJobTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
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

public class DeleteLocalImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageName: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
    }
}

public class DeleteLocalImageResponseBody : Tea.TeaModel {
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

public class DeleteLocalImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteLocalImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteLocalImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [DeleteNodesRequest.Instance]?

    public var releaseInstance: Bool?

    public var sync: Bool?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.releaseInstance != nil {
            map["ReleaseInstance"] = self.releaseInstance!
        }
        if self.sync != nil {
            map["Sync"] = self.sync!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [DeleteNodesRequest.Instance]
        }
        if dict.keys.contains("ReleaseInstance") {
            self.releaseInstance = dict["ReleaseInstance"] as! Bool
        }
        if dict.keys.contains("Sync") {
            self.sync = dict["Sync"] as! Bool
        }
    }
}

public class DeleteNodesResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class DeleteQueueRequest : Tea.TeaModel {
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

public class DeleteQueueResponseBody : Tea.TeaModel {
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

public class DeleteQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteQueueResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteSecurityGroupRequest : Tea.TeaModel {
    public var clusterId: String?

    public var securityGroupId: String?

    public override init() {
        super.init()
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
        if self.securityGroupId != nil {
            map["SecurityGroupId"] = self.securityGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("SecurityGroupId") {
            self.securityGroupId = dict["SecurityGroupId"] as! String
        }
    }
}

public class DeleteSecurityGroupResponseBody : Tea.TeaModel {
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

public class DeleteSecurityGroupResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DeleteSecurityGroupResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DeleteSecurityGroupResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DeleteUsersRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
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
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
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
            self.user = dict["User"] as! [DeleteUsersRequest.User]
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

public class DescribeAutoScaleConfigRequest : Tea.TeaModel {
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

public class DescribeAutoScaleConfigResponseBody : Tea.TeaModel {
    public var clusterId: String?

    public var clusterType: String?

    public var enableAutoGrow: Bool?

    public var enableAutoShrink: Bool?

    public var excludeNodes: String?

    public var extraNodesGrowRatio: Int32?

    public var growIntervalInMinutes: Int32?

    public var growRatio: Int32?

    public var growTimeoutInMinutes: Int32?

    public var maxNodesInCluster: Int32?

    public var requestId: String?

    public var shrinkIdleTimes: Int32?

    public var shrinkIntervalInMinutes: Int32?

    public var spotPriceLimit: String?

    public var spotStrategy: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.enableAutoGrow != nil {
            map["EnableAutoGrow"] = self.enableAutoGrow!
        }
        if self.enableAutoShrink != nil {
            map["EnableAutoShrink"] = self.enableAutoShrink!
        }
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.extraNodesGrowRatio != nil {
            map["ExtraNodesGrowRatio"] = self.extraNodesGrowRatio!
        }
        if self.growIntervalInMinutes != nil {
            map["GrowIntervalInMinutes"] = self.growIntervalInMinutes!
        }
        if self.growRatio != nil {
            map["GrowRatio"] = self.growRatio!
        }
        if self.growTimeoutInMinutes != nil {
            map["GrowTimeoutInMinutes"] = self.growTimeoutInMinutes!
        }
        if self.maxNodesInCluster != nil {
            map["MaxNodesInCluster"] = self.maxNodesInCluster!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shrinkIdleTimes != nil {
            map["ShrinkIdleTimes"] = self.shrinkIdleTimes!
        }
        if self.shrinkIntervalInMinutes != nil {
            map["ShrinkIntervalInMinutes"] = self.shrinkIntervalInMinutes!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("EnableAutoGrow") {
            self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
        }
        if dict.keys.contains("EnableAutoShrink") {
            self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
        }
        if dict.keys.contains("ExcludeNodes") {
            self.excludeNodes = dict["ExcludeNodes"] as! String
        }
        if dict.keys.contains("ExtraNodesGrowRatio") {
            self.extraNodesGrowRatio = dict["ExtraNodesGrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowIntervalInMinutes") {
            self.growIntervalInMinutes = dict["GrowIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("GrowRatio") {
            self.growRatio = dict["GrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowTimeoutInMinutes") {
            self.growTimeoutInMinutes = dict["GrowTimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("MaxNodesInCluster") {
            self.maxNodesInCluster = dict["MaxNodesInCluster"] as! Int32
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShrinkIdleTimes") {
            self.shrinkIdleTimes = dict["ShrinkIdleTimes"] as! Int32
        }
        if dict.keys.contains("ShrinkIntervalInMinutes") {
            self.shrinkIntervalInMinutes = dict["ShrinkIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! String
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class DescribeAutoScaleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeAutoScaleConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeAutoScaleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeClusterRequest : Tea.TeaModel {
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

public class DescribeClusterResponseBody : Tea.TeaModel {
    public class ClusterInfo : Tea.TeaModel {
        public class Applications : Tea.TeaModel {
            public class ApplicationInfo : Tea.TeaModel {
                public var name: String?

                public var tag: String?

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
                    if self.tag != nil {
                        map["Tag"] = self.tag!
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
                    if dict.keys.contains("Tag") {
                        self.tag = dict["Tag"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var applicationInfo: [DescribeClusterResponseBody.ClusterInfo.Applications.ApplicationInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.applicationInfo != nil {
                    var tmp : [Any] = []
                    for k in self.applicationInfo! {
                        tmp.append(k.toMap())
                    }
                    map["ApplicationInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ApplicationInfo") {
                    self.applicationInfo = dict["ApplicationInfo"] as! [DescribeClusterResponseBody.ClusterInfo.Applications.ApplicationInfo]
                }
            }
        }
        public class EcsInfo : Tea.TeaModel {
            public class Compute : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class Login : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class Manager : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public class ProxyMgr : Tea.TeaModel {
                public var count: Int32?

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
                    if self.count != nil {
                        map["Count"] = self.count!
                    }
                    if self.instanceType != nil {
                        map["InstanceType"] = self.instanceType!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Count") {
                        self.count = dict["Count"] as! Int32
                    }
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! String
                    }
                }
            }
            public var compute: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Compute?

            public var login: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Login?

            public var manager: DescribeClusterResponseBody.ClusterInfo.EcsInfo.Manager?

            public var proxyMgr: DescribeClusterResponseBody.ClusterInfo.EcsInfo.ProxyMgr?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.compute?.validate()
                try self.login?.validate()
                try self.manager?.validate()
                try self.proxyMgr?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.compute != nil {
                    map["Compute"] = self.compute?.toMap()
                }
                if self.login != nil {
                    map["Login"] = self.login?.toMap()
                }
                if self.manager != nil {
                    map["Manager"] = self.manager?.toMap()
                }
                if self.proxyMgr != nil {
                    map["ProxyMgr"] = self.proxyMgr?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Compute") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Compute()
                    model.fromMap(dict["Compute"] as! [String: Any])
                    self.compute = model
                }
                if dict.keys.contains("Login") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Login()
                    model.fromMap(dict["Login"] as! [String: Any])
                    self.login = model
                }
                if dict.keys.contains("Manager") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.Manager()
                    model.fromMap(dict["Manager"] as! [String: Any])
                    self.manager = model
                }
                if dict.keys.contains("ProxyMgr") {
                    var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo.ProxyMgr()
                    model.fromMap(dict["ProxyMgr"] as! [String: Any])
                    self.proxyMgr = model
                }
            }
        }
        public class OnPremiseInfo : Tea.TeaModel {
            public class OnPremiseInfo : Tea.TeaModel {
                public var hostName: String?

                public var IP: String?

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
                    if self.hostName != nil {
                        map["HostName"] = self.hostName!
                    }
                    if self.IP != nil {
                        map["IP"] = self.IP!
                    }
                    if self.type != nil {
                        map["Type"] = self.type!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("HostName") {
                        self.hostName = dict["HostName"] as! String
                    }
                    if dict.keys.contains("IP") {
                        self.IP = dict["IP"] as! String
                    }
                    if dict.keys.contains("Type") {
                        self.type = dict["Type"] as! String
                    }
                }
            }
            public var onPremiseInfo: [DescribeClusterResponseBody.ClusterInfo.OnPremiseInfo.OnPremiseInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.onPremiseInfo != nil {
                    var tmp : [Any] = []
                    for k in self.onPremiseInfo! {
                        tmp.append(k.toMap())
                    }
                    map["OnPremiseInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("OnPremiseInfo") {
                    self.onPremiseInfo = dict["OnPremiseInfo"] as! [DescribeClusterResponseBody.ClusterInfo.OnPremiseInfo.OnPremiseInfo]
                }
            }
        }
        public class PostInstallScripts : Tea.TeaModel {
            public class PostInstallScriptInfo : Tea.TeaModel {
                public var args: String?

                public var url: String?

                public override init() {
                    super.init()
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
                    if self.url != nil {
                        map["Url"] = self.url!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Args") {
                        self.args = dict["Args"] as! String
                    }
                    if dict.keys.contains("Url") {
                        self.url = dict["Url"] as! String
                    }
                }
            }
            public var postInstallScriptInfo: [DescribeClusterResponseBody.ClusterInfo.PostInstallScripts.PostInstallScriptInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.postInstallScriptInfo != nil {
                    var tmp : [Any] = []
                    for k in self.postInstallScriptInfo! {
                        tmp.append(k.toMap())
                    }
                    map["PostInstallScriptInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("PostInstallScriptInfo") {
                    self.postInstallScriptInfo = dict["PostInstallScriptInfo"] as! [DescribeClusterResponseBody.ClusterInfo.PostInstallScripts.PostInstallScriptInfo]
                }
            }
        }
        public var accountType: String?

        public var applications: DescribeClusterResponseBody.ClusterInfo.Applications?

        public var baseOsTag: String?

        public var clientVersion: String?

        public var createTime: String?

        public var deployMode: String?

        public var description_: String?

        public var ecsChargeType: String?

        public var ecsInfo: DescribeClusterResponseBody.ClusterInfo.EcsInfo?

        public var haEnable: Bool?

        public var id: String?

        public var imageId: String?

        public var imageName: String?

        public var imageOwnerAlias: String?

        public var keyPairName: String?

        public var location: String?

        public var name: String?

        public var onPremiseInfo: DescribeClusterResponseBody.ClusterInfo.OnPremiseInfo?

        public var osTag: String?

        public var postInstallScripts: DescribeClusterResponseBody.ClusterInfo.PostInstallScripts?

        public var regionId: String?

        public var remoteDirectory: String?

        public var sccClusterId: String?

        public var schedulerType: String?

        public var securityGroupId: String?

        public var status: String?

        public var vSwitchId: String?

        public var volumeId: String?

        public var volumeMountpoint: String?

        public var volumeProtocol: String?

        public var volumeType: String?

        public var vpcId: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.applications?.validate()
            try self.ecsInfo?.validate()
            try self.onPremiseInfo?.validate()
            try self.postInstallScripts?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.accountType != nil {
                map["AccountType"] = self.accountType!
            }
            if self.applications != nil {
                map["Applications"] = self.applications?.toMap()
            }
            if self.baseOsTag != nil {
                map["BaseOsTag"] = self.baseOsTag!
            }
            if self.clientVersion != nil {
                map["ClientVersion"] = self.clientVersion!
            }
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.deployMode != nil {
                map["DeployMode"] = self.deployMode!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.ecsChargeType != nil {
                map["EcsChargeType"] = self.ecsChargeType!
            }
            if self.ecsInfo != nil {
                map["EcsInfo"] = self.ecsInfo?.toMap()
            }
            if self.haEnable != nil {
                map["HaEnable"] = self.haEnable!
            }
            if self.id != nil {
                map["Id"] = self.id!
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
            if self.keyPairName != nil {
                map["KeyPairName"] = self.keyPairName!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.onPremiseInfo != nil {
                map["OnPremiseInfo"] = self.onPremiseInfo?.toMap()
            }
            if self.osTag != nil {
                map["OsTag"] = self.osTag!
            }
            if self.postInstallScripts != nil {
                map["PostInstallScripts"] = self.postInstallScripts?.toMap()
            }
            if self.regionId != nil {
                map["RegionId"] = self.regionId!
            }
            if self.remoteDirectory != nil {
                map["RemoteDirectory"] = self.remoteDirectory!
            }
            if self.sccClusterId != nil {
                map["SccClusterId"] = self.sccClusterId!
            }
            if self.schedulerType != nil {
                map["SchedulerType"] = self.schedulerType!
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
            if self.volumeId != nil {
                map["VolumeId"] = self.volumeId!
            }
            if self.volumeMountpoint != nil {
                map["VolumeMountpoint"] = self.volumeMountpoint!
            }
            if self.volumeProtocol != nil {
                map["VolumeProtocol"] = self.volumeProtocol!
            }
            if self.volumeType != nil {
                map["VolumeType"] = self.volumeType!
            }
            if self.vpcId != nil {
                map["VpcId"] = self.vpcId!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AccountType") {
                self.accountType = dict["AccountType"] as! String
            }
            if dict.keys.contains("Applications") {
                var model = DescribeClusterResponseBody.ClusterInfo.Applications()
                model.fromMap(dict["Applications"] as! [String: Any])
                self.applications = model
            }
            if dict.keys.contains("BaseOsTag") {
                self.baseOsTag = dict["BaseOsTag"] as! String
            }
            if dict.keys.contains("ClientVersion") {
                self.clientVersion = dict["ClientVersion"] as! String
            }
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("DeployMode") {
                self.deployMode = dict["DeployMode"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("EcsChargeType") {
                self.ecsChargeType = dict["EcsChargeType"] as! String
            }
            if dict.keys.contains("EcsInfo") {
                var model = DescribeClusterResponseBody.ClusterInfo.EcsInfo()
                model.fromMap(dict["EcsInfo"] as! [String: Any])
                self.ecsInfo = model
            }
            if dict.keys.contains("HaEnable") {
                self.haEnable = dict["HaEnable"] as! Bool
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
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
            if dict.keys.contains("KeyPairName") {
                self.keyPairName = dict["KeyPairName"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("OnPremiseInfo") {
                var model = DescribeClusterResponseBody.ClusterInfo.OnPremiseInfo()
                model.fromMap(dict["OnPremiseInfo"] as! [String: Any])
                self.onPremiseInfo = model
            }
            if dict.keys.contains("OsTag") {
                self.osTag = dict["OsTag"] as! String
            }
            if dict.keys.contains("PostInstallScripts") {
                var model = DescribeClusterResponseBody.ClusterInfo.PostInstallScripts()
                model.fromMap(dict["PostInstallScripts"] as! [String: Any])
                self.postInstallScripts = model
            }
            if dict.keys.contains("RegionId") {
                self.regionId = dict["RegionId"] as! String
            }
            if dict.keys.contains("RemoteDirectory") {
                self.remoteDirectory = dict["RemoteDirectory"] as! String
            }
            if dict.keys.contains("SccClusterId") {
                self.sccClusterId = dict["SccClusterId"] as! String
            }
            if dict.keys.contains("SchedulerType") {
                self.schedulerType = dict["SchedulerType"] as! String
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
            if dict.keys.contains("VolumeId") {
                self.volumeId = dict["VolumeId"] as! String
            }
            if dict.keys.contains("VolumeMountpoint") {
                self.volumeMountpoint = dict["VolumeMountpoint"] as! String
            }
            if dict.keys.contains("VolumeProtocol") {
                self.volumeProtocol = dict["VolumeProtocol"] as! String
            }
            if dict.keys.contains("VolumeType") {
                self.volumeType = dict["VolumeType"] as! String
            }
            if dict.keys.contains("VpcId") {
                self.vpcId = dict["VpcId"] as! String
            }
        }
    }
    public var clusterInfo: DescribeClusterResponseBody.ClusterInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.clusterInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterInfo != nil {
            map["ClusterInfo"] = self.clusterInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterInfo") {
            var model = DescribeClusterResponseBody.ClusterInfo()
            model.fromMap(dict["ClusterInfo"] as! [String: Any])
            self.clusterInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeContainerAppRequest : Tea.TeaModel {
    public var containerId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerId") {
            self.containerId = dict["ContainerId"] as! String
        }
    }
}

public class DescribeContainerAppResponseBody : Tea.TeaModel {
    public class ContainerAppInfo : Tea.TeaModel {
        public var createTime: String?

        public var description_: String?

        public var id: String?

        public var imageTag: String?

        public var name: String?

        public var repository: String?

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
            if self.createTime != nil {
                map["CreateTime"] = self.createTime!
            }
            if self.description_ != nil {
                map["Description"] = self.description_!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.imageTag != nil {
                map["ImageTag"] = self.imageTag!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.repository != nil {
                map["Repository"] = self.repository!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("CreateTime") {
                self.createTime = dict["CreateTime"] as! String
            }
            if dict.keys.contains("Description") {
                self.description_ = dict["Description"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("ImageTag") {
                self.imageTag = dict["ImageTag"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Repository") {
                self.repository = dict["Repository"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
        }
    }
    public var containerAppInfo: DescribeContainerAppResponseBody.ContainerAppInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.containerAppInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerAppInfo != nil {
            map["ContainerAppInfo"] = self.containerAppInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerAppInfo") {
            var model = DescribeContainerAppResponseBody.ContainerAppInfo()
            model.fromMap(dict["ContainerAppInfo"] as! [String: Any])
            self.containerAppInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeContainerAppResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeContainerAppResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeContainerAppResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeEstackImageRequest : Tea.TeaModel {
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

public class DescribeEstackImageResponseBody : Tea.TeaModel {
    public class ImageList : Tea.TeaModel {
        public class ImageListInfo : Tea.TeaModel {
            public var imageName: String?

            public var imageSize: Int32?

            public var imageType: String?

            public var imageUrl: String?

            public var recentUpdateTime: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.imageName != nil {
                    map["ImageName"] = self.imageName!
                }
                if self.imageSize != nil {
                    map["ImageSize"] = self.imageSize!
                }
                if self.imageType != nil {
                    map["ImageType"] = self.imageType!
                }
                if self.imageUrl != nil {
                    map["ImageUrl"] = self.imageUrl!
                }
                if self.recentUpdateTime != nil {
                    map["RecentUpdateTime"] = self.recentUpdateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageName") {
                    self.imageName = dict["ImageName"] as! String
                }
                if dict.keys.contains("ImageSize") {
                    self.imageSize = dict["ImageSize"] as! Int32
                }
                if dict.keys.contains("ImageType") {
                    self.imageType = dict["ImageType"] as! String
                }
                if dict.keys.contains("ImageUrl") {
                    self.imageUrl = dict["ImageUrl"] as! String
                }
                if dict.keys.contains("RecentUpdateTime") {
                    self.recentUpdateTime = dict["RecentUpdateTime"] as! String
                }
            }
        }
        public var imageListInfo: [DescribeEstackImageResponseBody.ImageList.ImageListInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageListInfo != nil {
                var tmp : [Any] = []
                for k in self.imageListInfo! {
                    tmp.append(k.toMap())
                }
                map["ImageListInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageListInfo") {
                self.imageListInfo = dict["ImageListInfo"] as! [DescribeEstackImageResponseBody.ImageList.ImageListInfo]
            }
        }
    }
    public var imageList: DescribeEstackImageResponseBody.ImageList?

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
        try self.imageList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageList != nil {
            map["ImageList"] = self.imageList?.toMap()
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
        if dict.keys.contains("ImageList") {
            var model = DescribeEstackImageResponseBody.ImageList()
            model.fromMap(dict["ImageList"] as! [String: Any])
            self.imageList = model
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

public class DescribeEstackImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeEstackImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeEstackImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGWSClusterPolicyRequest : Tea.TeaModel {
    public var asyncMode: Bool?

    public var clusterId: String?

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
        if self.asyncMode != nil {
            map["AsyncMode"] = self.asyncMode!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsyncMode") {
            self.asyncMode = dict["AsyncMode"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class DescribeGWSClusterPolicyResponseBody : Tea.TeaModel {
    public var clipboard: String?

    public var localDrive: String?

    public var requestId: String?

    public var usbRedirect: String?

    public var watermark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.usbRedirect != nil {
            map["UsbRedirect"] = self.usbRedirect!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("UsbRedirect") {
            self.usbRedirect = dict["UsbRedirect"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermark = dict["Watermark"] as! String
        }
    }
}

public class DescribeGWSClusterPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGWSClusterPolicyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGWSClusterPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGWSClustersRequest : Tea.TeaModel {
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

public class DescribeGWSClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ClusterInfo : Tea.TeaModel {
            public var clusterId: String?

            public var createTime: String?

            public var instanceCount: Int32?

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
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.instanceCount != nil {
                    map["InstanceCount"] = self.instanceCount!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("InstanceCount") {
                    self.instanceCount = dict["InstanceCount"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var clusterInfo: [DescribeGWSClustersResponseBody.Clusters.ClusterInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterInfo != nil {
                var tmp : [Any] = []
                for k in self.clusterInfo! {
                    tmp.append(k.toMap())
                }
                map["ClusterInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterInfo") {
                self.clusterInfo = dict["ClusterInfo"] as! [DescribeGWSClustersResponseBody.Clusters.ClusterInfo]
            }
        }
    }
    public var callerType: String?

    public var clusters: DescribeGWSClustersResponseBody.Clusters?

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
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.callerType != nil {
            map["CallerType"] = self.callerType!
        }
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
        if dict.keys.contains("CallerType") {
            self.callerType = dict["CallerType"] as! String
        }
        if dict.keys.contains("Clusters") {
            var model = DescribeGWSClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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

public class DescribeGWSClustersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGWSClustersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGWSClustersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGWSImagesRequest : Tea.TeaModel {
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

public class DescribeGWSImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class ImageInfo : Tea.TeaModel {
            public var createTime: String?

            public var imageId: String?

            public var imageType: String?

            public var name: String?

            public var progress: String?

            public var size: Int32?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
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
                if self.progress != nil {
                    map["Progress"] = self.progress!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageType") {
                    self.imageType = dict["ImageType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Progress") {
                    self.progress = dict["Progress"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var imageInfo: [DescribeGWSImagesResponseBody.Images.ImageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageInfo != nil {
                var tmp : [Any] = []
                for k in self.imageInfo! {
                    tmp.append(k.toMap())
                }
                map["ImageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageInfo") {
                self.imageInfo = dict["ImageInfo"] as! [DescribeGWSImagesResponseBody.Images.ImageInfo]
            }
        }
    }
    public var images: DescribeGWSImagesResponseBody.Images?

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
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            map["Images"] = self.images?.toMap()
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
        if dict.keys.contains("Images") {
            var model = DescribeGWSImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
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

public class DescribeGWSImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGWSImagesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGWSImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeGWSInstancesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var instanceId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var userName: String?

    public var userUid: Int64?

    public override init() {
        super.init()
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userUid != nil {
            map["UserUid"] = self.userUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserUid") {
            self.userUid = dict["UserUid"] as! Int64
        }
    }
}

public class DescribeGWSInstancesResponseBody : Tea.TeaModel {
    public class Instances : Tea.TeaModel {
        public class InstanceInfo : Tea.TeaModel {
            public class AppList : Tea.TeaModel {
                public class AppInfo : Tea.TeaModel {
                    public var appArgs: String?

                    public var appName: String?

                    public var appPath: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.appArgs != nil {
                            map["AppArgs"] = self.appArgs!
                        }
                        if self.appName != nil {
                            map["AppName"] = self.appName!
                        }
                        if self.appPath != nil {
                            map["AppPath"] = self.appPath!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AppArgs") {
                            self.appArgs = dict["AppArgs"] as! String
                        }
                        if dict.keys.contains("AppName") {
                            self.appName = dict["AppName"] as! String
                        }
                        if dict.keys.contains("AppPath") {
                            self.appPath = dict["AppPath"] as! String
                        }
                    }
                }
                public var appInfo: [DescribeGWSInstancesResponseBody.Instances.InstanceInfo.AppList.AppInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.appInfo != nil {
                        var tmp : [Any] = []
                        for k in self.appInfo! {
                            tmp.append(k.toMap())
                        }
                        map["AppInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("AppInfo") {
                        self.appInfo = dict["AppInfo"] as! [DescribeGWSInstancesResponseBody.Instances.InstanceInfo.AppList.AppInfo]
                    }
                }
            }
            public var appList: DescribeGWSInstancesResponseBody.Instances.InstanceInfo.AppList?

            public var clusterId: String?

            public var createTime: String?

            public var expireTime: String?

            public var instanceId: String?

            public var instanceType: String?

            public var name: String?

            public var status: String?

            public var userName: String?

            public var workMode: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.appList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.appList != nil {
                    map["AppList"] = self.appList?.toMap()
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.expireTime != nil {
                    map["ExpireTime"] = self.expireTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.userName != nil {
                    map["UserName"] = self.userName!
                }
                if self.workMode != nil {
                    map["WorkMode"] = self.workMode!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AppList") {
                    var model = DescribeGWSInstancesResponseBody.Instances.InstanceInfo.AppList()
                    model.fromMap(dict["AppList"] as! [String: Any])
                    self.appList = model
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("ExpireTime") {
                    self.expireTime = dict["ExpireTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("UserName") {
                    self.userName = dict["UserName"] as! String
                }
                if dict.keys.contains("WorkMode") {
                    self.workMode = dict["WorkMode"] as! String
                }
            }
        }
        public var instanceInfo: [DescribeGWSInstancesResponseBody.Instances.InstanceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceInfo != nil {
                var tmp : [Any] = []
                for k in self.instanceInfo! {
                    tmp.append(k.toMap())
                }
                map["InstanceInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceInfo") {
                self.instanceInfo = dict["InstanceInfo"] as! [DescribeGWSInstancesResponseBody.Instances.InstanceInfo]
            }
        }
    }
    public var instances: DescribeGWSInstancesResponseBody.Instances?

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
        try self.instances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instances != nil {
            map["Instances"] = self.instances?.toMap()
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
            var model = DescribeGWSInstancesResponseBody.Instances()
            model.fromMap(dict["Instances"] as! [String: Any])
            self.instances = model
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

public class DescribeGWSInstancesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeGWSInstancesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeGWSInstancesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageTag: String?

    public var repository: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.repository != nil {
            map["Repository"] = self.repository!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageTag") {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("Repository") {
            self.repository = dict["Repository"] as! String
        }
    }
}

public class DescribeImageResponseBody : Tea.TeaModel {
    public class ImageInfo : Tea.TeaModel {
        public var imageId: String?

        public var repository: String?

        public var status: String?

        public var system: String?

        public var tag: String?

        public var type: String?

        public var updateDateTime: String?

        public override init() {
            super.init()
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
            if self.repository != nil {
                map["Repository"] = self.repository!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.system != nil {
                map["System"] = self.system!
            }
            if self.tag != nil {
                map["Tag"] = self.tag!
            }
            if self.type != nil {
                map["Type"] = self.type!
            }
            if self.updateDateTime != nil {
                map["UpdateDateTime"] = self.updateDateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageId") {
                self.imageId = dict["ImageId"] as! String
            }
            if dict.keys.contains("Repository") {
                self.repository = dict["Repository"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("System") {
                self.system = dict["System"] as! String
            }
            if dict.keys.contains("Tag") {
                self.tag = dict["Tag"] as! String
            }
            if dict.keys.contains("Type") {
                self.type = dict["Type"] as! String
            }
            if dict.keys.contains("UpdateDateTime") {
                self.updateDateTime = dict["UpdateDateTime"] as! String
            }
        }
    }
    public var imageInfo: DescribeImageResponseBody.ImageInfo?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageInfo?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageInfo != nil {
            map["ImageInfo"] = self.imageInfo?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageInfo") {
            var model = DescribeImageResponseBody.ImageInfo()
            model.fromMap(dict["ImageInfo"] as! [String: Any])
            self.imageInfo = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImageGatewayConfigRequest : Tea.TeaModel {
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

public class DescribeImageGatewayConfigResponseBody : Tea.TeaModel {
    public class Imagegw : Tea.TeaModel {
        public class Locations : Tea.TeaModel {
            public class LocationInfo : Tea.TeaModel {
                public var authentication: String?

                public var location: String?

                public var remoteType: String?

                public var URL: String?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.authentication != nil {
                        map["Authentication"] = self.authentication!
                    }
                    if self.location != nil {
                        map["Location"] = self.location!
                    }
                    if self.remoteType != nil {
                        map["RemoteType"] = self.remoteType!
                    }
                    if self.URL != nil {
                        map["URL"] = self.URL!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Authentication") {
                        self.authentication = dict["Authentication"] as! String
                    }
                    if dict.keys.contains("Location") {
                        self.location = dict["Location"] as! String
                    }
                    if dict.keys.contains("RemoteType") {
                        self.remoteType = dict["RemoteType"] as! String
                    }
                    if dict.keys.contains("URL") {
                        self.URL = dict["URL"] as! String
                    }
                }
            }
            public var locationInfo: [DescribeImageGatewayConfigResponseBody.Imagegw.Locations.LocationInfo]?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.locationInfo != nil {
                    var tmp : [Any] = []
                    for k in self.locationInfo! {
                        tmp.append(k.toMap())
                    }
                    map["LocationInfo"] = tmp
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocationInfo") {
                    self.locationInfo = dict["LocationInfo"] as! [DescribeImageGatewayConfigResponseBody.Imagegw.Locations.LocationInfo]
                }
            }
        }
        public var defaultImageLocation: String?

        public var imageExpirationTimeout: String?

        public var locations: DescribeImageGatewayConfigResponseBody.Imagegw.Locations?

        public var mongoDBURI: String?

        public var pullUpdateTimeout: Int64?

        public var updateDateTime: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.locations?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.defaultImageLocation != nil {
                map["DefaultImageLocation"] = self.defaultImageLocation!
            }
            if self.imageExpirationTimeout != nil {
                map["ImageExpirationTimeout"] = self.imageExpirationTimeout!
            }
            if self.locations != nil {
                map["Locations"] = self.locations?.toMap()
            }
            if self.mongoDBURI != nil {
                map["MongoDBURI"] = self.mongoDBURI!
            }
            if self.pullUpdateTimeout != nil {
                map["PullUpdateTimeout"] = self.pullUpdateTimeout!
            }
            if self.updateDateTime != nil {
                map["UpdateDateTime"] = self.updateDateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DefaultImageLocation") {
                self.defaultImageLocation = dict["DefaultImageLocation"] as! String
            }
            if dict.keys.contains("ImageExpirationTimeout") {
                self.imageExpirationTimeout = dict["ImageExpirationTimeout"] as! String
            }
            if dict.keys.contains("Locations") {
                var model = DescribeImageGatewayConfigResponseBody.Imagegw.Locations()
                model.fromMap(dict["Locations"] as! [String: Any])
                self.locations = model
            }
            if dict.keys.contains("MongoDBURI") {
                self.mongoDBURI = dict["MongoDBURI"] as! String
            }
            if dict.keys.contains("PullUpdateTimeout") {
                self.pullUpdateTimeout = dict["PullUpdateTimeout"] as! Int64
            }
            if dict.keys.contains("UpdateDateTime") {
                self.updateDateTime = dict["UpdateDateTime"] as! String
            }
        }
    }
    public var imagegw: DescribeImageGatewayConfigResponseBody.Imagegw?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imagegw?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imagegw != nil {
            map["Imagegw"] = self.imagegw?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Imagegw") {
            var model = DescribeImageGatewayConfigResponseBody.Imagegw()
            model.fromMap(dict["Imagegw"] as! [String: Any])
            self.imagegw = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeImageGatewayConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImageGatewayConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeImageGatewayConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeImagePriceRequest : Tea.TeaModel {
    public var amount: Int32?

    public var imageId: String?

    public var orderType: String?

    public var period: Int32?

    public var priceUnit: String?

    public var skuCode: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.period != nil {
            map["Period"] = self.period!
        }
        if self.priceUnit != nil {
            map["PriceUnit"] = self.priceUnit!
        }
        if self.skuCode != nil {
            map["SkuCode"] = self.skuCode!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("Period") {
            self.period = dict["Period"] as! Int32
        }
        if dict.keys.contains("PriceUnit") {
            self.priceUnit = dict["PriceUnit"] as! String
        }
        if dict.keys.contains("SkuCode") {
            self.skuCode = dict["SkuCode"] as! String
        }
    }
}

public class DescribeImagePriceResponseBody : Tea.TeaModel {
    public var amount: Int32?

    public var discountPrice: Double?

    public var imageId: String?

    public var originalPrice: Double?

    public var requestId: String?

    public var tradePrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.amount != nil {
            map["Amount"] = self.amount!
        }
        if self.discountPrice != nil {
            map["DiscountPrice"] = self.discountPrice!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Amount") {
            self.amount = dict["Amount"] as! Int32
        }
        if dict.keys.contains("DiscountPrice") {
            self.discountPrice = dict["DiscountPrice"] as! Double
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! Double
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TradePrice") {
            self.tradePrice = dict["TradePrice"] as! Double
        }
    }
}

public class DescribeImagePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeImagePriceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeImagePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeJobRequest : Tea.TeaModel {
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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
    }
}

public class DescribeJobResponseBody : Tea.TeaModel {
    public class Message : Tea.TeaModel {
        public var jobInfo: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInfo != nil {
                map["JobInfo"] = self.jobInfo!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInfo") {
                self.jobInfo = dict["JobInfo"] as! String
            }
        }
    }
    public var message: DescribeJobResponseBody.Message?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.message?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.message != nil {
            map["Message"] = self.message?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Message") {
            var model = DescribeJobResponseBody.Message()
            model.fromMap(dict["Message"] as! [String: Any])
            self.message = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class DescribeJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeJobResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribeNFSClientStatusRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class DescribeNFSClientStatusResponseBody : Tea.TeaModel {
    public class Result : Tea.TeaModel {
        public var exitCode: Int32?

        public var invokeRecordStatus: String?

        public var output: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.exitCode != nil {
                map["ExitCode"] = self.exitCode!
            }
            if self.invokeRecordStatus != nil {
                map["InvokeRecordStatus"] = self.invokeRecordStatus!
            }
            if self.output != nil {
                map["Output"] = self.output!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ExitCode") {
                self.exitCode = dict["ExitCode"] as! Int32
            }
            if dict.keys.contains("InvokeRecordStatus") {
                self.invokeRecordStatus = dict["InvokeRecordStatus"] as! String
            }
            if dict.keys.contains("Output") {
                self.output = dict["Output"] as! String
            }
        }
    }
    public var requestId: String?

    public var result: DescribeNFSClientStatusResponseBody.Result?

    public var status: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.result?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.result != nil {
            map["Result"] = self.result?.toMap()
        }
        if self.status != nil {
            map["Status"] = self.status!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Result") {
            var model = DescribeNFSClientStatusResponseBody.Result()
            model.fromMap(dict["Result"] as! [String: Any])
            self.result = model
        }
        if dict.keys.contains("Status") {
            self.status = dict["Status"] as! String
        }
    }
}

public class DescribeNFSClientStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribeNFSClientStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribeNFSClientStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class DescribePriceRequest : Tea.TeaModel {
    public class Commodities : Tea.TeaModel {
        public class DataDisks : Tea.TeaModel {
            public var category: String?

            public var deleteWithInstance: Bool?

            public var encrypted: Bool?

            public var performanceLevel: String?

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
                    map["category"] = self.category!
                }
                if self.deleteWithInstance != nil {
                    map["deleteWithInstance"] = self.deleteWithInstance!
                }
                if self.encrypted != nil {
                    map["encrypted"] = self.encrypted!
                }
                if self.performanceLevel != nil {
                    map["performanceLevel"] = self.performanceLevel!
                }
                if self.size != nil {
                    map["size"] = self.size!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("category") {
                    self.category = dict["category"] as! String
                }
                if dict.keys.contains("deleteWithInstance") {
                    self.deleteWithInstance = dict["deleteWithInstance"] as! Bool
                }
                if dict.keys.contains("encrypted") {
                    self.encrypted = dict["encrypted"] as! Bool
                }
                if dict.keys.contains("performanceLevel") {
                    self.performanceLevel = dict["performanceLevel"] as! String
                }
                if dict.keys.contains("size") {
                    self.size = dict["size"] as! Int32
                }
            }
        }
        public var amount: Int32?

        public var dataDisks: [DescribePriceRequest.Commodities.DataDisks]?

        public var instanceType: String?

        public var internetChargeType: String?

        public var internetMaxBandWidthOut: Int32?

        public var networkType: String?

        public var nodeType: String?

        public var period: Int32?

        public var systemDiskCategory: String?

        public var systemDiskPerformanceLevel: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.amount != nil {
                map["Amount"] = self.amount!
            }
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["DataDisks"] = tmp
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.internetChargeType != nil {
                map["InternetChargeType"] = self.internetChargeType!
            }
            if self.internetMaxBandWidthOut != nil {
                map["InternetMaxBandWidthOut"] = self.internetMaxBandWidthOut!
            }
            if self.networkType != nil {
                map["NetworkType"] = self.networkType!
            }
            if self.nodeType != nil {
                map["NodeType"] = self.nodeType!
            }
            if self.period != nil {
                map["Period"] = self.period!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskPerformanceLevel != nil {
                map["SystemDiskPerformanceLevel"] = self.systemDiskPerformanceLevel!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Amount") {
                self.amount = dict["Amount"] as! Int32
            }
            if dict.keys.contains("DataDisks") {
                self.dataDisks = dict["DataDisks"] as! [DescribePriceRequest.Commodities.DataDisks]
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InternetChargeType") {
                self.internetChargeType = dict["InternetChargeType"] as! String
            }
            if dict.keys.contains("InternetMaxBandWidthOut") {
                self.internetMaxBandWidthOut = dict["InternetMaxBandWidthOut"] as! Int32
            }
            if dict.keys.contains("NetworkType") {
                self.networkType = dict["NetworkType"] as! String
            }
            if dict.keys.contains("NodeType") {
                self.nodeType = dict["NodeType"] as! String
            }
            if dict.keys.contains("Period") {
                self.period = dict["Period"] as! Int32
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskPerformanceLevel") {
                self.systemDiskPerformanceLevel = dict["SystemDiskPerformanceLevel"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public var chargeType: String?

    public var commodities: [DescribePriceRequest.Commodities]?

    public var orderType: String?

    public var priceUnit: String?

    public override init() {
        super.init()
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
        if self.commodities != nil {
            var tmp : [Any] = []
            for k in self.commodities! {
                tmp.append(k.toMap())
            }
            map["Commodities"] = tmp
        }
        if self.orderType != nil {
            map["OrderType"] = self.orderType!
        }
        if self.priceUnit != nil {
            map["PriceUnit"] = self.priceUnit!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeType") {
            self.chargeType = dict["ChargeType"] as! String
        }
        if dict.keys.contains("Commodities") {
            self.commodities = dict["Commodities"] as! [DescribePriceRequest.Commodities]
        }
        if dict.keys.contains("OrderType") {
            self.orderType = dict["OrderType"] as! String
        }
        if dict.keys.contains("PriceUnit") {
            self.priceUnit = dict["PriceUnit"] as! String
        }
    }
}

public class DescribePriceResponseBody : Tea.TeaModel {
    public class Prices : Tea.TeaModel {
        public class PriceInfo : Tea.TeaModel {
            public var currency: String?

            public var nodeType: String?

            public var originalPrice: Double?

            public var tradePrice: Double?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.currency != nil {
                    map["Currency"] = self.currency!
                }
                if self.nodeType != nil {
                    map["NodeType"] = self.nodeType!
                }
                if self.originalPrice != nil {
                    map["OriginalPrice"] = self.originalPrice!
                }
                if self.tradePrice != nil {
                    map["TradePrice"] = self.tradePrice!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Currency") {
                    self.currency = dict["Currency"] as! String
                }
                if dict.keys.contains("NodeType") {
                    self.nodeType = dict["NodeType"] as! String
                }
                if dict.keys.contains("OriginalPrice") {
                    self.originalPrice = dict["OriginalPrice"] as! Double
                }
                if dict.keys.contains("TradePrice") {
                    self.tradePrice = dict["TradePrice"] as! Double
                }
            }
        }
        public var priceInfo: [DescribePriceResponseBody.Prices.PriceInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.priceInfo != nil {
                var tmp : [Any] = []
                for k in self.priceInfo! {
                    tmp.append(k.toMap())
                }
                map["PriceInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("PriceInfo") {
                self.priceInfo = dict["PriceInfo"] as! [DescribePriceResponseBody.Prices.PriceInfo]
            }
        }
    }
    public var prices: DescribePriceResponseBody.Prices?

    public var requestId: String?

    public var totalTradePrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.prices?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.prices != nil {
            map["Prices"] = self.prices?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.totalTradePrice != nil {
            map["TotalTradePrice"] = self.totalTradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Prices") {
            var model = DescribePriceResponseBody.Prices()
            model.fromMap(dict["Prices"] as! [String: Any])
            self.prices = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalTradePrice") {
            self.totalTradePrice = dict["TotalTradePrice"] as! Double
        }
    }
}

public class DescribePriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: DescribePriceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = DescribePriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class EditJobTemplateRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var clockTime: String?

    public var commandLine: String?

    public var gpu: Int32?

    public var inputFileUrl: String?

    public var mem: String?

    public var name: String?

    public var node: Int32?

    public var packagePath: String?

    public var priority: Int32?

    public var queue: String?

    public var reRunable: Bool?

    public var runasUser: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var task: Int32?

    public var templateId: String?

    public var thread: Int32?

    public var unzipCmd: String?

    public var variables: String?

    public var withUnzipCmd: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.clockTime != nil {
            map["ClockTime"] = self.clockTime!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.inputFileUrl != nil {
            map["InputFileUrl"] = self.inputFileUrl!
        }
        if self.mem != nil {
            map["Mem"] = self.mem!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.node != nil {
            map["Node"] = self.node!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.queue != nil {
            map["Queue"] = self.queue!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        if self.thread != nil {
            map["Thread"] = self.thread!
        }
        if self.unzipCmd != nil {
            map["UnzipCmd"] = self.unzipCmd!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        if self.withUnzipCmd != nil {
            map["WithUnzipCmd"] = self.withUnzipCmd!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("ClockTime") {
            self.clockTime = dict["ClockTime"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("Gpu") {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("InputFileUrl") {
            self.inputFileUrl = dict["InputFileUrl"] as! String
        }
        if dict.keys.contains("Mem") {
            self.mem = dict["Mem"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Node") {
            self.node = dict["Node"] as! Int32
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("Queue") {
            self.queue = dict["Queue"] as! String
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("Task") {
            self.task = dict["Task"] as! Int32
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
        if dict.keys.contains("Thread") {
            self.thread = dict["Thread"] as! Int32
        }
        if dict.keys.contains("UnzipCmd") {
            self.unzipCmd = dict["UnzipCmd"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
        if dict.keys.contains("WithUnzipCmd") {
            self.withUnzipCmd = dict["WithUnzipCmd"] as! Bool
        }
    }
}

public class EditJobTemplateResponseBody : Tea.TeaModel {
    public var requestId: String?

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
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.templateId != nil {
            map["TemplateId"] = self.templateId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TemplateId") {
            self.templateId = dict["TemplateId"] as! String
        }
    }
}

public class EditJobTemplateResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: EditJobTemplateResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = EditJobTemplateResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAccountingReportRequest : Tea.TeaModel {
    public var clusterId: String?

    public var dim: String?

    public var endTime: Int32?

    public var filterValue: String?

    public var jobId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var reportType: String?

    public var startTime: Int32?

    public override init() {
        super.init()
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
        if self.dim != nil {
            map["Dim"] = self.dim!
        }
        if self.endTime != nil {
            map["EndTime"] = self.endTime!
        }
        if self.filterValue != nil {
            map["FilterValue"] = self.filterValue!
        }
        if self.jobId != nil {
            map["JobId"] = self.jobId!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.reportType != nil {
            map["ReportType"] = self.reportType!
        }
        if self.startTime != nil {
            map["StartTime"] = self.startTime!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Dim") {
            self.dim = dict["Dim"] as! String
        }
        if dict.keys.contains("EndTime") {
            self.endTime = dict["EndTime"] as! Int32
        }
        if dict.keys.contains("FilterValue") {
            self.filterValue = dict["FilterValue"] as! String
        }
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("ReportType") {
            self.reportType = dict["ReportType"] as! String
        }
        if dict.keys.contains("StartTime") {
            self.startTime = dict["StartTime"] as! Int32
        }
    }
}

public class GetAccountingReportResponseBody : Tea.TeaModel {
    public class Data : Tea.TeaModel {
        public var data: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Data") {
                self.data = dict["Data"] as! [String]
            }
        }
    }
    public var data: GetAccountingReportResponseBody.Data?

    public var metrics: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCoreTime: Int32?

    public var totalCount: Int32?

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
        if self.data != nil {
            map["Data"] = self.data?.toMap()
        }
        if self.metrics != nil {
            map["Metrics"] = self.metrics!
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
        if self.totalCoreTime != nil {
            map["TotalCoreTime"] = self.totalCoreTime!
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Data") {
            var model = GetAccountingReportResponseBody.Data()
            model.fromMap(dict["Data"] as! [String: Any])
            self.data = model
        }
        if dict.keys.contains("Metrics") {
            self.metrics = dict["Metrics"] as! String
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
        if dict.keys.contains("TotalCoreTime") {
            self.totalCoreTime = dict["TotalCoreTime"] as! Int32
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class GetAccountingReportResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAccountingReportResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAccountingReportResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetAutoScaleConfigRequest : Tea.TeaModel {
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

public class GetAutoScaleConfigResponseBody : Tea.TeaModel {
    public class Queues : Tea.TeaModel {
        public class QueueInfo : Tea.TeaModel {
            public class DataDisks : Tea.TeaModel {
                public class DataDisksInfo : Tea.TeaModel {
                    public var dataDiskCategory: String?

                    public var dataDiskDeleteWithInstance: Bool?

                    public var dataDiskEncrypted: Bool?

                    public var dataDiskKMSKeyId: String?

                    public var dataDiskPerformanceLevel: String?

                    public var dataDiskSize: Int32?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.dataDiskCategory != nil {
                            map["DataDiskCategory"] = self.dataDiskCategory!
                        }
                        if self.dataDiskDeleteWithInstance != nil {
                            map["DataDiskDeleteWithInstance"] = self.dataDiskDeleteWithInstance!
                        }
                        if self.dataDiskEncrypted != nil {
                            map["DataDiskEncrypted"] = self.dataDiskEncrypted!
                        }
                        if self.dataDiskKMSKeyId != nil {
                            map["DataDiskKMSKeyId"] = self.dataDiskKMSKeyId!
                        }
                        if self.dataDiskPerformanceLevel != nil {
                            map["DataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
                        }
                        if self.dataDiskSize != nil {
                            map["DataDiskSize"] = self.dataDiskSize!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("DataDiskCategory") {
                            self.dataDiskCategory = dict["DataDiskCategory"] as! String
                        }
                        if dict.keys.contains("DataDiskDeleteWithInstance") {
                            self.dataDiskDeleteWithInstance = dict["DataDiskDeleteWithInstance"] as! Bool
                        }
                        if dict.keys.contains("DataDiskEncrypted") {
                            self.dataDiskEncrypted = dict["DataDiskEncrypted"] as! Bool
                        }
                        if dict.keys.contains("DataDiskKMSKeyId") {
                            self.dataDiskKMSKeyId = dict["DataDiskKMSKeyId"] as! String
                        }
                        if dict.keys.contains("DataDiskPerformanceLevel") {
                            self.dataDiskPerformanceLevel = dict["DataDiskPerformanceLevel"] as! String
                        }
                        if dict.keys.contains("DataDiskSize") {
                            self.dataDiskSize = dict["DataDiskSize"] as! Int32
                        }
                    }
                }
                public var dataDisksInfo: [GetAutoScaleConfigResponseBody.Queues.QueueInfo.DataDisks.DataDisksInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.dataDisksInfo != nil {
                        var tmp : [Any] = []
                        for k in self.dataDisksInfo! {
                            tmp.append(k.toMap())
                        }
                        map["DataDisksInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("DataDisksInfo") {
                        self.dataDisksInfo = dict["DataDisksInfo"] as! [GetAutoScaleConfigResponseBody.Queues.QueueInfo.DataDisks.DataDisksInfo]
                    }
                }
            }
            public class InstanceTypes : Tea.TeaModel {
                public class InstanceTypeInfo : Tea.TeaModel {
                    public var hostNamePrefix: String?

                    public var instanceType: String?

                    public var spotPriceLimit: Double?

                    public var spotStrategy: String?

                    public var vSwitchId: String?

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
                        if self.hostNamePrefix != nil {
                            map["HostNamePrefix"] = self.hostNamePrefix!
                        }
                        if self.instanceType != nil {
                            map["InstanceType"] = self.instanceType!
                        }
                        if self.spotPriceLimit != nil {
                            map["SpotPriceLimit"] = self.spotPriceLimit!
                        }
                        if self.spotStrategy != nil {
                            map["SpotStrategy"] = self.spotStrategy!
                        }
                        if self.vSwitchId != nil {
                            map["VSwitchId"] = self.vSwitchId!
                        }
                        if self.zoneId != nil {
                            map["ZoneId"] = self.zoneId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("HostNamePrefix") {
                            self.hostNamePrefix = dict["HostNamePrefix"] as! String
                        }
                        if dict.keys.contains("InstanceType") {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("SpotPriceLimit") {
                            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
                        }
                        if dict.keys.contains("SpotStrategy") {
                            self.spotStrategy = dict["SpotStrategy"] as! String
                        }
                        if dict.keys.contains("VSwitchId") {
                            self.vSwitchId = dict["VSwitchId"] as! String
                        }
                        if dict.keys.contains("ZoneId") {
                            self.zoneId = dict["ZoneId"] as! String
                        }
                    }
                }
                public var instanceTypeInfo: [GetAutoScaleConfigResponseBody.Queues.QueueInfo.InstanceTypes.InstanceTypeInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instanceTypeInfo != nil {
                        var tmp : [Any] = []
                        for k in self.instanceTypeInfo! {
                            tmp.append(k.toMap())
                        }
                        map["InstanceTypeInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceTypeInfo") {
                        self.instanceTypeInfo = dict["InstanceTypeInfo"] as! [GetAutoScaleConfigResponseBody.Queues.QueueInfo.InstanceTypes.InstanceTypeInfo]
                    }
                }
            }
            public var dataDisks: GetAutoScaleConfigResponseBody.Queues.QueueInfo.DataDisks?

            public var enableAutoGrow: Bool?

            public var enableAutoShrink: Bool?

            public var hostNamePrefix: String?

            public var hostNameSuffix: String?

            public var instanceType: String?

            public var instanceTypes: GetAutoScaleConfigResponseBody.Queues.QueueInfo.InstanceTypes?

            public var maxNodesInQueue: Int32?

            public var maxNodesPerCycle: Int64?

            public var minNodesInQueue: Int32?

            public var minNodesPerCycle: Int64?

            public var queueImageId: String?

            public var queueName: String?

            public var resourceGroupId: String?

            public var spotPriceLimit: Double?

            public var spotStrategy: String?

            public var systemDiskCategory: String?

            public var systemDiskLevel: String?

            public var systemDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.dataDisks?.validate()
                try self.instanceTypes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataDisks != nil {
                    map["DataDisks"] = self.dataDisks?.toMap()
                }
                if self.enableAutoGrow != nil {
                    map["EnableAutoGrow"] = self.enableAutoGrow!
                }
                if self.enableAutoShrink != nil {
                    map["EnableAutoShrink"] = self.enableAutoShrink!
                }
                if self.hostNamePrefix != nil {
                    map["HostNamePrefix"] = self.hostNamePrefix!
                }
                if self.hostNameSuffix != nil {
                    map["HostNameSuffix"] = self.hostNameSuffix!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.instanceTypes != nil {
                    map["InstanceTypes"] = self.instanceTypes?.toMap()
                }
                if self.maxNodesInQueue != nil {
                    map["MaxNodesInQueue"] = self.maxNodesInQueue!
                }
                if self.maxNodesPerCycle != nil {
                    map["MaxNodesPerCycle"] = self.maxNodesPerCycle!
                }
                if self.minNodesInQueue != nil {
                    map["MinNodesInQueue"] = self.minNodesInQueue!
                }
                if self.minNodesPerCycle != nil {
                    map["MinNodesPerCycle"] = self.minNodesPerCycle!
                }
                if self.queueImageId != nil {
                    map["QueueImageId"] = self.queueImageId!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.spotPriceLimit != nil {
                    map["SpotPriceLimit"] = self.spotPriceLimit!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.systemDiskCategory != nil {
                    map["SystemDiskCategory"] = self.systemDiskCategory!
                }
                if self.systemDiskLevel != nil {
                    map["SystemDiskLevel"] = self.systemDiskLevel!
                }
                if self.systemDiskSize != nil {
                    map["SystemDiskSize"] = self.systemDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataDisks") {
                    var model = GetAutoScaleConfigResponseBody.Queues.QueueInfo.DataDisks()
                    model.fromMap(dict["DataDisks"] as! [String: Any])
                    self.dataDisks = model
                }
                if dict.keys.contains("EnableAutoGrow") {
                    self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
                }
                if dict.keys.contains("EnableAutoShrink") {
                    self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
                }
                if dict.keys.contains("HostNamePrefix") {
                    self.hostNamePrefix = dict["HostNamePrefix"] as! String
                }
                if dict.keys.contains("HostNameSuffix") {
                    self.hostNameSuffix = dict["HostNameSuffix"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("InstanceTypes") {
                    var model = GetAutoScaleConfigResponseBody.Queues.QueueInfo.InstanceTypes()
                    model.fromMap(dict["InstanceTypes"] as! [String: Any])
                    self.instanceTypes = model
                }
                if dict.keys.contains("MaxNodesInQueue") {
                    self.maxNodesInQueue = dict["MaxNodesInQueue"] as! Int32
                }
                if dict.keys.contains("MaxNodesPerCycle") {
                    self.maxNodesPerCycle = dict["MaxNodesPerCycle"] as! Int64
                }
                if dict.keys.contains("MinNodesInQueue") {
                    self.minNodesInQueue = dict["MinNodesInQueue"] as! Int32
                }
                if dict.keys.contains("MinNodesPerCycle") {
                    self.minNodesPerCycle = dict["MinNodesPerCycle"] as! Int64
                }
                if dict.keys.contains("QueueImageId") {
                    self.queueImageId = dict["QueueImageId"] as! String
                }
                if dict.keys.contains("QueueName") {
                    self.queueName = dict["QueueName"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SpotPriceLimit") {
                    self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
                }
                if dict.keys.contains("SpotStrategy") {
                    self.spotStrategy = dict["SpotStrategy"] as! String
                }
                if dict.keys.contains("SystemDiskCategory") {
                    self.systemDiskCategory = dict["SystemDiskCategory"] as! String
                }
                if dict.keys.contains("SystemDiskLevel") {
                    self.systemDiskLevel = dict["SystemDiskLevel"] as! String
                }
                if dict.keys.contains("SystemDiskSize") {
                    self.systemDiskSize = dict["SystemDiskSize"] as! Int32
                }
            }
        }
        public var queueInfo: [GetAutoScaleConfigResponseBody.Queues.QueueInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queueInfo != nil {
                var tmp : [Any] = []
                for k in self.queueInfo! {
                    tmp.append(k.toMap())
                }
                map["QueueInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QueueInfo") {
                self.queueInfo = dict["QueueInfo"] as! [GetAutoScaleConfigResponseBody.Queues.QueueInfo]
            }
        }
    }
    public var clusterId: String?

    public var clusterType: String?

    public var enableAutoGrow: Bool?

    public var enableAutoShrink: Bool?

    public var excludeNodes: String?

    public var extraNodesGrowRatio: Int32?

    public var growIntervalInMinutes: Int32?

    public var growRatio: Int32?

    public var growTimeoutInMinutes: Int32?

    public var imageId: String?

    public var maxNodesInCluster: Int32?

    public var queues: GetAutoScaleConfigResponseBody.Queues?

    public var requestId: String?

    public var shrinkIdleTimes: Int32?

    public var shrinkIntervalInMinutes: Int32?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public var uid: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queues?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.clusterType != nil {
            map["ClusterType"] = self.clusterType!
        }
        if self.enableAutoGrow != nil {
            map["EnableAutoGrow"] = self.enableAutoGrow!
        }
        if self.enableAutoShrink != nil {
            map["EnableAutoShrink"] = self.enableAutoShrink!
        }
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.extraNodesGrowRatio != nil {
            map["ExtraNodesGrowRatio"] = self.extraNodesGrowRatio!
        }
        if self.growIntervalInMinutes != nil {
            map["GrowIntervalInMinutes"] = self.growIntervalInMinutes!
        }
        if self.growRatio != nil {
            map["GrowRatio"] = self.growRatio!
        }
        if self.growTimeoutInMinutes != nil {
            map["GrowTimeoutInMinutes"] = self.growTimeoutInMinutes!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.maxNodesInCluster != nil {
            map["MaxNodesInCluster"] = self.maxNodesInCluster!
        }
        if self.queues != nil {
            map["Queues"] = self.queues?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.shrinkIdleTimes != nil {
            map["ShrinkIdleTimes"] = self.shrinkIdleTimes!
        }
        if self.shrinkIntervalInMinutes != nil {
            map["ShrinkIntervalInMinutes"] = self.shrinkIntervalInMinutes!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.uid != nil {
            map["Uid"] = self.uid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ClusterType") {
            self.clusterType = dict["ClusterType"] as! String
        }
        if dict.keys.contains("EnableAutoGrow") {
            self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
        }
        if dict.keys.contains("EnableAutoShrink") {
            self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
        }
        if dict.keys.contains("ExcludeNodes") {
            self.excludeNodes = dict["ExcludeNodes"] as! String
        }
        if dict.keys.contains("ExtraNodesGrowRatio") {
            self.extraNodesGrowRatio = dict["ExtraNodesGrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowIntervalInMinutes") {
            self.growIntervalInMinutes = dict["GrowIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("GrowRatio") {
            self.growRatio = dict["GrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowTimeoutInMinutes") {
            self.growTimeoutInMinutes = dict["GrowTimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("MaxNodesInCluster") {
            self.maxNodesInCluster = dict["MaxNodesInCluster"] as! Int32
        }
        if dict.keys.contains("Queues") {
            var model = GetAutoScaleConfigResponseBody.Queues()
            model.fromMap(dict["Queues"] as! [String: Any])
            self.queues = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ShrinkIdleTimes") {
            self.shrinkIdleTimes = dict["ShrinkIdleTimes"] as! Int32
        }
        if dict.keys.contains("ShrinkIntervalInMinutes") {
            self.shrinkIntervalInMinutes = dict["ShrinkIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("Uid") {
            self.uid = dict["Uid"] as! String
        }
    }
}

public class GetAutoScaleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetAutoScaleConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetAutoScaleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCloudMetricLogsRequest : Tea.TeaModel {
    public var aggregationInterval: Int32?

    public var aggregationType: String?

    public var clusterId: String?

    public var filter: String?

    public var from: Int32?

    public var metricCategories: String?

    public var metricScope: String?

    public var reverse: Bool?

    public var to: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.aggregationInterval != nil {
            map["AggregationInterval"] = self.aggregationInterval!
        }
        if self.aggregationType != nil {
            map["AggregationType"] = self.aggregationType!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.from != nil {
            map["From"] = self.from!
        }
        if self.metricCategories != nil {
            map["MetricCategories"] = self.metricCategories!
        }
        if self.metricScope != nil {
            map["MetricScope"] = self.metricScope!
        }
        if self.reverse != nil {
            map["Reverse"] = self.reverse!
        }
        if self.to != nil {
            map["To"] = self.to!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AggregationInterval") {
            self.aggregationInterval = dict["AggregationInterval"] as! Int32
        }
        if dict.keys.contains("AggregationType") {
            self.aggregationType = dict["AggregationType"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("From") {
            self.from = dict["From"] as! Int32
        }
        if dict.keys.contains("MetricCategories") {
            self.metricCategories = dict["MetricCategories"] as! String
        }
        if dict.keys.contains("MetricScope") {
            self.metricScope = dict["MetricScope"] as! String
        }
        if dict.keys.contains("Reverse") {
            self.reverse = dict["Reverse"] as! Bool
        }
        if dict.keys.contains("To") {
            self.to = dict["To"] as! Int32
        }
    }
}

public class GetCloudMetricLogsResponseBody : Tea.TeaModel {
    public class MetricLogs : Tea.TeaModel {
        public class MetricLog : Tea.TeaModel {
            public var diskDevice: String?

            public var hostname: String?

            public var instanceId: String?

            public var metricData: String?

            public var networkInterface: String?

            public var time: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.diskDevice != nil {
                    map["DiskDevice"] = self.diskDevice!
                }
                if self.hostname != nil {
                    map["Hostname"] = self.hostname!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.metricData != nil {
                    map["MetricData"] = self.metricData!
                }
                if self.networkInterface != nil {
                    map["NetworkInterface"] = self.networkInterface!
                }
                if self.time != nil {
                    map["Time"] = self.time!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DiskDevice") {
                    self.diskDevice = dict["DiskDevice"] as! String
                }
                if dict.keys.contains("Hostname") {
                    self.hostname = dict["Hostname"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("MetricData") {
                    self.metricData = dict["MetricData"] as! String
                }
                if dict.keys.contains("NetworkInterface") {
                    self.networkInterface = dict["NetworkInterface"] as! String
                }
                if dict.keys.contains("Time") {
                    self.time = dict["Time"] as! Int32
                }
            }
        }
        public var metricLog: [GetCloudMetricLogsResponseBody.MetricLogs.MetricLog]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.metricLog != nil {
                var tmp : [Any] = []
                for k in self.metricLog! {
                    tmp.append(k.toMap())
                }
                map["MetricLog"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("MetricLog") {
                self.metricLog = dict["MetricLog"] as! [GetCloudMetricLogsResponseBody.MetricLogs.MetricLog]
            }
        }
    }
    public var metricLogs: GetCloudMetricLogsResponseBody.MetricLogs?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.metricLogs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.metricLogs != nil {
            map["MetricLogs"] = self.metricLogs?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("MetricLogs") {
            var model = GetCloudMetricLogsResponseBody.MetricLogs()
            model.fromMap(dict["MetricLogs"] as! [String: Any])
            self.metricLogs = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetCloudMetricLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCloudMetricLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCloudMetricLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCloudMetricProfilingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var profilingId: String?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.profilingId != nil {
            map["ProfilingId"] = self.profilingId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ProfilingId") {
            self.profilingId = dict["ProfilingId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetCloudMetricProfilingResponseBody : Tea.TeaModel {
    public class SvgUrls : Tea.TeaModel {
        public class SvgInfo : Tea.TeaModel {
            public var name: String?

            public var size: Int32?

            public var type: String?

            public var url: String?

            public override init() {
                super.init()
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
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.url != nil {
                    map["Url"] = self.url!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("Url") {
                    self.url = dict["Url"] as! String
                }
            }
        }
        public var svgInfo: [GetCloudMetricProfilingResponseBody.SvgUrls.SvgInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.svgInfo != nil {
                var tmp : [Any] = []
                for k in self.svgInfo! {
                    tmp.append(k.toMap())
                }
                map["SvgInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SvgInfo") {
                self.svgInfo = dict["SvgInfo"] as! [GetCloudMetricProfilingResponseBody.SvgUrls.SvgInfo]
            }
        }
    }
    public var requestId: String?

    public var svgUrls: GetCloudMetricProfilingResponseBody.SvgUrls?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.svgUrls?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.svgUrls != nil {
            map["SvgUrls"] = self.svgUrls?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SvgUrls") {
            var model = GetCloudMetricProfilingResponseBody.SvgUrls()
            model.fromMap(dict["SvgUrls"] as! [String: Any])
            self.svgUrls = model
        }
    }
}

public class GetCloudMetricProfilingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCloudMetricProfilingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCloudMetricProfilingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetClusterVolumesRequest : Tea.TeaModel {
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

public class GetClusterVolumesResponseBody : Tea.TeaModel {
    public class Volumes : Tea.TeaModel {
        public class VolumeInfo : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class RoleInfo : Tea.TeaModel {
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
                            map["Name"] = self.name!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("Name") {
                            self.name = dict["Name"] as! String
                        }
                    }
                }
                public var roleInfo: [GetClusterVolumesResponseBody.Volumes.VolumeInfo.Roles.RoleInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.roleInfo != nil {
                        var tmp : [Any] = []
                        for k in self.roleInfo! {
                            tmp.append(k.toMap())
                        }
                        map["RoleInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("RoleInfo") {
                        self.roleInfo = dict["RoleInfo"] as! [GetClusterVolumesResponseBody.Volumes.VolumeInfo.Roles.RoleInfo]
                    }
                }
            }
            public var jobQueue: String?

            public var localDirectory: String?

            public var location: String?

            public var mustKeep: Bool?

            public var remoteDirectory: String?

            public var roles: GetClusterVolumesResponseBody.Volumes.VolumeInfo.Roles?

            public var volumeId: String?

            public var volumeMountpoint: String?

            public var volumeProtocol: String?

            public var volumeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.roles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.jobQueue != nil {
                    map["JobQueue"] = self.jobQueue!
                }
                if self.localDirectory != nil {
                    map["LocalDirectory"] = self.localDirectory!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.mustKeep != nil {
                    map["MustKeep"] = self.mustKeep!
                }
                if self.remoteDirectory != nil {
                    map["RemoteDirectory"] = self.remoteDirectory!
                }
                if self.roles != nil {
                    map["Roles"] = self.roles?.toMap()
                }
                if self.volumeId != nil {
                    map["VolumeId"] = self.volumeId!
                }
                if self.volumeMountpoint != nil {
                    map["VolumeMountpoint"] = self.volumeMountpoint!
                }
                if self.volumeProtocol != nil {
                    map["VolumeProtocol"] = self.volumeProtocol!
                }
                if self.volumeType != nil {
                    map["VolumeType"] = self.volumeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("JobQueue") {
                    self.jobQueue = dict["JobQueue"] as! String
                }
                if dict.keys.contains("LocalDirectory") {
                    self.localDirectory = dict["LocalDirectory"] as! String
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("MustKeep") {
                    self.mustKeep = dict["MustKeep"] as! Bool
                }
                if dict.keys.contains("RemoteDirectory") {
                    self.remoteDirectory = dict["RemoteDirectory"] as! String
                }
                if dict.keys.contains("Roles") {
                    var model = GetClusterVolumesResponseBody.Volumes.VolumeInfo.Roles()
                    model.fromMap(dict["Roles"] as! [String: Any])
                    self.roles = model
                }
                if dict.keys.contains("VolumeId") {
                    self.volumeId = dict["VolumeId"] as! String
                }
                if dict.keys.contains("VolumeMountpoint") {
                    self.volumeMountpoint = dict["VolumeMountpoint"] as! String
                }
                if dict.keys.contains("VolumeProtocol") {
                    self.volumeProtocol = dict["VolumeProtocol"] as! String
                }
                if dict.keys.contains("VolumeType") {
                    self.volumeType = dict["VolumeType"] as! String
                }
            }
        }
        public var volumeInfo: [GetClusterVolumesResponseBody.Volumes.VolumeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.volumeInfo != nil {
                var tmp : [Any] = []
                for k in self.volumeInfo! {
                    tmp.append(k.toMap())
                }
                map["VolumeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VolumeInfo") {
                self.volumeInfo = dict["VolumeInfo"] as! [GetClusterVolumesResponseBody.Volumes.VolumeInfo]
            }
        }
    }
    public var regionId: String?

    public var requestId: String?

    public var volumes: GetClusterVolumesResponseBody.Volumes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volumes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.volumes != nil {
            map["Volumes"] = self.volumes?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Volumes") {
            var model = GetClusterVolumesResponseBody.Volumes()
            model.fromMap(dict["Volumes"] as! [String: Any])
            self.volumes = model
        }
    }
}

public class GetClusterVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetClusterVolumesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetClusterVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetCommonImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containType: String?

    public var imageName: String?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.containType != nil {
            map["ContainType"] = self.containType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainType") {
            self.containType = dict["ContainType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetCommonImageResponseBody : Tea.TeaModel {
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

public class GetCommonImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetCommonImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetCommonImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetGWSConnectTicketRequest : Tea.TeaModel {
    public var appName: String?

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
        if self.appName != nil {
            map["AppName"] = self.appName!
        }
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AppName") {
            self.appName = dict["AppName"] as! String
        }
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class GetGWSConnectTicketResponseBody : Tea.TeaModel {
    public var requestId: String?

    public var ticket: String?

    public override init() {
        super.init()
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
        if self.ticket != nil {
            map["Ticket"] = self.ticket!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Ticket") {
            self.ticket = dict["Ticket"] as! String
        }
    }
}

public class GetGWSConnectTicketResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetGWSConnectTicketResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetGWSConnectTicketResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetHybridClusterConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var node: String?

    public override init() {
        super.init()
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
        if self.node != nil {
            map["Node"] = self.node!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Node") {
            self.node = dict["Node"] as! String
        }
    }
}

public class GetHybridClusterConfigResponseBody : Tea.TeaModel {
    public var clusterConfig: String?

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
        if self.clusterConfig != nil {
            map["ClusterConfig"] = self.clusterConfig!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterConfig") {
            self.clusterConfig = dict["ClusterConfig"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetHybridClusterConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetHybridClusterConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetHybridClusterConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetIfEcsTypeSupportHtConfigRequest : Tea.TeaModel {
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
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class GetIfEcsTypeSupportHtConfigResponseBody : Tea.TeaModel {
    public var defaultHtEnabled: Bool?

    public var instanceType: String?

    public var requestId: String?

    public var supportHtConfig: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.defaultHtEnabled != nil {
            map["DefaultHtEnabled"] = self.defaultHtEnabled!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supportHtConfig != nil {
            map["SupportHtConfig"] = self.supportHtConfig!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("DefaultHtEnabled") {
            self.defaultHtEnabled = dict["DefaultHtEnabled"] as! Bool
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupportHtConfig") {
            self.supportHtConfig = dict["SupportHtConfig"] as! Bool
        }
    }
}

public class GetIfEcsTypeSupportHtConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetIfEcsTypeSupportHtConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetIfEcsTypeSupportHtConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetPostScriptsRequest : Tea.TeaModel {
    public var clusterId: String?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class GetPostScriptsResponseBody : Tea.TeaModel {
    public class PostInstallScripts : Tea.TeaModel {
        public var args: String?

        public var url: String?

        public override init() {
            super.init()
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var postInstallScripts: [GetPostScriptsResponseBody.PostInstallScripts]?

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
        if self.postInstallScripts != nil {
            var tmp : [Any] = []
            for k in self.postInstallScripts! {
                tmp.append(k.toMap())
            }
            map["PostInstallScripts"] = tmp
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("PostInstallScripts") {
            self.postInstallScripts = dict["PostInstallScripts"] as! [GetPostScriptsResponseBody.PostInstallScripts]
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class GetPostScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetPostScriptsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetPostScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetSchedulerInfoRequest : Tea.TeaModel {
    public class Scheduler : Tea.TeaModel {
        public var schedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schedName != nil {
                map["SchedName"] = self.schedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchedName") {
                self.schedName = dict["SchedName"] as! String
            }
        }
    }
    public var clusterId: String?

    public var regionId: String?

    public var scheduler: [GetSchedulerInfoRequest.Scheduler]?

    public override init() {
        super.init()
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduler != nil {
            var tmp : [Any] = []
            for k in self.scheduler! {
                tmp.append(k.toMap())
            }
            map["Scheduler"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! [GetSchedulerInfoRequest.Scheduler]
        }
    }
}

public class GetSchedulerInfoResponseBody : Tea.TeaModel {
    public class SchedInfo : Tea.TeaModel {
        public var configuration: String?

        public var schedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.configuration != nil {
                map["Configuration"] = self.configuration!
            }
            if self.schedName != nil {
                map["SchedName"] = self.schedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Configuration") {
                self.configuration = dict["Configuration"] as! String
            }
            if dict.keys.contains("SchedName") {
                self.schedName = dict["SchedName"] as! String
            }
        }
    }
    public var requestId: String?

    public var schedInfo: [GetSchedulerInfoResponseBody.SchedInfo]?

    public override init() {
        super.init()
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
        if self.schedInfo != nil {
            var tmp : [Any] = []
            for k in self.schedInfo! {
                tmp.append(k.toMap())
            }
            map["SchedInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SchedInfo") {
            self.schedInfo = dict["SchedInfo"] as! [GetSchedulerInfoResponseBody.SchedInfo]
        }
    }
}

public class GetSchedulerInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetSchedulerInfoResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetSchedulerInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetUserImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageName: String?

    public var imagePath: String?

    public var OSSBucket: String?

    public var OSSEndPoint: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        if self.imagePath != nil {
            map["ImagePath"] = self.imagePath!
        }
        if self.OSSBucket != nil {
            map["OSSBucket"] = self.OSSBucket!
        }
        if self.OSSEndPoint != nil {
            map["OSSEndPoint"] = self.OSSEndPoint!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
        if dict.keys.contains("ImagePath") {
            self.imagePath = dict["ImagePath"] as! String
        }
        if dict.keys.contains("OSSBucket") {
            self.OSSBucket = dict["OSSBucket"] as! String
        }
        if dict.keys.contains("OSSEndPoint") {
            self.OSSEndPoint = dict["OSSEndPoint"] as! String
        }
    }
}

public class GetUserImageResponseBody : Tea.TeaModel {
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

public class GetUserImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetUserImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetUserImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class GetVisualServiceStatusRequest : Tea.TeaModel {
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

public class GetVisualServiceStatusResponseBody : Tea.TeaModel {
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

public class GetVisualServiceStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: GetVisualServiceStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = GetVisualServiceStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InitializeEHPCRequest : Tea.TeaModel {
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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class InitializeEHPCResponseBody : Tea.TeaModel {
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

public class InitializeEHPCResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InitializeEHPCResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InitializeEHPCResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InspectImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageName: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
    }
}

public class InspectImageResponseBody : Tea.TeaModel {
    public class ImageStatus : Tea.TeaModel {
        public class ImageInspectInfo : Tea.TeaModel {
            public var bootStrap: String?

            public var buildArch: String?

            public var buildDate: String?

            public var containerVersion: String?

            public var defFrom: String?

            public var schemaVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bootStrap != nil {
                    map["BootStrap"] = self.bootStrap!
                }
                if self.buildArch != nil {
                    map["BuildArch"] = self.buildArch!
                }
                if self.buildDate != nil {
                    map["BuildDate"] = self.buildDate!
                }
                if self.containerVersion != nil {
                    map["ContainerVersion"] = self.containerVersion!
                }
                if self.defFrom != nil {
                    map["DefFrom"] = self.defFrom!
                }
                if self.schemaVersion != nil {
                    map["SchemaVersion"] = self.schemaVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BootStrap") {
                    self.bootStrap = dict["BootStrap"] as! String
                }
                if dict.keys.contains("BuildArch") {
                    self.buildArch = dict["BuildArch"] as! String
                }
                if dict.keys.contains("BuildDate") {
                    self.buildDate = dict["BuildDate"] as! String
                }
                if dict.keys.contains("ContainerVersion") {
                    self.containerVersion = dict["ContainerVersion"] as! String
                }
                if dict.keys.contains("DefFrom") {
                    self.defFrom = dict["DefFrom"] as! String
                }
                if dict.keys.contains("SchemaVersion") {
                    self.schemaVersion = dict["SchemaVersion"] as! String
                }
            }
        }
        public var imageInspectInfo: InspectImageResponseBody.ImageStatus.ImageInspectInfo?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
            try self.imageInspectInfo?.validate()
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageInspectInfo != nil {
                map["ImageInspectInfo"] = self.imageInspectInfo?.toMap()
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageInspectInfo") {
                var model = InspectImageResponseBody.ImageStatus.ImageInspectInfo()
                model.fromMap(dict["ImageInspectInfo"] as! [String: Any])
                self.imageInspectInfo = model
            }
        }
    }
    public var imageStatus: InspectImageResponseBody.ImageStatus?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.imageStatus?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.imageStatus != nil {
            map["ImageStatus"] = self.imageStatus?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImageStatus") {
            var model = InspectImageResponseBody.ImageStatus()
            model.fromMap(dict["ImageStatus"] as! [String: Any])
            self.imageStatus = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InspectImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InspectImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InspectImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InstallSoftwareRequest : Tea.TeaModel {
    public var application: String?

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
        if self.application != nil {
            map["Application"] = self.application!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class InstallSoftwareResponseBody : Tea.TeaModel {
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

public class InstallSoftwareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InstallSoftwareResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InstallSoftwareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class InvokeShellCommandRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var command: String?

    public var instance: [InvokeShellCommandRequest.Instance]?

    public var timeout: Int32?

    public var workingDir: String?

    public override init() {
        super.init()
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
        if self.command != nil {
            map["Command"] = self.command!
        }
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.timeout != nil {
            map["Timeout"] = self.timeout!
        }
        if self.workingDir != nil {
            map["WorkingDir"] = self.workingDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Command") {
            self.command = dict["Command"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [InvokeShellCommandRequest.Instance]
        }
        if dict.keys.contains("Timeout") {
            self.timeout = dict["Timeout"] as! Int32
        }
        if dict.keys.contains("WorkingDir") {
            self.workingDir = dict["WorkingDir"] as! String
        }
    }
}

public class InvokeShellCommandResponseBody : Tea.TeaModel {
    public class InstanceIds : Tea.TeaModel {
        public var instanceId: [String]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceId") {
                self.instanceId = dict["InstanceId"] as! [String]
            }
        }
    }
    public var commandId: String?

    public var instanceIds: InvokeShellCommandResponseBody.InstanceIds?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceIds?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instanceIds != nil {
            map["InstanceIds"] = self.instanceIds?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandId") {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("InstanceIds") {
            var model = InvokeShellCommandResponseBody.InstanceIds()
            model.fromMap(dict["InstanceIds"] as! [String: Any])
            self.instanceIds = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class InvokeShellCommandResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: InvokeShellCommandResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = InvokeShellCommandResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListAvailableEcsTypesRequest : Tea.TeaModel {
    public var instanceChargeType: String?

    public var showSoldOut: Bool?

    public var spotStrategy: String?

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
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.showSoldOut != nil {
            map["ShowSoldOut"] = self.showSoldOut!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("ShowSoldOut") {
            self.showSoldOut = dict["ShowSoldOut"] as! Bool
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListAvailableEcsTypesResponseBody : Tea.TeaModel {
    public class InstanceTypeFamilies : Tea.TeaModel {
        public class InstanceTypeFamilyInfo : Tea.TeaModel {
            public class Types : Tea.TeaModel {
                public class TypesInfo : Tea.TeaModel {
                    public class ZoneIds : Tea.TeaModel {
                        public var zoneId: [String]?

                        public override init() {
                            super.init()
                        }

                        public init(_ dict: [String: Any]) {
                            super.init()
                            self.fromMap(dict)
                        }

                        public override func validate() throws -> Void {
                        }

                        public override func toMap() -> [String : Any] {
                            var map = super.toMap()
                            if self.zoneId != nil {
                                map["ZoneId"] = self.zoneId!
                            }
                            return map
                        }

                        public override func fromMap(_ dict: [String: Any]) -> Void {
                            if dict.keys.contains("ZoneId") {
                                self.zoneId = dict["ZoneId"] as! [String]
                            }
                        }
                    }
                    public var cpuCoreCount: Int32?

                    public var eniQuantity: Int32?

                    public var GPUAmount: Int32?

                    public var GPUSpec: String?

                    public var instanceBandwidthRx: Int32?

                    public var instanceBandwidthTx: Int32?

                    public var instancePpsRx: Int32?

                    public var instancePpsTx: Int32?

                    public var instanceTypeId: String?

                    public var memorySize: Int32?

                    public var status: String?

                    public var zoneIds: ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types.TypesInfo.ZoneIds?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                        try self.zoneIds?.validate()
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.cpuCoreCount != nil {
                            map["CpuCoreCount"] = self.cpuCoreCount!
                        }
                        if self.eniQuantity != nil {
                            map["EniQuantity"] = self.eniQuantity!
                        }
                        if self.GPUAmount != nil {
                            map["GPUAmount"] = self.GPUAmount!
                        }
                        if self.GPUSpec != nil {
                            map["GPUSpec"] = self.GPUSpec!
                        }
                        if self.instanceBandwidthRx != nil {
                            map["InstanceBandwidthRx"] = self.instanceBandwidthRx!
                        }
                        if self.instanceBandwidthTx != nil {
                            map["InstanceBandwidthTx"] = self.instanceBandwidthTx!
                        }
                        if self.instancePpsRx != nil {
                            map["InstancePpsRx"] = self.instancePpsRx!
                        }
                        if self.instancePpsTx != nil {
                            map["InstancePpsTx"] = self.instancePpsTx!
                        }
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        if self.memorySize != nil {
                            map["MemorySize"] = self.memorySize!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.zoneIds != nil {
                            map["ZoneIds"] = self.zoneIds?.toMap()
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("CpuCoreCount") {
                            self.cpuCoreCount = dict["CpuCoreCount"] as! Int32
                        }
                        if dict.keys.contains("EniQuantity") {
                            self.eniQuantity = dict["EniQuantity"] as! Int32
                        }
                        if dict.keys.contains("GPUAmount") {
                            self.GPUAmount = dict["GPUAmount"] as! Int32
                        }
                        if dict.keys.contains("GPUSpec") {
                            self.GPUSpec = dict["GPUSpec"] as! String
                        }
                        if dict.keys.contains("InstanceBandwidthRx") {
                            self.instanceBandwidthRx = dict["InstanceBandwidthRx"] as! Int32
                        }
                        if dict.keys.contains("InstanceBandwidthTx") {
                            self.instanceBandwidthTx = dict["InstanceBandwidthTx"] as! Int32
                        }
                        if dict.keys.contains("InstancePpsRx") {
                            self.instancePpsRx = dict["InstancePpsRx"] as! Int32
                        }
                        if dict.keys.contains("InstancePpsTx") {
                            self.instancePpsTx = dict["InstancePpsTx"] as! Int32
                        }
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! String
                        }
                        if dict.keys.contains("MemorySize") {
                            self.memorySize = dict["MemorySize"] as! Int32
                        }
                        if dict.keys.contains("Status") {
                            self.status = dict["Status"] as! String
                        }
                        if dict.keys.contains("ZoneIds") {
                            var model = ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types.TypesInfo.ZoneIds()
                            model.fromMap(dict["ZoneIds"] as! [String: Any])
                            self.zoneIds = model
                        }
                    }
                }
                public var typesInfo: [ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types.TypesInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.typesInfo != nil {
                        var tmp : [Any] = []
                        for k in self.typesInfo! {
                            tmp.append(k.toMap())
                        }
                        map["TypesInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("TypesInfo") {
                        self.typesInfo = dict["TypesInfo"] as! [ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types.TypesInfo]
                    }
                }
            }
            public var generation: String?

            public var instanceTypeFamilyId: String?

            public var types: ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.types?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.generation != nil {
                    map["Generation"] = self.generation!
                }
                if self.instanceTypeFamilyId != nil {
                    map["InstanceTypeFamilyId"] = self.instanceTypeFamilyId!
                }
                if self.types != nil {
                    map["Types"] = self.types?.toMap()
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Generation") {
                    self.generation = dict["Generation"] as! String
                }
                if dict.keys.contains("InstanceTypeFamilyId") {
                    self.instanceTypeFamilyId = dict["InstanceTypeFamilyId"] as! String
                }
                if dict.keys.contains("Types") {
                    var model = ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo.Types()
                    model.fromMap(dict["Types"] as! [String: Any])
                    self.types = model
                }
            }
        }
        public var instanceTypeFamilyInfo: [ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.instanceTypeFamilyInfo != nil {
                var tmp : [Any] = []
                for k in self.instanceTypeFamilyInfo! {
                    tmp.append(k.toMap())
                }
                map["InstanceTypeFamilyInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InstanceTypeFamilyInfo") {
                self.instanceTypeFamilyInfo = dict["InstanceTypeFamilyInfo"] as! [ListAvailableEcsTypesResponseBody.InstanceTypeFamilies.InstanceTypeFamilyInfo]
            }
        }
    }
    public var instanceTypeFamilies: ListAvailableEcsTypesResponseBody.InstanceTypeFamilies?

    public var requestId: String?

    public var supportSpotInstance: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.instanceTypeFamilies?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.instanceTypeFamilies != nil {
            map["InstanceTypeFamilies"] = self.instanceTypeFamilies?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.supportSpotInstance != nil {
            map["SupportSpotInstance"] = self.supportSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceTypeFamilies") {
            var model = ListAvailableEcsTypesResponseBody.InstanceTypeFamilies()
            model.fromMap(dict["InstanceTypeFamilies"] as! [String: Any])
            self.instanceTypeFamilies = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SupportSpotInstance") {
            self.supportSpotInstance = dict["SupportSpotInstance"] as! Bool
        }
    }
}

public class ListAvailableEcsTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListAvailableEcsTypesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListAvailableEcsTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCloudMetricProfilingsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
            map["ClusterId"] = self.clusterId!
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListCloudMetricProfilingsResponseBody : Tea.TeaModel {
    public class Profilings : Tea.TeaModel {
        public class ProfilingInfo : Tea.TeaModel {
            public var duration: Int32?

            public var freq: Int32?

            public var hostName: String?

            public var instanceId: String?

            public var pid: Int32?

            public var profilingId: String?

            public var triggerTime: String?

            public override init() {
                super.init()
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
                    map["Duration"] = self.duration!
                }
                if self.freq != nil {
                    map["Freq"] = self.freq!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.pid != nil {
                    map["Pid"] = self.pid!
                }
                if self.profilingId != nil {
                    map["ProfilingId"] = self.profilingId!
                }
                if self.triggerTime != nil {
                    map["TriggerTime"] = self.triggerTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Duration") {
                    self.duration = dict["Duration"] as! Int32
                }
                if dict.keys.contains("Freq") {
                    self.freq = dict["Freq"] as! Int32
                }
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("Pid") {
                    self.pid = dict["Pid"] as! Int32
                }
                if dict.keys.contains("ProfilingId") {
                    self.profilingId = dict["ProfilingId"] as! String
                }
                if dict.keys.contains("TriggerTime") {
                    self.triggerTime = dict["TriggerTime"] as! String
                }
            }
        }
        public var profilingInfo: [ListCloudMetricProfilingsResponseBody.Profilings.ProfilingInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.profilingInfo != nil {
                var tmp : [Any] = []
                for k in self.profilingInfo! {
                    tmp.append(k.toMap())
                }
                map["ProfilingInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ProfilingInfo") {
                self.profilingInfo = dict["ProfilingInfo"] as! [ListCloudMetricProfilingsResponseBody.Profilings.ProfilingInfo]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var profilings: ListCloudMetricProfilingsResponseBody.Profilings?

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
        try self.profilings?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.profilings != nil {
            map["Profilings"] = self.profilings?.toMap()
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
        if dict.keys.contains("Profilings") {
            var model = ListCloudMetricProfilingsResponseBody.Profilings()
            model.fromMap(dict["Profilings"] as! [String: Any])
            self.profilings = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListCloudMetricProfilingsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCloudMetricProfilingsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCloudMetricProfilingsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClusterLogsRequest : Tea.TeaModel {
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

public class ListClusterLogsResponseBody : Tea.TeaModel {
    public class Logs : Tea.TeaModel {
        public class LogInfo : Tea.TeaModel {
            public var createTime: String?

            public var level: String?

            public var message: String?

            public var operation: String?

            public override init() {
                super.init()
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
                if self.level != nil {
                    map["Level"] = self.level!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.operation != nil {
                    map["Operation"] = self.operation!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Level") {
                    self.level = dict["Level"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Operation") {
                    self.operation = dict["Operation"] as! String
                }
            }
        }
        public var logInfo: [ListClusterLogsResponseBody.Logs.LogInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.logInfo != nil {
                var tmp : [Any] = []
                for k in self.logInfo! {
                    tmp.append(k.toMap())
                }
                map["LogInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("LogInfo") {
                self.logInfo = dict["LogInfo"] as! [ListClusterLogsResponseBody.Logs.LogInfo]
            }
        }
    }
    public var clusterId: String?

    public var logs: ListClusterLogsResponseBody.Logs?

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
        try self.logs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.logs != nil {
            map["Logs"] = self.logs?.toMap()
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
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Logs") {
            var model = ListClusterLogsResponseBody.Logs()
            model.fromMap(dict["Logs"] as! [String: Any])
            self.logs = model
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

public class ListClusterLogsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClusterLogsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClusterLogsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListClustersRequest : Tea.TeaModel {
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

public class ListClustersResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ClusterInfoSimple : Tea.TeaModel {
            public class Computes : Tea.TeaModel {
                public var exceptionCount: Int32?

                public var normalCount: Int32?

                public var operatingCount: Int32?

                public var stoppedCount: Int32?

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
                    if self.exceptionCount != nil {
                        map["ExceptionCount"] = self.exceptionCount!
                    }
                    if self.normalCount != nil {
                        map["NormalCount"] = self.normalCount!
                    }
                    if self.operatingCount != nil {
                        map["OperatingCount"] = self.operatingCount!
                    }
                    if self.stoppedCount != nil {
                        map["StoppedCount"] = self.stoppedCount!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExceptionCount") {
                        self.exceptionCount = dict["ExceptionCount"] as! Int32
                    }
                    if dict.keys.contains("NormalCount") {
                        self.normalCount = dict["NormalCount"] as! Int32
                    }
                    if dict.keys.contains("OperatingCount") {
                        self.operatingCount = dict["OperatingCount"] as! Int32
                    }
                    if dict.keys.contains("StoppedCount") {
                        self.stoppedCount = dict["StoppedCount"] as! Int32
                    }
                    if dict.keys.contains("Total") {
                        self.total = dict["Total"] as! Int32
                    }
                }
            }
            public class Managers : Tea.TeaModel {
                public var exceptionCount: Int32?

                public var normalCount: Int32?

                public var operatingCount: Int32?

                public var stoppedCount: Int32?

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
                    if self.exceptionCount != nil {
                        map["ExceptionCount"] = self.exceptionCount!
                    }
                    if self.normalCount != nil {
                        map["NormalCount"] = self.normalCount!
                    }
                    if self.operatingCount != nil {
                        map["OperatingCount"] = self.operatingCount!
                    }
                    if self.stoppedCount != nil {
                        map["StoppedCount"] = self.stoppedCount!
                    }
                    if self.total != nil {
                        map["Total"] = self.total!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ExceptionCount") {
                        self.exceptionCount = dict["ExceptionCount"] as! Int32
                    }
                    if dict.keys.contains("NormalCount") {
                        self.normalCount = dict["NormalCount"] as! Int32
                    }
                    if dict.keys.contains("OperatingCount") {
                        self.operatingCount = dict["OperatingCount"] as! Int32
                    }
                    if dict.keys.contains("StoppedCount") {
                        self.stoppedCount = dict["StoppedCount"] as! Int32
                    }
                    if dict.keys.contains("Total") {
                        self.total = dict["Total"] as! Int32
                    }
                }
            }
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
            public class UsedResources : Tea.TeaModel {
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
            public var accountType: String?

            public var baseOsTag: String?

            public var clientVersion: String?

            public var computeSpotPriceLimit: Double?

            public var computeSpotStrategy: String?

            public var computes: ListClustersResponseBody.Clusters.ClusterInfoSimple.Computes?

            public var count: Int32?

            public var createTime: String?

            public var deployMode: String?

            public var description_: String?

            public var ehpcVersion: String?

            public var hasPlugin: Bool?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var instanceChargeType: String?

            public var instanceType: String?

            public var isComputeEss: Bool?

            public var location: String?

            public var loginNodes: String?

            public var managers: ListClustersResponseBody.Clusters.ClusterInfoSimple.Managers?

            public var name: String?

            public var nodePrefix: String?

            public var nodeSuffix: String?

            public var osTag: String?

            public var regionId: String?

            public var schedulerType: String?

            public var status: String?

            public var totalResources: ListClustersResponseBody.Clusters.ClusterInfoSimple.TotalResources?

            public var usedResources: ListClustersResponseBody.Clusters.ClusterInfoSimple.UsedResources?

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
                try self.computes?.validate()
                try self.managers?.validate()
                try self.totalResources?.validate()
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.baseOsTag != nil {
                    map["BaseOsTag"] = self.baseOsTag!
                }
                if self.clientVersion != nil {
                    map["ClientVersion"] = self.clientVersion!
                }
                if self.computeSpotPriceLimit != nil {
                    map["ComputeSpotPriceLimit"] = self.computeSpotPriceLimit!
                }
                if self.computeSpotStrategy != nil {
                    map["ComputeSpotStrategy"] = self.computeSpotStrategy!
                }
                if self.computes != nil {
                    map["Computes"] = self.computes?.toMap()
                }
                if self.count != nil {
                    map["Count"] = self.count!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.ehpcVersion != nil {
                    map["EhpcVersion"] = self.ehpcVersion!
                }
                if self.hasPlugin != nil {
                    map["HasPlugin"] = self.hasPlugin!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.instanceChargeType != nil {
                    map["InstanceChargeType"] = self.instanceChargeType!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.isComputeEss != nil {
                    map["IsComputeEss"] = self.isComputeEss!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.loginNodes != nil {
                    map["LoginNodes"] = self.loginNodes!
                }
                if self.managers != nil {
                    map["Managers"] = self.managers?.toMap()
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodePrefix != nil {
                    map["NodePrefix"] = self.nodePrefix!
                }
                if self.nodeSuffix != nil {
                    map["NodeSuffix"] = self.nodeSuffix!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.schedulerType != nil {
                    map["SchedulerType"] = self.schedulerType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.totalResources != nil {
                    map["TotalResources"] = self.totalResources?.toMap()
                }
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
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
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("BaseOsTag") {
                    self.baseOsTag = dict["BaseOsTag"] as! String
                }
                if dict.keys.contains("ClientVersion") {
                    self.clientVersion = dict["ClientVersion"] as! String
                }
                if dict.keys.contains("ComputeSpotPriceLimit") {
                    self.computeSpotPriceLimit = dict["ComputeSpotPriceLimit"] as! Double
                }
                if dict.keys.contains("ComputeSpotStrategy") {
                    self.computeSpotStrategy = dict["ComputeSpotStrategy"] as! String
                }
                if dict.keys.contains("Computes") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.Computes()
                    model.fromMap(dict["Computes"] as! [String: Any])
                    self.computes = model
                }
                if dict.keys.contains("Count") {
                    self.count = dict["Count"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("DeployMode") {
                    self.deployMode = dict["DeployMode"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("EhpcVersion") {
                    self.ehpcVersion = dict["EhpcVersion"] as! String
                }
                if dict.keys.contains("HasPlugin") {
                    self.hasPlugin = dict["HasPlugin"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("InstanceChargeType") {
                    self.instanceChargeType = dict["InstanceChargeType"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("IsComputeEss") {
                    self.isComputeEss = dict["IsComputeEss"] as! Bool
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("LoginNodes") {
                    self.loginNodes = dict["LoginNodes"] as! String
                }
                if dict.keys.contains("Managers") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.Managers()
                    model.fromMap(dict["Managers"] as! [String: Any])
                    self.managers = model
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodePrefix") {
                    self.nodePrefix = dict["NodePrefix"] as! String
                }
                if dict.keys.contains("NodeSuffix") {
                    self.nodeSuffix = dict["NodeSuffix"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("SchedulerType") {
                    self.schedulerType = dict["SchedulerType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("TotalResources") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListClustersResponseBody.Clusters.ClusterInfoSimple.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
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
        public var clusterInfoSimple: [ListClustersResponseBody.Clusters.ClusterInfoSimple]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterInfoSimple != nil {
                var tmp : [Any] = []
                for k in self.clusterInfoSimple! {
                    tmp.append(k.toMap())
                }
                map["ClusterInfoSimple"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterInfoSimple") {
                self.clusterInfoSimple = dict["ClusterInfoSimple"] as! [ListClustersResponseBody.Clusters.ClusterInfoSimple]
            }
        }
    }
    public var clusters: ListClustersResponseBody.Clusters?

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
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
            var model = ListClustersResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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

public class ListClustersMetaRequest : Tea.TeaModel {
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

public class ListClustersMetaResponseBody : Tea.TeaModel {
    public class Clusters : Tea.TeaModel {
        public class ClusterInfoSimple : Tea.TeaModel {
            public var accountType: String?

            public var clientVersion: String?

            public var deployMode: String?

            public var description_: String?

            public var hasPlugin: Bool?

            public var id: String?

            public var isComputeEss: Bool?

            public var location: String?

            public var name: String?

            public var osTag: String?

            public var schedulerType: String?

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
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.clientVersion != nil {
                    map["ClientVersion"] = self.clientVersion!
                }
                if self.deployMode != nil {
                    map["DeployMode"] = self.deployMode!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.hasPlugin != nil {
                    map["HasPlugin"] = self.hasPlugin!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.isComputeEss != nil {
                    map["IsComputeEss"] = self.isComputeEss!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.schedulerType != nil {
                    map["SchedulerType"] = self.schedulerType!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.vpcId != nil {
                    map["VpcId"] = self.vpcId!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("ClientVersion") {
                    self.clientVersion = dict["ClientVersion"] as! String
                }
                if dict.keys.contains("DeployMode") {
                    self.deployMode = dict["DeployMode"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("HasPlugin") {
                    self.hasPlugin = dict["HasPlugin"] as! Bool
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("IsComputeEss") {
                    self.isComputeEss = dict["IsComputeEss"] as! Bool
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("SchedulerType") {
                    self.schedulerType = dict["SchedulerType"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
            }
        }
        public var clusterInfoSimple: [ListClustersMetaResponseBody.Clusters.ClusterInfoSimple]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.clusterInfoSimple != nil {
                var tmp : [Any] = []
                for k in self.clusterInfoSimple! {
                    tmp.append(k.toMap())
                }
                map["ClusterInfoSimple"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterInfoSimple") {
                self.clusterInfoSimple = dict["ClusterInfoSimple"] as! [ListClustersMetaResponseBody.Clusters.ClusterInfoSimple]
            }
        }
    }
    public var clusters: ListClustersMetaResponseBody.Clusters?

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
        try self.clusters?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.clusters != nil {
            map["Clusters"] = self.clusters?.toMap()
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
            var model = ListClustersMetaResponseBody.Clusters()
            model.fromMap(dict["Clusters"] as! [String: Any])
            self.clusters = model
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

public class ListClustersMetaResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListClustersMetaResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListClustersMetaResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCommandsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var commandId: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
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
        if dict.keys.contains("CommandId") {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListCommandsResponseBody : Tea.TeaModel {
    public class Commands : Tea.TeaModel {
        public class Command : Tea.TeaModel {
            public var commandContent: String?

            public var commandId: String?

            public var timeout: String?

            public var workingDir: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.commandContent != nil {
                    map["CommandContent"] = self.commandContent!
                }
                if self.commandId != nil {
                    map["CommandId"] = self.commandId!
                }
                if self.timeout != nil {
                    map["Timeout"] = self.timeout!
                }
                if self.workingDir != nil {
                    map["WorkingDir"] = self.workingDir!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommandContent") {
                    self.commandContent = dict["CommandContent"] as! String
                }
                if dict.keys.contains("CommandId") {
                    self.commandId = dict["CommandId"] as! String
                }
                if dict.keys.contains("Timeout") {
                    self.timeout = dict["Timeout"] as! String
                }
                if dict.keys.contains("WorkingDir") {
                    self.workingDir = dict["WorkingDir"] as! String
                }
            }
        }
        public var command: [ListCommandsResponseBody.Commands.Command]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.command != nil {
                var tmp : [Any] = []
                for k in self.command! {
                    tmp.append(k.toMap())
                }
                map["Command"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Command") {
                self.command = dict["Command"] as! [ListCommandsResponseBody.Commands.Command]
            }
        }
    }
    public var commands: ListCommandsResponseBody.Commands?

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
        try self.commands?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commands != nil {
            map["Commands"] = self.commands?.toMap()
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
        if dict.keys.contains("Commands") {
            var model = ListCommandsResponseBody.Commands()
            model.fromMap(dict["Commands"] as! [String: Any])
            self.commands = model
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

public class ListCommandsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommandsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCommandsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCommunityImagesRequest : Tea.TeaModel {
    public var baseOsTag: String?

    public var clusterId: String?

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
        if self.baseOsTag != nil {
            map["BaseOsTag"] = self.baseOsTag!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseOsTag") {
            self.baseOsTag = dict["BaseOsTag"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class ListCommunityImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class ImageInfo : Tea.TeaModel {
            public class BaseOsTag : Tea.TeaModel {
                public var architecture: String?

                public var osTag: String?

                public var platform: String?

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
                        map["Architecture"] = self.architecture!
                    }
                    if self.osTag != nil {
                        map["OsTag"] = self.osTag!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
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
                    if dict.keys.contains("Platform") {
                        self.platform = dict["Platform"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public class OsTag : Tea.TeaModel {
                public var architecture: String?

                public var baseOsTag: String?

                public var osTag: String?

                public var platform: String?

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
                        map["Architecture"] = self.architecture!
                    }
                    if self.baseOsTag != nil {
                        map["BaseOsTag"] = self.baseOsTag!
                    }
                    if self.osTag != nil {
                        map["OsTag"] = self.osTag!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Architecture") {
                        self.architecture = dict["Architecture"] as! String
                    }
                    if dict.keys.contains("BaseOsTag") {
                        self.baseOsTag = dict["BaseOsTag"] as! String
                    }
                    if dict.keys.contains("OsTag") {
                        self.osTag = dict["OsTag"] as! String
                    }
                    if dict.keys.contains("Platform") {
                        self.platform = dict["Platform"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var baseOsTag: ListCommunityImagesResponseBody.Images.ImageInfo.BaseOsTag?

            public var description_: String?

            public var imageId: String?

            public var imageName: String?

            public var imageOwnerAlias: String?

            public var osTag: ListCommunityImagesResponseBody.Images.ImageInfo.OsTag?

            public var postInstallScript: String?

            public var pricingCycle: String?

            public var productCode: String?

            public var size: Int32?

            public var skuCode: String?

            public var status: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.baseOsTag?.validate()
                try self.osTag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseOsTag != nil {
                    map["BaseOsTag"] = self.baseOsTag?.toMap()
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
                if self.osTag != nil {
                    map["OsTag"] = self.osTag?.toMap()
                }
                if self.postInstallScript != nil {
                    map["PostInstallScript"] = self.postInstallScript!
                }
                if self.pricingCycle != nil {
                    map["PricingCycle"] = self.pricingCycle!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.skuCode != nil {
                    map["SkuCode"] = self.skuCode!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseOsTag") {
                    var model = ListCommunityImagesResponseBody.Images.ImageInfo.BaseOsTag()
                    model.fromMap(dict["BaseOsTag"] as! [String: Any])
                    self.baseOsTag = model
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
                if dict.keys.contains("OsTag") {
                    var model = ListCommunityImagesResponseBody.Images.ImageInfo.OsTag()
                    model.fromMap(dict["OsTag"] as! [String: Any])
                    self.osTag = model
                }
                if dict.keys.contains("PostInstallScript") {
                    self.postInstallScript = dict["PostInstallScript"] as! String
                }
                if dict.keys.contains("PricingCycle") {
                    self.pricingCycle = dict["PricingCycle"] as! String
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("SkuCode") {
                    self.skuCode = dict["SkuCode"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! String
                }
            }
        }
        public var imageInfo: [ListCommunityImagesResponseBody.Images.ImageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageInfo != nil {
                var tmp : [Any] = []
                for k in self.imageInfo! {
                    tmp.append(k.toMap())
                }
                map["ImageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageInfo") {
                self.imageInfo = dict["ImageInfo"] as! [ListCommunityImagesResponseBody.Images.ImageInfo]
            }
        }
    }
    public var images: ListCommunityImagesResponseBody.Images?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            map["Images"] = self.images?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var model = ListCommunityImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCommunityImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCommunityImagesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCommunityImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListContainerAppsRequest : Tea.TeaModel {
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

public class ListContainerAppsResponseBody : Tea.TeaModel {
    public class ContainerApps : Tea.TeaModel {
        public class ContainerApps : Tea.TeaModel {
            public var createTime: String?

            public var description_: String?

            public var id: String?

            public var imageTag: String?

            public var name: String?

            public var repository: String?

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
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.description_ != nil {
                    map["Description"] = self.description_!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.imageTag != nil {
                    map["ImageTag"] = self.imageTag!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.repository != nil {
                    map["Repository"] = self.repository!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Description") {
                    self.description_ = dict["Description"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("ImageTag") {
                    self.imageTag = dict["ImageTag"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Repository") {
                    self.repository = dict["Repository"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var containerApps: [ListContainerAppsResponseBody.ContainerApps.ContainerApps]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.containerApps != nil {
                var tmp : [Any] = []
                for k in self.containerApps! {
                    tmp.append(k.toMap())
                }
                map["ContainerApps"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ContainerApps") {
                self.containerApps = dict["ContainerApps"] as! [ListContainerAppsResponseBody.ContainerApps.ContainerApps]
            }
        }
    }
    public var containerApps: ListContainerAppsResponseBody.ContainerApps?

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
        try self.containerApps?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerApps != nil {
            map["ContainerApps"] = self.containerApps?.toMap()
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
        if dict.keys.contains("ContainerApps") {
            var model = ListContainerAppsResponseBody.ContainerApps()
            model.fromMap(dict["ContainerApps"] as! [String: Any])
            self.containerApps = model
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

public class ListContainerAppsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContainerAppsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListContainerAppsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListContainerImagesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
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
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListContainerImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class Images : Tea.TeaModel {
            public var imageId: String?

            public var repository: String?

            public var status: String?

            public var system: String?

            public var tag: String?

            public var type: String?

            public var updateDateTime: String?

            public override init() {
                super.init()
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
                if self.repository != nil {
                    map["Repository"] = self.repository!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.system != nil {
                    map["System"] = self.system!
                }
                if self.tag != nil {
                    map["Tag"] = self.tag!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                if self.updateDateTime != nil {
                    map["UpdateDateTime"] = self.updateDateTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("Repository") {
                    self.repository = dict["Repository"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("System") {
                    self.system = dict["System"] as! String
                }
                if dict.keys.contains("Tag") {
                    self.tag = dict["Tag"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
                if dict.keys.contains("UpdateDateTime") {
                    self.updateDateTime = dict["UpdateDateTime"] as! String
                }
            }
        }
        public var images: [ListContainerImagesResponseBody.Images.Images]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Images") {
                self.images = dict["Images"] as! [ListContainerImagesResponseBody.Images.Images]
            }
        }
    }
    public var DBInfo: String?

    public var images: ListContainerImagesResponseBody.Images?

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
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.DBInfo != nil {
            map["DBInfo"] = self.DBInfo!
        }
        if self.images != nil {
            map["Images"] = self.images?.toMap()
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
        if dict.keys.contains("DBInfo") {
            self.DBInfo = dict["DBInfo"] as! String
        }
        if dict.keys.contains("Images") {
            var model = ListContainerImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
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

public class ListContainerImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListContainerImagesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListContainerImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCpfsFileSystemsRequest : Tea.TeaModel {
    public var fileSystemId: String?

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
        if self.fileSystemId != nil {
            map["FileSystemId"] = self.fileSystemId!
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
        if dict.keys.contains("FileSystemId") {
            self.fileSystemId = dict["FileSystemId"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListCpfsFileSystemsResponseBody : Tea.TeaModel {
    public class FileSystemList : Tea.TeaModel {
        public class FileSystems : Tea.TeaModel {
            public class MountTargetList : Tea.TeaModel {
                public class MountTargets : Tea.TeaModel {
                    public var mountTargetDomain: String?

                    public var networkType: String?

                    public var status: String?

                    public var vpcId: String?

                    public var vswId: String?

                    public override init() {
                        super.init()
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
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vswId != nil {
                            map["VswId"] = self.vswId!
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
                        if dict.keys.contains("VpcId") {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VswId") {
                            self.vswId = dict["VswId"] as! String
                        }
                    }
                }
                public var mountTargets: [ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems.MountTargetList.MountTargets]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountTargets != nil {
                        var tmp : [Any] = []
                        for k in self.mountTargets! {
                            tmp.append(k.toMap())
                        }
                        map["MountTargets"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MountTargets") {
                        self.mountTargets = dict["MountTargets"] as! [ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems.MountTargetList.MountTargets]
                    }
                }
            }
            public var capacity: String?

            public var createTime: String?

            public var destription: String?

            public var fileSystemId: String?

            public var mountTargetList: ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems.MountTargetList?

            public var protocolType: String?

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
                try self.mountTargetList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.destription != nil {
                    map["Destription"] = self.destription!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.mountTargetList != nil {
                    map["MountTargetList"] = self.mountTargetList?.toMap()
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
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
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! String
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Destription") {
                    self.destription = dict["Destription"] as! String
                }
                if dict.keys.contains("FileSystemId") {
                    self.fileSystemId = dict["FileSystemId"] as! String
                }
                if dict.keys.contains("MountTargetList") {
                    var model = ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems.MountTargetList()
                    model.fromMap(dict["MountTargetList"] as! [String: Any])
                    self.mountTargetList = model
                }
                if dict.keys.contains("ProtocolType") {
                    self.protocolType = dict["ProtocolType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var fileSystems: [ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileSystems") {
                self.fileSystems = dict["FileSystems"] as! [ListCpfsFileSystemsResponseBody.FileSystemList.FileSystems]
            }
        }
    }
    public var fileSystemList: ListCpfsFileSystemsResponseBody.FileSystemList?

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
        try self.fileSystemList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemList != nil {
            map["FileSystemList"] = self.fileSystemList?.toMap()
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
            var model = ListCpfsFileSystemsResponseBody.FileSystemList()
            model.fromMap(dict["FileSystemList"] as! [String: Any])
            self.fileSystemList = model
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

public class ListCpfsFileSystemsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCpfsFileSystemsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCpfsFileSystemsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCurrentClientVersionResponseBody : Tea.TeaModel {
    public var clientVersion: String?

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
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCurrentClientVersionResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCurrentClientVersionResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCurrentClientVersionResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListCustomImagesRequest : Tea.TeaModel {
    public var baseOsTag: String?

    public var clusterId: String?

    public var imageOwnerAlias: String?

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
        if self.baseOsTag != nil {
            map["BaseOsTag"] = self.baseOsTag!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseOsTag") {
            self.baseOsTag = dict["BaseOsTag"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class ListCustomImagesResponseBody : Tea.TeaModel {
    public class Images : Tea.TeaModel {
        public class ImageInfo : Tea.TeaModel {
            public class BaseOsTag : Tea.TeaModel {
                public var architecture: String?

                public var osTag: String?

                public var platform: String?

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
                        map["Architecture"] = self.architecture!
                    }
                    if self.osTag != nil {
                        map["OsTag"] = self.osTag!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
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
                    if dict.keys.contains("Platform") {
                        self.platform = dict["Platform"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public class OsTag : Tea.TeaModel {
                public var architecture: String?

                public var baseOsTag: String?

                public var osTag: String?

                public var platform: String?

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
                        map["Architecture"] = self.architecture!
                    }
                    if self.baseOsTag != nil {
                        map["BaseOsTag"] = self.baseOsTag!
                    }
                    if self.osTag != nil {
                        map["OsTag"] = self.osTag!
                    }
                    if self.platform != nil {
                        map["Platform"] = self.platform!
                    }
                    if self.version != nil {
                        map["Version"] = self.version!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Architecture") {
                        self.architecture = dict["Architecture"] as! String
                    }
                    if dict.keys.contains("BaseOsTag") {
                        self.baseOsTag = dict["BaseOsTag"] as! String
                    }
                    if dict.keys.contains("OsTag") {
                        self.osTag = dict["OsTag"] as! String
                    }
                    if dict.keys.contains("Platform") {
                        self.platform = dict["Platform"] as! String
                    }
                    if dict.keys.contains("Version") {
                        self.version = dict["Version"] as! String
                    }
                }
            }
            public var baseOsTag: ListCustomImagesResponseBody.Images.ImageInfo.BaseOsTag?

            public var description_: String?

            public var imageId: String?

            public var imageName: String?

            public var imageOwnerAlias: String?

            public var osTag: ListCustomImagesResponseBody.Images.ImageInfo.OsTag?

            public var postInstallScript: String?

            public var pricingCycle: String?

            public var productCode: String?

            public var size: Int32?

            public var skuCode: String?

            public var status: String?

            public var uid: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.baseOsTag?.validate()
                try self.osTag?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.baseOsTag != nil {
                    map["BaseOsTag"] = self.baseOsTag?.toMap()
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
                if self.osTag != nil {
                    map["OsTag"] = self.osTag?.toMap()
                }
                if self.postInstallScript != nil {
                    map["PostInstallScript"] = self.postInstallScript!
                }
                if self.pricingCycle != nil {
                    map["PricingCycle"] = self.pricingCycle!
                }
                if self.productCode != nil {
                    map["ProductCode"] = self.productCode!
                }
                if self.size != nil {
                    map["Size"] = self.size!
                }
                if self.skuCode != nil {
                    map["SkuCode"] = self.skuCode!
                }
                if self.status != nil {
                    map["Status"] = self.status!
                }
                if self.uid != nil {
                    map["Uid"] = self.uid!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("BaseOsTag") {
                    var model = ListCustomImagesResponseBody.Images.ImageInfo.BaseOsTag()
                    model.fromMap(dict["BaseOsTag"] as! [String: Any])
                    self.baseOsTag = model
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
                if dict.keys.contains("OsTag") {
                    var model = ListCustomImagesResponseBody.Images.ImageInfo.OsTag()
                    model.fromMap(dict["OsTag"] as! [String: Any])
                    self.osTag = model
                }
                if dict.keys.contains("PostInstallScript") {
                    self.postInstallScript = dict["PostInstallScript"] as! String
                }
                if dict.keys.contains("PricingCycle") {
                    self.pricingCycle = dict["PricingCycle"] as! String
                }
                if dict.keys.contains("ProductCode") {
                    self.productCode = dict["ProductCode"] as! String
                }
                if dict.keys.contains("Size") {
                    self.size = dict["Size"] as! Int32
                }
                if dict.keys.contains("SkuCode") {
                    self.skuCode = dict["SkuCode"] as! String
                }
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
                if dict.keys.contains("Uid") {
                    self.uid = dict["Uid"] as! String
                }
            }
        }
        public var imageInfo: [ListCustomImagesResponseBody.Images.ImageInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.imageInfo != nil {
                var tmp : [Any] = []
                for k in self.imageInfo! {
                    tmp.append(k.toMap())
                }
                map["ImageInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ImageInfo") {
                self.imageInfo = dict["ImageInfo"] as! [ListCustomImagesResponseBody.Images.ImageInfo]
            }
        }
    }
    public var images: ListCustomImagesResponseBody.Images?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.images?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.images != nil {
            map["Images"] = self.images?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Images") {
            var model = ListCustomImagesResponseBody.Images()
            model.fromMap(dict["Images"] as! [String: Any])
            self.images = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListCustomImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListCustomImagesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListCustomImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListFileSystemWithMountTargetsRequest : Tea.TeaModel {
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

public class ListFileSystemWithMountTargetsResponseBody : Tea.TeaModel {
    public class FileSystemList : Tea.TeaModel {
        public class FileSystems : Tea.TeaModel {
            public class MountTargetList : Tea.TeaModel {
                public class MountTargets : Tea.TeaModel {
                    public var accessGroup: String?

                    public var mountTargetDomain: String?

                    public var networkType: String?

                    public var status: String?

                    public var vpcId: String?

                    public var vswId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.accessGroup != nil {
                            map["AccessGroup"] = self.accessGroup!
                        }
                        if self.mountTargetDomain != nil {
                            map["MountTargetDomain"] = self.mountTargetDomain!
                        }
                        if self.networkType != nil {
                            map["NetworkType"] = self.networkType!
                        }
                        if self.status != nil {
                            map["Status"] = self.status!
                        }
                        if self.vpcId != nil {
                            map["VpcId"] = self.vpcId!
                        }
                        if self.vswId != nil {
                            map["VswId"] = self.vswId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("AccessGroup") {
                            self.accessGroup = dict["AccessGroup"] as! String
                        }
                        if dict.keys.contains("MountTargetDomain") {
                            self.mountTargetDomain = dict["MountTargetDomain"] as! String
                        }
                        if dict.keys.contains("NetworkType") {
                            self.networkType = dict["NetworkType"] as! String
                        }
                        if dict.keys.contains("Status") {
                            self.status = dict["Status"] as! String
                        }
                        if dict.keys.contains("VpcId") {
                            self.vpcId = dict["VpcId"] as! String
                        }
                        if dict.keys.contains("VswId") {
                            self.vswId = dict["VswId"] as! String
                        }
                    }
                }
                public var mountTargets: [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.MountTargetList.MountTargets]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.mountTargets != nil {
                        var tmp : [Any] = []
                        for k in self.mountTargets! {
                            tmp.append(k.toMap())
                        }
                        map["MountTargets"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("MountTargets") {
                        self.mountTargets = dict["MountTargets"] as! [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.MountTargetList.MountTargets]
                    }
                }
            }
            public class PackageList : Tea.TeaModel {
                public class Packages : Tea.TeaModel {
                    public var packageId: String?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.packageId != nil {
                            map["PackageId"] = self.packageId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("PackageId") {
                            self.packageId = dict["PackageId"] as! String
                        }
                    }
                }
                public var packages: [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.PackageList.Packages]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.packages != nil {
                        var tmp : [Any] = []
                        for k in self.packages! {
                            tmp.append(k.toMap())
                        }
                        map["Packages"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Packages") {
                        self.packages = dict["Packages"] as! [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.PackageList.Packages]
                    }
                }
            }
            public var bandWidth: Int32?

            public var capacity: Int32?

            public var createTime: String?

            public var destription: String?

            public var encryptType: Int32?

            public var fileSystemId: String?

            public var fileSystemType: String?

            public var meteredSize: Int32?

            public var mountTargetList: ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.MountTargetList?

            public var packageList: ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.PackageList?

            public var protocolType: String?

            public var regionId: String?

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
                try self.mountTargetList?.validate()
                try self.packageList?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.bandWidth != nil {
                    map["BandWidth"] = self.bandWidth!
                }
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.createTime != nil {
                    map["CreateTime"] = self.createTime!
                }
                if self.destription != nil {
                    map["Destription"] = self.destription!
                }
                if self.encryptType != nil {
                    map["EncryptType"] = self.encryptType!
                }
                if self.fileSystemId != nil {
                    map["FileSystemId"] = self.fileSystemId!
                }
                if self.fileSystemType != nil {
                    map["FileSystemType"] = self.fileSystemType!
                }
                if self.meteredSize != nil {
                    map["MeteredSize"] = self.meteredSize!
                }
                if self.mountTargetList != nil {
                    map["MountTargetList"] = self.mountTargetList?.toMap()
                }
                if self.packageList != nil {
                    map["PackageList"] = self.packageList?.toMap()
                }
                if self.protocolType != nil {
                    map["ProtocolType"] = self.protocolType!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
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
                if dict.keys.contains("BandWidth") {
                    self.bandWidth = dict["BandWidth"] as! Int32
                }
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! Int32
                }
                if dict.keys.contains("CreateTime") {
                    self.createTime = dict["CreateTime"] as! String
                }
                if dict.keys.contains("Destription") {
                    self.destription = dict["Destription"] as! String
                }
                if dict.keys.contains("EncryptType") {
                    self.encryptType = dict["EncryptType"] as! Int32
                }
                if dict.keys.contains("FileSystemId") {
                    self.fileSystemId = dict["FileSystemId"] as! String
                }
                if dict.keys.contains("FileSystemType") {
                    self.fileSystemType = dict["FileSystemType"] as! String
                }
                if dict.keys.contains("MeteredSize") {
                    self.meteredSize = dict["MeteredSize"] as! Int32
                }
                if dict.keys.contains("MountTargetList") {
                    var model = ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.MountTargetList()
                    model.fromMap(dict["MountTargetList"] as! [String: Any])
                    self.mountTargetList = model
                }
                if dict.keys.contains("PackageList") {
                    var model = ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems.PackageList()
                    model.fromMap(dict["PackageList"] as! [String: Any])
                    self.packageList = model
                }
                if dict.keys.contains("ProtocolType") {
                    self.protocolType = dict["ProtocolType"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
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
        public var fileSystems: [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems]?

        public override init() {
            super.init()
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
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("FileSystems") {
                self.fileSystems = dict["FileSystems"] as! [ListFileSystemWithMountTargetsResponseBody.FileSystemList.FileSystems]
            }
        }
    }
    public var fileSystemList: ListFileSystemWithMountTargetsResponseBody.FileSystemList?

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
        try self.fileSystemList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.fileSystemList != nil {
            map["FileSystemList"] = self.fileSystemList?.toMap()
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
            var model = ListFileSystemWithMountTargetsResponseBody.FileSystemList()
            model.fromMap(dict["FileSystemList"] as! [String: Any])
            self.fileSystemList = model
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

public class ListFileSystemWithMountTargetsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListFileSystemWithMountTargetsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListFileSystemWithMountTargetsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListImagesRequest : Tea.TeaModel {
    public var baseOsTag: String?

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
        if self.baseOsTag != nil {
            map["BaseOsTag"] = self.baseOsTag!
        }
        if self.instanceType != nil {
            map["InstanceType"] = self.instanceType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("BaseOsTag") {
            self.baseOsTag = dict["BaseOsTag"] as! String
        }
        if dict.keys.contains("InstanceType") {
            self.instanceType = dict["InstanceType"] as! String
        }
    }
}

public class ListImagesResponseBody : Tea.TeaModel {
    public class OsTags : Tea.TeaModel {
        public class OsInfo : Tea.TeaModel {
            public var architecture: String?

            public var baseOsTag: String?

            public var imageId: String?

            public var osTag: String?

            public var platform: String?

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
                    map["Architecture"] = self.architecture!
                }
                if self.baseOsTag != nil {
                    map["BaseOsTag"] = self.baseOsTag!
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
                if self.version != nil {
                    map["Version"] = self.version!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Architecture") {
                    self.architecture = dict["Architecture"] as! String
                }
                if dict.keys.contains("BaseOsTag") {
                    self.baseOsTag = dict["BaseOsTag"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("Platform") {
                    self.platform = dict["Platform"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
            }
        }
        public var osInfo: [ListImagesResponseBody.OsTags.OsInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.osInfo != nil {
                var tmp : [Any] = []
                for k in self.osInfo! {
                    tmp.append(k.toMap())
                }
                map["OsInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("OsInfo") {
                self.osInfo = dict["OsInfo"] as! [ListImagesResponseBody.OsTags.OsInfo]
            }
        }
    }
    public var osTags: ListImagesResponseBody.OsTags?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.osTags?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.osTags != nil {
            map["OsTags"] = self.osTags?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("OsTags") {
            var model = ListImagesResponseBody.OsTags()
            model.fromMap(dict["OsTags"] as! [String: Any])
            self.osTags = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInstalledSoftwareRequest : Tea.TeaModel {
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

public class ListInstalledSoftwareResponseBody : Tea.TeaModel {
    public class SoftwareList : Tea.TeaModel {
        public class SoftwareList : Tea.TeaModel {
            public var softwareId: String?

            public var softwareName: String?

            public var softwareStatus: String?

            public var softwareVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.softwareId != nil {
                    map["SoftwareId"] = self.softwareId!
                }
                if self.softwareName != nil {
                    map["SoftwareName"] = self.softwareName!
                }
                if self.softwareStatus != nil {
                    map["SoftwareStatus"] = self.softwareStatus!
                }
                if self.softwareVersion != nil {
                    map["SoftwareVersion"] = self.softwareVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("SoftwareId") {
                    self.softwareId = dict["SoftwareId"] as! String
                }
                if dict.keys.contains("SoftwareName") {
                    self.softwareName = dict["SoftwareName"] as! String
                }
                if dict.keys.contains("SoftwareStatus") {
                    self.softwareStatus = dict["SoftwareStatus"] as! String
                }
                if dict.keys.contains("SoftwareVersion") {
                    self.softwareVersion = dict["SoftwareVersion"] as! String
                }
            }
        }
        public var softwareList: [ListInstalledSoftwareResponseBody.SoftwareList.SoftwareList]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.softwareList != nil {
                var tmp : [Any] = []
                for k in self.softwareList! {
                    tmp.append(k.toMap())
                }
                map["SoftwareList"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SoftwareList") {
                self.softwareList = dict["SoftwareList"] as! [ListInstalledSoftwareResponseBody.SoftwareList.SoftwareList]
            }
        }
    }
    public var requestId: String?

    public var softwareList: ListInstalledSoftwareResponseBody.SoftwareList?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.softwareList?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.softwareList != nil {
            map["SoftwareList"] = self.softwareList?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SoftwareList") {
            var model = ListInstalledSoftwareResponseBody.SoftwareList()
            model.fromMap(dict["SoftwareList"] as! [String: Any])
            self.softwareList = model
        }
    }
}

public class ListInstalledSoftwareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInstalledSoftwareResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInstalledSoftwareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInvocationResultsRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var commandId: String?

    public var instance: [ListInvocationResultsRequest.Instance]?

    public var invokeRecordStatus: String?

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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.invokeRecordStatus != nil {
            map["InvokeRecordStatus"] = self.invokeRecordStatus!
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
        if dict.keys.contains("CommandId") {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [ListInvocationResultsRequest.Instance]
        }
        if dict.keys.contains("InvokeRecordStatus") {
            self.invokeRecordStatus = dict["InvokeRecordStatus"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListInvocationResultsResponseBody : Tea.TeaModel {
    public class InvocationResults : Tea.TeaModel {
        public class InvocationResult : Tea.TeaModel {
            public var commandId: String?

            public var exitCode: Int32?

            public var finishedTime: String?

            public var instanceId: String?

            public var invokeRecordStatus: String?

            public var message: String?

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
                if self.commandId != nil {
                    map["CommandId"] = self.commandId!
                }
                if self.exitCode != nil {
                    map["ExitCode"] = self.exitCode!
                }
                if self.finishedTime != nil {
                    map["FinishedTime"] = self.finishedTime!
                }
                if self.instanceId != nil {
                    map["InstanceId"] = self.instanceId!
                }
                if self.invokeRecordStatus != nil {
                    map["InvokeRecordStatus"] = self.invokeRecordStatus!
                }
                if self.message != nil {
                    map["Message"] = self.message!
                }
                if self.success != nil {
                    map["Success"] = self.success!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("CommandId") {
                    self.commandId = dict["CommandId"] as! String
                }
                if dict.keys.contains("ExitCode") {
                    self.exitCode = dict["ExitCode"] as! Int32
                }
                if dict.keys.contains("FinishedTime") {
                    self.finishedTime = dict["FinishedTime"] as! String
                }
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InvokeRecordStatus") {
                    self.invokeRecordStatus = dict["InvokeRecordStatus"] as! String
                }
                if dict.keys.contains("Message") {
                    self.message = dict["Message"] as! String
                }
                if dict.keys.contains("Success") {
                    self.success = dict["Success"] as! Bool
                }
            }
        }
        public var invocationResult: [ListInvocationResultsResponseBody.InvocationResults.InvocationResult]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invocationResult != nil {
                var tmp : [Any] = []
                for k in self.invocationResult! {
                    tmp.append(k.toMap())
                }
                map["InvocationResult"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InvocationResult") {
                self.invocationResult = dict["InvocationResult"] as! [ListInvocationResultsResponseBody.InvocationResults.InvocationResult]
            }
        }
    }
    public var invocationResults: ListInvocationResultsResponseBody.InvocationResults?

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
        try self.invocationResults?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.invocationResults != nil {
            map["InvocationResults"] = self.invocationResults?.toMap()
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
        if dict.keys.contains("InvocationResults") {
            var model = ListInvocationResultsResponseBody.InvocationResults()
            model.fromMap(dict["InvocationResults"] as! [String: Any])
            self.invocationResults = model
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

public class ListInvocationResultsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInvocationResultsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInvocationResultsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListInvocationStatusRequest : Tea.TeaModel {
    public var clusterId: String?

    public var commandId: String?

    public override init() {
        super.init()
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
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CommandId") {
            self.commandId = dict["CommandId"] as! String
        }
    }
}

public class ListInvocationStatusResponseBody : Tea.TeaModel {
    public class InvokeInstances : Tea.TeaModel {
        public class InvokeInstance : Tea.TeaModel {
            public var instanceId: String?

            public var instanceInvokeStatus: String?

            public override init() {
                super.init()
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
                if self.instanceInvokeStatus != nil {
                    map["InstanceInvokeStatus"] = self.instanceInvokeStatus!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("InstanceId") {
                    self.instanceId = dict["InstanceId"] as! String
                }
                if dict.keys.contains("InstanceInvokeStatus") {
                    self.instanceInvokeStatus = dict["InstanceInvokeStatus"] as! String
                }
            }
        }
        public var invokeInstance: [ListInvocationStatusResponseBody.InvokeInstances.InvokeInstance]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.invokeInstance != nil {
                var tmp : [Any] = []
                for k in self.invokeInstance! {
                    tmp.append(k.toMap())
                }
                map["InvokeInstance"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("InvokeInstance") {
                self.invokeInstance = dict["InvokeInstance"] as! [ListInvocationStatusResponseBody.InvokeInstances.InvokeInstance]
            }
        }
    }
    public var commandId: String?

    public var invokeInstances: ListInvocationStatusResponseBody.InvokeInstances?

    public var invokeStatus: String?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.invokeInstances?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.commandId != nil {
            map["CommandId"] = self.commandId!
        }
        if self.invokeInstances != nil {
            map["InvokeInstances"] = self.invokeInstances?.toMap()
        }
        if self.invokeStatus != nil {
            map["InvokeStatus"] = self.invokeStatus!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CommandId") {
            self.commandId = dict["CommandId"] as! String
        }
        if dict.keys.contains("InvokeInstances") {
            var model = ListInvocationStatusResponseBody.InvokeInstances()
            model.fromMap(dict["InvokeInstances"] as! [String: Any])
            self.invokeInstances = model
        }
        if dict.keys.contains("InvokeStatus") {
            self.invokeStatus = dict["InvokeStatus"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListInvocationStatusResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListInvocationStatusResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListInvocationStatusResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobTemplatesRequest : Tea.TeaModel {
    public var name: String?

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
        if self.name != nil {
            map["Name"] = self.name!
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
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
    }
}

public class ListJobTemplatesResponseBody : Tea.TeaModel {
    public class Templates : Tea.TeaModel {
        public class JobTemplates : Tea.TeaModel {
            public var arrayRequest: String?

            public var clockTime: String?

            public var commandLine: String?

            public var gpu: Int32?

            public var id: String?

            public var inputFileUrl: String?

            public var mem: String?

            public var name: String?

            public var node: Int32?

            public var packagePath: String?

            public var priority: Int32?

            public var queue: String?

            public var reRunable: Bool?

            public var runasUser: String?

            public var stderrRedirectPath: String?

            public var stdoutRedirectPath: String?

            public var task: Int32?

            public var thread: Int32?

            public var unzipCmd: String?

            public var variables: String?

            public var withUnzipCmd: Bool?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.arrayRequest != nil {
                    map["ArrayRequest"] = self.arrayRequest!
                }
                if self.clockTime != nil {
                    map["ClockTime"] = self.clockTime!
                }
                if self.commandLine != nil {
                    map["CommandLine"] = self.commandLine!
                }
                if self.gpu != nil {
                    map["Gpu"] = self.gpu!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.inputFileUrl != nil {
                    map["InputFileUrl"] = self.inputFileUrl!
                }
                if self.mem != nil {
                    map["Mem"] = self.mem!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.node != nil {
                    map["Node"] = self.node!
                }
                if self.packagePath != nil {
                    map["PackagePath"] = self.packagePath!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.queue != nil {
                    map["Queue"] = self.queue!
                }
                if self.reRunable != nil {
                    map["ReRunable"] = self.reRunable!
                }
                if self.runasUser != nil {
                    map["RunasUser"] = self.runasUser!
                }
                if self.stderrRedirectPath != nil {
                    map["StderrRedirectPath"] = self.stderrRedirectPath!
                }
                if self.stdoutRedirectPath != nil {
                    map["StdoutRedirectPath"] = self.stdoutRedirectPath!
                }
                if self.task != nil {
                    map["Task"] = self.task!
                }
                if self.thread != nil {
                    map["Thread"] = self.thread!
                }
                if self.unzipCmd != nil {
                    map["UnzipCmd"] = self.unzipCmd!
                }
                if self.variables != nil {
                    map["Variables"] = self.variables!
                }
                if self.withUnzipCmd != nil {
                    map["WithUnzipCmd"] = self.withUnzipCmd!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayRequest") {
                    self.arrayRequest = dict["ArrayRequest"] as! String
                }
                if dict.keys.contains("ClockTime") {
                    self.clockTime = dict["ClockTime"] as! String
                }
                if dict.keys.contains("CommandLine") {
                    self.commandLine = dict["CommandLine"] as! String
                }
                if dict.keys.contains("Gpu") {
                    self.gpu = dict["Gpu"] as! Int32
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("InputFileUrl") {
                    self.inputFileUrl = dict["InputFileUrl"] as! String
                }
                if dict.keys.contains("Mem") {
                    self.mem = dict["Mem"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("Node") {
                    self.node = dict["Node"] as! Int32
                }
                if dict.keys.contains("PackagePath") {
                    self.packagePath = dict["PackagePath"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! Int32
                }
                if dict.keys.contains("Queue") {
                    self.queue = dict["Queue"] as! String
                }
                if dict.keys.contains("ReRunable") {
                    self.reRunable = dict["ReRunable"] as! Bool
                }
                if dict.keys.contains("RunasUser") {
                    self.runasUser = dict["RunasUser"] as! String
                }
                if dict.keys.contains("StderrRedirectPath") {
                    self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
                }
                if dict.keys.contains("StdoutRedirectPath") {
                    self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
                }
                if dict.keys.contains("Task") {
                    self.task = dict["Task"] as! Int32
                }
                if dict.keys.contains("Thread") {
                    self.thread = dict["Thread"] as! Int32
                }
                if dict.keys.contains("UnzipCmd") {
                    self.unzipCmd = dict["UnzipCmd"] as! String
                }
                if dict.keys.contains("Variables") {
                    self.variables = dict["Variables"] as! String
                }
                if dict.keys.contains("WithUnzipCmd") {
                    self.withUnzipCmd = dict["WithUnzipCmd"] as! Bool
                }
            }
        }
        public var jobTemplates: [ListJobTemplatesResponseBody.Templates.JobTemplates]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobTemplates != nil {
                var tmp : [Any] = []
                for k in self.jobTemplates! {
                    tmp.append(k.toMap())
                }
                map["JobTemplates"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobTemplates") {
                self.jobTemplates = dict["JobTemplates"] as! [ListJobTemplatesResponseBody.Templates.JobTemplates]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var templates: ListJobTemplatesResponseBody.Templates?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.templates?.validate()
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
        if self.templates != nil {
            map["Templates"] = self.templates?.toMap()
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
        if dict.keys.contains("Templates") {
            var model = ListJobTemplatesResponseBody.Templates()
            model.fromMap(dict["Templates"] as! [String: Any])
            self.templates = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListJobTemplatesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobTemplatesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobTemplatesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var owner: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var rerunable: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.owner != nil {
            map["Owner"] = self.owner!
        }
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.rerunable != nil {
            map["Rerunable"] = self.rerunable!
        }
        if self.state != nil {
            map["State"] = self.state!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Owner") {
            self.owner = dict["Owner"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("Rerunable") {
            self.rerunable = dict["Rerunable"] as! String
        }
        if dict.keys.contains("State") {
            self.state = dict["State"] as! String
        }
    }
}

public class ListJobsResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class JobInfo : Tea.TeaModel {
            public class Resources : Tea.TeaModel {
                public var cores: Int32?

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
                    if self.nodes != nil {
                        map["Nodes"] = self.nodes!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Cores") {
                        self.cores = dict["Cores"] as! Int32
                    }
                    if dict.keys.contains("Nodes") {
                        self.nodes = dict["Nodes"] as! Int32
                    }
                }
            }
            public var arrayRequest: String?

            public var comment: String?

            public var id: String?

            public var lastModifyTime: String?

            public var name: String?

            public var nodeList: String?

            public var owner: String?

            public var priority: String?

            public var resources: ListJobsResponseBody.Jobs.JobInfo.Resources?

            public var shellPath: String?

            public var startTime: String?

            public var state: String?

            public var stderr: String?

            public var stdout: String?

            public var submitTime: String?

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
                if self.comment != nil {
                    map["Comment"] = self.comment!
                }
                if self.id != nil {
                    map["Id"] = self.id!
                }
                if self.lastModifyTime != nil {
                    map["LastModifyTime"] = self.lastModifyTime!
                }
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.nodeList != nil {
                    map["NodeList"] = self.nodeList!
                }
                if self.owner != nil {
                    map["Owner"] = self.owner!
                }
                if self.priority != nil {
                    map["Priority"] = self.priority!
                }
                if self.resources != nil {
                    map["Resources"] = self.resources?.toMap()
                }
                if self.shellPath != nil {
                    map["ShellPath"] = self.shellPath!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                if self.state != nil {
                    map["State"] = self.state!
                }
                if self.stderr != nil {
                    map["Stderr"] = self.stderr!
                }
                if self.stdout != nil {
                    map["Stdout"] = self.stdout!
                }
                if self.submitTime != nil {
                    map["SubmitTime"] = self.submitTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ArrayRequest") {
                    self.arrayRequest = dict["ArrayRequest"] as! String
                }
                if dict.keys.contains("Comment") {
                    self.comment = dict["Comment"] as! String
                }
                if dict.keys.contains("Id") {
                    self.id = dict["Id"] as! String
                }
                if dict.keys.contains("LastModifyTime") {
                    self.lastModifyTime = dict["LastModifyTime"] as! String
                }
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("NodeList") {
                    self.nodeList = dict["NodeList"] as! String
                }
                if dict.keys.contains("Owner") {
                    self.owner = dict["Owner"] as! String
                }
                if dict.keys.contains("Priority") {
                    self.priority = dict["Priority"] as! String
                }
                if dict.keys.contains("Resources") {
                    var model = ListJobsResponseBody.Jobs.JobInfo.Resources()
                    model.fromMap(dict["Resources"] as! [String: Any])
                    self.resources = model
                }
                if dict.keys.contains("ShellPath") {
                    self.shellPath = dict["ShellPath"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! String
                }
                if dict.keys.contains("State") {
                    self.state = dict["State"] as! String
                }
                if dict.keys.contains("Stderr") {
                    self.stderr = dict["Stderr"] as! String
                }
                if dict.keys.contains("Stdout") {
                    self.stdout = dict["Stdout"] as! String
                }
                if dict.keys.contains("SubmitTime") {
                    self.submitTime = dict["SubmitTime"] as! String
                }
            }
        }
        public var jobInfo: [ListJobsResponseBody.Jobs.JobInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.jobInfo != nil {
                var tmp : [Any] = []
                for k in self.jobInfo! {
                    tmp.append(k.toMap())
                }
                map["JobInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobInfo") {
                self.jobInfo = dict["JobInfo"] as! [ListJobsResponseBody.Jobs.JobInfo]
            }
        }
    }
    public var jobs: ListJobsResponseBody.Jobs?

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
        try self.jobs?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.jobs != nil {
            map["Jobs"] = self.jobs?.toMap()
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
        if dict.keys.contains("Jobs") {
            var model = ListJobsResponseBody.Jobs()
            model.fromMap(dict["Jobs"] as! [String: Any])
            self.jobs = model
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListJobsWithFiltersRequest : Tea.TeaModel {
    public var async: Bool?

    public var clusterId: String?

    public var createTimeEnd: String?

    public var createTimeStart: String?

    public var executeOrder: String?

    public var jobName: String?

    public var jobStatus: String?

    public var nodes: [String]?

    public var pageNumber: Int64?

    public var pageSize: Int64?

    public var pendOrder: String?

    public var queues: [String]?

    public var regionId: String?

    public var submitOrder: String?

    public var users: [String]?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.async != nil {
            map["Async"] = self.async!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.createTimeEnd != nil {
            map["CreateTimeEnd"] = self.createTimeEnd!
        }
        if self.createTimeStart != nil {
            map["CreateTimeStart"] = self.createTimeStart!
        }
        if self.executeOrder != nil {
            map["ExecuteOrder"] = self.executeOrder!
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
        if self.pageNumber != nil {
            map["PageNumber"] = self.pageNumber!
        }
        if self.pageSize != nil {
            map["PageSize"] = self.pageSize!
        }
        if self.pendOrder != nil {
            map["PendOrder"] = self.pendOrder!
        }
        if self.queues != nil {
            map["Queues"] = self.queues!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.submitOrder != nil {
            map["SubmitOrder"] = self.submitOrder!
        }
        if self.users != nil {
            map["Users"] = self.users!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Async") {
            self.async = dict["Async"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CreateTimeEnd") {
            self.createTimeEnd = dict["CreateTimeEnd"] as! String
        }
        if dict.keys.contains("CreateTimeStart") {
            self.createTimeStart = dict["CreateTimeStart"] as! String
        }
        if dict.keys.contains("ExecuteOrder") {
            self.executeOrder = dict["ExecuteOrder"] as! String
        }
        if dict.keys.contains("JobName") {
            self.jobName = dict["JobName"] as! String
        }
        if dict.keys.contains("JobStatus") {
            self.jobStatus = dict["JobStatus"] as! String
        }
        if dict.keys.contains("Nodes") {
            self.nodes = dict["Nodes"] as! [String]
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int64
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int64
        }
        if dict.keys.contains("PendOrder") {
            self.pendOrder = dict["PendOrder"] as! String
        }
        if dict.keys.contains("Queues") {
            self.queues = dict["Queues"] as! [String]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("SubmitOrder") {
            self.submitOrder = dict["SubmitOrder"] as! String
        }
        if dict.keys.contains("Users") {
            self.users = dict["Users"] as! [String]
        }
    }
}

public class ListJobsWithFiltersResponseBody : Tea.TeaModel {
    public class Jobs : Tea.TeaModel {
        public class Resources : Tea.TeaModel {
            public var cores: Int64?

            public var nodes: Int64?

            public override init() {
                super.init()
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
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cores") {
                    self.cores = dict["Cores"] as! Int64
                }
                if dict.keys.contains("Nodes") {
                    self.nodes = dict["Nodes"] as! Int64
                }
            }
        }
        public var arrayRequest: String?

        public var comment: String?

        public var id: String?

        public var lastModifyTime: String?

        public var name: String?

        public var nodeList: String?

        public var owner: String?

        public var priority: String?

        public var queue: String?

        public var rerunable: Bool?

        public var resources: ListJobsWithFiltersResponseBody.Jobs.Resources?

        public var shellPath: String?

        public var startTime: String?

        public var state: String?

        public var stderr: String?

        public var stdout: String?

        public var submitTime: String?

        public var variableList: String?

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
            if self.comment != nil {
                map["Comment"] = self.comment!
            }
            if self.id != nil {
                map["Id"] = self.id!
            }
            if self.lastModifyTime != nil {
                map["LastModifyTime"] = self.lastModifyTime!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.nodeList != nil {
                map["NodeList"] = self.nodeList!
            }
            if self.owner != nil {
                map["Owner"] = self.owner!
            }
            if self.priority != nil {
                map["Priority"] = self.priority!
            }
            if self.queue != nil {
                map["Queue"] = self.queue!
            }
            if self.rerunable != nil {
                map["Rerunable"] = self.rerunable!
            }
            if self.resources != nil {
                map["Resources"] = self.resources?.toMap()
            }
            if self.shellPath != nil {
                map["ShellPath"] = self.shellPath!
            }
            if self.startTime != nil {
                map["StartTime"] = self.startTime!
            }
            if self.state != nil {
                map["State"] = self.state!
            }
            if self.stderr != nil {
                map["Stderr"] = self.stderr!
            }
            if self.stdout != nil {
                map["Stdout"] = self.stdout!
            }
            if self.submitTime != nil {
                map["SubmitTime"] = self.submitTime!
            }
            if self.variableList != nil {
                map["VariableList"] = self.variableList!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ArrayRequest") {
                self.arrayRequest = dict["ArrayRequest"] as! String
            }
            if dict.keys.contains("Comment") {
                self.comment = dict["Comment"] as! String
            }
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
            if dict.keys.contains("LastModifyTime") {
                self.lastModifyTime = dict["LastModifyTime"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("NodeList") {
                self.nodeList = dict["NodeList"] as! String
            }
            if dict.keys.contains("Owner") {
                self.owner = dict["Owner"] as! String
            }
            if dict.keys.contains("Priority") {
                self.priority = dict["Priority"] as! String
            }
            if dict.keys.contains("Queue") {
                self.queue = dict["Queue"] as! String
            }
            if dict.keys.contains("Rerunable") {
                self.rerunable = dict["Rerunable"] as! Bool
            }
            if dict.keys.contains("Resources") {
                var model = ListJobsWithFiltersResponseBody.Jobs.Resources()
                model.fromMap(dict["Resources"] as! [String: Any])
                self.resources = model
            }
            if dict.keys.contains("ShellPath") {
                self.shellPath = dict["ShellPath"] as! String
            }
            if dict.keys.contains("StartTime") {
                self.startTime = dict["StartTime"] as! String
            }
            if dict.keys.contains("State") {
                self.state = dict["State"] as! String
            }
            if dict.keys.contains("Stderr") {
                self.stderr = dict["Stderr"] as! String
            }
            if dict.keys.contains("Stdout") {
                self.stdout = dict["Stdout"] as! String
            }
            if dict.keys.contains("SubmitTime") {
                self.submitTime = dict["SubmitTime"] as! String
            }
            if dict.keys.contains("VariableList") {
                self.variableList = dict["VariableList"] as! String
            }
        }
    }
    public var jobs: [ListJobsWithFiltersResponseBody.Jobs]?

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

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! [ListJobsWithFiltersResponseBody.Jobs]
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
        if dict.keys.contains("Success") {
            self.success = dict["Success"] as! Bool
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListJobsWithFiltersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListJobsWithFiltersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListJobsWithFiltersResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var filter: String?

    public var hostName: String?

    public var hostNamePrefix: String?

    public var hostNameSuffix: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var privateIpAddress: String?

    public var role: String?

    public var sequence: String?

    public var sortBy: String?

    public override init() {
        super.init()
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
        if self.filter != nil {
            map["Filter"] = self.filter!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.hostNamePrefix != nil {
            map["HostNamePrefix"] = self.hostNamePrefix!
        }
        if self.hostNameSuffix != nil {
            map["HostNameSuffix"] = self.hostNameSuffix!
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
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.sequence != nil {
            map["Sequence"] = self.sequence!
        }
        if self.sortBy != nil {
            map["SortBy"] = self.sortBy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Filter") {
            self.filter = dict["Filter"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("HostNamePrefix") {
            self.hostNamePrefix = dict["HostNamePrefix"] as! String
        }
        if dict.keys.contains("HostNameSuffix") {
            self.hostNameSuffix = dict["HostNameSuffix"] as! String
        }
        if dict.keys.contains("PageNumber") {
            self.pageNumber = dict["PageNumber"] as! Int32
        }
        if dict.keys.contains("PageSize") {
            self.pageSize = dict["PageSize"] as! Int32
        }
        if dict.keys.contains("PrivateIpAddress") {
            self.privateIpAddress = dict["PrivateIpAddress"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Sequence") {
            self.sequence = dict["Sequence"] as! String
        }
        if dict.keys.contains("SortBy") {
            self.sortBy = dict["SortBy"] as! String
        }
    }
}

public class ListNodesResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public var role: [String]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.role != nil {
                        map["Role"] = self.role!
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Role") {
                        self.role = dict["Role"] as! [String]
                    }
                }
            }
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
            public class UsedResources : Tea.TeaModel {
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

            public var createMode: String?

            public var createdByEhpc: Bool?

            public var expired: Bool?

            public var expiredTime: String?

            public var hostName: String?

            public var htEnabled: Bool?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var instanceType: String?

            public var ipAddress: String?

            public var location: String?

            public var lockReason: String?

            public var publicIpAddress: String?

            public var regionId: String?

            public var roles: ListNodesResponseBody.Nodes.NodeInfo.Roles?

            public var spotStrategy: String?

            public var stateInSched: String?

            public var status: String?

            public var totalResources: ListNodesResponseBody.Nodes.NodeInfo.TotalResources?

            public var usedResources: ListNodesResponseBody.Nodes.NodeInfo.UsedResources?

            public var vSwitchId: String?

            public var version: String?

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
                try self.roles?.validate()
                try self.totalResources?.validate()
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.createMode != nil {
                    map["CreateMode"] = self.createMode!
                }
                if self.createdByEhpc != nil {
                    map["CreatedByEhpc"] = self.createdByEhpc!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
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
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.instanceType != nil {
                    map["InstanceType"] = self.instanceType!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.publicIpAddress != nil {
                    map["PublicIpAddress"] = self.publicIpAddress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.roles != nil {
                    map["Roles"] = self.roles?.toMap()
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
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.version != nil {
                    map["Version"] = self.version!
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
                if dict.keys.contains("CreateMode") {
                    self.createMode = dict["CreateMode"] as! String
                }
                if dict.keys.contains("CreatedByEhpc") {
                    self.createdByEhpc = dict["CreatedByEhpc"] as! Bool
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! Bool
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
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
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("InstanceType") {
                    self.instanceType = dict["InstanceType"] as! String
                }
                if dict.keys.contains("IpAddress") {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("PublicIpAddress") {
                    self.publicIpAddress = dict["PublicIpAddress"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("Roles") {
                    var model = ListNodesResponseBody.Nodes.NodeInfo.Roles()
                    model.fromMap(dict["Roles"] as! [String: Any])
                    self.roles = model
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
                    var model = ListNodesResponseBody.Nodes.NodeInfo.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListNodesResponseBody.Nodes.NodeInfo.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var nodeInfo: [ListNodesResponseBody.Nodes.NodeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInfo") {
                self.nodeInfo = dict["NodeInfo"] as! [ListNodesResponseBody.Nodes.NodeInfo]
            }
        }
    }
    public var nodes: ListNodesResponseBody.Nodes?

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
        try self.nodes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            map["Nodes"] = self.nodes?.toMap()
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
            var model = ListNodesResponseBody.Nodes()
            model.fromMap(dict["Nodes"] as! [String: Any])
            self.nodes = model
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

public class ListNodesByQueueRequest : Tea.TeaModel {
    public var async: Bool?

    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.async != nil {
            map["Async"] = self.async!
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
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Async") {
            self.async = dict["Async"] as! Bool
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
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class ListNodesByQueueResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
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
            public class UsedResources : Tea.TeaModel {
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

            public var createMode: String?

            public var createdByEhpc: Bool?

            public var expired: Bool?

            public var expiredTime: String?

            public var hostName: String?

            public var htEnabled: Bool?

            public var id: String?

            public var imageId: String?

            public var imageOwnerAlias: String?

            public var ipAddress: String?

            public var location: String?

            public var lockReason: String?

            public var publicIpAddress: String?

            public var regionId: String?

            public var spotStrategy: String?

            public var stateInSched: String?

            public var status: String?

            public var totalResources: ListNodesByQueueResponseBody.Nodes.NodeInfo.TotalResources?

            public var usedResources: ListNodesByQueueResponseBody.Nodes.NodeInfo.UsedResources?

            public var vSwitchId: String?

            public var version: String?

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
                try self.usedResources?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.createMode != nil {
                    map["CreateMode"] = self.createMode!
                }
                if self.createdByEhpc != nil {
                    map["CreatedByEhpc"] = self.createdByEhpc!
                }
                if self.expired != nil {
                    map["Expired"] = self.expired!
                }
                if self.expiredTime != nil {
                    map["ExpiredTime"] = self.expiredTime!
                }
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
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
                if self.imageOwnerAlias != nil {
                    map["ImageOwnerAlias"] = self.imageOwnerAlias!
                }
                if self.ipAddress != nil {
                    map["IpAddress"] = self.ipAddress!
                }
                if self.location != nil {
                    map["Location"] = self.location!
                }
                if self.lockReason != nil {
                    map["LockReason"] = self.lockReason!
                }
                if self.publicIpAddress != nil {
                    map["PublicIpAddress"] = self.publicIpAddress!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
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
                if self.usedResources != nil {
                    map["UsedResources"] = self.usedResources?.toMap()
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
                }
                if self.version != nil {
                    map["Version"] = self.version!
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
                if dict.keys.contains("CreateMode") {
                    self.createMode = dict["CreateMode"] as! String
                }
                if dict.keys.contains("CreatedByEhpc") {
                    self.createdByEhpc = dict["CreatedByEhpc"] as! Bool
                }
                if dict.keys.contains("Expired") {
                    self.expired = dict["Expired"] as! Bool
                }
                if dict.keys.contains("ExpiredTime") {
                    self.expiredTime = dict["ExpiredTime"] as! String
                }
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
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
                if dict.keys.contains("ImageOwnerAlias") {
                    self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
                }
                if dict.keys.contains("IpAddress") {
                    self.ipAddress = dict["IpAddress"] as! String
                }
                if dict.keys.contains("Location") {
                    self.location = dict["Location"] as! String
                }
                if dict.keys.contains("LockReason") {
                    self.lockReason = dict["LockReason"] as! String
                }
                if dict.keys.contains("PublicIpAddress") {
                    self.publicIpAddress = dict["PublicIpAddress"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
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
                    var model = ListNodesByQueueResponseBody.Nodes.NodeInfo.TotalResources()
                    model.fromMap(dict["TotalResources"] as! [String: Any])
                    self.totalResources = model
                }
                if dict.keys.contains("UsedResources") {
                    var model = ListNodesByQueueResponseBody.Nodes.NodeInfo.UsedResources()
                    model.fromMap(dict["UsedResources"] as! [String: Any])
                    self.usedResources = model
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("Version") {
                    self.version = dict["Version"] as! String
                }
                if dict.keys.contains("VpcId") {
                    self.vpcId = dict["VpcId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var nodeInfo: [ListNodesByQueueResponseBody.Nodes.NodeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInfo") {
                self.nodeInfo = dict["NodeInfo"] as! [ListNodesByQueueResponseBody.Nodes.NodeInfo]
            }
        }
    }
    public var nodes: ListNodesByQueueResponseBody.Nodes?

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
        try self.nodes?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.nodes != nil {
            map["Nodes"] = self.nodes?.toMap()
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
            var model = ListNodesByQueueResponseBody.Nodes()
            model.fromMap(dict["Nodes"] as! [String: Any])
            self.nodes = model
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

public class ListNodesByQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesByQueueResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodesByQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListNodesNoPagingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var hostName: String?

    public var role: String?

    public var sequence: String?

    public override init() {
        super.init()
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
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        if self.sequence != nil {
            map["Sequence"] = self.sequence!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
        if dict.keys.contains("Sequence") {
            self.sequence = dict["Sequence"] as! String
        }
    }
}

public class ListNodesNoPagingResponseBody : Tea.TeaModel {
    public class Nodes : Tea.TeaModel {
        public class NodeInfo : Tea.TeaModel {
            public var hostName: String?

            public var id: String?

            public var imageId: String?

            public var instanceType: String?

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
                if self.hostName != nil {
                    map["HostName"] = self.hostName!
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
                if self.status != nil {
                    map["Status"] = self.status!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("HostName") {
                    self.hostName = dict["HostName"] as! String
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
                if dict.keys.contains("Status") {
                    self.status = dict["Status"] as! String
                }
            }
        }
        public var nodeInfo: [ListNodesNoPagingResponseBody.Nodes.NodeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.nodeInfo != nil {
                var tmp : [Any] = []
                for k in self.nodeInfo! {
                    tmp.append(k.toMap())
                }
                map["NodeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NodeInfo") {
                self.nodeInfo = dict["NodeInfo"] as! [ListNodesNoPagingResponseBody.Nodes.NodeInfo]
            }
        }
    }
    public var nodes: ListNodesNoPagingResponseBody.Nodes?

    public var requestId: String?

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
        if self.nodes != nil {
            map["Nodes"] = self.nodes?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Nodes") {
            var model = ListNodesNoPagingResponseBody.Nodes()
            model.fromMap(dict["Nodes"] as! [String: Any])
            self.nodes = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListNodesNoPagingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListNodesNoPagingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListNodesNoPagingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListPreferredEcsTypesRequest : Tea.TeaModel {
    public var instanceChargeType: String?

    public var spotStrategy: String?

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
        if self.instanceChargeType != nil {
            map["InstanceChargeType"] = self.instanceChargeType!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        if self.zoneId != nil {
            map["ZoneId"] = self.zoneId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceChargeType") {
            self.instanceChargeType = dict["InstanceChargeType"] as! String
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
        if dict.keys.contains("ZoneId") {
            self.zoneId = dict["ZoneId"] as! String
        }
    }
}

public class ListPreferredEcsTypesResponseBody : Tea.TeaModel {
    public class Series : Tea.TeaModel {
        public class SeriesInfo : Tea.TeaModel {
            public class Roles : Tea.TeaModel {
                public class Compute : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public class Login : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public class Manager : Tea.TeaModel {
                    public var instanceTypeId: [String]?

                    public override init() {
                        super.init()
                    }

                    public init(_ dict: [String: Any]) {
                        super.init()
                        self.fromMap(dict)
                    }

                    public override func validate() throws -> Void {
                    }

                    public override func toMap() -> [String : Any] {
                        var map = super.toMap()
                        if self.instanceTypeId != nil {
                            map["InstanceTypeId"] = self.instanceTypeId!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceTypeId") {
                            self.instanceTypeId = dict["InstanceTypeId"] as! [String]
                        }
                    }
                }
                public var compute: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Compute?

                public var login: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Login?

                public var manager: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Manager?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                    try self.compute?.validate()
                    try self.login?.validate()
                    try self.manager?.validate()
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.compute != nil {
                        map["Compute"] = self.compute?.toMap()
                    }
                    if self.login != nil {
                        map["Login"] = self.login?.toMap()
                    }
                    if self.manager != nil {
                        map["Manager"] = self.manager?.toMap()
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Compute") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Compute()
                        model.fromMap(dict["Compute"] as! [String: Any])
                        self.compute = model
                    }
                    if dict.keys.contains("Login") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Login()
                        model.fromMap(dict["Login"] as! [String: Any])
                        self.login = model
                    }
                    if dict.keys.contains("Manager") {
                        var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles.Manager()
                        model.fromMap(dict["Manager"] as! [String: Any])
                        self.manager = model
                    }
                }
            }
            public var roles: ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles?

            public var seriesId: String?

            public var seriesName: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.roles?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.roles != nil {
                    map["Roles"] = self.roles?.toMap()
                }
                if self.seriesId != nil {
                    map["SeriesId"] = self.seriesId!
                }
                if self.seriesName != nil {
                    map["SeriesName"] = self.seriesName!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Roles") {
                    var model = ListPreferredEcsTypesResponseBody.Series.SeriesInfo.Roles()
                    model.fromMap(dict["Roles"] as! [String: Any])
                    self.roles = model
                }
                if dict.keys.contains("SeriesId") {
                    self.seriesId = dict["SeriesId"] as! String
                }
                if dict.keys.contains("SeriesName") {
                    self.seriesName = dict["SeriesName"] as! String
                }
            }
        }
        public var seriesInfo: [ListPreferredEcsTypesResponseBody.Series.SeriesInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.seriesInfo != nil {
                var tmp : [Any] = []
                for k in self.seriesInfo! {
                    tmp.append(k.toMap())
                }
                map["SeriesInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SeriesInfo") {
                self.seriesInfo = dict["SeriesInfo"] as! [ListPreferredEcsTypesResponseBody.Series.SeriesInfo]
            }
        }
    }
    public var requestId: String?

    public var series: ListPreferredEcsTypesResponseBody.Series?

    public var supportSpotInstance: Bool?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.series?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.series != nil {
            map["Series"] = self.series?.toMap()
        }
        if self.supportSpotInstance != nil {
            map["SupportSpotInstance"] = self.supportSpotInstance!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Series") {
            var model = ListPreferredEcsTypesResponseBody.Series()
            model.fromMap(dict["Series"] as! [String: Any])
            self.series = model
        }
        if dict.keys.contains("SupportSpotInstance") {
            self.supportSpotInstance = dict["SupportSpotInstance"] as! Bool
        }
    }
}

public class ListPreferredEcsTypesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListPreferredEcsTypesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListPreferredEcsTypesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListQueuesRequest : Tea.TeaModel {
    public var async: Bool?

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
        if self.async != nil {
            map["Async"] = self.async!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Async") {
            self.async = dict["Async"] as! Bool
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class ListQueuesResponseBody : Tea.TeaModel {
    public class Queues : Tea.TeaModel {
        public class QueueInfo : Tea.TeaModel {
            public class ComputeInstanceType : Tea.TeaModel {
                public var instanceType: [String]?

                public override init() {
                    super.init()
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
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("InstanceType") {
                        self.instanceType = dict["InstanceType"] as! [String]
                    }
                }
            }
            public class SpotInstanceTypes : Tea.TeaModel {
                public class Instance : Tea.TeaModel {
                    public var instanceType: String?

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
                        if self.spotPriceLimit != nil {
                            map["SpotPriceLimit"] = self.spotPriceLimit!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("InstanceType") {
                            self.instanceType = dict["InstanceType"] as! String
                        }
                        if dict.keys.contains("SpotPriceLimit") {
                            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
                        }
                    }
                }
                public var instance: [ListQueuesResponseBody.Queues.QueueInfo.SpotInstanceTypes.Instance]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.instance != nil {
                        var tmp : [Any] = []
                        for k in self.instance! {
                            tmp.append(k.toMap())
                        }
                        map["Instance"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("Instance") {
                        self.instance = dict["Instance"] as! [ListQueuesResponseBody.Queues.QueueInfo.SpotInstanceTypes.Instance]
                    }
                }
            }
            public var computeInstanceType: ListQueuesResponseBody.Queues.QueueInfo.ComputeInstanceType?

            public var enableAutoGrow: Bool?

            public var hostNamePrefix: String?

            public var hostNameSuffix: String?

            public var imageId: String?

            public var queueName: String?

            public var resourceGroupId: String?

            public var spotInstanceTypes: ListQueuesResponseBody.Queues.QueueInfo.SpotInstanceTypes?

            public var spotStrategy: String?

            public var type: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.computeInstanceType?.validate()
                try self.spotInstanceTypes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.computeInstanceType != nil {
                    map["ComputeInstanceType"] = self.computeInstanceType?.toMap()
                }
                if self.enableAutoGrow != nil {
                    map["EnableAutoGrow"] = self.enableAutoGrow!
                }
                if self.hostNamePrefix != nil {
                    map["HostNamePrefix"] = self.hostNamePrefix!
                }
                if self.hostNameSuffix != nil {
                    map["HostNameSuffix"] = self.hostNameSuffix!
                }
                if self.imageId != nil {
                    map["ImageId"] = self.imageId!
                }
                if self.queueName != nil {
                    map["QueueName"] = self.queueName!
                }
                if self.resourceGroupId != nil {
                    map["ResourceGroupId"] = self.resourceGroupId!
                }
                if self.spotInstanceTypes != nil {
                    map["SpotInstanceTypes"] = self.spotInstanceTypes?.toMap()
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.type != nil {
                    map["Type"] = self.type!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("ComputeInstanceType") {
                    var model = ListQueuesResponseBody.Queues.QueueInfo.ComputeInstanceType()
                    model.fromMap(dict["ComputeInstanceType"] as! [String: Any])
                    self.computeInstanceType = model
                }
                if dict.keys.contains("EnableAutoGrow") {
                    self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
                }
                if dict.keys.contains("HostNamePrefix") {
                    self.hostNamePrefix = dict["HostNamePrefix"] as! String
                }
                if dict.keys.contains("HostNameSuffix") {
                    self.hostNameSuffix = dict["HostNameSuffix"] as! String
                }
                if dict.keys.contains("ImageId") {
                    self.imageId = dict["ImageId"] as! String
                }
                if dict.keys.contains("QueueName") {
                    self.queueName = dict["QueueName"] as! String
                }
                if dict.keys.contains("ResourceGroupId") {
                    self.resourceGroupId = dict["ResourceGroupId"] as! String
                }
                if dict.keys.contains("SpotInstanceTypes") {
                    var model = ListQueuesResponseBody.Queues.QueueInfo.SpotInstanceTypes()
                    model.fromMap(dict["SpotInstanceTypes"] as! [String: Any])
                    self.spotInstanceTypes = model
                }
                if dict.keys.contains("SpotStrategy") {
                    self.spotStrategy = dict["SpotStrategy"] as! String
                }
                if dict.keys.contains("Type") {
                    self.type = dict["Type"] as! String
                }
            }
        }
        public var queueInfo: [ListQueuesResponseBody.Queues.QueueInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.queueInfo != nil {
                var tmp : [Any] = []
                for k in self.queueInfo! {
                    tmp.append(k.toMap())
                }
                map["QueueInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("QueueInfo") {
                self.queueInfo = dict["QueueInfo"] as! [ListQueuesResponseBody.Queues.QueueInfo]
            }
        }
    }
    public var queues: ListQueuesResponseBody.Queues?

    public var requestId: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.queues?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.queues != nil {
            map["Queues"] = self.queues?.toMap()
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Queues") {
            var model = ListQueuesResponseBody.Queues()
            model.fromMap(dict["Queues"] as! [String: Any])
            self.queues = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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

public class ListRegionsResponseBody : Tea.TeaModel {
    public class Regions : Tea.TeaModel {
        public class RegionInfo : Tea.TeaModel {
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

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("LocalName") {
                    self.localName = dict["LocalName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
            }
        }
        public var regionInfo: [ListRegionsResponseBody.Regions.RegionInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.regionInfo != nil {
                var tmp : [Any] = []
                for k in self.regionInfo! {
                    tmp.append(k.toMap())
                }
                map["RegionInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("RegionInfo") {
                self.regionInfo = dict["RegionInfo"] as! [ListRegionsResponseBody.Regions.RegionInfo]
            }
        }
    }
    public var regions: ListRegionsResponseBody.Regions?

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
        if dict.keys.contains("Regions") {
            var model = ListRegionsResponseBody.Regions()
            model.fromMap(dict["Regions"] as! [String: Any])
            self.regions = model
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListRegionsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSecurityGroupsRequest : Tea.TeaModel {
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

public class ListSecurityGroupsResponseBody : Tea.TeaModel {
    public class SecurityGroups : Tea.TeaModel {
        public var securityGroup: [String]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.securityGroup != nil {
                map["SecurityGroup"] = self.securityGroup!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SecurityGroup") {
                self.securityGroup = dict["SecurityGroup"] as! [String]
            }
        }
    }
    public var requestId: String?

    public var securityGroups: ListSecurityGroupsResponseBody.SecurityGroups?

    public var totalCount: Int32?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.securityGroups?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.securityGroups != nil {
            map["SecurityGroups"] = self.securityGroups?.toMap()
        }
        if self.totalCount != nil {
            map["TotalCount"] = self.totalCount!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("SecurityGroups") {
            var model = ListSecurityGroupsResponseBody.SecurityGroups()
            model.fromMap(dict["SecurityGroups"] as! [String: Any])
            self.securityGroups = model
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListSecurityGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListSecurityGroupsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListSecurityGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListSoftwaresRequest : Tea.TeaModel {
    public var ehpcVersion: String?

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
        if self.ehpcVersion != nil {
            map["EhpcVersion"] = self.ehpcVersion!
        }
        if self.osTag != nil {
            map["OsTag"] = self.osTag!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("EhpcVersion") {
            self.ehpcVersion = dict["EhpcVersion"] as! String
        }
        if dict.keys.contains("OsTag") {
            self.osTag = dict["OsTag"] as! String
        }
    }
}

public class ListSoftwaresResponseBody : Tea.TeaModel {
    public class Softwares : Tea.TeaModel {
        public class SoftwareInfo : Tea.TeaModel {
            public class Applications : Tea.TeaModel {
                public class ApplicationInfo : Tea.TeaModel {
                    public var name: String?

                    public var required_: Bool?

                    public var tag: String?

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
                        if self.required_ != nil {
                            map["Required"] = self.required_!
                        }
                        if self.tag != nil {
                            map["Tag"] = self.tag!
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
                        if dict.keys.contains("Required") {
                            self.required_ = dict["Required"] as! Bool
                        }
                        if dict.keys.contains("Tag") {
                            self.tag = dict["Tag"] as! String
                        }
                        if dict.keys.contains("Version") {
                            self.version = dict["Version"] as! String
                        }
                    }
                }
                public var applicationInfo: [ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications.ApplicationInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.applicationInfo != nil {
                        var tmp : [Any] = []
                        for k in self.applicationInfo! {
                            tmp.append(k.toMap())
                        }
                        map["ApplicationInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("ApplicationInfo") {
                        self.applicationInfo = dict["ApplicationInfo"] as! [ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications.ApplicationInfo]
                    }
                }
            }
            public var accountType: String?

            public var accountVersion: String?

            public var applications: ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications?

            public var ehpcVersion: String?

            public var osTag: String?

            public var schedulerType: String?

            public var schedulerVersion: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.applications?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.accountType != nil {
                    map["AccountType"] = self.accountType!
                }
                if self.accountVersion != nil {
                    map["AccountVersion"] = self.accountVersion!
                }
                if self.applications != nil {
                    map["Applications"] = self.applications?.toMap()
                }
                if self.ehpcVersion != nil {
                    map["EhpcVersion"] = self.ehpcVersion!
                }
                if self.osTag != nil {
                    map["OsTag"] = self.osTag!
                }
                if self.schedulerType != nil {
                    map["SchedulerType"] = self.schedulerType!
                }
                if self.schedulerVersion != nil {
                    map["SchedulerVersion"] = self.schedulerVersion!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AccountType") {
                    self.accountType = dict["AccountType"] as! String
                }
                if dict.keys.contains("AccountVersion") {
                    self.accountVersion = dict["AccountVersion"] as! String
                }
                if dict.keys.contains("Applications") {
                    var model = ListSoftwaresResponseBody.Softwares.SoftwareInfo.Applications()
                    model.fromMap(dict["Applications"] as! [String: Any])
                    self.applications = model
                }
                if dict.keys.contains("EhpcVersion") {
                    self.ehpcVersion = dict["EhpcVersion"] as! String
                }
                if dict.keys.contains("OsTag") {
                    self.osTag = dict["OsTag"] as! String
                }
                if dict.keys.contains("SchedulerType") {
                    self.schedulerType = dict["SchedulerType"] as! String
                }
                if dict.keys.contains("SchedulerVersion") {
                    self.schedulerVersion = dict["SchedulerVersion"] as! String
                }
            }
        }
        public var softwareInfo: [ListSoftwaresResponseBody.Softwares.SoftwareInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.softwareInfo != nil {
                var tmp : [Any] = []
                for k in self.softwareInfo! {
                    tmp.append(k.toMap())
                }
                map["SoftwareInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SoftwareInfo") {
                self.softwareInfo = dict["SoftwareInfo"] as! [ListSoftwaresResponseBody.Softwares.SoftwareInfo]
            }
        }
    }
    public var requestId: String?

    public var softwares: ListSoftwaresResponseBody.Softwares?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.softwares?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.softwares != nil {
            map["Softwares"] = self.softwares?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("Softwares") {
            var model = ListSoftwaresResponseBody.Softwares()
            model.fromMap(dict["Softwares"] as! [String: Any])
            self.softwares = model
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var nextToken: String?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [ListTagResourcesRequest.Tag]
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
                if dict.keys.contains("ResourceId") {
                    self.resourceId = dict["ResourceId"] as! String
                }
                if dict.keys.contains("ResourceType") {
                    self.resourceType = dict["ResourceType"] as! String
                }
                if dict.keys.contains("TagKey") {
                    self.tagKey = dict["TagKey"] as! String
                }
                if dict.keys.contains("TagValue") {
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
            if dict.keys.contains("TagResource") {
                self.tagResource = dict["TagResource"] as! [ListTagResourcesResponseBody.TagResources.TagResource]
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
        if dict.keys.contains("NextToken") {
            self.nextToken = dict["NextToken"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TagResources") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListTasksRequest : Tea.TeaModel {
    public var archived: Bool?

    public var clusterId: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

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
        if self.archived != nil {
            map["Archived"] = self.archived!
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
        if self.taskId != nil {
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Archived") {
            self.archived = dict["Archived"] as! Bool
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
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ListTasksResponseBody : Tea.TeaModel {
    public class Tasks : Tea.TeaModel {
        public var clusterId: String?

        public var currentStep: Int32?

        public var errors: String?

        public var request: String?

        public var result: String?

        public var status: String?

        public var taskId: String?

        public var taskType: String?

        public var totalSteps: Int32?

        public override init() {
            super.init()
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
            if self.currentStep != nil {
                map["CurrentStep"] = self.currentStep!
            }
            if self.errors != nil {
                map["Errors"] = self.errors!
            }
            if self.request != nil {
                map["Request"] = self.request!
            }
            if self.result != nil {
                map["Result"] = self.result!
            }
            if self.status != nil {
                map["Status"] = self.status!
            }
            if self.taskId != nil {
                map["TaskId"] = self.taskId!
            }
            if self.taskType != nil {
                map["TaskType"] = self.taskType!
            }
            if self.totalSteps != nil {
                map["TotalSteps"] = self.totalSteps!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ClusterId") {
                self.clusterId = dict["ClusterId"] as! String
            }
            if dict.keys.contains("CurrentStep") {
                self.currentStep = dict["CurrentStep"] as! Int32
            }
            if dict.keys.contains("Errors") {
                self.errors = dict["Errors"] as! String
            }
            if dict.keys.contains("Request") {
                self.request = dict["Request"] as! String
            }
            if dict.keys.contains("Result") {
                self.result = dict["Result"] as! String
            }
            if dict.keys.contains("Status") {
                self.status = dict["Status"] as! String
            }
            if dict.keys.contains("TaskId") {
                self.taskId = dict["TaskId"] as! String
            }
            if dict.keys.contains("TaskType") {
                self.taskType = dict["TaskType"] as! String
            }
            if dict.keys.contains("TotalSteps") {
                self.totalSteps = dict["TotalSteps"] as! Int32
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var tasks: [ListTasksResponseBody.Tasks]?

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
            self.tasks = dict["Tasks"] as! [ListTasksResponseBody.Tasks]
        }
        if dict.keys.contains("TotalCount") {
            self.totalCount = dict["TotalCount"] as! Int32
        }
    }
}

public class ListTasksResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListTasksResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListTasksResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListUpgradeClientsRequest : Tea.TeaModel {
    public var clusterId: String?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class ListUpgradeClientsResponseBody : Tea.TeaModel {
    public class ClientRecords : Tea.TeaModel {
        public var newVersion: String?

        public var oldVersion: String?

        public var subUid: String?

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
            if self.newVersion != nil {
                map["NewVersion"] = self.newVersion!
            }
            if self.oldVersion != nil {
                map["OldVersion"] = self.oldVersion!
            }
            if self.subUid != nil {
                map["SubUid"] = self.subUid!
            }
            if self.updateTime != nil {
                map["UpdateTime"] = self.updateTime!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("NewVersion") {
                self.newVersion = dict["NewVersion"] as! String
            }
            if dict.keys.contains("OldVersion") {
                self.oldVersion = dict["OldVersion"] as! String
            }
            if dict.keys.contains("SubUid") {
                self.subUid = dict["SubUid"] as! String
            }
            if dict.keys.contains("UpdateTime") {
                self.updateTime = dict["UpdateTime"] as! String
            }
        }
    }
    public var clientRecords: [ListUpgradeClientsResponseBody.ClientRecords]?

    public var currentVersion: String?

    public var latestVersion: String?

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
        if self.clientRecords != nil {
            var tmp : [Any] = []
            for k in self.clientRecords! {
                tmp.append(k.toMap())
            }
            map["ClientRecords"] = tmp
        }
        if self.currentVersion != nil {
            map["CurrentVersion"] = self.currentVersion!
        }
        if self.latestVersion != nil {
            map["LatestVersion"] = self.latestVersion!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientRecords") {
            self.clientRecords = dict["ClientRecords"] as! [ListUpgradeClientsResponseBody.ClientRecords]
        }
        if dict.keys.contains("CurrentVersion") {
            self.currentVersion = dict["CurrentVersion"] as! String
        }
        if dict.keys.contains("LatestVersion") {
            self.latestVersion = dict["LatestVersion"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class ListUpgradeClientsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUpgradeClientsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUpgradeClientsResponseBody()
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
                if self.addTime != nil {
                    map["AddTime"] = self.addTime!
                }
                if self.group != nil {
                    map["Group"] = self.group!
                }
                if self.name != nil {
                    map["Name"] = self.name!
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
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
                self.userInfo = dict["UserInfo"] as! [ListUsersResponseBody.Users.UserInfo]
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

public class ListUsersAsyncRequest : Tea.TeaModel {
    public var asyncId: String?

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
        if self.asyncId != nil {
            map["AsyncId"] = self.asyncId!
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
        if dict.keys.contains("AsyncId") {
            self.asyncId = dict["AsyncId"] as! String
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

public class ListUsersAsyncResponseBody : Tea.TeaModel {
    public class Users : Tea.TeaModel {
        public class UserInfo : Tea.TeaModel {
            public var addTime: String?

            public var group: String?

            public var groupId: String?

            public var name: String?

            public var userId: String?

            public override init() {
                super.init()
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
                if self.name != nil {
                    map["Name"] = self.name!
                }
                if self.userId != nil {
                    map["UserId"] = self.userId!
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
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
                if dict.keys.contains("UserId") {
                    self.userId = dict["UserId"] as! String
                }
            }
        }
        public var userInfo: [ListUsersAsyncResponseBody.Users.UserInfo]?

        public override init() {
            super.init()
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
                self.userInfo = dict["UserInfo"] as! [ListUsersAsyncResponseBody.Users.UserInfo]
            }
        }
    }
    public var asyncId: String?

    public var asyncStatus: String?

    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var users: ListUsersAsyncResponseBody.Users?

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
        if self.asyncId != nil {
            map["AsyncId"] = self.asyncId!
        }
        if self.asyncStatus != nil {
            map["AsyncStatus"] = self.asyncStatus!
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
        if self.users != nil {
            map["Users"] = self.users?.toMap()
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsyncId") {
            self.asyncId = dict["AsyncId"] as! String
        }
        if dict.keys.contains("AsyncStatus") {
            self.asyncStatus = dict["AsyncStatus"] as! String
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
        if dict.keys.contains("Users") {
            var model = ListUsersAsyncResponseBody.Users()
            model.fromMap(dict["Users"] as! [String: Any])
            self.users = model
        }
    }
}

public class ListUsersAsyncResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListUsersAsyncResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListUsersAsyncResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ListVolumesRequest : Tea.TeaModel {
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

public class ListVolumesResponseBody : Tea.TeaModel {
    public class Volumes : Tea.TeaModel {
        public class VolumeInfo : Tea.TeaModel {
            public class AdditionalVolumes : Tea.TeaModel {
                public class VolumeInfo : Tea.TeaModel {
                    public var jobQueue: String?

                    public var localDirectory: String?

                    public var location: String?

                    public var remoteDirectory: String?

                    public var role: String?

                    public var volumeId: String?

                    public var volumeMountpoint: String?

                    public var volumeProtocol: String?

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
                        if self.jobQueue != nil {
                            map["JobQueue"] = self.jobQueue!
                        }
                        if self.localDirectory != nil {
                            map["LocalDirectory"] = self.localDirectory!
                        }
                        if self.location != nil {
                            map["Location"] = self.location!
                        }
                        if self.remoteDirectory != nil {
                            map["RemoteDirectory"] = self.remoteDirectory!
                        }
                        if self.role != nil {
                            map["Role"] = self.role!
                        }
                        if self.volumeId != nil {
                            map["VolumeId"] = self.volumeId!
                        }
                        if self.volumeMountpoint != nil {
                            map["VolumeMountpoint"] = self.volumeMountpoint!
                        }
                        if self.volumeProtocol != nil {
                            map["VolumeProtocol"] = self.volumeProtocol!
                        }
                        if self.volumeType != nil {
                            map["VolumeType"] = self.volumeType!
                        }
                        return map
                    }

                    public override func fromMap(_ dict: [String: Any]) -> Void {
                        if dict.keys.contains("JobQueue") {
                            self.jobQueue = dict["JobQueue"] as! String
                        }
                        if dict.keys.contains("LocalDirectory") {
                            self.localDirectory = dict["LocalDirectory"] as! String
                        }
                        if dict.keys.contains("Location") {
                            self.location = dict["Location"] as! String
                        }
                        if dict.keys.contains("RemoteDirectory") {
                            self.remoteDirectory = dict["RemoteDirectory"] as! String
                        }
                        if dict.keys.contains("Role") {
                            self.role = dict["Role"] as! String
                        }
                        if dict.keys.contains("VolumeId") {
                            self.volumeId = dict["VolumeId"] as! String
                        }
                        if dict.keys.contains("VolumeMountpoint") {
                            self.volumeMountpoint = dict["VolumeMountpoint"] as! String
                        }
                        if dict.keys.contains("VolumeProtocol") {
                            self.volumeProtocol = dict["VolumeProtocol"] as! String
                        }
                        if dict.keys.contains("VolumeType") {
                            self.volumeType = dict["VolumeType"] as! String
                        }
                    }
                }
                public var volumeInfo: [ListVolumesResponseBody.Volumes.VolumeInfo.AdditionalVolumes.VolumeInfo]?

                public override init() {
                    super.init()
                }

                public init(_ dict: [String: Any]) {
                    super.init()
                    self.fromMap(dict)
                }

                public override func validate() throws -> Void {
                }

                public override func toMap() -> [String : Any] {
                    var map = super.toMap()
                    if self.volumeInfo != nil {
                        var tmp : [Any] = []
                        for k in self.volumeInfo! {
                            tmp.append(k.toMap())
                        }
                        map["VolumeInfo"] = tmp
                    }
                    return map
                }

                public override func fromMap(_ dict: [String: Any]) -> Void {
                    if dict.keys.contains("VolumeInfo") {
                        self.volumeInfo = dict["VolumeInfo"] as! [ListVolumesResponseBody.Volumes.VolumeInfo.AdditionalVolumes.VolumeInfo]
                    }
                }
            }
            public var additionalVolumes: ListVolumesResponseBody.Volumes.VolumeInfo.AdditionalVolumes?

            public var clusterId: String?

            public var clusterName: String?

            public var regionId: String?

            public var remoteDirectory: String?

            public var volumeId: String?

            public var volumeMountpoint: String?

            public var volumeProtocol: String?

            public var volumeType: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
                try self.additionalVolumes?.validate()
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.additionalVolumes != nil {
                    map["AdditionalVolumes"] = self.additionalVolumes?.toMap()
                }
                if self.clusterId != nil {
                    map["ClusterId"] = self.clusterId!
                }
                if self.clusterName != nil {
                    map["ClusterName"] = self.clusterName!
                }
                if self.regionId != nil {
                    map["RegionId"] = self.regionId!
                }
                if self.remoteDirectory != nil {
                    map["RemoteDirectory"] = self.remoteDirectory!
                }
                if self.volumeId != nil {
                    map["VolumeId"] = self.volumeId!
                }
                if self.volumeMountpoint != nil {
                    map["VolumeMountpoint"] = self.volumeMountpoint!
                }
                if self.volumeProtocol != nil {
                    map["VolumeProtocol"] = self.volumeProtocol!
                }
                if self.volumeType != nil {
                    map["VolumeType"] = self.volumeType!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AdditionalVolumes") {
                    var model = ListVolumesResponseBody.Volumes.VolumeInfo.AdditionalVolumes()
                    model.fromMap(dict["AdditionalVolumes"] as! [String: Any])
                    self.additionalVolumes = model
                }
                if dict.keys.contains("ClusterId") {
                    self.clusterId = dict["ClusterId"] as! String
                }
                if dict.keys.contains("ClusterName") {
                    self.clusterName = dict["ClusterName"] as! String
                }
                if dict.keys.contains("RegionId") {
                    self.regionId = dict["RegionId"] as! String
                }
                if dict.keys.contains("RemoteDirectory") {
                    self.remoteDirectory = dict["RemoteDirectory"] as! String
                }
                if dict.keys.contains("VolumeId") {
                    self.volumeId = dict["VolumeId"] as! String
                }
                if dict.keys.contains("VolumeMountpoint") {
                    self.volumeMountpoint = dict["VolumeMountpoint"] as! String
                }
                if dict.keys.contains("VolumeProtocol") {
                    self.volumeProtocol = dict["VolumeProtocol"] as! String
                }
                if dict.keys.contains("VolumeType") {
                    self.volumeType = dict["VolumeType"] as! String
                }
            }
        }
        public var volumeInfo: [ListVolumesResponseBody.Volumes.VolumeInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.volumeInfo != nil {
                var tmp : [Any] = []
                for k in self.volumeInfo! {
                    tmp.append(k.toMap())
                }
                map["VolumeInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("VolumeInfo") {
                self.volumeInfo = dict["VolumeInfo"] as! [ListVolumesResponseBody.Volumes.VolumeInfo]
            }
        }
    }
    public var pageNumber: Int32?

    public var pageSize: Int32?

    public var requestId: String?

    public var totalCount: Int32?

    public var volumes: ListVolumesResponseBody.Volumes?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.volumes?.validate()
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
        if self.volumes != nil {
            map["Volumes"] = self.volumes?.toMap()
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
        if dict.keys.contains("Volumes") {
            var model = ListVolumesResponseBody.Volumes()
            model.fromMap(dict["Volumes"] as! [String: Any])
            self.volumes = model
        }
    }
}

public class ListVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ListVolumesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ListVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyClusterAttributesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var description_: String?

    public var imageId: String?

    public var imageOwnerAlias: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class ModifyClusterAttributesResponseBody : Tea.TeaModel {
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

public class ModifyClusterAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyClusterAttributesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyClusterAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyContainerAppAttributesRequest : Tea.TeaModel {
    public var containerId: String?

    public var description_: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        if self.description_ != nil {
            map["Description"] = self.description_!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ContainerId") {
            self.containerId = dict["ContainerId"] as! String
        }
        if dict.keys.contains("Description") {
            self.description_ = dict["Description"] as! String
        }
    }
}

public class ModifyContainerAppAttributesResponseBody : Tea.TeaModel {
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

public class ModifyContainerAppAttributesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyContainerAppAttributesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyContainerAppAttributesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyImageGatewayConfigRequest : Tea.TeaModel {
    public class Repo : Tea.TeaModel {
        public var auth: String?

        public var location: String?

        public var URL: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.auth != nil {
                map["Auth"] = self.auth!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.URL != nil {
                map["URL"] = self.URL!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Auth") {
                self.auth = dict["Auth"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("URL") {
                self.URL = dict["URL"] as! String
            }
        }
    }
    public var clusterId: String?

    public var DBPassword: String?

    public var DBServerInfo: String?

    public var DBType: String?

    public var DBUsername: String?

    public var defaultRepoLocation: String?

    public var imageExpirationTimeout: String?

    public var pullUpdateTimeout: Int32?

    public var repo: [ModifyImageGatewayConfigRequest.Repo]?

    public override init() {
        super.init()
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
        if self.DBPassword != nil {
            map["DBPassword"] = self.DBPassword!
        }
        if self.DBServerInfo != nil {
            map["DBServerInfo"] = self.DBServerInfo!
        }
        if self.DBType != nil {
            map["DBType"] = self.DBType!
        }
        if self.DBUsername != nil {
            map["DBUsername"] = self.DBUsername!
        }
        if self.defaultRepoLocation != nil {
            map["DefaultRepoLocation"] = self.defaultRepoLocation!
        }
        if self.imageExpirationTimeout != nil {
            map["ImageExpirationTimeout"] = self.imageExpirationTimeout!
        }
        if self.pullUpdateTimeout != nil {
            map["PullUpdateTimeout"] = self.pullUpdateTimeout!
        }
        if self.repo != nil {
            var tmp : [Any] = []
            for k in self.repo! {
                tmp.append(k.toMap())
            }
            map["Repo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("DBPassword") {
            self.DBPassword = dict["DBPassword"] as! String
        }
        if dict.keys.contains("DBServerInfo") {
            self.DBServerInfo = dict["DBServerInfo"] as! String
        }
        if dict.keys.contains("DBType") {
            self.DBType = dict["DBType"] as! String
        }
        if dict.keys.contains("DBUsername") {
            self.DBUsername = dict["DBUsername"] as! String
        }
        if dict.keys.contains("DefaultRepoLocation") {
            self.defaultRepoLocation = dict["DefaultRepoLocation"] as! String
        }
        if dict.keys.contains("ImageExpirationTimeout") {
            self.imageExpirationTimeout = dict["ImageExpirationTimeout"] as! String
        }
        if dict.keys.contains("PullUpdateTimeout") {
            self.pullUpdateTimeout = dict["PullUpdateTimeout"] as! Int32
        }
        if dict.keys.contains("Repo") {
            self.repo = dict["Repo"] as! [ModifyImageGatewayConfigRequest.Repo]
        }
    }
}

public class ModifyImageGatewayConfigResponseBody : Tea.TeaModel {
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

public class ModifyImageGatewayConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyImageGatewayConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyImageGatewayConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserGroupsRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var group: String?

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
            if self.group != nil {
                map["Group"] = self.group!
            }
            if self.name != nil {
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Group") {
                self.group = dict["Group"] as! String
            }
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var clusterId: String?

    public var user: [ModifyUserGroupsRequest.User]?

    public override init() {
        super.init()
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
            self.user = dict["User"] as! [ModifyUserGroupsRequest.User]
        }
    }
}

public class ModifyUserGroupsResponseBody : Tea.TeaModel {
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

public class ModifyUserGroupsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserGroupsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyUserGroupsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyUserPasswordsRequest : Tea.TeaModel {
    public class User : Tea.TeaModel {
        public var name: String?

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
            if self.name != nil {
                map["Name"] = self.name!
            }
            if self.password != nil {
                map["Password"] = self.password!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
            if dict.keys.contains("Password") {
                self.password = dict["Password"] as! String
            }
        }
    }
    public var clusterId: String?

    public var user: [ModifyUserPasswordsRequest.User]?

    public override init() {
        super.init()
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
            self.user = dict["User"] as! [ModifyUserPasswordsRequest.User]
        }
    }
}

public class ModifyUserPasswordsResponseBody : Tea.TeaModel {
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

public class ModifyUserPasswordsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyUserPasswordsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyUserPasswordsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ModifyVisualServicePasswdRequest : Tea.TeaModel {
    public var clusterId: String?

    public var passwd: String?

    public var runasUser: String?

    public var runasUserPassword: String?

    public override init() {
        super.init()
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
        if self.passwd != nil {
            map["Passwd"] = self.passwd!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.runasUserPassword != nil {
            map["RunasUserPassword"] = self.runasUserPassword!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Passwd") {
            self.passwd = dict["Passwd"] as! String
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("RunasUserPassword") {
            self.runasUserPassword = dict["RunasUserPassword"] as! String
        }
    }
}

public class ModifyVisualServicePasswdResponseBody : Tea.TeaModel {
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

public class ModifyVisualServicePasswdResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ModifyVisualServicePasswdResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ModifyVisualServicePasswdResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class MountNFSRequest : Tea.TeaModel {
    public var instanceId: String?

    public var mountDir: String?

    public var nfsDir: String?

    public var protocolType: String?

    public var remoteDir: String?

    public override init() {
        super.init()
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
        if self.mountDir != nil {
            map["MountDir"] = self.mountDir!
        }
        if self.nfsDir != nil {
            map["NfsDir"] = self.nfsDir!
        }
        if self.protocolType != nil {
            map["ProtocolType"] = self.protocolType!
        }
        if self.remoteDir != nil {
            map["RemoteDir"] = self.remoteDir!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("MountDir") {
            self.mountDir = dict["MountDir"] as! String
        }
        if dict.keys.contains("NfsDir") {
            self.nfsDir = dict["NfsDir"] as! String
        }
        if dict.keys.contains("ProtocolType") {
            self.protocolType = dict["ProtocolType"] as! String
        }
        if dict.keys.contains("RemoteDir") {
            self.remoteDir = dict["RemoteDir"] as! String
        }
    }
}

public class MountNFSResponseBody : Tea.TeaModel {
    public var invokeId: String?

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
        if self.invokeId != nil {
            map["InvokeId"] = self.invokeId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InvokeId") {
            self.invokeId = dict["InvokeId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class MountNFSResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: MountNFSResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = MountNFSResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class PullImageRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageTag: String?

    public var repository: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageTag != nil {
            map["ImageTag"] = self.imageTag!
        }
        if self.repository != nil {
            map["Repository"] = self.repository!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageTag") {
            self.imageTag = dict["ImageTag"] as! String
        }
        if dict.keys.contains("Repository") {
            self.repository = dict["Repository"] as! String
        }
    }
}

public class PullImageResponseBody : Tea.TeaModel {
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

public class PullImageResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: PullImageResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = PullImageResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class QueryServicePackAndPriceResponseBody : Tea.TeaModel {
    public class ServicePack : Tea.TeaModel {
        public class ServicePackInfo : Tea.TeaModel {
            public var capacity: Int32?

            public var endTime: Int32?

            public var instanceName: String?

            public var startTime: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.capacity != nil {
                    map["Capacity"] = self.capacity!
                }
                if self.endTime != nil {
                    map["EndTime"] = self.endTime!
                }
                if self.instanceName != nil {
                    map["InstanceName"] = self.instanceName!
                }
                if self.startTime != nil {
                    map["StartTime"] = self.startTime!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Capacity") {
                    self.capacity = dict["Capacity"] as! Int32
                }
                if dict.keys.contains("EndTime") {
                    self.endTime = dict["EndTime"] as! Int32
                }
                if dict.keys.contains("InstanceName") {
                    self.instanceName = dict["InstanceName"] as! String
                }
                if dict.keys.contains("StartTime") {
                    self.startTime = dict["StartTime"] as! Int32
                }
            }
        }
        public var servicePackInfo: [QueryServicePackAndPriceResponseBody.ServicePack.ServicePackInfo]?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.servicePackInfo != nil {
                var tmp : [Any] = []
                for k in self.servicePackInfo! {
                    tmp.append(k.toMap())
                }
                map["ServicePackInfo"] = tmp
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("ServicePackInfo") {
                self.servicePackInfo = dict["ServicePackInfo"] as! [QueryServicePackAndPriceResponseBody.ServicePack.ServicePackInfo]
            }
        }
    }
    public var chargeAmount: Int32?

    public var currency: String?

    public var discountPrice: Double?

    public var originalAmount: Int32?

    public var originalPrice: Double?

    public var regionId: String?

    public var requestId: String?

    public var servicePack: QueryServicePackAndPriceResponseBody.ServicePack?

    public var tradePrice: Double?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
        try self.servicePack?.validate()
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.chargeAmount != nil {
            map["ChargeAmount"] = self.chargeAmount!
        }
        if self.currency != nil {
            map["Currency"] = self.currency!
        }
        if self.discountPrice != nil {
            map["DiscountPrice"] = self.discountPrice!
        }
        if self.originalAmount != nil {
            map["OriginalAmount"] = self.originalAmount!
        }
        if self.originalPrice != nil {
            map["OriginalPrice"] = self.originalPrice!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        if self.servicePack != nil {
            map["ServicePack"] = self.servicePack?.toMap()
        }
        if self.tradePrice != nil {
            map["TradePrice"] = self.tradePrice!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ChargeAmount") {
            self.chargeAmount = dict["ChargeAmount"] as! Int32
        }
        if dict.keys.contains("Currency") {
            self.currency = dict["Currency"] as! String
        }
        if dict.keys.contains("DiscountPrice") {
            self.discountPrice = dict["DiscountPrice"] as! Double
        }
        if dict.keys.contains("OriginalAmount") {
            self.originalAmount = dict["OriginalAmount"] as! Int32
        }
        if dict.keys.contains("OriginalPrice") {
            self.originalPrice = dict["OriginalPrice"] as! Double
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("ServicePack") {
            var model = QueryServicePackAndPriceResponseBody.ServicePack()
            model.fromMap(dict["ServicePack"] as! [String: Any])
            self.servicePack = model
        }
        if dict.keys.contains("TradePrice") {
            self.tradePrice = dict["TradePrice"] as! Double
        }
    }
}

public class QueryServicePackAndPriceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: QueryServicePackAndPriceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = QueryServicePackAndPriceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RecoverClusterRequest : Tea.TeaModel {
    public var accountType: String?

    public var clientVersion: String?

    public var clusterId: String?

    public var imageId: String?

    public var imageOwnerAlias: String?

    public var osTag: String?

    public var schedulerType: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.accountType != nil {
            map["AccountType"] = self.accountType!
        }
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.imageOwnerAlias != nil {
            map["ImageOwnerAlias"] = self.imageOwnerAlias!
        }
        if self.osTag != nil {
            map["OsTag"] = self.osTag!
        }
        if self.schedulerType != nil {
            map["SchedulerType"] = self.schedulerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AccountType") {
            self.accountType = dict["AccountType"] as! String
        }
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("ImageOwnerAlias") {
            self.imageOwnerAlias = dict["ImageOwnerAlias"] as! String
        }
        if dict.keys.contains("OsTag") {
            self.osTag = dict["OsTag"] as! String
        }
        if dict.keys.contains("SchedulerType") {
            self.schedulerType = dict["SchedulerType"] as! String
        }
    }
}

public class RecoverClusterResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class RecoverClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RecoverClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RecoverClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RerunJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
        }
    }
}

public class RerunJobsResponseBody : Tea.TeaModel {
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

public class RerunJobsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RerunJobsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RerunJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class ResetNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [ResetNodesRequest.Instance]?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [ResetNodesRequest.Instance]
        }
    }
}

public class ResetNodesResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class ResetNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: ResetNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = ResetNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class RunCloudMetricProfilingRequest : Tea.TeaModel {
    public var clusterId: String?

    public var duration: Int32?

    public var freq: Int32?

    public var hostName: String?

    public var processId: Int32?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.duration != nil {
            map["Duration"] = self.duration!
        }
        if self.freq != nil {
            map["Freq"] = self.freq!
        }
        if self.hostName != nil {
            map["HostName"] = self.hostName!
        }
        if self.processId != nil {
            map["ProcessId"] = self.processId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Duration") {
            self.duration = dict["Duration"] as! Int32
        }
        if dict.keys.contains("Freq") {
            self.freq = dict["Freq"] as! Int32
        }
        if dict.keys.contains("HostName") {
            self.hostName = dict["HostName"] as! String
        }
        if dict.keys.contains("ProcessId") {
            self.processId = dict["ProcessId"] as! Int32
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class RunCloudMetricProfilingResponseBody : Tea.TeaModel {
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

public class RunCloudMetricProfilingResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: RunCloudMetricProfilingResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = RunCloudMetricProfilingResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetAutoScaleConfigRequest : Tea.TeaModel {
    public class Queues : Tea.TeaModel {
        public class DataDisks : Tea.TeaModel {
            public var dataDiskCategory: String?

            public var dataDiskDeleteWithInstance: Bool?

            public var dataDiskEncrypted: Bool?

            public var dataDiskKMSKeyId: String?

            public var dataDiskPerformanceLevel: String?

            public var dataDiskSize: Int32?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.dataDiskCategory != nil {
                    map["DataDiskCategory"] = self.dataDiskCategory!
                }
                if self.dataDiskDeleteWithInstance != nil {
                    map["DataDiskDeleteWithInstance"] = self.dataDiskDeleteWithInstance!
                }
                if self.dataDiskEncrypted != nil {
                    map["DataDiskEncrypted"] = self.dataDiskEncrypted!
                }
                if self.dataDiskKMSKeyId != nil {
                    map["DataDiskKMSKeyId"] = self.dataDiskKMSKeyId!
                }
                if self.dataDiskPerformanceLevel != nil {
                    map["DataDiskPerformanceLevel"] = self.dataDiskPerformanceLevel!
                }
                if self.dataDiskSize != nil {
                    map["DataDiskSize"] = self.dataDiskSize!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("DataDiskCategory") {
                    self.dataDiskCategory = dict["DataDiskCategory"] as! String
                }
                if dict.keys.contains("DataDiskDeleteWithInstance") {
                    self.dataDiskDeleteWithInstance = dict["DataDiskDeleteWithInstance"] as! Bool
                }
                if dict.keys.contains("DataDiskEncrypted") {
                    self.dataDiskEncrypted = dict["DataDiskEncrypted"] as! Bool
                }
                if dict.keys.contains("DataDiskKMSKeyId") {
                    self.dataDiskKMSKeyId = dict["DataDiskKMSKeyId"] as! String
                }
                if dict.keys.contains("DataDiskPerformanceLevel") {
                    self.dataDiskPerformanceLevel = dict["DataDiskPerformanceLevel"] as! String
                }
                if dict.keys.contains("DataDiskSize") {
                    self.dataDiskSize = dict["DataDiskSize"] as! Int32
                }
            }
        }
        public class InstanceTypes : Tea.TeaModel {
            public var instanceType: String?

            public var spotPriceLimit: Double?

            public var spotStrategy: String?

            public var vSwitchId: String?

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
                if self.spotPriceLimit != nil {
                    map["SpotPriceLimit"] = self.spotPriceLimit!
                }
                if self.spotStrategy != nil {
                    map["SpotStrategy"] = self.spotStrategy!
                }
                if self.vSwitchId != nil {
                    map["VSwitchId"] = self.vSwitchId!
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
                if dict.keys.contains("SpotPriceLimit") {
                    self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
                }
                if dict.keys.contains("SpotStrategy") {
                    self.spotStrategy = dict["SpotStrategy"] as! String
                }
                if dict.keys.contains("VSwitchId") {
                    self.vSwitchId = dict["VSwitchId"] as! String
                }
                if dict.keys.contains("ZoneId") {
                    self.zoneId = dict["ZoneId"] as! String
                }
            }
        }
        public var dataDisks: [SetAutoScaleConfigRequest.Queues.DataDisks]?

        public var enableAutoGrow: Bool?

        public var enableAutoShrink: Bool?

        public var hostNamePrefix: String?

        public var hostNameSuffix: String?

        public var instanceType: String?

        public var instanceTypes: [SetAutoScaleConfigRequest.Queues.InstanceTypes]?

        public var maxNodesInQueue: Int32?

        public var maxNodesPerCycle: Int64?

        public var minNodesInQueue: Int32?

        public var minNodesPerCycle: Int64?

        public var queueImageId: String?

        public var queueName: String?

        public var spotPriceLimit: Double?

        public var spotStrategy: String?

        public var systemDiskCategory: String?

        public var systemDiskLevel: String?

        public var systemDiskSize: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.dataDisks != nil {
                var tmp : [Any] = []
                for k in self.dataDisks! {
                    tmp.append(k.toMap())
                }
                map["DataDisks"] = tmp
            }
            if self.enableAutoGrow != nil {
                map["EnableAutoGrow"] = self.enableAutoGrow!
            }
            if self.enableAutoShrink != nil {
                map["EnableAutoShrink"] = self.enableAutoShrink!
            }
            if self.hostNamePrefix != nil {
                map["HostNamePrefix"] = self.hostNamePrefix!
            }
            if self.hostNameSuffix != nil {
                map["HostNameSuffix"] = self.hostNameSuffix!
            }
            if self.instanceType != nil {
                map["InstanceType"] = self.instanceType!
            }
            if self.instanceTypes != nil {
                var tmp : [Any] = []
                for k in self.instanceTypes! {
                    tmp.append(k.toMap())
                }
                map["InstanceTypes"] = tmp
            }
            if self.maxNodesInQueue != nil {
                map["MaxNodesInQueue"] = self.maxNodesInQueue!
            }
            if self.maxNodesPerCycle != nil {
                map["MaxNodesPerCycle"] = self.maxNodesPerCycle!
            }
            if self.minNodesInQueue != nil {
                map["MinNodesInQueue"] = self.minNodesInQueue!
            }
            if self.minNodesPerCycle != nil {
                map["MinNodesPerCycle"] = self.minNodesPerCycle!
            }
            if self.queueImageId != nil {
                map["QueueImageId"] = self.queueImageId!
            }
            if self.queueName != nil {
                map["QueueName"] = self.queueName!
            }
            if self.spotPriceLimit != nil {
                map["SpotPriceLimit"] = self.spotPriceLimit!
            }
            if self.spotStrategy != nil {
                map["SpotStrategy"] = self.spotStrategy!
            }
            if self.systemDiskCategory != nil {
                map["SystemDiskCategory"] = self.systemDiskCategory!
            }
            if self.systemDiskLevel != nil {
                map["SystemDiskLevel"] = self.systemDiskLevel!
            }
            if self.systemDiskSize != nil {
                map["SystemDiskSize"] = self.systemDiskSize!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("DataDisks") {
                self.dataDisks = dict["DataDisks"] as! [SetAutoScaleConfigRequest.Queues.DataDisks]
            }
            if dict.keys.contains("EnableAutoGrow") {
                self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
            }
            if dict.keys.contains("EnableAutoShrink") {
                self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
            }
            if dict.keys.contains("HostNamePrefix") {
                self.hostNamePrefix = dict["HostNamePrefix"] as! String
            }
            if dict.keys.contains("HostNameSuffix") {
                self.hostNameSuffix = dict["HostNameSuffix"] as! String
            }
            if dict.keys.contains("InstanceType") {
                self.instanceType = dict["InstanceType"] as! String
            }
            if dict.keys.contains("InstanceTypes") {
                self.instanceTypes = dict["InstanceTypes"] as! [SetAutoScaleConfigRequest.Queues.InstanceTypes]
            }
            if dict.keys.contains("MaxNodesInQueue") {
                self.maxNodesInQueue = dict["MaxNodesInQueue"] as! Int32
            }
            if dict.keys.contains("MaxNodesPerCycle") {
                self.maxNodesPerCycle = dict["MaxNodesPerCycle"] as! Int64
            }
            if dict.keys.contains("MinNodesInQueue") {
                self.minNodesInQueue = dict["MinNodesInQueue"] as! Int32
            }
            if dict.keys.contains("MinNodesPerCycle") {
                self.minNodesPerCycle = dict["MinNodesPerCycle"] as! Int64
            }
            if dict.keys.contains("QueueImageId") {
                self.queueImageId = dict["QueueImageId"] as! String
            }
            if dict.keys.contains("QueueName") {
                self.queueName = dict["QueueName"] as! String
            }
            if dict.keys.contains("SpotPriceLimit") {
                self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
            }
            if dict.keys.contains("SpotStrategy") {
                self.spotStrategy = dict["SpotStrategy"] as! String
            }
            if dict.keys.contains("SystemDiskCategory") {
                self.systemDiskCategory = dict["SystemDiskCategory"] as! String
            }
            if dict.keys.contains("SystemDiskLevel") {
                self.systemDiskLevel = dict["SystemDiskLevel"] as! String
            }
            if dict.keys.contains("SystemDiskSize") {
                self.systemDiskSize = dict["SystemDiskSize"] as! Int32
            }
        }
    }
    public var clusterId: String?

    public var enableAutoGrow: Bool?

    public var enableAutoShrink: Bool?

    public var excludeNodes: String?

    public var extraNodesGrowRatio: Int32?

    public var growIntervalInMinutes: Int32?

    public var growRatio: Int32?

    public var growTimeoutInMinutes: Int32?

    public var imageId: String?

    public var maxNodesInCluster: Int32?

    public var queues: [SetAutoScaleConfigRequest.Queues]?

    public var shrinkIdleTimes: Int32?

    public var shrinkIntervalInMinutes: Int32?

    public var spotPriceLimit: Double?

    public var spotStrategy: String?

    public override init() {
        super.init()
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
        if self.enableAutoGrow != nil {
            map["EnableAutoGrow"] = self.enableAutoGrow!
        }
        if self.enableAutoShrink != nil {
            map["EnableAutoShrink"] = self.enableAutoShrink!
        }
        if self.excludeNodes != nil {
            map["ExcludeNodes"] = self.excludeNodes!
        }
        if self.extraNodesGrowRatio != nil {
            map["ExtraNodesGrowRatio"] = self.extraNodesGrowRatio!
        }
        if self.growIntervalInMinutes != nil {
            map["GrowIntervalInMinutes"] = self.growIntervalInMinutes!
        }
        if self.growRatio != nil {
            map["GrowRatio"] = self.growRatio!
        }
        if self.growTimeoutInMinutes != nil {
            map["GrowTimeoutInMinutes"] = self.growTimeoutInMinutes!
        }
        if self.imageId != nil {
            map["ImageId"] = self.imageId!
        }
        if self.maxNodesInCluster != nil {
            map["MaxNodesInCluster"] = self.maxNodesInCluster!
        }
        if self.queues != nil {
            var tmp : [Any] = []
            for k in self.queues! {
                tmp.append(k.toMap())
            }
            map["Queues"] = tmp
        }
        if self.shrinkIdleTimes != nil {
            map["ShrinkIdleTimes"] = self.shrinkIdleTimes!
        }
        if self.shrinkIntervalInMinutes != nil {
            map["ShrinkIntervalInMinutes"] = self.shrinkIntervalInMinutes!
        }
        if self.spotPriceLimit != nil {
            map["SpotPriceLimit"] = self.spotPriceLimit!
        }
        if self.spotStrategy != nil {
            map["SpotStrategy"] = self.spotStrategy!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("EnableAutoGrow") {
            self.enableAutoGrow = dict["EnableAutoGrow"] as! Bool
        }
        if dict.keys.contains("EnableAutoShrink") {
            self.enableAutoShrink = dict["EnableAutoShrink"] as! Bool
        }
        if dict.keys.contains("ExcludeNodes") {
            self.excludeNodes = dict["ExcludeNodes"] as! String
        }
        if dict.keys.contains("ExtraNodesGrowRatio") {
            self.extraNodesGrowRatio = dict["ExtraNodesGrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowIntervalInMinutes") {
            self.growIntervalInMinutes = dict["GrowIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("GrowRatio") {
            self.growRatio = dict["GrowRatio"] as! Int32
        }
        if dict.keys.contains("GrowTimeoutInMinutes") {
            self.growTimeoutInMinutes = dict["GrowTimeoutInMinutes"] as! Int32
        }
        if dict.keys.contains("ImageId") {
            self.imageId = dict["ImageId"] as! String
        }
        if dict.keys.contains("MaxNodesInCluster") {
            self.maxNodesInCluster = dict["MaxNodesInCluster"] as! Int32
        }
        if dict.keys.contains("Queues") {
            self.queues = dict["Queues"] as! [SetAutoScaleConfigRequest.Queues]
        }
        if dict.keys.contains("ShrinkIdleTimes") {
            self.shrinkIdleTimes = dict["ShrinkIdleTimes"] as! Int32
        }
        if dict.keys.contains("ShrinkIntervalInMinutes") {
            self.shrinkIntervalInMinutes = dict["ShrinkIntervalInMinutes"] as! Int32
        }
        if dict.keys.contains("SpotPriceLimit") {
            self.spotPriceLimit = dict["SpotPriceLimit"] as! Double
        }
        if dict.keys.contains("SpotStrategy") {
            self.spotStrategy = dict["SpotStrategy"] as! String
        }
    }
}

public class SetAutoScaleConfigResponseBody : Tea.TeaModel {
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

public class SetAutoScaleConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetAutoScaleConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetAutoScaleConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGWSClusterPolicyRequest : Tea.TeaModel {
    public var asyncMode: Bool?

    public var clipboard: String?

    public var clusterId: String?

    public var localDrive: String?

    public var udpPort: String?

    public var usbRedirect: String?

    public var watermark: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.asyncMode != nil {
            map["AsyncMode"] = self.asyncMode!
        }
        if self.clipboard != nil {
            map["Clipboard"] = self.clipboard!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.localDrive != nil {
            map["LocalDrive"] = self.localDrive!
        }
        if self.udpPort != nil {
            map["UdpPort"] = self.udpPort!
        }
        if self.usbRedirect != nil {
            map["UsbRedirect"] = self.usbRedirect!
        }
        if self.watermark != nil {
            map["Watermark"] = self.watermark!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AsyncMode") {
            self.asyncMode = dict["AsyncMode"] as! Bool
        }
        if dict.keys.contains("Clipboard") {
            self.clipboard = dict["Clipboard"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("LocalDrive") {
            self.localDrive = dict["LocalDrive"] as! String
        }
        if dict.keys.contains("UdpPort") {
            self.udpPort = dict["UdpPort"] as! String
        }
        if dict.keys.contains("UsbRedirect") {
            self.usbRedirect = dict["UsbRedirect"] as! String
        }
        if dict.keys.contains("Watermark") {
            self.watermark = dict["Watermark"] as! String
        }
    }
}

public class SetGWSClusterPolicyResponseBody : Tea.TeaModel {
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

public class SetGWSClusterPolicyResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGWSClusterPolicyResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetGWSClusterPolicyResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGWSInstanceNameRequest : Tea.TeaModel {
    public var instanceId: String?

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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
    }
}

public class SetGWSInstanceNameResponseBody : Tea.TeaModel {
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

public class SetGWSInstanceNameResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGWSInstanceNameResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetGWSInstanceNameResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetGWSInstanceUserRequest : Tea.TeaModel {
    public var instanceId: String?

    public var userName: String?

    public var userUid: String?

    public override init() {
        super.init()
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
        if self.userName != nil {
            map["UserName"] = self.userName!
        }
        if self.userUid != nil {
            map["UserUid"] = self.userUid!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
        if dict.keys.contains("UserName") {
            self.userName = dict["UserName"] as! String
        }
        if dict.keys.contains("UserUid") {
            self.userUid = dict["UserUid"] as! String
        }
    }
}

public class SetGWSInstanceUserResponseBody : Tea.TeaModel {
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

public class SetGWSInstanceUserResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetGWSInstanceUserResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetGWSInstanceUserResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetPostScriptsRequest : Tea.TeaModel {
    public class PostInstallScripts : Tea.TeaModel {
        public var args: String?

        public var url: String?

        public override init() {
            super.init()
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
            if self.url != nil {
                map["Url"] = self.url!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Args") {
                self.args = dict["Args"] as! String
            }
            if dict.keys.contains("Url") {
                self.url = dict["Url"] as! String
            }
        }
    }
    public var clusterId: String?

    public var postInstallScripts: [SetPostScriptsRequest.PostInstallScripts]?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.postInstallScripts != nil {
            var tmp : [Any] = []
            for k in self.postInstallScripts! {
                tmp.append(k.toMap())
            }
            map["PostInstallScripts"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PostInstallScripts") {
            self.postInstallScripts = dict["PostInstallScripts"] as! [SetPostScriptsRequest.PostInstallScripts]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SetPostScriptsResponseBody : Tea.TeaModel {
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

public class SetPostScriptsResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetPostScriptsResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetPostScriptsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetQueueRequest : Tea.TeaModel {
    public class Node : Tea.TeaModel {
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
                map["Name"] = self.name!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Name") {
                self.name = dict["Name"] as! String
            }
        }
    }
    public var clusterId: String?

    public var node: [SetQueueRequest.Node]?

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
        if self.node != nil {
            var tmp : [Any] = []
            for k in self.node! {
                tmp.append(k.toMap())
            }
            map["Node"] = tmp
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
        if dict.keys.contains("Node") {
            self.node = dict["Node"] as! [SetQueueRequest.Node]
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
    }
}

public class SetQueueResponseBody : Tea.TeaModel {
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

public class SetQueueResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetQueueResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetQueueResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SetSchedulerInfoRequest : Tea.TeaModel {
    public class PbsInfo : Tea.TeaModel {
        public class AclLimit : Tea.TeaModel {
            public var aclUsers: String?

            public var queue: String?

            public override init() {
                super.init()
            }

            public init(_ dict: [String: Any]) {
                super.init()
                self.fromMap(dict)
            }

            public override func validate() throws -> Void {
            }

            public override func toMap() -> [String : Any] {
                var map = super.toMap()
                if self.aclUsers != nil {
                    map["AclUsers"] = self.aclUsers!
                }
                if self.queue != nil {
                    map["Queue"] = self.queue!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("AclUsers") {
                    self.aclUsers = dict["AclUsers"] as! String
                }
                if dict.keys.contains("Queue") {
                    self.queue = dict["Queue"] as! String
                }
            }
        }
        public class ResourceLimit : Tea.TeaModel {
            public var cpus: Int32?

            public var maxJobs: Int32?

            public var mem: String?

            public var nodes: Int32?

            public var queue: String?

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
                if self.cpus != nil {
                    map["Cpus"] = self.cpus!
                }
                if self.maxJobs != nil {
                    map["MaxJobs"] = self.maxJobs!
                }
                if self.mem != nil {
                    map["Mem"] = self.mem!
                }
                if self.nodes != nil {
                    map["Nodes"] = self.nodes!
                }
                if self.queue != nil {
                    map["Queue"] = self.queue!
                }
                if self.user != nil {
                    map["User"] = self.user!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Cpus") {
                    self.cpus = dict["Cpus"] as! Int32
                }
                if dict.keys.contains("MaxJobs") {
                    self.maxJobs = dict["MaxJobs"] as! Int32
                }
                if dict.keys.contains("Mem") {
                    self.mem = dict["Mem"] as! String
                }
                if dict.keys.contains("Nodes") {
                    self.nodes = dict["Nodes"] as! Int32
                }
                if dict.keys.contains("Queue") {
                    self.queue = dict["Queue"] as! String
                }
                if dict.keys.contains("User") {
                    self.user = dict["User"] as! String
                }
            }
        }
        public var aclLimit: [SetSchedulerInfoRequest.PbsInfo.AclLimit]?

        public var jobHistoryDuration: Int32?

        public var resourceLimit: [SetSchedulerInfoRequest.PbsInfo.ResourceLimit]?

        public var schedInterval: Int32?

        public var schedMaxJobs: Int32?

        public var schedMaxQueuedJobs: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.aclLimit != nil {
                var tmp : [Any] = []
                for k in self.aclLimit! {
                    tmp.append(k.toMap())
                }
                map["AclLimit"] = tmp
            }
            if self.jobHistoryDuration != nil {
                map["JobHistoryDuration"] = self.jobHistoryDuration!
            }
            if self.resourceLimit != nil {
                var tmp : [Any] = []
                for k in self.resourceLimit! {
                    tmp.append(k.toMap())
                }
                map["ResourceLimit"] = tmp
            }
            if self.schedInterval != nil {
                map["SchedInterval"] = self.schedInterval!
            }
            if self.schedMaxJobs != nil {
                map["SchedMaxJobs"] = self.schedMaxJobs!
            }
            if self.schedMaxQueuedJobs != nil {
                map["SchedMaxQueuedJobs"] = self.schedMaxQueuedJobs!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("AclLimit") {
                self.aclLimit = dict["AclLimit"] as! [SetSchedulerInfoRequest.PbsInfo.AclLimit]
            }
            if dict.keys.contains("JobHistoryDuration") {
                self.jobHistoryDuration = dict["JobHistoryDuration"] as! Int32
            }
            if dict.keys.contains("ResourceLimit") {
                self.resourceLimit = dict["ResourceLimit"] as! [SetSchedulerInfoRequest.PbsInfo.ResourceLimit]
            }
            if dict.keys.contains("SchedInterval") {
                self.schedInterval = dict["SchedInterval"] as! Int32
            }
            if dict.keys.contains("SchedMaxJobs") {
                self.schedMaxJobs = dict["SchedMaxJobs"] as! Int32
            }
            if dict.keys.contains("SchedMaxQueuedJobs") {
                self.schedMaxQueuedJobs = dict["SchedMaxQueuedJobs"] as! Int32
            }
        }
    }
    public class Scheduler : Tea.TeaModel {
        public var schedName: String?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.schedName != nil {
                map["SchedName"] = self.schedName!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("SchedName") {
                self.schedName = dict["SchedName"] as! String
            }
        }
    }
    public class SlurmInfo : Tea.TeaModel {
        public var backfillInterval: Int32?

        public var schedInterval: Int32?

        public override init() {
            super.init()
        }

        public init(_ dict: [String: Any]) {
            super.init()
            self.fromMap(dict)
        }

        public override func validate() throws -> Void {
        }

        public override func toMap() -> [String : Any] {
            var map = super.toMap()
            if self.backfillInterval != nil {
                map["BackfillInterval"] = self.backfillInterval!
            }
            if self.schedInterval != nil {
                map["SchedInterval"] = self.schedInterval!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("BackfillInterval") {
                self.backfillInterval = dict["BackfillInterval"] as! Int32
            }
            if dict.keys.contains("SchedInterval") {
                self.schedInterval = dict["SchedInterval"] as! Int32
            }
        }
    }
    public var clusterId: String?

    public var pbsInfo: [SetSchedulerInfoRequest.PbsInfo]?

    public var regionId: String?

    public var scheduler: [SetSchedulerInfoRequest.Scheduler]?

    public var slurmInfo: [SetSchedulerInfoRequest.SlurmInfo]?

    public override init() {
        super.init()
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
        if self.pbsInfo != nil {
            var tmp : [Any] = []
            for k in self.pbsInfo! {
                tmp.append(k.toMap())
            }
            map["PbsInfo"] = tmp
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.scheduler != nil {
            var tmp : [Any] = []
            for k in self.scheduler! {
                tmp.append(k.toMap())
            }
            map["Scheduler"] = tmp
        }
        if self.slurmInfo != nil {
            var tmp : [Any] = []
            for k in self.slurmInfo! {
                tmp.append(k.toMap())
            }
            map["SlurmInfo"] = tmp
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("PbsInfo") {
            self.pbsInfo = dict["PbsInfo"] as! [SetSchedulerInfoRequest.PbsInfo]
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("Scheduler") {
            self.scheduler = dict["Scheduler"] as! [SetSchedulerInfoRequest.Scheduler]
        }
        if dict.keys.contains("SlurmInfo") {
            self.slurmInfo = dict["SlurmInfo"] as! [SetSchedulerInfoRequest.SlurmInfo]
        }
    }
}

public class SetSchedulerInfoResponseBody : Tea.TeaModel {
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

public class SetSchedulerInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SetSchedulerInfoResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SetSchedulerInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartClusterRequest : Tea.TeaModel {
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

public class StartClusterResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StartClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartGWSInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class StartGWSInstanceResponseBody : Tea.TeaModel {
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

public class StartGWSInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartGWSInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartGWSInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [StartNodesRequest.Instance]?

    public var role: String?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [StartNodesRequest.Instance]
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
    }
}

public class StartNodesResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StartNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StartVisualServiceRequest : Tea.TeaModel {
    public var cidrIp: String?

    public var clusterId: String?

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
        if self.cidrIp != nil {
            map["CidrIp"] = self.cidrIp!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CidrIp") {
            self.cidrIp = dict["CidrIp"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
    }
}

public class StartVisualServiceResponseBody : Tea.TeaModel {
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

public class StartVisualServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StartVisualServiceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StartVisualServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopClusterRequest : Tea.TeaModel {
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

public class StopClusterResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopClusterResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopClusterResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopClusterResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopGWSInstanceRequest : Tea.TeaModel {
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
        if self.instanceId != nil {
            map["InstanceId"] = self.instanceId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("InstanceId") {
            self.instanceId = dict["InstanceId"] as! String
        }
    }
}

public class StopGWSInstanceResponseBody : Tea.TeaModel {
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

public class StopGWSInstanceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopGWSInstanceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopGWSInstanceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopJobsRequest : Tea.TeaModel {
    public var clusterId: String?

    public var jobs: String?

    public override init() {
        super.init()
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
        if self.jobs != nil {
            map["Jobs"] = self.jobs!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Jobs") {
            self.jobs = dict["Jobs"] as! String
        }
    }
}

public class StopJobsResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopJobsResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopNodesRequest : Tea.TeaModel {
    public class Instance : Tea.TeaModel {
        public var id: String?

        public override init() {
            super.init()
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
                map["Id"] = self.id!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("Id") {
                self.id = dict["Id"] as! String
            }
        }
    }
    public var clusterId: String?

    public var instance: [StopNodesRequest.Instance]?

    public var role: String?

    public override init() {
        super.init()
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
        if self.instance != nil {
            var tmp : [Any] = []
            for k in self.instance! {
                tmp.append(k.toMap())
            }
            map["Instance"] = tmp
        }
        if self.role != nil {
            map["Role"] = self.role!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Instance") {
            self.instance = dict["Instance"] as! [StopNodesRequest.Instance]
        }
        if dict.keys.contains("Role") {
            self.role = dict["Role"] as! String
        }
    }
}

public class StopNodesResponseBody : Tea.TeaModel {
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
            map["TaskId"] = self.taskId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
        if dict.keys.contains("TaskId") {
            self.taskId = dict["TaskId"] as! String
        }
    }
}

public class StopNodesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopNodesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopNodesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class StopVisualServiceRequest : Tea.TeaModel {
    public var cidrIp: String?

    public var clusterId: String?

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
        if self.cidrIp != nil {
            map["CidrIp"] = self.cidrIp!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.port != nil {
            map["Port"] = self.port!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("CidrIp") {
            self.cidrIp = dict["CidrIp"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("Port") {
            self.port = dict["Port"] as! Int32
        }
    }
}

public class StopVisualServiceResponseBody : Tea.TeaModel {
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

public class StopVisualServiceResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: StopVisualServiceResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = StopVisualServiceResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SubmitJobRequest : Tea.TeaModel {
    public var arrayRequest: String?

    public var clockTime: String?

    public var clusterId: String?

    public var commandLine: String?

    public var containerId: String?

    public var gpu: Int32?

    public var inputFileUrl: String?

    public var jobQueue: String?

    public var mem: String?

    public var name: String?

    public var node: Int32?

    public var packagePath: String?

    public var postCmdLine: String?

    public var priority: Int32?

    public var reRunable: Bool?

    public var runasUser: String?

    public var runasUserPassword: String?

    public var stderrRedirectPath: String?

    public var stdoutRedirectPath: String?

    public var task: Int32?

    public var thread: Int32?

    public var unzipCmd: String?

    public var variables: String?

    public override init() {
        super.init()
    }

    public init(_ dict: [String: Any]) {
        super.init()
        self.fromMap(dict)
    }

    public override func validate() throws -> Void {
    }

    public override func toMap() -> [String : Any] {
        var map = super.toMap()
        if self.arrayRequest != nil {
            map["ArrayRequest"] = self.arrayRequest!
        }
        if self.clockTime != nil {
            map["ClockTime"] = self.clockTime!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.commandLine != nil {
            map["CommandLine"] = self.commandLine!
        }
        if self.containerId != nil {
            map["ContainerId"] = self.containerId!
        }
        if self.gpu != nil {
            map["Gpu"] = self.gpu!
        }
        if self.inputFileUrl != nil {
            map["InputFileUrl"] = self.inputFileUrl!
        }
        if self.jobQueue != nil {
            map["JobQueue"] = self.jobQueue!
        }
        if self.mem != nil {
            map["Mem"] = self.mem!
        }
        if self.name != nil {
            map["Name"] = self.name!
        }
        if self.node != nil {
            map["Node"] = self.node!
        }
        if self.packagePath != nil {
            map["PackagePath"] = self.packagePath!
        }
        if self.postCmdLine != nil {
            map["PostCmdLine"] = self.postCmdLine!
        }
        if self.priority != nil {
            map["Priority"] = self.priority!
        }
        if self.reRunable != nil {
            map["ReRunable"] = self.reRunable!
        }
        if self.runasUser != nil {
            map["RunasUser"] = self.runasUser!
        }
        if self.runasUserPassword != nil {
            map["RunasUserPassword"] = self.runasUserPassword!
        }
        if self.stderrRedirectPath != nil {
            map["StderrRedirectPath"] = self.stderrRedirectPath!
        }
        if self.stdoutRedirectPath != nil {
            map["StdoutRedirectPath"] = self.stdoutRedirectPath!
        }
        if self.task != nil {
            map["Task"] = self.task!
        }
        if self.thread != nil {
            map["Thread"] = self.thread!
        }
        if self.unzipCmd != nil {
            map["UnzipCmd"] = self.unzipCmd!
        }
        if self.variables != nil {
            map["Variables"] = self.variables!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ArrayRequest") {
            self.arrayRequest = dict["ArrayRequest"] as! String
        }
        if dict.keys.contains("ClockTime") {
            self.clockTime = dict["ClockTime"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("CommandLine") {
            self.commandLine = dict["CommandLine"] as! String
        }
        if dict.keys.contains("ContainerId") {
            self.containerId = dict["ContainerId"] as! String
        }
        if dict.keys.contains("Gpu") {
            self.gpu = dict["Gpu"] as! Int32
        }
        if dict.keys.contains("InputFileUrl") {
            self.inputFileUrl = dict["InputFileUrl"] as! String
        }
        if dict.keys.contains("JobQueue") {
            self.jobQueue = dict["JobQueue"] as! String
        }
        if dict.keys.contains("Mem") {
            self.mem = dict["Mem"] as! String
        }
        if dict.keys.contains("Name") {
            self.name = dict["Name"] as! String
        }
        if dict.keys.contains("Node") {
            self.node = dict["Node"] as! Int32
        }
        if dict.keys.contains("PackagePath") {
            self.packagePath = dict["PackagePath"] as! String
        }
        if dict.keys.contains("PostCmdLine") {
            self.postCmdLine = dict["PostCmdLine"] as! String
        }
        if dict.keys.contains("Priority") {
            self.priority = dict["Priority"] as! Int32
        }
        if dict.keys.contains("ReRunable") {
            self.reRunable = dict["ReRunable"] as! Bool
        }
        if dict.keys.contains("RunasUser") {
            self.runasUser = dict["RunasUser"] as! String
        }
        if dict.keys.contains("RunasUserPassword") {
            self.runasUserPassword = dict["RunasUserPassword"] as! String
        }
        if dict.keys.contains("StderrRedirectPath") {
            self.stderrRedirectPath = dict["StderrRedirectPath"] as! String
        }
        if dict.keys.contains("StdoutRedirectPath") {
            self.stdoutRedirectPath = dict["StdoutRedirectPath"] as! String
        }
        if dict.keys.contains("Task") {
            self.task = dict["Task"] as! Int32
        }
        if dict.keys.contains("Thread") {
            self.thread = dict["Thread"] as! Int32
        }
        if dict.keys.contains("UnzipCmd") {
            self.unzipCmd = dict["UnzipCmd"] as! String
        }
        if dict.keys.contains("Variables") {
            self.variables = dict["Variables"] as! String
        }
    }
}

public class SubmitJobResponseBody : Tea.TeaModel {
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
        if dict.keys.contains("JobId") {
            self.jobId = dict["JobId"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SubmitJobResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SubmitJobResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SubmitJobResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SummaryImagesRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
    }
}

public class SummaryImagesResponseBody : Tea.TeaModel {
    public var imagesName: String?

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
        if self.imagesName != nil {
            map["ImagesName"] = self.imagesName!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImagesName") {
            self.imagesName = dict["ImagesName"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SummaryImagesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SummaryImagesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SummaryImagesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SummaryImagesInfoRequest : Tea.TeaModel {
    public var clusterId: String?

    public var containerType: String?

    public var imageName: String?

    public override init() {
        super.init()
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
        if self.containerType != nil {
            map["ContainerType"] = self.containerType!
        }
        if self.imageName != nil {
            map["ImageName"] = self.imageName!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ContainerType") {
            self.containerType = dict["ContainerType"] as! String
        }
        if dict.keys.contains("ImageName") {
            self.imageName = dict["ImageName"] as! String
        }
    }
}

public class SummaryImagesInfoResponseBody : Tea.TeaModel {
    public var imagesInfo: String?

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
        if self.imagesInfo != nil {
            map["ImagesInfo"] = self.imagesInfo!
        }
        if self.requestId != nil {
            map["RequestId"] = self.requestId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ImagesInfo") {
            self.imagesInfo = dict["ImagesInfo"] as! String
        }
        if dict.keys.contains("RequestId") {
            self.requestId = dict["RequestId"] as! String
        }
    }
}

public class SummaryImagesInfoResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SummaryImagesInfoResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SummaryImagesInfoResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class SyncUsersRequest : Tea.TeaModel {
    public var clusterId: String?

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
            map["ClusterId"] = self.clusterId!
        }
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
    }
}

public class SyncUsersResponseBody : Tea.TeaModel {
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

public class SyncUsersResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: SyncUsersResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = SyncUsersResponseBody()
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
            if dict.keys.contains("Key") {
                self.key = dict["Key"] as! String
            }
            if dict.keys.contains("Value") {
                self.value = dict["Value"] as! String
            }
        }
    }
    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("Tag") {
            self.tag = dict["Tag"] as! [TagResourcesRequest.Tag]
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
        if dict.keys.contains("RequestId") {
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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = TagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UnTagResourcesRequest : Tea.TeaModel {
    public var all: Bool?

    public var regionId: String?

    public var resourceId: [String]?

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
        if self.regionId != nil {
            map["RegionId"] = self.regionId!
        }
        if self.resourceId != nil {
            map["ResourceId"] = self.resourceId!
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
        if dict.keys.contains("All") {
            self.all = dict["All"] as! Bool
        }
        if dict.keys.contains("RegionId") {
            self.regionId = dict["RegionId"] as! String
        }
        if dict.keys.contains("ResourceId") {
            self.resourceId = dict["ResourceId"] as! [String]
        }
        if dict.keys.contains("ResourceType") {
            self.resourceType = dict["ResourceType"] as! String
        }
        if dict.keys.contains("TagKey") {
            self.tagKey = dict["TagKey"] as! [String]
        }
    }
}

public class UnTagResourcesResponseBody : Tea.TeaModel {
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

public class UnTagResourcesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UnTagResourcesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UnTagResourcesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UninstallSoftwareRequest : Tea.TeaModel {
    public var application: String?

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
        if self.application != nil {
            map["Application"] = self.application!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("Application") {
            self.application = dict["Application"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class UninstallSoftwareResponseBody : Tea.TeaModel {
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

public class UninstallSoftwareResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UninstallSoftwareResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UninstallSoftwareResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateClusterVolumesRequest : Tea.TeaModel {
    public class AdditionalVolumes : Tea.TeaModel {
        public class Roles : Tea.TeaModel {
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
                    map["Name"] = self.name!
                }
                return map
            }

            public override func fromMap(_ dict: [String: Any]) -> Void {
                if dict.keys.contains("Name") {
                    self.name = dict["Name"] as! String
                }
            }
        }
        public var jobQueue: String?

        public var localDirectory: String?

        public var location: String?

        public var remoteDirectory: String?

        public var roles: [UpdateClusterVolumesRequest.AdditionalVolumes.Roles]?

        public var volumeId: String?

        public var volumeMountpoint: String?

        public var volumeProtocol: String?

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
            if self.jobQueue != nil {
                map["JobQueue"] = self.jobQueue!
            }
            if self.localDirectory != nil {
                map["LocalDirectory"] = self.localDirectory!
            }
            if self.location != nil {
                map["Location"] = self.location!
            }
            if self.remoteDirectory != nil {
                map["RemoteDirectory"] = self.remoteDirectory!
            }
            if self.roles != nil {
                var tmp : [Any] = []
                for k in self.roles! {
                    tmp.append(k.toMap())
                }
                map["Roles"] = tmp
            }
            if self.volumeId != nil {
                map["VolumeId"] = self.volumeId!
            }
            if self.volumeMountpoint != nil {
                map["VolumeMountpoint"] = self.volumeMountpoint!
            }
            if self.volumeProtocol != nil {
                map["VolumeProtocol"] = self.volumeProtocol!
            }
            if self.volumeType != nil {
                map["VolumeType"] = self.volumeType!
            }
            return map
        }

        public override func fromMap(_ dict: [String: Any]) -> Void {
            if dict.keys.contains("JobQueue") {
                self.jobQueue = dict["JobQueue"] as! String
            }
            if dict.keys.contains("LocalDirectory") {
                self.localDirectory = dict["LocalDirectory"] as! String
            }
            if dict.keys.contains("Location") {
                self.location = dict["Location"] as! String
            }
            if dict.keys.contains("RemoteDirectory") {
                self.remoteDirectory = dict["RemoteDirectory"] as! String
            }
            if dict.keys.contains("Roles") {
                self.roles = dict["Roles"] as! [UpdateClusterVolumesRequest.AdditionalVolumes.Roles]
            }
            if dict.keys.contains("VolumeId") {
                self.volumeId = dict["VolumeId"] as! String
            }
            if dict.keys.contains("VolumeMountpoint") {
                self.volumeMountpoint = dict["VolumeMountpoint"] as! String
            }
            if dict.keys.contains("VolumeProtocol") {
                self.volumeProtocol = dict["VolumeProtocol"] as! String
            }
            if dict.keys.contains("VolumeType") {
                self.volumeType = dict["VolumeType"] as! String
            }
        }
    }
    public var additionalVolumes: [UpdateClusterVolumesRequest.AdditionalVolumes]?

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
        if self.additionalVolumes != nil {
            var tmp : [Any] = []
            for k in self.additionalVolumes! {
                tmp.append(k.toMap())
            }
            map["AdditionalVolumes"] = tmp
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("AdditionalVolumes") {
            self.additionalVolumes = dict["AdditionalVolumes"] as! [UpdateClusterVolumesRequest.AdditionalVolumes]
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class UpdateClusterVolumesResponseBody : Tea.TeaModel {
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

public class UpdateClusterVolumesResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateClusterVolumesResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateClusterVolumesResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpdateQueueConfigRequest : Tea.TeaModel {
    public var clusterId: String?

    public var computeInstanceType: String?

    public var queueName: String?

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
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        if self.computeInstanceType != nil {
            map["ComputeInstanceType"] = self.computeInstanceType!
        }
        if self.queueName != nil {
            map["QueueName"] = self.queueName!
        }
        if self.resourceGroupId != nil {
            map["ResourceGroupId"] = self.resourceGroupId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
        if dict.keys.contains("ComputeInstanceType") {
            self.computeInstanceType = dict["ComputeInstanceType"] as! String
        }
        if dict.keys.contains("QueueName") {
            self.queueName = dict["QueueName"] as! String
        }
        if dict.keys.contains("ResourceGroupId") {
            self.resourceGroupId = dict["ResourceGroupId"] as! String
        }
    }
}

public class UpdateQueueConfigResponseBody : Tea.TeaModel {
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

public class UpdateQueueConfigResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpdateQueueConfigResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpdateQueueConfigResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}

public class UpgradeClientRequest : Tea.TeaModel {
    public var clientVersion: String?

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
        if self.clientVersion != nil {
            map["ClientVersion"] = self.clientVersion!
        }
        if self.clusterId != nil {
            map["ClusterId"] = self.clusterId!
        }
        return map
    }

    public override func fromMap(_ dict: [String: Any]) -> Void {
        if dict.keys.contains("ClientVersion") {
            self.clientVersion = dict["ClientVersion"] as! String
        }
        if dict.keys.contains("ClusterId") {
            self.clusterId = dict["ClusterId"] as! String
        }
    }
}

public class UpgradeClientResponseBody : Tea.TeaModel {
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

public class UpgradeClientResponse : Tea.TeaModel {
    public var headers: [String: String]?

    public var statusCode: Int32?

    public var body: UpgradeClientResponseBody?

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
        if dict.keys.contains("headers") {
            self.headers = dict["headers"] as! [String: String]
        }
        if dict.keys.contains("statusCode") {
            self.statusCode = dict["statusCode"] as! Int32
        }
        if dict.keys.contains("body") {
            var model = UpgradeClientResponseBody()
            model.fromMap(dict["body"] as! [String: Any])
            self.body = model
        }
    }
}
